int countUniqueVisitors(List<int> visitorIds) {
 
  Set<int> uniqueIds = visitorIds.toSet();
  
 
  return uniqueIds.length;
}

void main() {

  List<int> visitorIds = [101, 205, 101, 304, 205, 101, 400];

  int totalUnique = countUniqueVisitors(visitorIds);

  print("Total check-ins today: ${visitorIds.length}");
  print("Number of unique visitors: $totalUnique"); 
}