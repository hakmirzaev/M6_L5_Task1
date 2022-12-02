//
//  StudentCell.swift
//  M6_L5_Task1
//
//  Created by Bekhruz Hakmirzaev on 02/12/22.
//

import SwiftUI

struct StudentCell: View {
    var student: Student
    var body: some View {
        HStack{
            VStack(alignment: .leading){
                HStack(spacing: 10){
                    Text(student.firstname!).fontWeight(.bold)
                    Text(student.lastname!).fontWeight(.bold)
                }
                HStack(spacing: 10){
                    Text(student.phone!)
                    Text("|")
                    Text(student.email!)
                }
                Text(student.address!)
            }
            Spacer()
            Text(student.gender!).foregroundColor(.red)
        }.padding(.top, 10).padding(.bottom, 10)
    }
}

struct StudentCell_Previews: PreviewProvider {
    static var previews: some View {
        StudentCell(student: Student())
    }
}
