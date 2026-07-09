import SwiftUI

struct BodyAreaCareView: View {
    let items: [BodyAreaCareItem]

    var body: some View {
        VStack(alignment: .leading, spacing: AppSpacing.medium) {
            Text("七个身体部位照顾情况")
                .font(.appHeadline)
                .foregroundStyle(Color.appTextPrimary)

            VStack(spacing: AppSpacing.medium) {
                ForEach(items) { item in
                    BodyAreaCareRow(item: item)
                }
            }
        }
        .padding(AppSpacing.large)
        .background(.white.opacity(0.72))
        .clipShape(RoundedRectangle(cornerRadius: 24, style: .continuous))
    }
}

private struct BodyAreaCareRow: View {
    let item: BodyAreaCareItem

    var body: some View {
        VStack(spacing: AppSpacing.small) {
            HStack {
                Text(item.name)
                    .font(.appBody)
                    .foregroundStyle(Color.appTextPrimary)

                Spacer()

                Text("\(item.careCount) 次")
                    .font(.appCaption)
                    .foregroundStyle(Color.appTextSecondary)
            }

            ProgressView(value: item.progress)
                .tint(Color.appPrimary)
        }
    }
}

#Preview {
    BodyAreaCareView(items: BodyAreaCareItem.sample)
        .padding()
        .background(Color.appBackground)
}
