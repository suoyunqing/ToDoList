import {ToDoListItem}  from "./component/ToDoListItem"

@Entry
@Component
struct Index {
  @State toDoList: Array<string> = ['杀猪', '喂羊', '吃饭','写代码']

  private  toBeAddedItem: string = null;

  build() {
    Column() {
      Row() {
        Text("代办事项").fontSize(50)
      }

      ForEach(this.toDoList, (item: string) => {
        ToDoListItem({ content: item })
      }, (item: string) => JSON.stringify(item))

      Column(){
        TextInput({placeholder:'添加代办事项'}).onChange((value: string) => {
          this.toBeAddedItem = value;
        })
        Button('新增').onClick(() => {
          this.toDoList.push(this.toBeAddedItem);
        })
      }
    }
  }
}