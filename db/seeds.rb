# サンプルタスクを追加-false
5.times do |n|
  Task.create!(content: "false_test#{n}",
              status: false)
end
# サンプルタスクを追加-true
5.times do |n|
  Task.create!(content: "true_test#{n}",
              status: true)
end