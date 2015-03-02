X-GM-THRID: 6098026233856
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,a0d98d5a5f566e97,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.13.98 with SMTP id g2mr2491528wic.3.1425331171984;
        Mon, 02 Mar 2015 13:19:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.179.36 with SMTP id dd4ls459847lac.43.gmail; Mon, 02 Mar
 2015 13:19:30 -0800 (PST)
X-Received: by 10.152.4.229 with SMTP id n5mr4080684lan.1.1425331170527;
        Mon, 02 Mar 2015 13:19:30 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-wg0-x22e.google.com (mail-wg0-x22e.google.com. [2a00:1450:400c:c00::22e])
        by gmr-mx.google.com with ESMTPS id cl5si747062wib.3.2015.03.02.13.19.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Mar 2015 13:19:30 -0800 (PST)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c00::22e as permitted sender) client-ip=2a00:1450:400c:c00::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c00::22e as permitted sender) smtp.mail=dilekuzulmez@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wggx12 with SMTP id x12so36102728wgg.6
        for <outreachy-kernel@googlegroups.com>; Mon, 02 Mar 2015 13:19:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=1wSueqEd/26lE9fdlSZ4m7QI1kqApxb9rg2kytcDRn8=;
        b=KN94NQuMOhKrSr3oLpj++XzCc5/3+CyvOVro3rCbbw4bn5/jA6EZizWig0LdE/PDgy
         6FSfh+G+v6IIIfIMyRKv/P/4GgrKEgam9d2gZzjEkjvglWcyQGdkKFYj9RDOqGE+ltqL
         JXChd0yBIacSIKhTe04ac5Uu9pKlDtRr/kThBQvuQK2j77vjCyKOo1LQ+1lrqH1luw1q
         byUY7QM6i/rowzB67bqqjP7G97tzZd1j1I2qzv+ZQ0l5H25jIwl/2WbGIyzWRmuGzHsi
         fbbJPdNQmxncyljyuoNw/47/t81gMfH532C0IptO9k0+1moidTR5Fmm7facH91sCLVpo
         NCGg==
X-Received: by 10.194.75.168 with SMTP id d8mr55263204wjw.87.1425331170431;
        Mon, 02 Mar 2015 13:19:30 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([78.178.131.202])
        by mx.google.com with ESMTPSA id a13sm20883769wjx.30.2015.03.02.13.19.29
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 02 Mar 2015 13:19:29 -0800 (PST)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH] Staging: fbtft: Fix code indent should use tabs where possible
Date: Mon,  2 Mar 2015 23:19:22 +0200
Message-Id: <1425331162-4486-1-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1

Fix checkpatch.pl issues with code indent should use tabs where possible fb_pcd8544.c

Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
---
 drivers/staging/fbtft/fb_pcd8544.c | 28 ++++++++++++++--------------
 1 file changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/fbtft/fb_pcd8544.c b/drivers/staging/fbtft/fb_pcd8544.c
index 5e08a70..7385c50 100644
--- a/drivers/staging/fbtft/fb_pcd8544.c
+++ b/drivers/staging/fbtft/fb_pcd8544.c
@@ -53,38 +53,38 @@ static int init_display(struct fbtft_par *par)
 
 	/* Function set */
 	write_reg(par, 0x21); /* 5:1  1
-	                         2:0  PD - Powerdown control: chip is active
+				 2:0  PD - Powerdown control: chip is active
 							 1:0  V  - Entry mode: horizontal addressing
 							 0:1  H  - Extended instruction set control: extended
 						  */
 
 	/* H=1 Temperature control */
 	write_reg(par, 0x04 | (tc & 0x3)); /*
-	                         2:1  1
-	                         1:x  TC1 - Temperature Coefficient: 0x10
+				 2:1  1
+				 1:x  TC1 - Temperature Coefficient: 0x10
 							 0:x  TC0
 						  */
 
 	/* H=1 Bias system */
 	write_reg(par, 0x10 | (bs & 0x7)); /*
-	                         4:1  1
-	                         3:0  0
+				 4:1  1
+				 3:0  0
 							 2:x  BS2 - Bias System
 							 1:x  BS1
 							 0:x  BS0
-	                      */
+			       */
 
 	/* Function set */
 	write_reg(par, 0x22); /* 5:1  1
-	                         2:0  PD - Powerdown control: chip is active
+				 2:0  PD - Powerdown control: chip is active
 							 1:1  V  - Entry mode: vertical addressing
 							 0:0  H  - Extended instruction set control: basic
 						  */
 
 	/* H=0 Display control */
 	write_reg(par, 0x08 | 4); /*
-	                         3:1  1
-	                         2:1  D  - DE: 10=normal mode
+				 3:1  1
+				 2:1  D  - DE: 10=normal mode
 							 1:0  0
 							 0:0  E
 						  */
@@ -98,14 +98,14 @@ static void set_addr_win(struct fbtft_par *par, int xs, int ys, int xe, int ye)
 
 	/* H=0 Set X address of RAM */
 	write_reg(par, 0x80); /* 7:1  1
-	                         6-0: X[6:0] - 0x00
-	                      */
+				 6-0: X[6:0] - 0x00
+			      */
 
 	/* H=0 Set Y address of RAM */
 	write_reg(par, 0x40); /* 7:0  0
-	                         6:1  1
-	                         2-0: Y[2:0] - 0x0
-	                      */
+				 6:1  1
+				 2-0: Y[2:0] - 0x0
+			      */
 }
 
 static int write_vmem(struct fbtft_par *par, size_t offset, size_t len)
-- 
1.9.1


