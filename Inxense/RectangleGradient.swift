import SwiftUI

struct RectangleGradient: View {
    var body: some View {
        VStack {
            Rectangle()
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [Color.blue, Color("purpleBottom")]),
                        startPoint: .top,
                        endPoint: .bottom)
                )
                .frame(height: 400)
            
            Spacer()
        }
        .ignoresSafeArea()
    }
}

struct RectangleGradient_Previews: PreviewProvider {
    static var previews: some View {
        RectangleGradient()
    }
}
