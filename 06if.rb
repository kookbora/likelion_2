# 조건문을 배워봅시다.
# 드라마 평점을 남겨볼까요.
# 안 본 드라마는 0점으로 표시합니다.
drama = {
    "도깨비" => 8,
    "피고인" => 0,
    "김과장" => 6,
    "낭만닥터 김사부" => 0
}

review = drama["김과장"]  # 드라마 이름을 바꿔보면서 평점이 잘 적용되는지 확인해봅시다.

#if문 쓰거나 case문 쓰거나 둘중에 맘대로~
# review가 8 이상이면 "최고에요" 출력
# review 6 이상이면 "좋아요" 출력
# review 4 이상이면 "그냥 그래요" 출력
# review 1점이상 이면 "별로에요" 출력
# 그 외 "안봤어요" 출력

if review >= 8
    puts "최고예요"
elsif review >= 6 && review < 8
    puts "좋아요"
elsif review >= 4 && review < 6
    puts "그냥 그래요"
elsif review >= 1 && review < 4
    puts "별로예요"
else
    puts "안 봤어요"
end

case
    when review >= 8
        puts "최고예요"
    when review >= 6
        puts "좋아요"
    when review >= 4
        puts "그냥 그래요"
    when review >= 1
        puts "별로예요"
    else
        puts "안 봤어요"
end