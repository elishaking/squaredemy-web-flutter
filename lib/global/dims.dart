double responsiveSize(final double contentWidth, final double value1920){
  final Map<double, double> paddings = {
    1700: value1920,
    1500: value1920 * 0.9,
    1100: value1920 * 0.8,
    550: value1920 * 0.6
  };

  if(contentWidth < 550) return paddings[550];
  if(contentWidth < 1100) return paddings[1100];
  if(contentWidth < 1500) return paddings[1500];

  return paddings[1700];
}