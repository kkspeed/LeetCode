-- Solution to #725 split linked list to parts.
-- Link: https://leetcode.com/problems/split-linked-list-in-parts/
splitParts xs n = doSplit xs $ genParts (length xs) n
    where genParts l 1 = [l]
          genParts 0 n = replicate n 0
          genParts l n = (l `div` n) : genParts (l - l `div` n) (n - 1)
          doSplit _ [] = []
          doSplit xs (n:ns) = take n xs : doSplit (drop n xs) ns
