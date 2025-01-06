//+------------------------------------------------------------------+
//|                                                      Compare.mqh |
//|                                            Diamond Systems Corp. |
//|                          https://github.com/mql-systems/Includes |
//+------------------------------------------------------------------+
#property copyright "Diamond Systems Corp."
#property link      "https://github.com/mql-systems/Includes"

//+------------------------------------------------------------------+
//| Is double equal                                                  |
//+------------------------------------------------------------------+
bool IsDoubleEqual(double val1, double val2, int digits = 7)
{
   return (NormalizeDouble(val1 - val2, digits + 1) == 0);
}

//+------------------------------------------------------------------+
//| Compare double                                                   |
//| ---------------                                                  |
//| return -1 = val1 is less than val2 (val1 < val2)                 |
//| return  0 = val1 is equal to val2 (val1 == val2)                 |
//| return  1 = val1 is greater than val2 (val1 > val2)              |
//+------------------------------------------------------------------+
int CompareDouble(double val1, double val2, int digits = 7)
{
   if (NormalizeDouble(val1 - val2, digits + 1) == 0)
      return 0;
   if (val1 > val2)
      return 1;
   else
      return -1;
}

//+------------------------------------------------------------------+