X-GM-THRID: 7260793208832
X-Received: by 10.152.36.132 with SMTP id q4mr3922794laj.6.1425906265917;
        Mon, 09 Mar 2015 06:04:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.106.101 with SMTP id gt5ls541169wib.28.gmail; Mon, 09 Mar
 2015 06:04:25 -0700 (PDT)
X-Received: by 10.194.161.194 with SMTP id xu2mr3929217wjb.1.1425906265449;
        Mon, 09 Mar 2015 06:04:25 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-we0-x233.google.com (mail-we0-x233.google.com. [2a00:1450:400c:c03::233])
        by gmr-mx.google.com with ESMTPS id gj20si804710wic.1.2015.03.09.06.04.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Mar 2015 06:04:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c03::233 as permitted sender) client-ip=2a00:1450:400c:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c03::233 as permitted sender) smtp.mail=ciorneiioana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x233.google.com with SMTP id w55so20876552wes.3
        for <outreachy-kernel@googlegroups.com>; Mon, 09 Mar 2015 06:04:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=1QMXoJ14/JY+YdCqoQJGXiViUqHXQzTL2TIJ9kxt0MM=;
        b=sSUq72QqsRq5UzKd3beDghkSLJkG127P1HVSpvYKNkMjvK3jPriNlAfYacDGlGZ9gJ
         KpIYCoExW2/5t0MyE6zNPWuJvvURxZb6bYSl51wZ7F8aJ6kLdApEaWG09DDeu6ficjzj
         zwAn/DnmVfarnZtu0aAZoKmKo2kMa2N2Q4AY1o3m3AZ7fkRugyV3K0GUZVNY+6zJfjga
         eFGhItiykC+U3xyG2JEaO1GL+C1PrEa1s6j6KJPam6pBWWjkZJ/p9ml9fWSMf+CqBvkb
         EhuM5hzDzMHH25SMHIXv2m8AH8SY6JW1dtAypAyyJKKpmLn2PfzrzAHNSbw/NlU7LFsB
         bLrQ==
X-Received: by 10.180.105.136 with SMTP id gm8mr22340871wib.13.1425906265320;
        Mon, 09 Mar 2015 06:04:25 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id bf8sm26556870wjb.37.2015.03.09.06.04.23
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 09 Mar 2015 06:04:24 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH] drivers: staging: rtl8188eu: core: rtw_security: Misspelled word
Date: Mon,  9 Mar 2015 15:04:16 +0200
Message-Id: <1425906256-31780-1-git-send-email-ciorneiioana@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes the checkpatch.pl warning:

WARNING: 'halfs' may be misspelled - perhaps 'halves'?

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_security.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_security.c b/drivers/staging/rtl8188eu/core/rtw_security.c
index f8981f5..34860f2 100644
--- a/drivers/staging/rtl8188eu/core/rtw_security.c
+++ b/drivers/staging/rtl8188eu/core/rtw_security.c
@@ -854,7 +854,7 @@ static void mix_column(u8 *in, u8 *out)
 	u8 add1b[4];
 	u8 add1bf7[4];
 	u8 rotl[4];
-	u8 swap_halfs[4];
+	u8 swap_halves[4];
 	u8 andf7[4];
 	u8 rotr[4];
 	u8 temp[4];
@@ -866,10 +866,10 @@ static void mix_column(u8 *in, u8 *out)
 			add1b[i] = 0x00;
 	}
 
-	swap_halfs[0] = in[2];    /* Swap halves */
-	swap_halfs[1] = in[3];
-	swap_halfs[2] = in[0];
-	swap_halfs[3] = in[1];
+	swap_halves[0] = in[2];    /* Swap halves */
+	swap_halves[1] = in[3];
+	swap_halves[2] = in[0];
+	swap_halves[3] = in[1];
 
 	rotl[0] = in[3];	/* Rotate left 8 bits */
 	rotl[1] = in[0];
@@ -900,7 +900,7 @@ static void mix_column(u8 *in, u8 *out)
 	rotr[3] = temp[0];
 
 	xor_32(add1bf7, rotr, temp);
-	xor_32(swap_halfs, rotl, tempb);
+	xor_32(swap_halves, rotl, tempb);
 	xor_32(temp, tempb, out);
 }
 
-- 
1.9.1


