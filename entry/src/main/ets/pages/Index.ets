import {ToDoListItem}  from "./component/ToDoListItem"

@Entry
@Component
struct Index {
  @State toDoList: Array<string> = ['杀猪', '喂羊', '吃饭','写代码']

  build() {
    Column() {
      Row() {
        Text("代办事项").fontSize(50)
      }

      ForEach(this.toDoList, (item: string) => {
        ToDoListItem({ content: item })
      }, (item: string) => JSON.stringify(item))
    }
  }
}