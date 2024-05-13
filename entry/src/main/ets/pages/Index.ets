@Entry
@Component
struct Index {
  @State message: string = 'Hello World'

  build() {
    Column() {
      Row() {
        Text("代办事项").fontSize(50)
      }
    }
  }
}