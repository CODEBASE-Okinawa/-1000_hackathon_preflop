# サンプルタスクリストの作成
5.times do |n|
  TaskList.create!(content: "list #{n+1}")
end

# サンプルタスクを追加-false
5.times do |n|
  x = rand(1..5)
  Task.create!(content: "false_test#{n}",
              status: false,
              task_list_id: x)
end
# サンプルタスクを追加-true
5.times do |n|
  x = rand(1..5)
  Task.create!(content: "true_test#{n}",
              status: true,
              task_list_id: x)
end