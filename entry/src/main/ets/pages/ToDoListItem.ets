@Component
export struct ToDoListItem {

  @State message: string = '';

    build() {
        Row() {
          Text(this.message)
        }
    }
}