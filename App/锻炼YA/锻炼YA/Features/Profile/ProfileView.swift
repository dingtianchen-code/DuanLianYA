import SwiftUI

struct ProfileView: View {
    @State private var viewModel = ProfileViewModel()

    var body: some View {
        List {
            Section {
                ProfileHeaderView(
                    nickname: viewModel.nickname,
                    goal: viewModel.trainingGoal
                )
                .listRowInsets(EdgeInsets())
                .listRowBackground(Color.clear)
            }

            Section("个人设置") {
                ForEach(viewModel.rows) { row in
                    ProfileRow(item: row)
                }
            }
        }
        .scrollContentBackground(.hidden)
        .background(Color.appBackground.ignoresSafeArea())
        .navigationTitle("我的")
    }
}

private struct ProfileHeaderView: View {
    let nickname: String
    let goal: String

    var body: some View {
        VStack(alignment: .leading, spacing: AppSpacing.medium) {
            HStack(spacing: AppSpacing.medium) {
                Image(systemName: "person.crop.circle.fill")
                    .font(.system(size: 58))
                    .foregroundStyle(Color.appPrimary)

                VStack(alignment: .leading, spacing: AppSpacing.small) {
                    Text(nickname)
                        .font(.appHeadline)
                        .foregroundStyle(Color.appTextPrimary)

                    Text(goal)
                        .font(.appBody)
                        .foregroundStyle(Color.appTextSecondary)
                }
            }

            Text("锻炼YA 记录的是照顾身体的过程，不制造排名，也不做医疗判断。")
                .font(.appCaption)
                .foregroundStyle(Color.appTextSecondary)
                .fixedSize(horizontal: false, vertical: true)
        }
        .padding(AppSpacing.large)
        .background(.white.opacity(0.72))
        .clipShape(RoundedRectangle(cornerRadius: 24, style: .continuous))
        .padding(.horizontal, AppSpacing.pagePadding)
        .padding(.vertical, AppSpacing.medium)
    }
}

private struct ProfileRow: View {
    let item: ProfileRowItem

    var body: some View {
        HStack(spacing: AppSpacing.medium) {
            Image(systemName: item.systemImage)
                .font(.headline)
                .foregroundStyle(Color.appPrimary)
                .frame(width: 30)

            VStack(alignment: .leading, spacing: 4) {
                Text(item.title)
                    .font(.appBody)
                    .foregroundStyle(Color.appTextPrimary)

                Text(item.subtitle)
                    .font(.appCaption)
                    .foregroundStyle(Color.appTextSecondary)
            }
        }
        .padding(.vertical, AppSpacing.small)
    }
}

#Preview {
    NavigationStack {
        ProfileView()
    }
}
