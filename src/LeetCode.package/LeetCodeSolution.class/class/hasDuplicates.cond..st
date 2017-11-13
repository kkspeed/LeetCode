private helpers
hasDuplicates: anArray cond: c
   |tmp|
   tmp := c value: anArray.
  ^(tmp asSet size = tmp size) not