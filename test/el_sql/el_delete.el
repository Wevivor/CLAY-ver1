POST /clay_boards/_delete_by_query
{
  "query": 
      {"match":{"board_creator.user_id": "qbxjmBTYs8aamKpaJqlOpyprLOF3"}
      }
  }
}

delete /clay_boards/_doc/oVhyKaNXLIg7yHCGQbKR


POST /clay_contents/_delete_by_query
{
  "query": 
      {"match":{"user_info.user_id": "qbxjmBTYs8aamKpaJqlOpyprLOF3"}
      }
  }
}
POST /clay_boards/_delete_by_query
{
  "query": {
    "bool": {
      "must": {"match":{"board_creator.user_id": "a00L2RmyOzYX2K5LTOJkdWyihXH3"}
      }
      
        
      }
    }
  }
}

POST /clay_contents/_delete_by_query
{
  "query": {
    "bool": {
      "must": {"match":{"user_info.user_id": "a00L2RmyOzYX2K5LTOJkdWyihXH3"}
      }
      
        
      }
    }
  }
}