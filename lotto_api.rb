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

#=> JSON 데이터가 Hash 로 변환되어 출력.
puts lotto_hash

#더짧게
lotto_hash = JSON.parse(open('http://www.nlotto.co.kr/common.do?method=getLottoNumber&drwNo=').read)

ap lotto_hash