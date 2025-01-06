//+------------------------------------------------------------------+
//|                                           OrderStateToString.mqh |
//|                                            Diamond Systems Corp. |
//|                          https://github.com/mql-systems/Includes |
//+------------------------------------------------------------------+
#property copyright "Diamond Systems Corp."
#property link      "https://github.com/mql-systems/Includes"

#include "../Env/Language.mqh"

/**
 * ENUM_ORDER_STATE to String
 * 
 * @param  orderState: ENUM_ORDER_STATE
 * @param  lang: ENUM_LANGUAGE
 * @return (string) Status description
 */
string OrderStateToString(ENUM_ORDER_STATE orderState, ENUM_LANGUAGE lang = LANG_EN)
{
   switch (lang)
   {
      case LANG_EN: return OrderStateToString_EN(orderState);
      case LANG_RU: return OrderStateToString_RU(orderState);
      
      default: return OrderStateToString_EN(orderState);
   }
}

string OrderStateToString_EN(const ENUM_ORDER_STATE orderState)
{
   switch (orderState)
   {
      case ORDER_STATE_STARTED:        return "Order checked, but not yet accepted by broker";
      case ORDER_STATE_PLACED:         return "Order accepted";
      case ORDER_STATE_CANCELED:       return "Order canceled by client";
      case ORDER_STATE_PARTIAL:        return "Order partially executed";
      case ORDER_STATE_FILLED:         return "Order fully executed";
      case ORDER_STATE_REJECTED:       return "Order rejected";
      case ORDER_STATE_EXPIRED:        return "Order expired";
      case ORDER_STATE_REQUEST_ADD:    return "Order is being registered (placing to the trading system)";
      case ORDER_STATE_REQUEST_MODIFY: return "Order is being modified (changing its parameters)";
      case ORDER_STATE_REQUEST_CANCEL: return "Order is being deleted (deleting from the trading system)";
      default: return "";
   }
}

string OrderStateToString_RU(const ENUM_ORDER_STATE orderState)
{
   switch (orderState)
   {
      case ORDER_STATE_STARTED:        return "Ордер проверен на корректность, но еще не принят брокером";
      case ORDER_STATE_PLACED:         return "Ордер принят";
      case ORDER_STATE_CANCELED:       return "Ордер снят клиентом";
      case ORDER_STATE_PARTIAL:        return "Ордер выполнен частично";
      case ORDER_STATE_FILLED:         return "Ордер выполнен полностью";
      case ORDER_STATE_REJECTED:       return "Ордер отклонен";
      case ORDER_STATE_EXPIRED:        return "Ордер снят по истечении срока его действия";
      case ORDER_STATE_REQUEST_ADD:    return "Ордер в состоянии регистрации (выставление в торговую систему)";
      case ORDER_STATE_REQUEST_MODIFY: return "Ордер в состоянии модификации (изменение его параметров)";
      case ORDER_STATE_REQUEST_CANCEL: return "Ордер в состоянии удаления (удаление из торговой системы)";
      default: return "";
   }
}

//+------------------------------------------------------------------+