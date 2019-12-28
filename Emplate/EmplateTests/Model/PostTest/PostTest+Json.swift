//
//  PostTest+Json.swift
//  EmplateTests
//
//  Created by Ahmed Madian on 12/26/19.
//  Copyright © 2019 Ahmed Madian. All rights reserved.
//

extension PostTest {
    var validJson: String {
        return """
        {
            "type": "posts",
            "id": 49755,
            "name": "Han Kjøbenhavn Boxy Shirt",
            "approved": true,
            "collectible": true,
            "parameters": "test",
            "url": "https://emplate.dev/v9/posts/49755.html",
            "created_at": "2019-09-24T08:10:19+00:00",
            "updated_at": "2019-12-25T01:46:30+00:00",
            "deleted_at": "2019-12-25T01:46:30+00:00",
            "postfields": [
                {
                    "type": "postfields",
                    "id": 56743,
                    "post_id": 49755,
                    "postFieldType_id": 6,
                    "order": 0,
                    "content": "test content",
                    "created_at": "2019-09-24T08:10:19+00:00",
                    "updated_at": "2019-09-24T08:10:19+00:00"
                }
            ],
            "postperiods": [
                {
                    "type": "postperiods",
                    "id": 55504,
                    "start": "2019-09-23T22:00:00+00:00",
                    "stop": "2019-12-31T22:59:00+00:00",
                    "created_at": "2019-09-24T08:10:56+00:00",
                    "updated_at": "2019-09-24T08:10:56+00:00"
                }
            ],
            "thumbnail": {
                "type": "media",
                "id": 78816,
                "name": null,
                "filetype": "jpeg",
                "width": 1920,
                "height": 1920,
                "urls": {
                    "original": "https://play-emplate.ams3.cdn.digitaloceanspaces.com/media/78816.jpeg",
                    "large": "https://play-emplate.ams3.cdn.digitaloceanspaces.com/media/78816-large.jpeg",
                    "mobile": "https://play-emplate.ams3.cdn.digitaloceanspaces.com/media/78816-mobile.jpeg",
                    "thumbnail": "https://play-emplate.ams3.cdn.digitaloceanspaces.com/media/78816-thumbnail.jpeg"
                }
            }
        }
        """
    }
    
    var inValidJsonMissingId: String {
        return """
        {
            "type": "posts",
            "name": "Han Kjøbenhavn Boxy Shirt",
            "approved": true,
            "collectible": true,
            "parameters": "test",
            "url": "https://emplate.dev/v9/posts/49755.html",
            "created_at": "2019-09-24T08:10:19+00:00",
            "updated_at": "2019-12-25T01:46:30+00:00",
            "deleted_at": "2019-12-25T01:46:30+00:00",
            "postfields": [
                {
                    "type": "postfields",
                    "id": 56743,
                    "post_id": 49755,
                    "postFieldType_id": 6,
                    "order": 0,
                    "content": "test content",
                    "created_at": "2019-09-24T08:10:19+00:00",
                    "updated_at": "2019-09-24T08:10:19+00:00"
                }
            ],
            "postperiods": [
                {
                    "type": "postperiods",
                    "id": 55504,
                    "start": "2019-09-23T22:00:00+00:00",
                    "stop": "2019-12-31T22:59:00+00:00",
                    "created_at": "2019-09-24T08:10:56+00:00",
                    "updated_at": "2019-09-24T08:10:56+00:00"
                }
            ],
            "thumbnail": {
                "type": "media",
                "id": 78816,
                "name": null,
                "filetype": "jpeg",
                "width": 1920,
                "height": 1920,
                "urls": {
                    "original": "https://play-emplate.ams3.cdn.digitaloceanspaces.com/media/78816.jpeg",
                    "large": "https://play-emplate.ams3.cdn.digitaloceanspaces.com/media/78816-large.jpeg",
                    "mobile": "https://play-emplate.ams3.cdn.digitaloceanspaces.com/media/78816-mobile.jpeg",
                    "thumbnail": "https://play-emplate.ams3.cdn.digitaloceanspaces.com/media/78816-thumbnail.jpeg"
                }
            }
        }
        """
    }
}
