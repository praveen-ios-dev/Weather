//
//  ContentView.swift
//  sampleApp
//
//  Created by Arohi on 29/10/24.
//

import SwiftUI

struct ContentView: View {
    @State var isNight: Bool
    var body: some View {
        ZStack{
            BackgroundView(isNight: isNight)
            VStack{
                cityTextView(city: "Cupertino, CA")
                mainWeatherStatusView(imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill", temp: 76)
                HStack(spacing: 20){
                    weatherDayView(day: "TUE", imageNamme: "cloud.sun.fill", temp: 74)
                    weatherDayView(day: "WED", imageNamme: "sun.max.fill", temp: 70)
                    weatherDayView(day: "THR", imageNamme: "wind", temp: 66)
                    weatherDayView(day: "FRI", imageNamme: "sunset.fill", temp: 60)
                    weatherDayView(day: "SAT", imageNamme: "moon.stars.fill", temp: 55)
                }
                Spacer()
                ButtonView(title: "Change Day Time", forgroundColor: .white, backGroundColor: .lightBlue, action: {
                    print("kumar Praveen")
                    isNight.toggle()
                })
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView(isNight: true)
}


struct weatherDayView: View {
    var day: String
    var imageNamme: String
    var temp: Int
    var body: some View {
        VStack{
            Text(day)
                .font(.title)
                .foregroundStyle(.white)
            Image(systemName: imageNamme)
                .symbolRenderingMode(.hierarchical)
                .resizable()
                .foregroundColor(.red)
                .frame(width: 40, height: 40)
            Text("\(temp)°")
                .font(.title)
                .foregroundStyle(.white)
        }
    }
}

struct BackgroundView: View {
    var isNight : Bool
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [ isNight ? .black : .blue, isNight ?.white : .lightBlue]), startPoint: .top, endPoint: .bottom)
            .ignoresSafeArea()
//      /*  ContainerRelativeShape().fill(isNight ? Color.black.gradient : Col*/or.blue.gradient).ignoresSafeArea()
    }
}

struct cityTextView : View {
    var city : String
    var body: some View {
        Text(city)
            .font(.largeTitle)
            .foregroundStyle(.white)
            .padding()
    }
}

struct mainWeatherStatusView : View {
    var imageName: String
    var temp: Int
    var body: some View {
        VStack(spacing: 16){
            Image(systemName: imageName)
                .symbolRenderingMode(.hierarchical)
                .resizable()
                .foregroundColor(.red)
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            Text("\(temp)°")
                .font(.largeTitle)
                .foregroundColor(.white)
        }
        .padding(.bottom, 20)
    }
}

