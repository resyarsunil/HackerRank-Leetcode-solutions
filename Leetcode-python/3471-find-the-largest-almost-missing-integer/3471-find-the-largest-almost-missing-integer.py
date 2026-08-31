class Solution:
    def largestInteger(self, nums: List[int], k: int) -> int:
        count = {}

        # Check every subarray of size k
        for i in range(len(nums) - k + 1):
            window = set(nums[i:i + k])

            for x in window:
                count[x] = count.get(x, 0) + 1

        # Find the largest number appearing in exactly one subarray
        ans = -1

        for x, freq in count.items():
            if freq == 1:
                ans = max(ans, x)

        return ans

   
       

        
        

# Synced seamlessly with LeetHub Pro
# Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
# Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna