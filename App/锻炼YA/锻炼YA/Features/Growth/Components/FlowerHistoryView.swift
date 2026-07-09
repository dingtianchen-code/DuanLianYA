import SwiftUI

struct FlowerHistoryView: View {
    let items: [FlowerHistoryItem]

    var body: some View {
        VStack(alignment: .leading, spacing: AppSpacing.medium) {
            Text("本月身体之花成长记录")
                .font(.appHeadline)
                .foregroundStyle(Color.appTextPrimary)

            VStack(spacing: AppSpacing.small) {
                ForEach(items) { item in
                    FlowerHistoryRow(item: item)
                }
            }
        }
        .padding(AppSpacing.large)
        .background(.white.opacity(0.72))
        .clipShape(RoundedRectangle(cornerRadius: 24, style: .continuous))
    }
}

private struct FlowerHistoryRow: View {
    let item: FlowerHistoryItem

    var body: some View {
        HStack(spacing: AppSpacing.medium) {
            Image(systemName: "camera.macro")
                .font(.title3)
                .foregroundStyle(Color.appFlowerBloom)
                .frame(width: 36, height: 36)
                .background(Color.appFlowerBloom.opacity(0.12))
                .clipShape(Circle())

            VStack(alignment: .leading, spacing: 4) {
                Text(item.dateText)
                    .font(.appBody)
                    .foregroundStyle(Color.appTextPrimary)

                Text(item.note)
                    .font(.appCaption)
                    .foregroundStyle(Color.appTextSecondary)
            }

            Spacer()

            Text("\(Int(item.completion * 100))%")
                .font(.appCaption)
                .foregroundStyle(Color.appPrimary)
        }
        .padding(.vertical, AppSpacing.small)
    }
}

#Preview {
    FlowerHistoryView(items: FlowerHistoryItem.sample)
        .padding()
        .background(Color.appBackground)
}
