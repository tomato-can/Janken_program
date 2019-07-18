def janken(choice, versus)
	if (choice == 0 && versus ==1) || (choice ==1 && versus == 2) || (choice == 2 && versus == 0)
		"あなたの勝ちです"
	else
		"あなたの負けです"
	end
end

hands = {0 => "グー", 1 => "チョキ", 2 => "パー"}
puts "最初はグー、じゃんけん..."

while true do
	puts "[0]:グー"
	puts "[1]:チョキ"
	puts "[2]:パー"

	choice = gets.to_i

	versus = rand(0..2)

	if choice ==0 || choice ==1 || choice ==2
		puts "あなたの手: #{hands[choice]}, 相手の手:#{hands[versus]}"
		if choice == versus
			puts "あいこで..."
		else
			puts janken(choice, versus)
			break
		end
	else
		puts "入力された値が無効です。"
		break
	end
end

