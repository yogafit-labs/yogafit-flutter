//
//  LandmarkView.swift
//  yogafit
//
//  Created by Yeonung Choi on 6/2/24.
//

import SwiftUI
import FSCalendar

struct ReservationView: View {
    private let lectures: [Lecture] = Lecture.sampleData

    var body: some View {
        VStack() {
            CalendarView()
                .frame(maxHeight: 130)

            LectureListView(lectures: lectures)
                .frame(maxWidth: .infinity, maxHeight: .infinity)

            Spacer()
        }
    }
}

#Preview {
    ReservationView()
}
