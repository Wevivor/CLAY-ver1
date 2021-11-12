post /afada_userinfos/_doc/NE5YNZ2tkFbVUHSfTqY62eZIE0p4
{
  "dtCreated" : "2021-08-06T23:35:44.710Z",
          "dtUpdated" : "2021-08-06T23:35:44.710Z",
          "blandName" : "아디다스",
          "displayName" : "이한철01",
          "email" : "handeveloper@gmail.com",
          "homeURL" : null,
          "isPush" : null,
          "level" : 1,
          "photoURL" : null,
          "snsURL" : null,
          "token" : null,
          "uid" : "7rONAfLDY0fsjHdmrMuwpyipVlJ3"
         
}

POST /afada_posts/_create/6D1r14xz8gUS8QVdL5fW
 {
       
    "bookmark" : {
      "cnt" : 1,
      "lists" : [
        "NE5YNZ2tkFbVUHSfTqY62eZIE0p1"
      ]
    },
    "favorite" : {
      "cnt" : 1,
      "lists" : [
        "YH7ZDuqUC3ULbflRlKaLlvln9El1"
      ]
    },
    "imgUrl" : "https://firebasestorage.googleapis.com/v0/b/afad-5b458.appspot.com/o/posts%2FNE5YNZ2tkFbVUHSfTqY62eZIE0p1%2Fc34f504a-2bf6-4f95-a35b-b801a427bb44%2Foriginal.jpg?alt=media&token=2dccaf21-edb1-4436-8ecb-ea3f9f631a50",
    "cntView" : 1,
    "contentKind" : 1,
    "content" : "12345",
    "dtCreated" : "2021-08-11T01:59:35.630Z",
    "dtUpdated" : "2021-08-11T01:59:35.630Z",
    "id" : "6D1r14xz8gUS8QVdL5fW",
    "thumbnail" : null,
    "title" : "test1",
    "uid" : "NE5YNZ2tkFbVUHSfTqY62eZIE0p1",
    "thumbnails" : null
    
  }

  POST /clay_contents/_create/PDGgDdULR6L17xpJzjX5
{"contents_creator":{"level":1,"displayName":"한살림","photoURL":"https://firebasestorage.googleapis.com/v0/b/afad-5b458.appspot.com/o/posts%2FNE5YNZ2tkFbVUHSfTqY62eZIE0p1%2Fffe31873-ec40-4227-bd47-816558638c1d%2Foriginal.jpg?alt=media&token=df0a7a63-be94-471a-b453-46558946cf1c","uid":"a00L2RmyOzYX2K5LTOJkdWyihXH3","email":"hansallim@gmail.com"},"id":"LbWfBBjfkISaq3cDbWgC","create_date":"2021-10-14T20:51:25.937Z","info":{"contents_title":"Contents01","contents_unique_link":"contents_unique_link","contents_url":null,"contents_images":"https://firebasestorage.googleapis.com/v0/b/afad-5b458.appspot.com/o/posts%2FNE5YNZ2tkFbVUHSfTqY62eZIE0p1%2Fffe31873-ec40-4227-bd47-816558638c1d%2Foriginal.jpg?alt=media&token=df0a7a63-be94-471a-b453-46558946cf1c","contents_comment":"contents_comment","contents_description":"contents_description01","comment":[],"contents_id":"LbWfBBjfkISaq3cDbWgC","create_date":"2021-10-14T20:51:25.937Z"},"contents_id":"LbWfBBjfkISaq3cDbWgC"}



GET /clay_contents/_search
{
  "size":0,
  "query": {
    "bool": {
      "must":
       { "range": {
      "contents_create_date": {
           "gte": "now-1w/w" }  
       }
     }
    }
  },
  "aggs": {
     "board": {
        "terms": { 
          "field": "user_info.user_id.keyword"
        },
        "aggs":{
          "my-sub-aggs":{
          "terms":{
          "field": "board_info.board_id.keyword"}
          }
        }
       
      }
  }  
}