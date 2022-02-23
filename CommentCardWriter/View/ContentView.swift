//
//  ContentView.swift
//  CommentCardWriter
//
//  Created by Edmunds, Maximilian (NA) on 08/02/2022.
//

import SwiftUI

struct ContentView: View {
    
    let understandingDescriptors = ["n awful"," bad"," sub-par"," rough","n average"," reasonable"," good", " great","n amazing"," wonderful"]
    let enjoymentDescriptors = ["despise"," hate","dislike","am indifferent to","enjoy","really enjoy","love"]
    let strengthDescriptors = ["on-par", "alright", "average", "reasonable", "good", "very good", "particularly good", "exceptional", "terrific"]
    let weaknessDescriptors = ["slightly", "somewhat", "", "", "largely", "much", "noticably", "massively", "enormously"]
    let workRequiredDescriptors = ["", "could use a little extra work.", "could use some more work.", "could use some checking up on.", "need a recap.", "need to re-learn.", "need a complete re-learn."]
    
    @State private var subject = ""
    @State private var subjectEnjoyment = 2.0
    @State private var understanding = 3.0
    @State private var weakness = ""
    @State private var weaknessLevel = 5.0
    @State private var strength = ""
    @State private var strengthLevel = 5.0
    @State private var workRequired = 2.0
    
    
    
    
    var body: some View {
        Form {
            Section {
                Text("If feel that I have a\(understandingDescriptors[Int(understanding)]) understanding of the content covered so far in \(subject.lowercased()). I \(enjoymentDescriptors[Int(subjectEnjoyment)]) the subject. I feel that I am \(strengthDescriptors[Int(strengthLevel)]) at \(strength.lowercased()). I am \(weaknessDescriptors[Int(weaknessLevel)]) weaker at \(weakness.lowercased()) and \(workRequiredDescriptors[Int(workRequired)])")
                    .frame(width: 300, height: 210, alignment: .topLeading )
            }
            Section {
                TextField("Subject name...", text: $subject)
            }
            Text("Understanding")
            Slider(value: $understanding, in:0...9, step: 1)
            Text("Enjoyment")
            Slider(value: $subjectEnjoyment, in:0...6, step: 1)
            Section {
                TextField("Strength...", text: $strength)
                Text("Strength Level")
                Slider(value: $strengthLevel, in:0...8, step: 1)
            }
            Section {
                TextField("Weakness...", text: $weakness)
                Text("Weakness Level")
                Slider(value: $weaknessLevel, in:0...8, step: 1)
                Text("Work Required")
                Slider(value: $workRequired, in:0...6, step: 1)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
