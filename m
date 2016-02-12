X-GM-THRID: 6250306033025024000
X-Received: by 10.140.252.131 with SMTP id x125mr81992qhc.12.1455262793352;
        Thu, 11 Feb 2016 23:39:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.105.228 with SMTP id c91ls1638674qgf.37.gmail; Thu, 11 Feb
 2016 23:39:51 -0800 (PST)
X-Received: by 10.140.150.83 with SMTP id 80mr90760qhw.6.1455262791090;
        Thu, 11 Feb 2016 23:39:51 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id ui7si1611594pab.0.2016.02.11.23.39.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 23:39:51 -0800 (PST)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id 71so3650025pfv.1
        for <outreachy-kernel@googlegroups.com>; Thu, 11 Feb 2016 23:39:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=2IhgcsRkOrHuKd8PUVTw8gDS9xAlVGdJEfX0h3Ujzl8=;
        b=s0RLQyeqV2wvjmQYz09oEbHf2SQCBn4gLZFyNjHvbngRhwVFnK91KQyyNoFj+2CFsf
         w90ZTxyEvmjVdndAnyMaL46fJrkHRapeoEMZ0RDJ3u0+Jy6Gt+nHz8cbXq0BLwtlz1wA
         AUVFOrC7vDi21CNmL+UzRInDnLrKT7mDCrmq9+oFfZ64pbmrO8u0AYFvJ0ghL6hJc1yV
         uz34Sg0x2KkD/2pvHiDreIV7OgAwKRFREjpnusDpmQTAVLnllwlsnCs60AQ0+UKSUGs8
         FIvlv8ctomI1KhkXMjzyAEmUSJaecJ9qqE4Ws2cGpiO9yPcGqn/FPeW8XBSy5sJeoCdX
         vzbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=2IhgcsRkOrHuKd8PUVTw8gDS9xAlVGdJEfX0h3Ujzl8=;
        b=kVzeeenJ5fWWtbo2ZffcHkzohkfW/e4+6nYQXhQ7DewEurnliZLIl/50te5zlDpae+
         OjRF8rKHmEubT+lm+WfXh+WobgxyzN/AGlkq5b5c2ZDfG4ctsqQrDgCjHR47CLiH7nGI
         ZId22bUVfoWSMQu4vhYzGCigOVQIeWkrMInkJVGdcVsnzl3coS0DjSR2DkEQPmNs992F
         7oSwrxVQhSsZJSgBiSHtq2OkqKkMcEVcur2GiXlMIZ8YUKHimZkW9f40ImdZDbwBu+k+
         kosJptaoIQQ9l0oouRrGFF0eUFb+x0X1ML0/YyUfZfoUca0WUuHSAFVM4H4GyFvUQcnR
         sHyQ==
X-Gm-Message-State: AG10YOQ6EzigNtW8PwMLKCTMFxzT482Xeq0KA1F82feQsZTx9Y3uMtT6UspCbUCwm2d2fg==
X-Received: by 10.98.15.135 with SMTP id 7mr127249pfp.142.1455262790963;
        Thu, 11 Feb 2016 23:39:50 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([103.14.62.60])
        by smtp.gmail.com with ESMTPSA id xu1sm17056238pab.31.2016.02.11.23.39.50
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 11 Feb 2016 23:39:50 -0800 (PST)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH v2 5/5] staging: fbtft: Remove the use of CamelCase
Date: Fri, 12 Feb 2016 15:39:30 +0800
Message-Id: <730971581af26a046e81704dc364a270aa028ab5.1455260992.git.eraretuya@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1455260992.git.eraretuya@gmail.com>
References: <cover.1455260992.git.eraretuya@gmail.com>
In-Reply-To: <cover.1455260992.git.eraretuya@gmail.com>
References: <cover.1455260992.git.eraretuya@gmail.com>

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


