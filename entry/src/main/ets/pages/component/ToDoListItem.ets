import hilog from '@ohos.hilog';
@Component
export struct ToDoListItem {

  private  content: string = '';

  @State private isCompleted: boolean = false;

  @Link toDoList: Array<string>;

    build() {
        Row() {
          if (this.isCompleted) {
            Image($r('app.media.completed_icon')).width(15);
            Text(this.content)
              .decoration({ type: TextDecorationType.LineThrough, color: Color.Red})
          } else {
            Image($r('app.media.default_icon')).width(15);
            Text(this.content)
          }

          Button('删除')
            .width('25%')
            .align(Alignment.End)
            .onClick(() => {
              this.toDoList.forEach((value) => {
                hilog.debug(1, value, value)}
              )
              this.toDoList = this.toDoList.filter((toDoItem) => toDoItem != this.content);
            })

        }.onClick(() => {
          hilog.debug(1,"-------","+++++++")
          this.isCompleted = !this.isCompleted
        })
    }
}
