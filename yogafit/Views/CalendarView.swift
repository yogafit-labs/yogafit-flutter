//
//  CalendarView.swift
//  yogafit
//
//  Created by Yeonung Choi on 6/6/24.
//

import SwiftUI
import FSCalendar

class FSCalendarController: UIViewController, FSCalendarDelegate {
    var calendar: FSCalendar!

    override func viewDidLoad() {
        super.viewDidLoad()
        let calendar = FSCalendar(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: 400))
        calendar.delegate = self
        calendar.scope = .week
        view.addSubview(calendar)
        self.calendar = calendar
    }

    func calendar(_ calendar: FSCalendar, boundingRectWillChange bounds: CGRect, animated: Bool) {
        self.view.layoutIfNeeded()
    }
}

struct CalendarView: UIViewControllerRepresentable {
    class Coordinator: NSObject, FSCalendarDelegate, FSCalendarDataSource {}

    func makeUIViewController(context: Context) -> UIViewController {
        return FSCalendarController()
    }

    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {}

    func makeCoordinator() -> Coordinator {
        return Coordinator()
    }
}

#Preview {
    CalendarView()
}
