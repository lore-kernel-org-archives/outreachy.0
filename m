X-GM-THRID: 687846981632
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,14f6120276a18805,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.80.7 with SMTP id n7mr1069756wix.0.1424355838317;
        Thu, 19 Feb 2015 06:23:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.10.5 with SMTP id e5ls144206lab.37.gmail; Thu, 19 Feb 2015
 06:23:57 -0800 (PST)
X-Received: by 10.112.168.104 with SMTP id zv8mr613876lbb.10.1424355837840;
        Thu, 19 Feb 2015 06:23:57 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-wg0-x235.google.com (mail-wg0-x235.google.com. [2a00:1450:400c:c00::235])
        by gmr-mx.google.com with ESMTPS id ew5si9045128wid.1.2015.02.19.06.23.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Feb 2015 06:23:57 -0800 (PST)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c00::235 as permitted sender) client-ip=2a00:1450:400c:c00::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c00::235 as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x235.google.com with SMTP id a1so7453823wgh.12
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Feb 2015 06:23:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=ZS1vrymr/Ej8juxSPW2gTA7myI9anoiyRPS8P7V8kwg=;
        b=Ckv9Eg6S9gmvSVeHgOrxu+nWOC3d3F4oJghmlisgTiXV9Rqny5sFCU3TAIzvS8OzZT
         BitWUJQOQtfVlMy0CpvYvmlC3HDnICal4MVEMxTRabITmpieFX1KVUJou/IlKYbZtaPh
         yYas9Oa6YjwXgwGapN3gCBfRPOqXkkoRsSBdZzJ119AkLv5rFZzmir1ZcrXt7uaJVWbZ
         W1PtBE1a32g43dfVnQsWaYwqYfeLUnot72jqBwpWmUSJklAn9qGg34sg6pzTFhLNUIMX
         OnzSOSXZilQd6226twJX79JeZadzolQ5j1cmn+L12Gx2k9KFNX7EUI8Nybd4YjUyrtQr
         suQQ==
X-Received: by 10.194.80.193 with SMTP id t1mr10114239wjx.8.1424355837244;
        Thu, 19 Feb 2015 06:23:57 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.189.63.210])
        by mx.google.com with ESMTPSA id fs8sm30409565wib.8.2015.02.19.06.23.55
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 19 Feb 2015 06:23:56 -0800 (PST)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH 1/2] Staging: drivers: hid: hid-apple.c: fixed a coding style issue
Date: Thu, 19 Feb 2015 16:23:44 +0200
Message-Id: <1424355824-23375-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

Fixing a coding style issue.

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
 drivers/hid/hid-apple.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/hid/hid-apple.c b/drivers/hid/hid-apple.c
index f822fd2..df9348f 100644
--- a/drivers/hid/hid-apple.c
+++ b/drivers/hid/hid-apple.c
@@ -160,7 +160,7 @@ static const struct apple_key_translation swapped_option_cmd_keys[] = {
 	{ KEY_LEFTALT,	KEY_LEFTMETA },
 	{ KEY_LEFTMETA,	KEY_LEFTALT },
 	{ KEY_RIGHTALT,	KEY_RIGHTMETA },
-	{ KEY_RIGHTMETA,KEY_RIGHTALT },
+	{ KEY_RIGHTMETA, KEY_RIGHTALT },
 	{ }
 };
 
-- 
1.9.1


