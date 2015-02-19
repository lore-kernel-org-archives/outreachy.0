X-GM-THRID: 837851021312
X-Received: by 10.112.144.130 with SMTP id sm2mr823287lbb.9.1424373543804;
        Thu, 19 Feb 2015 11:19:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.91.234 with SMTP id ch10ls344013wib.40.gmail; Thu, 19 Feb
 2015 11:19:03 -0800 (PST)
X-Received: by 10.180.89.194 with SMTP id bq2mr933211wib.4.1424373543498;
        Thu, 19 Feb 2015 11:19:03 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from mail-wg0-x232.google.com (mail-wg0-x232.google.com. [2a00:1450:400c:c00::232])
        by gmr-mx.google.com with ESMTPS id ta1si6471325wic.1.2015.02.19.11.19.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Feb 2015 11:19:03 -0800 (PST)
Received-SPF: pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c00::232 as permitted sender) client-ip=2a00:1450:400c:c00::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c00::232 as permitted sender) smtp.mail=aysemelikeyurtoglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-f50.google.com with SMTP id l2so9086442wgh.9
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Feb 2015 11:19:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=MOvzd4JhXrH5cU27etBx5a5zenXQhWoprK/KRjJshwU=;
        b=aBbhDqtEipNxJ8D82B37BxQKZtGaW6rciH0I0BBGaNF4AGjZ1pv0i1aaEhuOSzJBYN
         1ggzNmPhlKfHDL5N2WgpZubQgv3nHm8bXZaubClviKN6u/DiqhzCjzaSkvs6+ormo4SO
         WFwjtGk8bM5sGIwLLe7k/AEKCh3NswF10Oy7SOPHqFZx7jubHbuziONtt7d4LHkUO8nw
         7QlQgo37zc9cM8yTo2yJzmzc2PGfmvqQg82oJ2064udoCwGx3testjfi10MN6u7CztIB
         IO86bVnXJOlEh0m1onLwkwLgtCmjFGNZ25udmHcy7YgsPgRaarbS/pNKXgxYYocUxXRj
         Xn7w==
X-Received: by 10.194.175.39 with SMTP id bx7mr12596410wjc.22.1424373543365;
        Thu, 19 Feb 2015 11:19:03 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from localhost.localdomain ([81.214.238.226])
        by mx.google.com with ESMTPSA id eb10sm35503286wib.13.2015.02.19.11.19.01
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 19 Feb 2015 11:19:02 -0800 (PST)
From: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
Subject: [PATCH] Staging: fbtft: Convert comment from C99 style to C89 style
Date: Thu, 19 Feb 2015 21:18:18 +0200
Message-Id: <1424373498-17600-1-git-send-email-aysemelikeyurtoglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2

This patch fixes checkpatch.pl error
ERROR: do not use C99 // comments

Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
---
 drivers/staging/fbtft/fb_ssd1331.c | 30 +++++++++++++++---------------
 1 file changed, 15 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/fbtft/fb_ssd1331.c b/drivers/staging/fbtft/fb_ssd1331.c
index da7464f..abd2df7 100644
--- a/drivers/staging/fbtft/fb_ssd1331.c
+++ b/drivers/staging/fbtft/fb_ssd1331.c
@@ -29,24 +29,24 @@ static int init_display(struct fbtft_par *par)
 
 	write_reg(par, 0xae); /* Display Off */
 	write_reg(par, 0xa0, 0x70 | (par->bgr << 2)); /* Set Colour Depth */
-	write_reg(par, 0x72); // RGB colour
+	write_reg(par, 0x72); /* RGB colour */
 	write_reg(par, 0xa1, 0x00); /* Set Display Start Line */
 	write_reg(par, 0xa2, 0x00); /* Set Display Offset */
 	write_reg(par, 0xa4); /* NORMALDISPLAY */
-	write_reg(par, 0xa8, 0x3f); // Set multiplex
-	write_reg(par, 0xad, 0x8e); // Set master
-	// write_reg(par, 0xb0, 0x0b); // Set power mode
-	write_reg(par, 0xb1, 0x31); // Precharge
-	write_reg(par, 0xb3, 0xf0); // Clock div
-	write_reg(par, 0x8a, 0x64); // Precharge A
-	write_reg(par, 0x8b, 0x78); // Precharge B
-	write_reg(par, 0x8c, 0x64); // Precharge C
-	write_reg(par, 0xbb, 0x3a); // Precharge level
-	write_reg(par, 0xbe, 0x3e); // vcomh
-	write_reg(par, 0x87, 0x06); // Master current
-	write_reg(par, 0x81, 0x91); // Contrast A
-	write_reg(par, 0x82, 0x50); // Contrast B
-	write_reg(par, 0x83, 0x7d); // Contrast C
+	write_reg(par, 0xa8, 0x3f); /* Set multiplex */
+	write_reg(par, 0xad, 0x8e); /* Set master */
+	/* write_reg(par, 0xb0, 0x0b);  Set power mode */
+	write_reg(par, 0xb1, 0x31); /* Precharge */
+	write_reg(par, 0xb3, 0xf0); /* Clock div */
+	write_reg(par, 0x8a, 0x64); /* Precharge A */
+	write_reg(par, 0x8b, 0x78); /* Precharge B */
+	write_reg(par, 0x8c, 0x64); /* Precharge C */
+	write_reg(par, 0xbb, 0x3a); /* Precharge level */
+	write_reg(par, 0xbe, 0x3e); /* vcomh */
+	write_reg(par, 0x87, 0x06); /* Master current */
+	write_reg(par, 0x81, 0x91); /* Contrast A */
+	write_reg(par, 0x82, 0x50); /* Contrast B */
+	write_reg(par, 0x83, 0x7d); /* Contrast C */
 	write_reg(par, 0xaf); /* Set Sleep Mode Display On */
 
 	return 0;
-- 
1.8.3.2


