@Component
export struct ToDoListItem {

  private  content: string = '';

    build() {
        Row() {
          Text(this.content)
        }
    }
}