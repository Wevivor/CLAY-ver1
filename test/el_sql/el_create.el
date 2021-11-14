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


GET /clay_pushs/_count?q=to.user_id:bNG2rtFk6weX9mltGpI8zNz2yUX2
/*
{

  "query": {
     "bool": {
      "must":
        { "match": {
          "to.user_id":"bNG2rtFk6weX9mltGpI8zNz2yUX2"}  
       }
     
     }
    }
  }
}
*/

DELETE /clay_pushs/_doc/oLFVO48Uk4QMJVBe0v6s

GET /clay_pushs/_search
{

  "query": {
     "bool": {
      "must":
        { "match": {
          "to.user_id":"bNG2rtFk6weX9mltGpI8zNz2yUX2"}  
       }
     }     
    }
    ,"sort":{
     "register_date": "desc"
  }
}

GET /clay_reminds/_search
{

  "query": {
     "bool": {
      "must":
        { "range": {
          "r_alarm_time": {
            "lte":"now+10m/m",
            "gte":"now-40m/m"}  
       }
     }
     }
    },"sort":{
     "r_alarm_time": "desc"
  }
}

GET /clay_reminds/_search
{
  "query": {
    "match_all": {}
  },"sort":{
     "r_alarm_time": "desc"
  }
    
  }
}
GET /clay_userinfos/_search
{
 "size":0,
  "query": {
    "match_all": {
      }
    },
   "aggs": {
        "grp_by_user": {
          "terms": {
            "field": "user_id.keyword"
          }
        }
      }
}

post  /clay_userinfos/_create/1Fc2VycOa6N1KWw1xgLFuJHcv0r2
{
  "level":3
}
DELETE /clay_userinfos
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
     "group_by_user_id": {
        "terms": { 
          "field": "user_info.user_id.keyword"
        },
        "aggs":{
          "group_by_board_id":{
          "terms":{
          "field": "board_info.board_id.keyword"}
          }
        }
       
      }
  }  
}
POST /clay_contents/_search
{
  "size":0,
  "query": {
    "bool": {
      "must":
      [
        {   "match":{"user_info.user_id": "bNG2rtFk6weX9mltGpI8zNz2yUX2"}
        },
        { 
         
         "range": {
      "contents_create_date": {
           "gte": "now-10d/d" }  
       }
     }
     ]
    }
  },
  "aggs": {
    "content-count-byuser": {
      "terms": {
        "field": "user_info.user_id.keyword"
      }
    }
  }
}


GET /clay_contents/_search
{
  "query": {
    "bool": {
      
      "must": {"match":{"user_info.user_id": "1Fc2VycOa6N1KWw1xgLFuJHcv0r2"}
      }
      
        
      }
    }
  }
}
GET /clay_boards/_search
{
  "query": {
    "range": {
      "register_date": {
           "gte": "now-1w/w" }  
      }
    }
  }
}

GET /clay_pushs/_search
{
  "query": {
    "match_all": {}
  }
}



POST /clay_contents/_search
{
   "size":0,
    "query": {
    "bool": {
       "must": {"match":{"user_info.user_id": "qbxjmBTYs8aamKpaJqlOpyprLOF3"}
      }
        
      }
    },
  
  "aggs": {
    "group_by_state":{
      "terms": {
        "field": "board_info.board_id.keyword"
      }
    }
  }
}
GET /clay_contents/_search
{
   
  "query": {
  
    "bool": {
       "must":[ 
         {
         "match":{"user_info.user_id": "bNG2rtFk6weX9mltGpI8zNz2yUX2"}
         
        }
        ]
        
      }
    },
      "sort": [
        {"info.contents_fixed": "desc"}
        
      ]
}
GET /clay_boards/_search
{
  "query": {
    "query_string": {
       "query":"\"테스트\"",
        "default_field": "info.board_name"
      }
    }
  }

GET /clay_boards/_search
{
  "query": {
    "bool": {
       "must": [ {"match":
        {"board_creator.user_id": "1Fc2VycOa6N1KWw1xgLFuJHcv0r2"}
        }
      ]
        
    }
  },
  "sort": [
    
        {"info.is_fixed": "desc"},
         {
          "list_date": {
            "order": "desc"
          }
        }
        
      ]
    }


GET /clay_contents/_search
{
  "query": {
    "bool": {
       "must":[ {"match":{"user_info.user_id": "qbxjmBTYs8aamKpaJqlOpyprLOF3"}
        },
        {"bool":{
          "should": [
              {"match_phrase_prefix":{"info.contents_comment": "테스트"}
             },
              {"match_phrase_prefix":{"info.contents_description": "테스트"}
             },
              {"match_phrase_prefix":{"info.contents_title": "테스트"}
             },
              {"match_phrase_prefix":{"info.contents_memo": "테스트"}
             }
          ]
            
          }
        }
        ]
      }
    },
      "sort": [
         {"info.contents_fixed": "desc"},
         {
          "contents_create_date": {
            "order": "desc",
            "format": "strict_date_optional_time_nanos"
          }
        }
       
        
      ]
}





delete /clay_reminds


delete /clay_pushs

GET /clay_pushs/_search
{
  "query": {
    "bool": {
      "must": {"match":{"to.user_id": "qbxjmBTYs8aamKpaJqlOpyprLOF3"}
      }
      }
    }
  }
}

GET /clay_reminds/_search
{
  "query": {
    "bool": {
      "must": {"match":{"from.user_id": "qbxjmBTYs8aamKpaJqlOpyprLOF3"}
      }
      
        
      }
    }
  }
}
GET /clay_contents/_search
{
  "query": {
    "bool": {
      "must": {"match":{"from.user_id": "1Fc2VycOa6N1KWw1xgLFuJHcv0r2"}
      }
      
        
      }
    }
  }
}
POST /clay_contents/_delete_by_query
{
  "query": {
    "bool": {
      "must": {"match":{"user_info.user_id": "1Fc2VycOa6N1KWw1xgLFuJHcv0r2"}
      }
    }
  }
}

POST /clay_boards/_delete_by_query
{
  "query": {
    "bool": {
      "must": {"match":{"board_creator.user_id": "1Fc2VycOa6N1KWw1xgLFuJHcv0r2"}
      }
    }
  }
}
GET /clay_reminds/_search
{
  "query": {
    "bool": {
      "must": {"match":{"from.user_id": "bNG2rtFk6weX9mltGpI8zNz2yUX2"}
      }
      
        
      }
    
  }
}

GET /clay_contents/_search
{"query":{"bool":{"must":[{"match":{"user_info.user_id":"a00L2RmyOzYX2K5LTOJkdWyihXH3"}}]}},"sort":[{"info.contents_fixed":"desc"}]}



GET /clay_contents/_search
{
  "query": {
    "bool": {
      "must": {"match":{"user_info.user_id":"qbxjmBTYs8aamKpaJqlOpyprLOF3"}}
      }
    },
    "sort": [
        {"info.contents_fixed": "desc"}
      ]
  }
}
GET /clay_contents/_search
{
  "query": {
    "bool": {
      "must": {"match_all":{}}
      }
    }
  }
}


GET /clay_boards/_search
{
  "query": {
    "bool": {
      "must": {"match_all": {}}
      
        
      }
    }
  }
}

GET /afada_userinfos/_search
{

  "query": {
   "term" : { "level" : 1 }

  }
}
POST /afada_userinfos/_search
{
  "query": {
    "wildcard": {"displayName": "이한철"}
    
  },
  "size":3,
  "from":0
  
}
POST /afada_userinfos/_search
{
  
  "from":3,
  "size":3,

  "query": {
    "match_all": {}
    
  }
  
  
  
}
delete /afada_pushs
GET /afada_posts/_search
{
  "query": {
    "match_all": {}
  }
}

      
GET /afada_bookmarks/_search
{"query": {"bool": {"must": [{"match": {"owner.uid": "NE5YNZ2tkFbVUHSfTqY62eZIE0p1"}}]}}, "sort": [{"dtCreated": "desc"}]}


