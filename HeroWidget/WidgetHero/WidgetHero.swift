//
//  WidgetHero.swift
//  WidgetHero
//
//  Created by Onur Şahin on 9.01.2025.
//

import WidgetKit
import SwiftUI

struct Provider: AppIntentTimelineProvider {
    @AppStorage("hero", store: UserDefaults(suiteName: "group.com.develonur.HeroWidget"))
    var heroData: Data = Data()
    
    func placeholder(in context: Context) -> SimpleEntry {
        return SimpleEntry(
            date: Date(),
            configuration: ConfigurationAppIntent(),
            hero: Superhero(
                image: "batman",
                name: "Batman",
                realName: "Bruce Wayne",
                color: Superhero.CodableColor(Color.black)
            )
        )
    }


    func snapshot(for configuration: ConfigurationAppIntent, in context: Context) async -> SimpleEntry {
        if let hero = try? JSONDecoder().decode(Superhero.self, from: heroData) {
            print("Hero successfully decoded")
            return SimpleEntry(date: Date(), configuration: configuration, hero: hero)
        } else {
            print("Failed to decode hero data or heroData is empty.")
            return placeholder(in: context)
        }
    }
    
    func timeline(for configuration: ConfigurationAppIntent, in context: Context) async -> Timeline<SimpleEntry> {
        guard let hero = try? JSONDecoder().decode(Superhero.self, from: heroData) else {
            let placeholderEntry = placeholder(in: context)
            return Timeline(entries: [placeholderEntry], policy: .never)
        }

        let entry = SimpleEntry(date: Date(), configuration: configuration, hero: hero)
        return Timeline(entries: [entry], policy: .never)
    }

}

struct SimpleEntry: TimelineEntry {
    let date: Date
    let configuration: ConfigurationAppIntent
    let hero: Superhero
}

struct WidgetHeroEntryView: View {
    var entry: Provider.Entry

    var body: some View {
        VStack {
            CircularImageView(image: Image(entry.hero.image), color: Color(entry.hero.color.toColor()))
            Text(entry.hero.name)
                .font(.headline)
                .foregroundColor(.primary)
            Text(entry.hero.realName)
                .font(.subheadline)
                .foregroundColor(.secondary)
        }
        .padding()
    }
}

struct WidgetHero: Widget {
    let kind: String = "WidgetHero"

    var body: some WidgetConfiguration {
        AppIntentConfiguration(kind: kind, intent: ConfigurationAppIntent.self, provider: Provider()) { entry in
            WidgetHeroEntryView(entry: entry)
                .containerBackground(.fill.tertiary, for: .widget)
        }
        .configurationDisplayName("Hero Widget")
        .description("Displays your favorite superhero.")
    }
}

extension ConfigurationAppIntent {
    fileprivate static var batman: ConfigurationAppIntent {
        let intent = ConfigurationAppIntent()
        return intent
    }
    
    fileprivate static var superman: ConfigurationAppIntent {
        let intent = ConfigurationAppIntent()
        return intent
    }
}

// SwiftUI Preview
#Preview(as: .systemSmall) {
    WidgetHero()
} timeline: {
    SimpleEntry(
        date: .now,
        configuration: .batman,
        hero: Superhero(
            image: "batman",
            name: "Batman",
            realName: "Bruce Wayne",
            color: Superhero.CodableColor(Color.black)
        )
    )
    SimpleEntry(
        date: .now.addingTimeInterval(3600),
        configuration: .superman,
        hero: Superhero(
            image: "superman",
            name: "Superman",
            realName: "Clark Kent",
            color: Superhero.CodableColor(Color.blue)
        )
    )
}
