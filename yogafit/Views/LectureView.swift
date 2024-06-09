//
//  ClassListView.swift
//  yogafit
//
//  Created by Yeonung Choi on 6/9/24.
//

import SwiftUI

struct LectureView: View {
    var lecture: Lecture

    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(lecture.title)
                    .font(.headline)
                    .accessibilityAddTraits(.isHeader)
                Spacer()
                Label("\(lecture.instructor)", systemImage: "figure")
                    .accessibilityLabel("Instructor \(lecture.instructor)")
                Spacer()
                Button("신청") {}
                    .buttonStyle(.bordered)
            }
            Spacer()
            HStack {
                Label("\(lecture.participants) / \(lecture.capacity)", systemImage: "person.3")
                    .accessibilityLabel("\(lecture.capacity) capacity")
                Spacer()
                Label("\(lecture.time)", systemImage: "clock")
                    .padding(.trailing, 20)
                    .accessibilityLabel("\(lecture.time) class")
            }
            .font(.caption)
        }
        .padding()
        .foregroundColor(lecture.theme.accentColor)
    }
}

struct LectureView_Preview: PreviewProvider {
    static var lecture = Lecture.sampleData[0]
    static var previews: some View {
        LectureView(lecture: lecture)
            .background(lecture.theme.mainColor)
            .previewLayout(.fixed(width: 400, height: 60))
    }
}
