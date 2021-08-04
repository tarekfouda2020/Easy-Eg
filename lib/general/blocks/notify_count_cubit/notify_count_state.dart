part of 'notify_count_cubit.dart';

abstract class NotifyCountState extends Equatable {
  final int count;
  const NotifyCountState(this.count);
}

class NotifyCountInitial extends NotifyCountState {
  NotifyCountInitial() : super(0);

  @override
  List<Object> get props => [count];
}

class NotifyCountUpdate extends NotifyCountState {
  NotifyCountUpdate(int count) : super(count);

  @override
  List<Object> get props => [count];
}
