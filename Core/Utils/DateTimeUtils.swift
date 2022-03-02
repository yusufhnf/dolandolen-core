//
//  DateTimeUtils.swift
//  dolandolen
//
//  Created by Yusuf Umar Hanafi on 24/11/21.
//
public class DateTimeUtils {
    public static let dateTextFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd MMMM yyyy"
        return formatter
    }()
    public static let dateFormatter: DateFormatter = {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-mm-dd"
        return dateFormatter
    }()
}
