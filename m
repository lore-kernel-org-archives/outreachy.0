X-GM-THRID: 6249599077237915648
X-Received: by 10.66.189.102 with SMTP id gh6mr46017011pac.14.1455210602672;
        Thu, 11 Feb 2016 09:10:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.108.5 with SMTP id hg5ls563310igb.41.gmail; Thu, 11 Feb
 2016 09:10:02 -0800 (PST)
X-Received: by 10.107.12.213 with SMTP id 82mr27962500iom.18.1455210602142;
        Thu, 11 Feb 2016 09:10:02 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id 12si943776pfb.1.2016.02.11.09.10.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 09:10:02 -0800 (PST)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id gc2so699562pab.0
        for <outreachy-kernel@googlegroups.com>; Thu, 11 Feb 2016 09:10:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=2IhgcsRkOrHuKd8PUVTw8gDS9xAlVGdJEfX0h3Ujzl8=;
        b=VM043uiYD2VGOnGBmD9cHKlU9wzkfZB7+1eQvoHW4+FNhfdeFGqQSNYMeE7fRw2N/2
         LVSA7L6/1mn0d5ZiyrjEwsCnH31nb+Fobm5bipBlryj7I8EtG98HqSwKzalv+gJu1Lhj
         BUfGVNTCw2rJFxdQqRxUUlFJS2f84Bvz3UTbS4aO+SMQeukUnr4Q8FL7G2Z0xcAceoc6
         OT8X6mCuks/h+2/w4mpSPEjgo8biFh1dNeQB+zItfKwgx1toxOUnIXD+Y36wHIkZmTun
         y+v+eVDhBHMP8YfcQ3zCLEFl3u9F+N5KiWo6hOR/H3YA/CEk7Pzw7vBaCQivvmUYoeEl
         qQyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=2IhgcsRkOrHuKd8PUVTw8gDS9xAlVGdJEfX0h3Ujzl8=;
        b=ABOix7hiETbG6vtWE8p1OqsFFLrnclKOQus+xco3bJRK8nhtL6LKFlre4oaTO6WykP
         k8hMLAGjRVEjaUUoHE9S2CL5lznHVYtO+a3JJcXcLiLYSgOpBCySFTHpbAtrBmR/IWwq
         0fNQa903HCPl6rh/flwp9jqY2vGClcQRH7Cj+Dduyt3hepQggYEew4PEE1/UexrJXC/O
         qUc5CAUL8KXD+a96uPwAMMD6rlzC2aTolfBBQZEo8UxxMcF0KDQmrKkx4L0KFLbHU4px
         kIgbUsNGVpxZ8k8wlCP6vbyLkvfnrzVli6ALKGmJe1YgSEvIQgq7RJNY1Hym/un0wfx7
         nnfA==
X-Gm-Message-State: AG10YOQTDS3WGmFkIK9Xg6jt8n6drhIp8HThkpvaG9MjICgCc74ePygLzgw5worn2Cn6yA==
X-Received: by 10.66.219.164 with SMTP id pp4mr58737280pac.79.1455210602047;
        Thu, 11 Feb 2016 09:10:02 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([125.212.122.48])
        by smtp.gmail.com with ESMTPSA id sm8sm13581105pac.43.2016.02.11.09.10.01
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 11 Feb 2016 09:10:01 -0800 (PST)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH 5/5] staging: fbtft: Remove the use of CamelCase
Date: Fri, 12 Feb 2016 01:09:10 +0800
Message-Id: <1455210550-11363-6-git-send-email-eraretuya@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1455210550-11363-1-git-send-email-eraretuya@gmail.com>
References: <1455210550-11363-1-git-send-email-eraretuya@gmail.com>

Rename the macro defining constant ROWxCOL into ROW_X_COL to remove
checkpatch check concerning use of CamelCase and to achieve better
readability.

CHECK: Avoid CamelCase: <ROWxCOL>

Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
---
 drivers/staging/fbtft/fb_ili9481.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/fbtft/fb_ili9481.c b/drivers/staging/fbtft/fb_ili9481.c
index fb0e6c3..242adb3 100644
--- a/drivers/staging/fbtft/fb_ili9481.c
+++ b/drivers/staging/fbtft/fb_ili9481.c
@@ -64,13 +64,13 @@ static void set_addr_win(struct fbtft_par *par, int xs, int ys, int xe, int ye)
 
 #define HFLIP 0x01
 #define VFLIP 0x02
-#define ROWxCOL 0x20
+#define ROW_X_COL 0x20
 static int set_var(struct fbtft_par *par)
 {
 	switch (par->info->var.rotate) {
 	case 270:
 		write_reg(par, MIPI_DCS_SET_ADDRESS_MODE,
-			  ROWxCOL | HFLIP | VFLIP | (par->bgr << 3));
+			  ROW_X_COL | HFLIP | VFLIP | (par->bgr << 3));
 		break;
 	case 180:
 		write_reg(par, MIPI_DCS_SET_ADDRESS_MODE,
@@ -78,7 +78,7 @@ static int set_var(struct fbtft_par *par)
 		break;
 	case 90:
 		write_reg(par, MIPI_DCS_SET_ADDRESS_MODE,
-			  ROWxCOL | (par->bgr << 3));
+			  ROW_X_COL | (par->bgr << 3));
 		break;
 	default:
 		write_reg(par, MIPI_DCS_SET_ADDRESS_MODE,
-- 
1.9.1


