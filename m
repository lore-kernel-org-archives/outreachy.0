X-GM-THRID: 9471955828736
X-Received: by 10.152.19.67 with SMTP id c3mr13035296lae.7.1426982530384;
        Sat, 21 Mar 2015 17:02:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.206.104 with SMTP id ln8ls525167lac.94.gmail; Sat, 21 Mar
 2015 17:02:09 -0700 (PDT)
X-Received: by 10.152.45.7 with SMTP id i7mr14313523lam.9.1426982529624;
        Sat, 21 Mar 2015 17:02:09 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wg0-x244.google.com (mail-wg0-x244.google.com. [2a00:1450:400c:c00::244])
        by gmr-mx.google.com with ESMTPS id el6si205597wib.0.2015.03.21.17.02.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Mar 2015 17:02:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::244 as permitted sender) client-ip=2a00:1450:400c:c00::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::244 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x244.google.com with SMTP id y19so12032615wgg.2
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Mar 2015 17:02:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=6mcBIwUedtbzhJgABkssaJNtJmnui3vbPHzVe6X27zs=;
        b=asbnBLRixFji8AnnntOcyiGkoW0uxqIfNoIDL0zWkfNa8x+fxQp87hvCpMy1ToU9tW
         DmeuBKUPVqLSiQkY1Vcp3FF6p8O8RLREiMy70cv2E4XsfHufazDiCND2tuODVovXB9fJ
         LAkwLAswBlLTMH0MmOAvlTLAYKfULQBiOCqricIm5z9iG5lxVwUGHkzFpeuOefOJKYUF
         eEeXdbAz18kGI9ttyhSy8hp6SUrWTVyiMLsHWMf/61S6I9xp3RTck46RSMYMHTrMkBK5
         jeCAUOPOuSSqR7SYyD2duiEDmrMVfoIMnxt6uRnnS5nBP50LqehUtZPN9VeQVwFWH96u
         teMg==
X-Received: by 10.194.94.164 with SMTP id dd4mr176194083wjb.56.1426982529510;
        Sat, 21 Mar 2015 17:02:09 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneen-vb ([79.170.54.138])
        by mx.google.com with ESMTPSA id k1sm12641753wjn.9.2015.03.21.17.02.07
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Mar 2015 17:02:08 -0700 (PDT)
Received: by haneen-vb (Postfix, from userid 1000)
	id D81E6C1FA8; Sun, 22 Mar 2015 03:02:02 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH] Staging: media: remove useless dev_info to avoid null ptr dereference
Date: Sun, 22 Mar 2015 03:02:02 +0300
Message-Id: <1426982522-4160-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1

Context is used in dev_info after it has been freed.
This patch fix that issue by removing the dev_info itself,
for msg doesn't look much necessary.

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 drivers/staging/media/lirc/lirc_sasem.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/staging/media/lirc/lirc_sasem.c b/drivers/staging/media/lirc/lirc_sasem.c
index 0c9e082..9e56743 100644
--- a/drivers/staging/media/lirc/lirc_sasem.c
+++ b/drivers/staging/media/lirc/lirc_sasem.c
@@ -170,10 +170,6 @@ static void delete_context(struct sasem_context *context)
 	kfree(context->driver->rbuf);
 	kfree(context->driver);
 	kfree(context);
-
-	if (debug)
-		dev_info(&context->dev->dev, "%s: context deleted\n",
-			 __func__);
 }
 
 static void deregister_from_lirc(struct sasem_context *context)
-- 
1.9.1


