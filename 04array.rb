# 이번 학기에 듣는 수업들을 배열로 저장해봅시다.
studying = ["웹서비스", "시스템프로그래밍", "웹프로그래밍", "모바일소프트웨어", "소프트웨어공학"]
studying = %w(웹서비스 시스템프로그래밍 웹프로그래밍 모바일소프트웨어 소프트웨어공학) #스페이스는 \로 나타냄


# 이번 학기에 공부 안해도 학점이 잘 나올 것 같은 과목을 뽑아볼까요.
# 랜덤하게 1개만 뽑아봅시다.
puts studying.sample(1)
puts "#{studying.sample(2)}"

# 1에서부터 15까지 들어있는 배열을 만들어봅시다.
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
# 범위를 이용해서 똑같은 배열을 만들어봅시다.
range = (1..15).to_a

# 두 배열이 똑같은지 확인해볼까요.
print arr
puts ""
print range
puts ""

# arr배열 3번째 숫자를 꺼내와봅시다. 인덱스는 0부터 시작합니다.

puts arr[2]


# 가족의 생일을 배열로 저장해봅시다. 자신의 생일을 제외하고 입력해주세요.
birthday = [525, 219, 823]

# 생일을 날짜가 빠른 순으로 정렬해봅시다.
print birthday.sort
puts ""

# 원래 배열을 바꾸고 싶다면!
print birthday.sort!
puts ""

# 내 생일은 아직 저장하지 않았습니다. 확인해볼까요.
print birthday
puts ""


# 내 생일을 저장해봅시다.
# 그리고 다시 확인해봅시다. (.include? 사용)
birthday.push(1209)
print birthday.include?(1209)
puts ""

#내가 들어간 배열을 보여줘 
print birthday
puts ""

# 가족 생일을 모두 입력했는지 숫자를 세어봅시다.

puts birthday.count
puts birthday.size
puts birthday.length