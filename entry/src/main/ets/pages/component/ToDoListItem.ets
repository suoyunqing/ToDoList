@Component
export struct ToDoListItem {

  private  content: string = '';

    build() {
        Row() {
          Image($r('app.media.default_icon')).width(15);
          Text(this.content)
        }
    }
}