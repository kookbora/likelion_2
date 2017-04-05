# 1 이상 45 이하의 범위.
(1..45)

# 1 부터 45 까지의 정수를 가진 배열로 바꾸자.
(1..45).to_a

# 1 이상 45 이하의 정수를 가진 배열이, 6개 랜덤한 요소로 이루어진 새로운 배열로 바꾸자.
(1..45).to_a.sample(6)

# 오름차순 정렬
(1..45).to_a.sample(6).sort

# lotto_num 변수에 저장.
lotto_num = (1..45).to_a.sample(6).sort

# 더짧게..
[*1..45].sample(6).sort

print lotto_num
puts ""