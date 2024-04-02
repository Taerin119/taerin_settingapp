//
//  ContentView.swift
//  SettingsSounds&Haptics
//
//  Created by Taerin Kim on 3/31/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var isSilentModeOn: Bool = false
    @State var isShowinStatusBarOn: Bool = false
    @State var isChangewithButtonsOn: Bool = false
    @State var isLockSoundOn: Bool = false
    @State var isSystemHapticsOn: Bool = false
    
    @State private var sliderValue = 0.0
    
    
    
    var body: some View {
    
        Text("Haptics")
        
        NavigationView {
            
            List {
                Section(header: Text("SILENT MODE"), footer: Text("iPhone will not play ringtones, alerts and system sounds. iPhone will still play alarms, timers, music and audio from videos. ")) {
                    
                    HStack {
                        Image(systemName: "bell.slash.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .foregroundStyle(.red)
                            .padding(.trailing, 10)
                        
                        Toggle("Silent Mode", isOn: $isSilentModeOn)
                            .toggleStyle(SwitchToggleStyle(tint: Color.red))
                    }
                }
                
                Section {
                    HStack {
                       Toggle("Show in Status Bar", isOn: $isShowinStatusBarOn)
                    }
                }
                
                Section(header: Text("RINGTONE AND ALERTS"), footer: Text("The volume buttons will not affect the volume of the ringtone and alerts.")) {
                    
                    HStack {
                        Image(systemName: "speaker.fill")
                            .foregroundStyle(.gray)
                        
                        Slider(value: $sliderValue, in: -100...100, step: 1)
                        
                        Image(systemName: "speaker.wave.3.fill")
                            .foregroundStyle(.gray)
                    }
                    
                    HStack {
                        
                        Toggle("Change with Buttons", isOn: $isChangewithButtonsOn)
                    }
                        
                    
                    NavigationLink {
                        Text("Haptics 화면")
                    } label: {
                        HStack {
                            Text("Haptics")
                            Spacer()
                            Text("Don't Play in Silent Mode")
                                .foregroundColor(.gray)
                        }
                    }
                    
                }
                
                Section {
                    NavigationLink {
                        Text("Ringtone 화면")
                    } label: {
                        HStack {
                            Text("Ringtone")
                            Spacer()
                            Text("Reflection")
                                .foregroundColor(.gray)
                        }
                    }
                    
                    NavigationLink {
                        Text("Text tone 화면")
                    } label: {
                        HStack {
                            Text("Text tone")
                            Spacer()
                            Text("Note")
                                .foregroundColor(.gray)
                        }
                    }
                    
                    NavigationLink {
                        Text("New Voicemail 화면")
                    } label: {
                        HStack {
                            Text("New Voicemail")
                            Spacer()
                            Text("Droplet")
                                .foregroundColor(.gray)
                        }
                    }
                    
                    NavigationLink {
                        Text("New mail 화면")
                    } label: {
                        HStack {
                            Text("New mail")
                            Spacer()
                            Text("None")
                                .foregroundColor(.gray)
                        }
                    }
                    
                    NavigationLink {
                        Text("Sent mail 화면")
                    } label: {
                        HStack {
                            Text("Sent mail")
                            Spacer()
                            Text("Swoosh")
                                .foregroundColor(.gray)
                        }
                    }
                    
                    NavigationLink {
                        Text("Calendar Alerts 화면")
                    } label: {
                        HStack {
                            Text("Calendar Alerts")
                            Spacer()
                            Text("Chord")
                                .foregroundColor(.gray)
                        }
                    }
                    
                    NavigationLink {
                        Text("Reminder Alerts 화면")
                    } label: {
                        HStack {
                            Text("Reminder Alerts")
                            Spacer()
                            Text("Chord")
                                .foregroundColor(.gray)
                        }
                    }
                    
                    NavigationLink {
                        Text("Default Alerts 화면")
                    } label: {
                        HStack {
                            Text("Default Alerts")
                            Spacer()
                            Text("Rebound")
                                .foregroundColor(.gray)
                        }
                    }
                }
                
                Section(header: Text("SYSTEM SOUNDS & HAPTICS"), footer: Text("Play hapitcs for system controls and interactions.")) {
                    NavigationLink {
                        Text("Keyboard Feedback 화면")
                    } label: {
                        HStack {
                            Text("Keyboard Feedback")
                            Spacer()
                            Text("Sound")
                                .foregroundColor(.gray)
                        }
                    }
                    
                    HStack {
                       Toggle("Lock Sound", isOn: $isLockSoundOn)
                    }
                    
                    HStack {
                       Toggle("System Haptics", isOn: $isSystemHapticsOn)
                    }
                }
                
                Section(header: Text("HEADPHONE AUDIO")) {
                    NavigationLink {
                        Text("Headphone Safety 화면")
                    } label: {
                        HStack {
                            Text("Headphone Safety")
                        }
                    }
                    
                    NavigationLink {
                        Text("Personalized Spatial Audio 화면")
                    } label: {
                        HStack {
                            Text("Personalized Spatial Audio")
                        }
                    }
                }
            }
        }
    }
}


#Preview {
    ContentView()
}
