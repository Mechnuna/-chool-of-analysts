nums = [0, 27, 15, -15]

target = 12

#Будем вычитать из target nums[i] и тем самым находить ему пару 
#И если такое число будет в nums, то возвращаем их индексы

def num_search(nums, target):
    for i in nums:
        i2 = target - i
        if i2 in nums and i != i2:
            return (nums.index(i), nums.index(i2))

print(num_search(nums, target))