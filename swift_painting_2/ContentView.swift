//
//  ContentView.swift
//  swift_painting_2
//
//  Created by mac on 2020/10/1.
//

import SwiftUI
struct T_shape: Shape {
    func path(in rect: CGRect) -> Path {
        Path { (path) in
            path.move(to: CGPoint(x: rect.width, y: 0))
            path.addLine(to: CGPoint(x: 0, y: 0))
            path.addLine(to: CGPoint(x: 4, y: rect.height))
            path.addLine(to: CGPoint(x: rect.width-4, y: rect.height))
            path.closeSubpath()
        }
    }
}
struct RT_shape: Shape {
    func path(in rect: CGRect) -> Path {
        Path { (path) in
            path.move(to: CGPoint(x: rect.width+4, y: 0))
            path.addLine(to: CGPoint(x: 4, y: 0))
            path.addLine(to: CGPoint(x: 0, y: rect.height))
            path.addLine(to: CGPoint(x: rect.width+8, y: rect.height))
            path.closeSubpath()
        }
    }
}

struct ContentView: View {
    var body: some View {
        ZStack{
            Image("tesla04")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            //Text("TSLA(US)")
              //  .foregroundColor(.white)
                //.font(.title)
                //.position(x:70)
            ZStack{
                Path { (path) in//下圖
                    path.move(to: CGPoint(x: 100, y: 150))
                    path.addQuadCurve(to: CGPoint(x: 135, y: 134), control: CGPoint(x: 103, y: 133))
                    path.addLine(to: CGPoint(x: 165, y: 300))
                    path.addLine(to: CGPoint(x: 195, y: 134))
                    path.addQuadCurve(to: CGPoint(x: 230, y: 150), control: CGPoint(x: 227, y: 133))
                    path.addQuadCurve(to: CGPoint(x: 255, y: 133),control:CGPoint(x: 242.5, y: 147))
                    path.addQuadCurve(to: CGPoint(x: 177, y: 120),control:CGPoint(x: 230, y: 122))
                    path.addLine(to: CGPoint(x: 165, y: 134))
                    path.addLine(to: CGPoint(x: 153, y: 120))
                    path.addQuadCurve(to: CGPoint(x: 75, y: 133),control:CGPoint(x: 100, y: 122))
                    path.addQuadCurve(to: CGPoint(x: 100, y: 150),control:CGPoint(x: 87.5, y: 147))
                }
                   .fill(Color(red: 255/255, green: 255/255, blue: 255/255))
                    //.stroke(Color.blue, style: StrokeStyle(lineWidth: 10, dash: [3]))
              
                Path{(path) in//上圖
                    path.move(to: CGPoint(x: 70, y: 126))
                    path.addQuadCurve(to: CGPoint(x: 260, y:126), control: CGPoint(x: 165, y: 100))
                    path.addLine(to: CGPoint(x: 266, y: 116))
                    path.addQuadCurve(to: CGPoint(x: 64, y:116), control: CGPoint(x: 165, y: 90))
                    path.addLine(to: CGPoint(x: 70, y: 126))
                }
                .fill(Color(red: 255/255, green: 255/255, blue: 255/255))
                Group{
                    Group{//TES
                        //T
                        T_shape()
                            .stroke(Color.white, style: StrokeStyle(lineWidth: 3, dash: [3]))
                            //.fill(Color(red:255/255, green: 0/255, blue: 0/255))
                            .frame(width:32,height: 6)
                            .position(x:71,y:350)//中心點座標
                        Rectangle()
                            .stroke(Color.white, style: StrokeStyle(lineWidth: 3, dash: [3]))
                            //.fill(Color(red: 255/255, green: 0/255, blue: 0/255))
                            .frame(width: 6, height: 26)
                            .position(x:71,y:366)
                        //E
                        T_shape()
                            .stroke(Color.white, style: StrokeStyle(lineWidth: 3, dash: [3]))
                            //.fill(Color(red: 255/255, green: 0/255, blue: 0/255))
                            .frame(width:32,height: 6)
                            .position(x:118,y:350)//中心點座標
                        T_shape()
                            .stroke(Color.white, style: StrokeStyle(lineWidth: 3, dash: [3]))
                            //.fill(Color(red: 255/255, green: 0/255, blue: 0/255))
                            .frame(width:32,height: 6)
                            .position(x:118,y:363)//中心點座標
                        T_shape()
                            .stroke(Color.white, style: StrokeStyle(lineWidth: 3, dash: [3]))
                            //.fill(Color(red: 255/255, green: 0/255, blue: 0/255))
                            .frame(width:32,height: 6)
                            .position(x:118,y:376)//中心點座標
                        //S
                        RT_shape()
                            .stroke(Color.white, style: StrokeStyle(lineWidth: 3, dash: [3]))
                            //.fill(Color(red: 255/255, green: 0/255, blue: 0/255))
                            .frame(width:24,height: 6)
                            .position(x:161,y:376)//中心點座標
                        T_shape()
                            .stroke(Color.white, style: StrokeStyle(lineWidth: 3, dash: [3]))
                            //.fill(Color(red: 255/255, green: 0/255, blue: 0/255))
                            .frame(width:32,height: 6)
                            .position(x:165,y:363)//中心點座標
                        Rectangle()
                            .stroke(Color.white, style: StrokeStyle(lineWidth: 3, dash: [3]))
                            //.fill(Color(red: 255/255, green: 0/255, blue: 0/255))
                            .frame(width:6,height:19)
                            .position(x:178,y:369.5)
                        Rectangle()
                            .stroke(Color.white, style: StrokeStyle(lineWidth: 3, dash: [3]))
                            //.fill(Color(red: 255/255, green: 0/255, blue: 0/255))
                            .frame(width:6,height:19)
                            .position(x:152,y:356.5)
                        T_shape()
                            .stroke(Color.white, style: StrokeStyle(lineWidth: 3, dash: [3]))
                            //.fill(Color(red: 255/255, green: 0/255, blue: 0/255))
                            .frame(width:32,height: 6)
                            .position(x:165,y:350)//中心點座標
                    }
                    Group{//LA
                        //L
                        T_shape()
                            .stroke(Color.white, style: StrokeStyle(lineWidth: 3, dash: [3]))
                           // .fill(Color(red: 255/255, green: 0/255, blue: 0/255))
                            .frame(width:32,height: 6)
                            .position(x:212,y:376)//中心點座標
                        Rectangle()
                            .stroke(Color.white, style: StrokeStyle(lineWidth: 3, dash: [3]))
                            //.fill(Color(red: 255/255, green: 0/255, blue: 0/255))
                            .frame(width:6,height:32)
                            .position(x:199,y:363)
                        //A
                        T_shape()
                            .stroke(Color.white, style: StrokeStyle(lineWidth: 3, dash: [3]))
                           // .fill(Color(red: 255/255, green: 0/255, blue: 0/255))
                            .frame(width:32,height: 6)
                            .position(x:259,y:350)//中心點座標
                        T_shape()
                            .stroke(Color.white, style: StrokeStyle(lineWidth: 3, dash: [3]))
                            //.fill(Color(red: 255/255, green: 0/255, blue: 0/255))
                            .frame(width:32,height: 6)
                            .position(x:259,y:363)//中心點座標
                        Rectangle()
                            .stroke(Color.white, style: StrokeStyle(lineWidth: 3, dash: [3]))
                            //.fill(Color(red: 255/255, green: 0/255, blue: 0/255))
                            .frame(width:6,height:19)
                            .position(x:272,y:369.5)
                        Rectangle()
                            .stroke(Color.white, style: StrokeStyle(lineWidth: 3, dash: [3]))
                            //.fill(Color(red: 255/255, green: 0/255, blue: 0/255))
                            .frame(width:6,height:19)
                            .position(x:246,y:369.5)
                    }
                }
            }
        }
    }
}


struct T_shape_LibraryContent: LibraryContentProvider {
    static var views: [LibraryItem] {
        [LibraryItem(T_shape(), title: "T_shape")]
    }
}

struct RT_shape_LibraryContent: LibraryContentProvider {
    static var views1: [LibraryItem] {
        [LibraryItem(RT_shape(), title: "RT_shape")]
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

