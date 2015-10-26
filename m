X-GM-THRID: 6210059285862285312
X-Received: by 10.66.244.43 with SMTP id xd11mr17657057pac.28.1445892269119;
        Mon, 26 Oct 2015 13:44:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.92.55 with SMTP id a52ls3928306qge.94.gmail; Mon, 26 Oct
 2015 13:44:28 -0700 (PDT)
X-Received: by 10.13.230.14 with SMTP id p14mr31481191ywe.2.1445892268523;
        Mon, 26 Oct 2015 13:44:28 -0700 (PDT)
Return-Path: <theonly.ultimate@gmail.com>
Received: from mail-pa0-x234.google.com (mail-pa0-x234.google.com. [2607:f8b0:400e:c03::234])
        by gmr-mx.google.com with ESMTPS id zg1si3790626pbb.2.2015.10.26.13.44.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2015 13:44:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of theonly.ultimate@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) client-ip=2607:f8b0:400e:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of theonly.ultimate@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) smtp.mailfrom=theonly.ultimate@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x234.google.com with SMTP id la5so5148466pab.0
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Oct 2015 13:44:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=B+nxeT61WV7wkF1LohsnnTIgOiU1cu8QlDjtZt639cY=;
        b=gbcosxgUzlkIYw376Sv/0nQq0WhNRK1v30lNxMRvvvkfXcDdCIG8Ich7hoikH1dUGo
         E+T0jrXe2iOluENgVld8E6zFJdAYYcA9ackly11P75TRKTn4bcWhRvASeF1uSNHExvY/
         LaoGJkoFxNYsJGEI4erSdvxFPSLcMt/DkO0kktW+VZQgo5IVjc8HUOG6yxqIgefkurPj
         /3ITVJlEwYJUF4+RQBvhyEuNOBMPRNDmnDcW+Bji6FzzK3eMQU+euEchMhOBiiX65ABj
         s2/v79kuizWNzqPQ2hbwEyXPf+W/6U5D/cziD9gJTRfZj+y0LdoeOQFx9g77IjOa/pty
         mcVQ==
X-Received: by 10.68.135.161 with SMTP id pt1mr24134935pbb.80.1445892268406;
        Mon, 26 Oct 2015 13:44:28 -0700 (PDT)
Return-Path: <theonly.ultimate@gmail.com>
Received: from localhost ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id in6sm10820846pbd.86.2015.10.26.13.44.27
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Mon, 26 Oct 2015 13:44:28 -0700 (PDT)
Date: Tue, 27 Oct 2015 02:14:32 +0530
From: Swetha <theonly.ultimate@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: linux-usb@vger.kernel.org
Subject: [PATCH 4/4] Staging: panel: Logical continuations should be on the
 previous line
Message-ID: <fcf9f6bf26e8dec8deffa6561eae0bb22a45a6b6.1445891840.git.theonly.ultimate@gmail.com>
References: <cover.1445891839.git.theonly.ultimate@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1445891839.git.theonly.ultimate@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch fixes the checkpatch issue:

CHECK: Logical continuations should be on the previous line

Signed-off-by: Swetha <theonly.ultimate@gmail.com>
---
 drivers/staging/panel/panel.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/panel/panel.c b/drivers/staging/panel/panel.c
index 66ad4d0..13af8cf 100644
--- a/drivers/staging/panel/panel.c
+++ b/drivers/staging/panel/panel.c
@@ -1122,8 +1122,8 @@ static inline int handle_lcd_special_code(void)
 	case '*':
 		/* flash back light using the keypad timer */
 		if (scan_timer.function) {
-			if (lcd.light_tempo == 0
-					&& ((lcd.flags & LCD_FLAG_L) == 0))
+			if (lcd.light_tempo == 0 &&
+			    ((lcd.flags & LCD_FLAG_L) == 0))
 				lcd_backlight(1);
 			lcd.light_tempo = FLASH_LIGHT_TEMPO;
 		}
@@ -2011,14 +2011,14 @@ static void panel_scan_timer(void)
 
 	if (lcd.enabled && lcd.initialized) {
 		if (keypressed) {
-			if (lcd.light_tempo == 0
-					&& ((lcd.flags & LCD_FLAG_L) == 0))
+			if (lcd.light_tempo == 0 &&
+			    ((lcd.flags & LCD_FLAG_L) == 0))
 				lcd_backlight(1);
 			lcd.light_tempo = FLASH_LIGHT_TEMPO;
 		} else if (lcd.light_tempo > 0) {
 			lcd.light_tempo--;
-			if (lcd.light_tempo == 0
-					&& ((lcd.flags & LCD_FLAG_L) == 0))
+			if (lcd.light_tempo == 0 &&
+			    ((lcd.flags & LCD_FLAG_L) == 0))
 				lcd_backlight(0);
 		}
 	}
-- 
1.9.1


