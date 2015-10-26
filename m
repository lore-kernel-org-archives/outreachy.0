X-GM-THRID: 6209880020994752512
X-Received: by 10.112.169.34 with SMTP id ab2mr8018520lbc.23.1445850362200;
        Mon, 26 Oct 2015 02:06:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.181.13.230 with SMTP id fb6ls479805wid.4.gmail; Mon, 26 Oct
 2015 02:06:01 -0700 (PDT)
X-Received: by 10.180.102.162 with SMTP id fp2mr3968732wib.4.1445850361795;
        Mon, 26 Oct 2015 02:06:01 -0700 (PDT)
Return-Path: <brcnakalin@gmail.com>
Received: from mail-wi0-x22a.google.com (mail-wi0-x22a.google.com. [2a00:1450:400c:c05::22a])
        by gmr-mx.google.com with ESMTPS id g9si47227wmd.2.2015.10.26.02.06.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2015 02:06:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of brcnakalin@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) client-ip=2a00:1450:400c:c05::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of brcnakalin@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) smtp.mailfrom=brcnakalin@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22a.google.com with SMTP id p11so152759413wij.0
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Oct 2015 02:06:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=pIrddGucuOW8ZZDxCLU3ZlU4GkUbG4XOAL9R5AKkwHE=;
        b=ZECjNl0VWUoW1uvQEs9qY0T33Ij688fTTYsrbPfABJDj/7GFxMb7r8KcKc4jz9Op4X
         O84l7HC3OCZ3njrzjL9TXgP1CD4sfaEF6rxJ2Nld22E0Pg9/0G6ZZqNkIAYcdogtNmuI
         +S3qPABfIxccYViLFvp2TI+IG5AA1k/a0fLIBT5gjFHYL4HQg6onAuhZJN6l+b7M9suq
         zF0UrdezMt9XQncjRxF3K5ZBH6SffHGUN5OpyJg8kdhy/99MM1alAcBGOV5k9mi5qTWx
         4l/ihggNPZwboOrgf/JiEG8hZX+g7SQVn92S3ObdyoktOx1tPayXwlUm0p6sKvymgCLz
         H8Cw==
X-Received: by 10.180.74.238 with SMTP id x14mr20213199wiv.39.1445850361654;
        Mon, 26 Oct 2015 02:06:01 -0700 (PDT)
Return-Path: <brcnakalin@gmail.com>
Received: from kripton.comu.edu.tr ([193.255.97.44])
        by smtp.gmail.com with ESMTPSA id he3sm37805803wjc.48.2015.10.26.02.06.00
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 26 Oct 2015 02:06:01 -0700 (PDT)
From: Burcin Akalin <brcnakalin@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Burcin Akalin <brcnakalin@gmail.com>
Subject: [PATCH] staging: vt6656: Add space around '+'
Date: Mon, 26 Oct 2015 12:05:52 +0300
Message-Id: <1445850352-6976-1-git-send-email-brcnakalin@gmail.com>
X-Mailer: git-send-email 1.9.1

Add space around operator '+'. Problem found using
checkpatch.pl
CHECK: spaces preferred around that '+' (ctx:VxV)

Signed-off-by: Burcin Akalin <brcnakalin@gmail.com>
---
 drivers/staging/vt6656/dpc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/vt6656/dpc.c b/drivers/staging/vt6656/dpc.c
index e6367ed..83df566 100644
--- a/drivers/staging/vt6656/dpc.c
+++ b/drivers/staging/vt6656/dpc.c
@@ -78,8 +78,8 @@ int vnt_rx_data(struct vnt_private *priv, struct vnt_rcb *ptr_rcb,
 
 	skb_data = (u8 *)skb->data;
 
-	rx_sts = skb_data+4;
-	rx_rate = skb_data+5;
+	rx_sts = skb_data + 4;
+	rx_rate = skb_data + 5;
 
 	/* real Frame Size = USBframe_size -4WbkStatus - 4RxStatus */
 	/* -8TSF - 4RSR - 4SQ3 - ?Padding */
-- 
1.9.1


