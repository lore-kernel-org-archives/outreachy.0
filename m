X-GM-THRID: 7276030066688
X-Received: by 10.180.208.12 with SMTP id ma12mr1669347wic.6.1425908617532;
        Mon, 09 Mar 2015 06:43:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.90.43 with SMTP id bt11ls971787wib.37.canary; Mon, 09 Mar
 2015 06:43:35 -0700 (PDT)
X-Received: by 10.180.90.175 with SMTP id bx15mr637183wib.3.1425908615908;
        Mon, 09 Mar 2015 06:43:35 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x22b.google.com (mail-wi0-x22b.google.com. [2a00:1450:400c:c05::22b])
        by gmr-mx.google.com with ESMTPS id l8si830274wia.0.2015.03.09.06.43.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Mar 2015 06:43:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) client-ip=2a00:1450:400c:c05::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) smtp.mail=ciorneiioana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22b.google.com with SMTP id ex7so19727526wid.3
        for <outreachy-kernel@googlegroups.com>; Mon, 09 Mar 2015 06:43:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=1QMXoJ14/JY+YdCqoQJGXiViUqHXQzTL2TIJ9kxt0MM=;
        b=P6xFJjBzn8uCHRKWr4EhIkFbKF2L0PB+k3voYZTUAYfiqJAY80s0/Z8d275DnwNle7
         J7nm3Mso/IRTYg4+bECTMt+FHXTh9rCdUUr49/g8mswFevNJnlk2JsQOloNk5JYuO1YI
         Ja/3H7rKwqQitdRfQf/jWRaXtcNS5jXIZ4AMNO9/j1R0NMnr8p2ZQKzdlfDU8w9oxm+q
         +/CQaZo6YQTYCoPX6PElT0v3Som2a8mQA/5zlxk8lU7J7RyAWQHiPK/lAgTWjJCiaFNv
         6RxX/3qZjOT4GtJG7jSFqUHhUXdI9DW5To+e9nvChxHbR6y54RG9rTHUx/PHHme/nR1z
         D3Jg==
X-Received: by 10.194.143.20 with SMTP id sa20mr4579587wjb.75.1425908615758;
        Mon, 09 Mar 2015 06:43:35 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id xy2sm13722160wjc.14.2015.03.09.06.43.32
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 09 Mar 2015 06:43:34 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH v2] drivers: staging: rtl8188eu: core: rtw_security: Fix misspelled word
Date: Mon,  9 Mar 2015 15:43:25 +0200
Message-Id: <1425908605-7190-1-git-send-email-ciorneiioana@gmail.com>
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


