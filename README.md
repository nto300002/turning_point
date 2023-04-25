### 要件定義

https://www.notion.so/bdefce29c03f4f4a9f5da8b17949b5dd?v=3dab767a762d457489409cbd6622c83d&p=b8771c4e030649f19748a8b1eb14315a&pm=s

### 画面設計図

https://www.figma.com/file/JfyGOt4RHaIYomf17mnnnO/%E5%8E%9F%E4%BD%93%E9%A8%93?node-id=0-1&t=S2Hx2WOxNJ2FYZQ9-0

### ER 図

https://zenn.dev/yasuda/scraps/5b37805315215d

```mermaid
erDiagram
    User ||--o{ Diary : places
    User ||--o{ TurningPoint : points
    User {
        int id
        string icon
        string name
        string email
        string password
        datetime created_at
    }
    Diary }o--|| SearchWord : words
    Diary {
        int id
        int user_id
        int searchword_id
        string title
        text detail
        string emotion
        int evaluation
        datetime created_at
        datetime updated_at
    }
    TurningPoint }o--|| SearchWord : words
    TurningPoint {
        int id
        int user_id
        int searchword_id
        string current_task
        string enthusiastic
        string favorite_word
        string unpleasant_thing
        string what_i_want_to_do_in_the_future
        datetime created_at
        datetime updated_at
    }
   SearchWord {
       int id
       int user_id
       string word
       int word_count
   }
  Goal |o--|| TurningPoint : goal
  Goal {
  int id
  int user_id
  text goal
 }
Question ||--|| TurningPoint : question
Question {
int id
int user_id
int turningpoint_id
string question
string column
 }
```
