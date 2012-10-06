#encoding:UTF-8

namespace :db do
  desc "Feed data to college"
  task FeedDTC: :environment do
    College.create!(name: "信息科学与工程学院")
    College.create!(name: "草地农业科技学院")
    College.create!(name: "物理科学与技术学院")
    College.create!(name: "化学化工学院")
    College.create!(name: "管理学院")
    College.create!(name: "哲学社会学院")
    College.create!(name: "经济学院")
    College.create!(name: "法学院")
    College.create!(name: "政治与行政学院")
    College.create!(name: "马克思主义学院")
    College.create!(name: "教育学院")
    College.create!(name: "文学院")
    College.create!(name: "外国语学院")
    College.create!(name: "艺术学院")
    College.create!(name: "历史文化学院")
    College.create!(name: "数学与统计学院")
    College.create!(name: "资源环境学院")
    College.create!(name: "生命科学学院")
    College.create!(name: "公共卫生学院")
    College.create!(name: "基础医学院")
    College.create!(name: "土木工程与力学学院")
    College.create!(name: "核科学与技术学院")
    College.create!(name: "药学院")
  end
end

