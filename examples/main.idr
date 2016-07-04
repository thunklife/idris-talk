module Main

import Printf

main : IO ()
main = do
  formatString <- getLine
  return (printf formatString)
