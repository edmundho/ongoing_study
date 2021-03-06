function hourglassSum(arr) {
  let hourglassSums = [];

  for (let i = 0; i < arr.length - 2; i++) {
    for (let j = 0; j < arr[i].length - 2; j++) {
      let hourglass = [
        arr[i][j],
        arr[i][j + 1],
        arr[i][j + 2],
        arr[i + 1][j + 1],
        arr[i + 2][j],
        arr[i + 2][j + 1],
        arr[i + 2][j + 2]
      ];

      hourglassSums.push(
        hourglass.reduce((acc, el) => acc + el)
      );
    }
  }

  return Math.max(...hourglassSums);
}