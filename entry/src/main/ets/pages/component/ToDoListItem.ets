import hilog from '@ohos.hilog';
@Component
export struct ToDoListItem {

  private  content: string = '';

  @State private isCompleted: boolean = false;

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

        }.onClick(() => {
          hilog.debug(1,"-------","+++++++")
          this.isCompleted = !this.isCompleted
        })
    }
}