import Unit

points startX startY = (startX, startY) : points (startX + 1) (startY + 1)

filterPoints points = filter (\(x,y) -> x == y) points

distances points = map (\(x,y) -> sqrt(x^2 + y^2)) points

main = do {
  assertEqual (6, 10) (points 1 5 !! 5);
  assertEqual (15, 17) (points 5 7 !! 10);
  assertEqual [5.0, 5.0, 0.0] (distances [(3,4), (4,3), (0,0)]);
}
