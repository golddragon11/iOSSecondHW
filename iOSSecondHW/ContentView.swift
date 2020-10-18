import SwiftUI
import AVFoundation

struct ContentView: View {
    let music = AVPlayer()
    var body: some View {
        TabView {
            lakersView()
            .tabItem {
                Text("Lakers")
                Image("Lakers_Logo")
            }
            heatView()
            changeAppIcon()
                .tabItem {
                    Image(systemName: "ellipsis.circle")
                        .resizable()
                        .frame(width: 25, height: 25)
                    Text("More")
                }
        }
    }
}

struct lakersView: View {
    @State private var lakers_intro: String = "The Los Angeles Lakers are an American professional basketball team based in Los Angeles. The Lakers compete in the National Basketball Association (NBA) as a member of the league's Western Conference Pacific Division. The Lakers play their home games at Staples Center, an arena shared with the NBA's Los Angeles Clippers, the Los Angeles Sparks of the Women's National Basketball Association, and the Los Angeles Kings of the National Hockey League. The Lakers are one of the most successful teams in the history of the NBA, and have won 17 NBA championships, tied for the most along with the Boston Celtics."
    var body: some View {
        NavigationView {
            List {
                TabView {
                    NavigationLink(destination: lakerPhotoWall()){
                        Image("Lakers Champion")
                            .resizable()
                            .scaledToFit()
                    }
                    NavigationLink(destination: lakerPhotoWall()){
                        Image("Lakers Champion 2")
                            .resizable()
                            .scaledToFit()
                    }
                }
                .tabViewStyle(PageTabViewStyle())
                .frame(width:375, height:468)
                .listRowInsets(EdgeInsets())
                Link("Lakers Official Website >", destination: URL(string:"https://www.nba.com/lakers/")!)
                    .padding(.horizontal, 25.0)
                TextEditor(text: $lakers_intro)
                    .frame(maxHeight: 150)
                    .border(Color.black)
                let rows = [GridItem()]
                ScrollView(.horizontal) {
                    LazyHGrid(rows: rows) {
                        ForEach (Lakers_Players.indices) { (index) in
                            NavigationLink(destination: playerDetail(players:Lakers_Players[index])) {
                                Image(Lakers_Players[index].name)
                                    .PlayerIndexImageModifier()
                            }
                        }
                    }
                }
                Section(header: Text("Roster")){
                    ForEach (Lakers_Players.indices) { (index) in
                        NavigationLink(
                            destination: playerDetail(players:Lakers_Players[index])) {
                            HStack(alignment: .center) {
                                Image(Lakers_Players[index].name)
                                    .PlayerIndexImageModifier()
                                    .shadow(color: .white, radius: 10)
                                Divider()
                                Text(Lakers_Players[index].name)
                            }
                            .padding(.horizontal)
                            .font(.title)
                        }
                    }
                    .listRowInsets(EdgeInsets())
                    .padding(.vertical)
                    .background(LinearGradient(gradient: Gradient(colors: [Color.yellow, Color.purple]), startPoint: .leading, endPoint: .trailing))
                }
            }
            .navigationTitle("Los Angelas Lakers")
        }
    }
}

struct lakerPhotoWall: View {
    var body: some View {
        ScrollView {
            let columns = [GridItem(), GridItem()]
            LazyVGrid(columns: columns) {
                ForEach(Lakers_Players.indices) {  (index) in
                    VStack {
                        Image(Lakers_Players[index].name)
                            .resizable()
                            .scaledToFill()
                        Text(Lakers_Players[index].name)
                            .font(.caption)
                    }
                }
            }
        }
    }
}

struct heatView: View {
    @State private var heat_intro: String = "The Miami Heat are an American professional basketball team based in Miami. The Heat compete in the National Basketball Association (NBA) as a member of the league's Eastern Conference Southeast Division. The Heat play their home games at American Airlines Arena, and have won three NBA championships."
    var body: some View {
        NavigationView {
            List {
                TabView {
                    NavigationLink(destination: heatPhotoWall()){
                        Image("Heat ECF Champion")
                            .resizable()
                            .scaledToFit()
                    }
                    NavigationLink(destination: heatPhotoWall()){
                        Image("pic")
                            .resizable()
                            .scaledToFit()
                    }
                }
                .tabViewStyle(PageTabViewStyle())
                .frame(width:375, height:468)
                .listRowInsets(EdgeInsets())
                Link("Heat Official Website >", destination: URL(string:"https://www.nba.com/heat/")!)
                    .padding(.horizontal, 25.0)
                TextEditor(text: $heat_intro)
                    .frame(maxHeight: 150)
                    .border(Color.black)
                let rows = [GridItem()]
                ScrollView(.horizontal) {
                    LazyHGrid(rows: rows) {
                        ForEach (Heat_Players.indices) { (index) in
                            NavigationLink(destination: playerDetail(players:Heat_Players[index])) {
                                Image(Heat_Players[index].name)
                                    .PlayerIndexImageModifier()
                            }
                        }
                    }
                }
                Section(header: Text("Roster")){
                    ForEach (Heat_Players.indices) { (index) in
                        NavigationLink(
                            destination: playerDetail(players:Heat_Players[index])) {
                            HStack(alignment: .center) {
                                Image(Heat_Players[index].name)
                                    .PlayerIndexImageModifier()
                                    .shadow(color: .black, radius: 10)
                                Divider()
                                Text(Heat_Players[index].name)
                            }
                            .padding(.horizontal)
                            .font(.title)
                        }
                    }
                    .listRowInsets(EdgeInsets())
                    .padding(.vertical)
                    .background(LinearGradient(gradient: Gradient(colors: [Color.white, Color.red]), startPoint: .leading, endPoint: .trailing))
                }
            }
            .navigationTitle("Miami Heat")
        }
        .tabItem {
            Image("Heat_Logo")
            Text("Heat")
        }
    }
}

struct heatPhotoWall: View {
    var body: some View {
        ScrollView {
            let columns = [GridItem(), GridItem()]
            LazyVGrid(columns: columns) {
                ForEach(Heat_Players.indices) {  (index) in
                    VStack {
                        Image(Heat_Players[index].name)
                            .resizable()
                            .scaledToFill()
                        Text(Heat_Players[index].name)
                    }
                }
            }
        }
    }
}

struct changeAppIcon: View {
    @State private var spin = false
    @State private var isSpinning = false
    @State private var blurred = false
    var body: some View {
        VStack {
            Text("Choose an alternate icon")
                .font(.title)
            HStack {
                Button(action: {
                    UIApplication.shared.setAlternateIconName(nil)
                }) {
                    if spin {
                        Image("Larry O'brien Trophy")
                            .resizable()
                            .scaledToFit()
                            .rotationEffect(Angle(degrees: self.isSpinning ? 360: 0))
                            .animation(self.isSpinning ? Animation.linear(duration: 1).repeatForever(autoreverses: false) : .default)
                            .onAppear { self.isSpinning = true }
                            .onDisappear { self.isSpinning = false }
                            .blur(radius: self.blurred ? 10 : 0)
                    }
                    else {
                        Image("Larry O'brien Trophy")
                            .resizable()
                            .scaledToFit()
                            .blur(radius: self.blurred ? 10 : 0)
                    }
                }
                Button(action: {
                    UIApplication.shared.setAlternateIconName("Lakers")
                }) {
                    if spin {
                        Image("Lakers_Logo")
                            .resizable()
                            .scaledToFit()
                            .rotationEffect(Angle(degrees: self.isSpinning ? 360: 0))
                            .animation(self.isSpinning ? Animation.linear(duration: 1).repeatForever(autoreverses: false) : .default)
                            .onAppear { self.isSpinning = true }
                            .onDisappear { self.isSpinning = false }
                            .blur(radius: self.blurred ? 10 : 0)
                    }
                    else {
                        Image("Lakers_Logo")
                            .resizable()
                            .scaledToFit()
                            .blur(radius: self.blurred ? 10 : 0)
                    }
                }
                Button(action: {
                    UIApplication.shared.setAlternateIconName("Heat")
                }) {
                    if spin {
                        Image("Heat_Logo")
                            .resizable()
                            .scaledToFit()
                            .rotationEffect(Angle(degrees: self.isSpinning ? 360: 0))
                            .animation(self.isSpinning ? Animation.linear(duration: 1).repeatForever(autoreverses: false) : .default)
                            .onAppear { self.isSpinning = true }
                            .onDisappear { self.isSpinning = false }
                            .blur(radius: self.blurred ? 10 : 0)
                    }
                    else {
                        Image("Heat_Logo")
                            .resizable()
                            .scaledToFit()
                            .blur(radius: self.blurred ? 10 : 0)
                    }
                }
                .transition(.scale)
            }
            .frame(height: 200)
            .padding(.bottom)
            Button (action: {self.spin.toggle()}){
                Text("Spin")
            }
            .padding(.bottom)
            Button (action: {self.blurred.toggle()}){
                Text("Blur")
            }
            .padding(.bottom)
            Button("Speak") {
                let utterance = AVSpeechUtterance(string: "Choose an alternate icon")
                utterance.pitchMultiplier = 1.3
                utterance.rate = 0.5
                let synthesizer = AVSpeechSynthesizer()
                synthesizer.speak(utterance)
            }
        }
    }
}

struct playerDetail: View {
    let players:players
    var body: some View {
        ScrollView {
            VStack {
                Group {
                    Image(players.name)
                        .scaledToFill()
                    Text("\(players.name) ").font(.title) + Text("\(players.number)").font(.title).foregroundColor(.yellow)
                    Text("Height: \(players.height)\"")
                    Text("Position: \(players.position)")
                    Text("Date Of Birth: \(players.birthday)")
                    Text("Years Pro: \(players.years_pro)")
                    Text("Weight: \(players.weight) lbs")
                        .padding(.bottom)
                }
            }
        }
        .navigationTitle(Text(players.name))
        .navigationBarTitleDisplayMode(.inline)
    }
}

extension Image {
    func PlayerIndexImageModifier() -> some View {
        self
            .resizable()
            .scaledToFill()
            .frame(width: 70, height: 70)
            .clipShape(Circle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
