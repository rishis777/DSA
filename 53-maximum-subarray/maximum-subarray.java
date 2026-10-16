
class Solution {
    public int maxSubArray(int[] nums) {
        int maxsum = nums[0];
        int currentsum = 0;

        for (int start = 0; start < nums.length; start++) {
            currentsum = currentsum + nums[start];
            maxsum = Math.max(maxsum, currentsum);

            if (currentsum < 0) {
                currentsum = 0;
            }
        }

        return maxsum;
    }
}
