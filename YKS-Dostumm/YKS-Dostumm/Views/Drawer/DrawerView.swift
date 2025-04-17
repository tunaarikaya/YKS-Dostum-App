import SwiftUI

struct DrawerView: View {
    @ObservedObject var viewModel: DrawerViewModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            // App Logo and Title
            VStack(alignment: .leading) {
                HStack {
                    Image(systemName: "graduationcap.fill")
                        .font(.system(size: 40))
                        .foregroundColor(.blue)
                    
                    Text("YKS Dostum")
                        .font(.title)
                        .fontWeight(.bold)
                }
                .padding(.bottom, 5)
                
                Text("Sınav Hazırlık Asistanı")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            .padding(.horizontal)
            .padding(.top, 50)
            .padding(.bottom, 30)
            
            // Drawer Items
            ScrollView {
                VStack(alignment: .leading, spacing: 5) {
                    ForEach(DrawerItemType.allCases) { item in
                        DrawerItemView(
                            icon: item.icon,
                            title: item.rawValue,
                            isSelected: viewModel.selectedItem == item,
                            color: item.color
                        )
                        .onTapGesture {
                            viewModel.selectItem(item)
                        }
                    }
                }
                .padding(.horizontal)
            }
            
            Spacer()
            
            // Version Info
            Text("Versiyon 1.0.0")
                .font(.caption)
                .foregroundColor(.secondary)
                .padding()
        }
        .frame(width: 270)
        .background(Color(UIColor.systemBackground))
        .edgesIgnoringSafeArea(.vertical)
    }
}

struct DrawerItemView: View {
    let icon: String
    let title: String
    let isSelected: Bool
    let color: Color
    
    var body: some View {
        HStack(spacing: 12) {
            Image(systemName: icon)
                .font(.system(size: 20))
                .foregroundColor(isSelected ? color : .gray)
                .frame(width: 24, height: 24)
            
            Text(title)
                .font(.headline)
                .foregroundColor(isSelected ? color : .primary)
            
            Spacer()
            
            if isSelected {
                Rectangle()
                    .frame(width: 5, height: 30)
                    .foregroundColor(color)
                    .cornerRadius(3)
            }
        }
        .padding(.vertical, 12)
        .padding(.horizontal, 8)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(isSelected ? color.opacity(0.1) : Color.clear)
        )
    }
}

#Preview {
    DrawerView(viewModel: DrawerViewModel())
}
