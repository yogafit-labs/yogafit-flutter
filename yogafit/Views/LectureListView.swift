//
//  LectureListView.swift
//  yogafit
//
//  Created by Yeonung Choi on 6/9/24.
//

import SwiftUI

struct LectureListView: View {
    var lectures: [Lecture]

    var body: some View {
        if lectures.count == 0 {
            Text("수업 없음")  // TODO: background color of the parent
        } else {
            List(lectures, id: \.title) { lecture in
                LectureView(lecture: lecture)
            }.listStyle(PlainListStyle())
        }
    }
}

struct LectureListView_Previews: PreviewProvider {
    static var previews: some View {
        LectureListView(lectures: Lecture.sampleData)
    }
}
