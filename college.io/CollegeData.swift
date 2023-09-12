//
//  CollegeData.swift
//  college.io
//
//  Created by Aarish on 06/09/23.
//
import SwiftUI
import SwiftCSV

struct College {
    let name: String
    // Add more properties as needed
}

class CollegeData: ObservableObject {
    @Published var colleges: [String] = []
    
    // Track the current page and page size for lazy loading
    @Published var currentPage = 1
    let pageSize = 20
    init() {
        if let csvURL = Bundle.main.url(forResource: "colleges", withExtension: "csv") {
            do {
//                let csv: CSV = try CSV<Named>(url: csvURL)
                let csv: CSV? = try CSV<Named>(
                        name: "colleges",
                        extension: "csv",
                        bundle: .main,
                        delimiter: .character(","),  // Any character works!
                        encoding: .ascii)


                for row in csv!.rows {
                    if let collegeName = row["College Name"] {
//                        let college = College(name: collegeName)
                        colleges.append(collegeName)
                    }
                }
            } catch {
                print("Error reading CSV file: \(error)")
            }
        }
//        loadNextPage()
    }
//    func loadNextPage() {
//        if let csvURL = Bundle.main.url(forResource: "colleges", withExtension: "csv") {
//            do {
//                let csv: CSV? = try CSV<Named>(
//                        name: "colleges",
//                        extension: "csv",
//                        bundle: .main,
//                        delimiter: .character(","),  // Any character works!
//                        encoding: .ascii)
//                let rows = csv?.rows
//
//                var newColleges: [String] = []
//
//                let startIndex = (currentPage - 1) * pageSize
//                let endIndex = min(startIndex + pageSize, rows?.count ?? 0)
//
//                for row in rows![startIndex..<endIndex] {
//                    if let name = row["College Name"] {
//                        newColleges.append(name)
//                    }
//                }
//                colleges.append(contentsOf: newColleges)
//                currentPage += 1
//            } catch {
//                print("Error reading CSV file: \(error)")
//            }
//        }
//    }
}
