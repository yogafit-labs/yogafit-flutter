//
//  YogaClass.swift
//  yogafit
//
//  Created by Yeonung Choi on 6/9/24.
//

import Foundation

struct Lecture {
    var title: String
    var time: String  // TODO: change to Date
    var instructor: String
    var location: String
    var capacity: Int
    var participants: Int
    var theme: Theme
}

extension Lecture {
    static let sampleData: [Lecture] = [
        Lecture(title: "아침 요가", time: "2024-06-10 07:00", instructor: "박성하", location: "yogafit 창동 쁘라나야마", capacity: 10, participants: 5, theme: .bubblegum),
        Lecture(title: "점심 요가", time: "2024-06-10 12:00", instructor: "김동현", location: "yogafit 창동 쁘라나야마", capacity: 2, participants: 1, theme: .sky),
        Lecture(title: "저녁 요가", time: "2024-06-10 19:00", instructor: "정재범", location: "yogafit 창동 쁘라나야마", capacity: 5, participants: 0, theme: .teal),
        Lecture(title: "밤 요가", time: "2024-06-10 21:00", instructor: "최연웅", location: "yogafit 창동 쁘라나야마", capacity: 5, participants: 3, theme: .teal),
    ]
}
