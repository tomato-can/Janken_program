def janken(choice, versus)
	if choice == versus
		puts "あいこで..."
		base
	elsif (choice == 0 && versus ==1) || (choice ==1 && versus == 2) || (choice == 2 && versus == 0)
		"あなたの勝ちです"
	else
		"あなたの負けです"
	end
end

def base
	puts "[0]:グー"
	puts "[1]:チョキ"
	puts "[2]:パー"

	hands = {0 => "グー", 1 => "チョキ", 2 => "パー"}

	choice = gets.to_i

	hand = hands[choice]

	versus = rand(0..2)

	versus_hand = hands[versus]

	if choice ==0 || choice ==1 || choice ==2
		puts "あなたの手: #{hand}, 相手の手:#{versus_hand}"
		<br />
		puts janken(choice, versus)
	else
		puts "入力された値が無効です。"
	end
end

puts "最初はグー、じゃんけん..."
base




