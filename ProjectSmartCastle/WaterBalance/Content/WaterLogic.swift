//
//  ContentView.swift
//  WaterBalance
//
//  Created by Tamerlan Kerimbayev on 09.04.2023.
//

import SwiftUI

struct WaterWaveView: View {
    @State var progress: CGFloat = 0.4
    @State var phase: CGFloat = 0.5

    var body: some View {
        VStack {
            WaterWave(progress: self.progress, phase: self.phase)
                .fill(Color.blue)
                .clipShape(Circle())
                .frame(width: 180, height: 180)
                .animation(phase == 0 ? .default : Animation.linear(duration: 1).repeatForever(autoreverses: false), value: phase)
                .animation(.easeOut(duration: 1), value: progress)
                .onAppear {
                            self.phase = .pi * 2
                }
            Button("Add") {
                    self.phase = 0
                    self.progress += 0.1
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                        self.phase = .pi * 2
                    }
            }
            Button("Reset") {
                self.progress = 0.0
            }
        }
    }
}

struct WaterWave: Shape {
    var progress: CGFloat
    let amplitude: CGFloat = 10
    let waveLength: CGFloat = 20
    var phase: CGFloat

    var animatableData: AnimatablePair<CGFloat, CGFloat> {
        get { AnimatablePair(phase, progress) }
        set {
            phase = newValue.first
            progress = newValue.second
        }
    }

    func path(in rect: CGRect) -> Path {
        var path = Path()

        let width = rect.width
        let height = rect.height
        let midWidth = width / 2
        let progressHeight = height * (1 - progress)

        path.move(to: CGPoint(x: 0, y: progressHeight))

        for x in stride(from: 0, to: width, by: 10) {
            let relativeX = x/waveLength
//            let normalizedLength = relativeX / midWidth

            let normalizedLength = (x - midWidth) / midWidth
            let y = progressHeight + sin(phase + relativeX) * amplitude * normalizedLength
            path.addLine(to: CGPoint(x: x, y: y))
        }

        path.addLine(to: CGPoint(x: width, y: progressHeight))
        path.addLine(to: CGPoint(x: width, y: height))
        path.addLine(to: CGPoint(x: 0, y: height))
        path.addLine(to: CGPoint(x: 0, y: progressHeight))

        return path
    }
}
//
struct WaterWaveView1: View {
    @State var progress: CGFloat = 0.0
    @State var phase: CGFloat = 0.5

    var body: some View {
        VStack {
            WaterWave1(progress: self.progress, phase: self.phase)
                .fill(Color.blue)
                .clipShape(Circle())
                .frame(width: 180, height: 180)
                .animation(phase == 0 ? .default : Animation.linear(duration: 1).repeatForever(autoreverses: false), value: phase)
                .animation(.easeOut(duration: 1), value: progress)
                .onAppear {
                            self.phase = .pi * 2
                }
            Button("Add") {
                    self.phase = 0
                    self.progress += 0.1
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                        self.phase = .pi * 2
                    }
            }
            Button("Reset") {
                self.progress = 0.0
            }
        }
    }
}

struct WaterWave1: Shape {
    var progress: CGFloat
    let amplitude: CGFloat = 10
    let waveLength: CGFloat = 20
    var phase: CGFloat

    var animatableData: AnimatablePair<CGFloat, CGFloat> {
        get { AnimatablePair(phase, progress) }
        set {
            phase = newValue.first
            progress = newValue.second
        }
    }

    func path(in rect: CGRect) -> Path {
        var path = Path()

        let width = rect.width
        let height = rect.height
        let midWidth = width / 2
        let progressHeight = height * (1 - progress)

        path.move(to: CGPoint(x: 0, y: progressHeight))

        for x in stride(from: 0, to: width, by: 10) {
            let relativeX = x/waveLength
//            let normalizedLength = relativeX / midWidth

            let normalizedLength = (x - midWidth) / midWidth
            let y = progressHeight + sin(phase + relativeX) * amplitude * normalizedLength
            path.addLine(to: CGPoint(x: x, y: y))
        }

        path.addLine(to: CGPoint(x: width, y: progressHeight))
        path.addLine(to: CGPoint(x: width, y: height))
        path.addLine(to: CGPoint(x: 0, y: height))
        path.addLine(to: CGPoint(x: 0, y: progressHeight))

        return path
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        WaterWaveView1()
    }
}
