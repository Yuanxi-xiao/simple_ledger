import 'dart:ffi';


class Bill {
  Long id;

  /// 金额
  double amount;

  /// 是否是收入 true=收入 false=支出
  bool isIncome;

  /// 备注
  String remark;

  /// 记账时间
  DateTime createTime;

  Bill({
    required this.id,
    required this.amount,
    required this.isIncome,
    required this.remark,
    required this.createTime,
  });
}


class Ledger{
  /// 账本名
  Long id;

  /// 账本名称
  String name;

  /// 周期开始时间


  /// 周期结束时间

  /// 锁
  /// 账本创建时间
  /// 账本最后修改时间

  Ledger({
    required this.id,
    required this.name,
  });



}