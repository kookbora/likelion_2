# 이름이 입력되면 반갑습니다 ~님 이라고 출력해주는 매서드를 만들어봅시다.
def welcome(name)
    puts "반갑습니다, " + name + "님."
end

# 매서드는 호출되기 전까지는 대기상태! 호출을 해줘야 실행 됩니다.
welcome("bora")
welcome("bora")


# 숫자가 입력되면 그 숫자에 -5를 해주는 매서드를 만들어봅시다.
def minus_5(num)
    puts num-5
end

# 매서드 호출
minus_5(1)
minus_5(6)

