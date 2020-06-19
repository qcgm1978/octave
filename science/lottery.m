clc clear all#pkg load financialfunction prop=getNextLotteryProp(year)  thisYear=clock()(1)  differ=year-2011  if(differ>=3)  prop=12*3+(differ-3)*6+1  endif
endfunctiongetNextLotteryProp(2020)
