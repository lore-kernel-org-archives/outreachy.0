X-GM-THRID: 929564721152
X-Received: by 10.180.80.7 with SMTP id n7mr1283676wix.0.1424377430632;
        Thu, 19 Feb 2015 12:23:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.242.164 with SMTP id wr4ls222292lac.79.gmail; Thu, 19 Feb
 2015 12:23:50 -0800 (PST)
X-Received: by 10.112.168.104 with SMTP id zv8mr824867lbb.10.1424377430159;
        Thu, 19 Feb 2015 12:23:50 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wi0-x233.google.com (mail-wi0-x233.google.com. [2a00:1450:400c:c05::233])
        by gmr-mx.google.com with ESMTPS id ta1si6481602wic.1.2015.02.19.12.23.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Feb 2015 12:23:50 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) client-ip=2a00:1450:400c:c05::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x233.google.com with SMTP id hi2so11854448wib.0
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Feb 2015 12:23:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=6FqlZ6QLMdnlPzluFABYVZeBbPGhgDIuaaTYXHyaH8Q=;
        b=e30NrCaH1gvGHWQgopOFTkDRETXYRDkhwoSZzIAW624F0qtQbFdToId5UclyUoeA8t
         gRViHctDsQFuGoR3HXbt3UmdNVHijZcB7Mneqv1PYHkfbg4ton7gLqBOOWZuATy4wOnK
         yJvaB0y98Bzwu+54p9r70cFH7SVQwRaJQorZgoCa9U53VYFZpIU0PzavcqTdGfKBtNpq
         1uqNNKFo2as3GkAs4twQWEJ0xP+5HDg5LjzfhQMXxXCj1YuisK9CAhi6DXBBlfugzC++
         BYPBvZtv+z1bIape3YT9w6MrcfxZ9kIcn7YBpITR3sjJr9ovEGo2K7COUVh313eRKFHS
         XcCg==
X-Received: by 10.180.14.196 with SMTP id r4mr18050245wic.77.1424377430067;
        Thu, 19 Feb 2015 12:23:50 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by mx.google.com with ESMTPSA id hs7sm31694762wib.4.2015.02.19.12.23.48
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 19 Feb 2015 12:23:49 -0800 (PST)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH] Staging: media: vino: Convert comments from C99 to C89 style
Date: Thu, 19 Feb 2015 21:23:41 +0100
Message-Id: <1424377421-20388-1-git-send-email-ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes the checkpatch.pl error:
ERROR: "Do not use C99 // comments"

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
 drivers/staging/media/vino/indycam.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/media/vino/indycam.c b/drivers/staging/media/vino/indycam.c
index f1d192b..8e223bd 100644
--- a/drivers/staging/media/vino/indycam.c
+++ b/drivers/staging/media/vino/indycam.c
@@ -34,7 +34,7 @@ MODULE_AUTHOR("Mikael Nousiainen <tmnousia@cc.hut.fi>");
 MODULE_LICENSE("GPL");
 
 
-// #define INDYCAM_DEBUG
+/* #define INDYCAM_DEBUG */
 
 #ifdef INDYCAM_DEBUG
 #define dprintk(x...) printk("IndyCam: " x);
@@ -324,7 +324,7 @@ static int indycam_probe(struct i2c_client *client,
 
 	indycam_regdump(sd);
 
-	// initialize
+	/* initialize */
 	err = indycam_write_block(sd, 0, sizeof(initseq), (u8 *)&initseq);
 	if (err) {
 		printk(KERN_ERR "IndyCam initialization failed\n");
@@ -334,7 +334,7 @@ static int indycam_probe(struct i2c_client *client,
 
 	indycam_regdump(sd);
 
-	// white balance
+	/* white balance */
 	err = indycam_write_reg(sd, INDYCAM_REG_CONTROL,
 			  INDYCAM_CONTROL_AGCENA | INDYCAM_CONTROL_AWBCTL);
 	if (err) {
-- 
1.9.1


