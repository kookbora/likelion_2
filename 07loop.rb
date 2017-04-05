# 내 이름을 5번 출력해봅시다.
5.times do
    puts "bora"
end




# delicious 배열에 먹고싶은 음식 5개를 저장해봅시다.
# 배고프니까 한개씩 꺼내봅시다.
delicious = ["떡볶이 ", "치킨 ", "피자 ", "지지고 ", "토스트"]

# 꺼내는 방법 1
delicious.each do |food|
    print food
end
puts ""

# 꺼내는 방법 2
delicious.size.times do |x|
    print delicious[x]
end
puts ""

# 꺼내는 방법 3






# 조건문을 배워봅시다.
# 드라마 평점을 남겨볼까요.
# 안 본 드라마는 0점으로 표시합니다.
dramas = {
    "도깨비" => 8,
    "피고인" => 0,
    "김과장" => 6,
    "낭만닥터김사부" => 0
}

# 꺼내는 방법 1
dramas.each do |name, score|
    print name + score.to_s + " "
end
puts ""

# 꺼내는 방법 2
for drama in dramas do
    print drama
end
puts ""