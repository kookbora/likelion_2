# *루비과제 

# 1.랜덤하게 로또번호 6개 뽑기
# 2. 이번주 로또 번호 비교
# 3. 몇 등인지 알려주는 프로그램

# 1. 'my_numbers'라는 배열에 1~45에서 6개 랜덤한 숫자 뽑아 정렬
my_numbers = (1..45).to_a.sample(6).sort

print my_numbers
puts ""

# 2. 웹에서 가져온 정보 정리
#참고
# 1. 로또 홈페이지 접속
# http://www.nlotto.co.kr/common.do?method=main
# 2. API 로또 홈페이지
# http://www.nlotto.co.kr/common.do?method=getLottoNumber&drwNo=

require('open-uri')# 웹 페이지 open 에 필요.

# JSON을 Hash로 변환하는데 필요.
require('json')
#출력을 보기좋게 바꿔준다
require('awesome_print')


# page에 해당 웹 페이지를 열어서 저장.
page = open('http://www.nlotto.co.kr/common.do?method=getLottoNumber&drwNo=')

# lotto_info 에 page 내용 (JSON 형식의 data) 을 읽어서 저장.
lotto_info = page.read

# lotto_hash 에 JSON 형식인 lotto_info 를 Hash 로 파싱(변환)하여 저장.
lotto_hash = JSON.parse(lotto_info)

puts lotto_hash
#    'drw_numbers'라는 배열에 이번주 추첨 번호 6개 저장
drw_numbers = [lotto_hash["drwtNo1"], lotto_hash["drwtNo2"], lotto_hash["drwtNo3"], lotto_hash["drwtNo4"], lotto_hash["drwtNo5"], lotto_hash["drwtNo6"]]
drw_numbers.sort
#    'bonus_number' 변수에 이번주 보너스 번호 저장 
bonus_number = lotto_hash["bnusNo"]

# 3. 랜덤으로 뽑은 나의 번호와 실제 추첨 번호 비교

#    'match_numbers' 라는 배열에 랜덤 추첨번호와 이번주 당첨번호 중에서 겹치는 번호를 저장한다. 

#for m in my_numbers do
#    for d in drw_numbers do
#        if m == d
#            match_numbers = m
#        end
#    end
#end

match_numbers = my_numbers & drw_numbers

puts match_numbers

match_cnt = match_numbers.count

#    <로또 당첨 규칙>

#    1등 : 번호 6개가 모두 같을 경우
#    2등 : 번호 6개 중 5개가 같고 보너스 번호가 맞은 경우
#    3등 : 번호 6개 중 5개가 같을 경우
#    4등 : 번호 6개 중 4개가 같을 경우
#    5등 : 번호 6개 중 3개가 같을 경우
#    그 외 : 꽝


if (match_cnt == 6)
    result = '1등'
elsif (( match_cnt == 5) && my_numbers.include?(bonus_number))
    result = '2등'
elsif match_cnt == 5
    result = '3등'
elsif match_cnt == 4
    result = '4등'
elsif match_cnt == 3
    result = '5등'
else
    result ='꽝'
end



# 4. 결과 출력

#    이번주 로또 번호는 [1, 2, 3, 9, 12, 23] 이고, 보너스 번호는 10 입니다.
#      추첨한 로또 번호는 [4, 9, 12, 17, 28, 37] 입니다.
#      겹치는 번호는 [9, 12] 입니다.
#      결과는 꽝 입니다.


puts "이번주 로또 번호는 #{drw_numbers} 이고,  보너스 번호는 #{bonus_number} 입니다."
puts "추첨한 로또 번호는 #{my_numbers} 입니다."
puts "겹치는 번호는 #{match_numbers} 입니다."
puts  "결과는 #{result} 입니다."



# 5. 참고 
# json정보를 hash로 ���싱 했을 때

# {
#   "bnusNo": 17,
#   "firstWinamnt": 1903214584,
#   "totSellamnt": 73337880000,
#   "returnValue": "success",
#   "drwtNo3": 12,
#   "drwtNo2": 9,
#   "drwtNo1": 7,
#   "drwtNo6": 28,
#   "drwtNo5": 23,
#   "drwtNo4": 14,
#   "drwNoDate": "2017-03-25",
#   "drwNo": 747,
#   "firstPrzwnerCo": 9
# }