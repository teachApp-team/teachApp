# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# TestType.create([
#         {name: "英文法テスト"},
#         {name: "標準英単語テスト"},
#         {name: "発展英単語テスト"},
#         {name: "基礎英単語テスト"}
#     ])

# Score.create([
#         {score: 90, student_id: 1, test_id: 1 },
#         {score: 80, student_id: 1, test_id: 1 },
#         {score: 65, student_id: 1, test_id: 2 },
#         {score: 85, student_id: 1, test_id: 2 },
#         {score: 45, student_id: 1, test_id: 3 },
#         {score: 75, student_id: 1, test_id: 3 },
#         {score: 70, student_id: 1, test_id: 4 },
#         {score: 64, student_id: 1, test_id: 4 },
#         {score: 54, student_id: 1, test_id: 5 },
#         {score: 65, student_id: 1, test_id: 5 },
#         {score: 65, student_id: 1, test_id: 6 },
#         {score: 86, student_id: 1, test_id: 6 },
#         {score: 65, student_id: 1, test_id: 7 },
#         {score: 68, student_id: 1, test_id: 7 },
#         {score: 89, student_id: 1, test_id: 8 },
#         {score: 65, student_id: 1, test_id: 8 },
#         {score: 78, student_id: 1, test_id: 9 },
#         {score: 86, student_id: 1, test_id: 9 },
#         ])

# types = [1,2,3,4]

# 30.times do |i|
#     Test.create(
#         name: "#{i+1}回目のテストです", test_type_id: types[i % 4], test_date: "2020-01-#{i+1}" 
#     )
# end

# 30.times do |i|
#     s = 60 + i
#     t = 16 + i
#     Score.create(
#         score: s, student_id: 1, test_id: t
#     )
# end

(10..20).each do |i|
    Message.create({
        title: "title #{i}", detail: "#{i}日までの宿題です", date: "2020/02/#{i}", student_id: 1
    })
end