import Unit

fst' (x,xs) = x

snd' (x,xs) = xs

main = do {
  assertEqual 1 (fst' (1, 2));
  assertEqual 2 (snd' (1, 2));
}
