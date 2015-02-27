X-GM-THRID: 4394383835136
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,eb582bedb9f3672e,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.181.29.66 with SMTP id ju2mr356146wid.1.1425033210247;
        Fri, 27 Feb 2015 02:33:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.88.84 with SMTP id be20ls161084lab.89.gmail; Fri, 27 Feb
 2015 02:33:29 -0800 (PST)
X-Received: by 10.152.88.40 with SMTP id bd8mr1955347lab.0.1425033209800;
        Fri, 27 Feb 2015 02:33:29 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from mail-wg0-x232.google.com (mail-wg0-x232.google.com. [2a00:1450:400c:c00::232])
        by gmr-mx.google.com with ESMTPS id ew5si92470wid.1.2015.02.27.02.33.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 02:33:29 -0800 (PST)
Received-SPF: pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c00::232 as permitted sender) client-ip=2a00:1450:400c:c00::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c00::232 as permitted sender) smtp.mail=yeliztaneroglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x232.google.com with SMTP id a1so19151238wgh.12
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 02:33:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=xTb49qYZZuToIZgAF3sIOT9c6qwmrRiNjjsiXDHzq2M=;
        b=dIV0QIPeY9RYU04jEfjEAEnOpb0yNg1M2fpj6KDjTcul4D36iCtb6UoKD/EsAcaK22
         YIEugtY3mShD/19cSl+0XOb49gJiQhzPOm3VMq2iwxD8Ijf+dk0yxAe6NBPm9gtyLbpb
         0dfCypzxQG0BMg4saW5L4funVy75h7BpdzGcSJXr2mexIA15f0N/fsgaIdlfX2VKV9iW
         +VI5psAPqHjZhWkgZo++YTACGn/2lums/Ga4UfmVVwWMGVXvWk87u1ifuuugWe3Bo03H
         BASQmNtxhRhCT0r+SMOxcKNumie3l4dQBJ0uosQDbmaZJLUzX6sMMMo531eVufTQ/eJb
         fP1w==
X-Received: by 10.194.175.39 with SMTP id bx7mr26832081wjc.22.1425033209693;
        Fri, 27 Feb 2015 02:33:29 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from yeliz-N56DP.comu.edu.tr ([193.255.97.48])
        by mx.google.com with ESMTPSA id md8sm2175041wic.13.2015.02.27.02.33.28
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 02:33:29 -0800 (PST)
From: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
Subject: [PATCH] Staging: unisys: Removed unnecessary braces
Date: Fri, 27 Feb 2015 12:33:37 +0200
Message-Id: <1425033217-8249-1-git-send-email-yeliztaneroglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2

The following patch fixes the checkpatch.pl warning:
WARNING: braces {} are not necessary for single statement blocks

Signed-off-by: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
---
 drivers/staging/unisys/visorchannel/visorchannel_funcs.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/unisys/visorchannel/visorchannel_funcs.c b/drivers/staging/unisys/visorchannel/visorchannel_funcs.c
index 0188ef8..716deb4 100644
--- a/drivers/staging/unisys/visorchannel/visorchannel_funcs.c
+++ b/drivers/staging/unisys/visorchannel/visorchannel_funcs.c
@@ -416,9 +416,9 @@ signalremove_inner(struct visorchannel *channel, u32 queue, void *msg)
 {
 	struct signal_queue_header sig_hdr;
 
-	if (!sig_read_header(channel, queue, &sig_hdr)) {
+	if (!sig_read_header(channel, queue, &sig_hdr))
 		return FALSE;
-	}
+
 	if (sig_hdr.head == sig_hdr.tail)
 		return FALSE;	/* no signals to remove */
 
@@ -466,9 +466,9 @@ signalinsert_inner(struct visorchannel *channel, u32 queue, void *msg)
 {
 	struct signal_queue_header sig_hdr;
 
-	if (!sig_read_header(channel, queue, &sig_hdr)) {
+	if (!sig_read_header(channel, queue, &sig_hdr))
 		return FALSE;
-	}
+
 
 	sig_hdr.head = ((sig_hdr.head + 1) % sig_hdr.max_slots);
 	if (sig_hdr.head == sig_hdr.tail) {
-- 
1.8.3.2


