extension MyListExtension<T>  on List<T> {
  List<T> newListWithInsertOrReplace({
    required T newData,
    required bool Function(T) equalCondition,
  }){
    if (indexWhere((data) => equalCondition(data)) == -1){
      return [...this, newData];
    }

    return map((oldData){
      if (equalCondition(oldData)){
        return newData;
      }
      return oldData;
    }).toList();
  }
}