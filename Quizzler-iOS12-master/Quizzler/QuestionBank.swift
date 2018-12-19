//
//  QuestionBank.swift
//  Quizzler
//
//  Created by Minh on 12/17/18.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import Foundation

class QuestionBank {
    var list = [Questions]()
    init (){
        list.append(Questions(questionText: "Sét không bao giờ đánh cùng một nơi hai lần.", correctAnswer: false))
        list.append(Questions(questionText: "Nếu bạn khóc trên tàu vũ trụ, nước mắt sẽ dính luôn trên mặt bạn.", correctAnswer: true))
        list.append(Questions(questionText: "Nếu bạn cắt đôi một con giun, cả hai nửa của nó sẽ lại phát triển thành cơ thể hoàn chỉnh.", correctAnswer: false))
        list.append(Questions(questionText: "Con người có thể phân biệt được hơn một triệu triệu mùi khác nhau", correctAnswer: true))
        list.append(Questions(questionText: "Người trưởng thành có ít xương hơn trẻ sơ sinh.", correctAnswer: true))
        list.append((Questions(questionText: "Napoloen Bonaparte là người rất thấp.", correctAnswer: false)))
        list.append((Questions(questionText: "Cá vàng chỉ có trí nhớ dài có 3 giây. ", correctAnswer: false)))
        list.append((Questions(questionText: "Trong cơ thể người số tế bào vi khuẩn còn nhiều hơn số tế bào người.", correctAnswer: true)))
        list.append((Questions(questionText: "Móng tay và tóc một người tiếp tục mọc thêm sau khi người đó đã chết.", correctAnswer: false)))
        list.append((Questions(questionText: "Các loài chim có nguồn gốc từ khủng long.", correctAnswer: true)))
        list.append(Questions(questionText: "Buzz Aldrin là người đầu tiên đi tè trên mặt trăng.", correctAnswer: true))
        list.append(Questions(questionText: "Con người không thể thở và nuốt cùng lúc.", correctAnswer: true))
        list.append(Questions(questionText: "Hình ảnh thân thuộc của ông già Noel - mập mạp, có râu, trong bộ quần áo trắng và đỏ - được đưa ra lần đầu bởi Coca-Cola trong một chiến dịch quảng cáo.", correctAnswer: false))
        list.append((Questions(questionText: "Đỉnh tháp Eiffel bé hơn ở phía ngược ánh mặt trời.", correctAnswer: true)))
        list.append(Questions(questionText: "Uống rượu giết chết các tế bào não.", correctAnswer: false))
    }
}
