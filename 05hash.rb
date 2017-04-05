# 이번엔 누구 생일인지까지 함께 저장해봅시다. "key" => value (가족 생일 넣으세요, HASH 사용해봅시다 )
birthday = {
    "엄마" => 525,
    "아빠" => 219,
    "보라" => 1209,
    "정권" => 823
}

print birthday
puts ""

# 부모님 생일을 뽑아봅시다.
print birthday["아빠"]
puts ""

# 내 생일을 추가해봅시다.
birthday["보라"] = 12091


# 잘 들어갔는지 확인해봅시다. key 값으로 찾을 수도 있고,
puts birthday["보라"]
puts birthday.has_key?("보라")

# 값으로도 찾아볼 수 있습니다.
puts birthday.has_value?(1209)
puts birthday.has_value?(12091)