import hilog from '@ohos.hilog';
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
        ToDoListItem({ content: item, toDoList: $toDoList })
      }, (item: string) => JSON.stringify(item))

      Row({space: 2}){
        TextInput({placeholder:'添加代办事项'})
          .width('70%').onChange((value: string) => {
          this.toBeAddedItem = value;
        })
        Button('新增')
          .width('25%')
          .align(Alignment.End)
          .onClick(() => {
          this.toDoList.push(this.toBeAddedItem);
        })
      }


    }
  }
}


