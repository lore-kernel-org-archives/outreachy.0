X-GM-THRID: 6210059285862285312
X-Received: by 10.66.100.166 with SMTP id ez6mr20043364pab.44.1445937970068;
        Tue, 27 Oct 2015 02:26:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.92.55 with SMTP id a52ls4278351qge.94.gmail; Tue, 27 Oct
 2015 02:26:09 -0700 (PDT)
X-Received: by 10.129.72.83 with SMTP id v80mr32529093ywa.11.1445937969345;
        Tue, 27 Oct 2015 02:26:09 -0700 (PDT)
Return-Path: <theonly.ultimate@gmail.com>
Received: from mail-pa0-x22b.google.com (mail-pa0-x22b.google.com. [2607:f8b0:400e:c03::22b])
        by gmr-mx.google.com with ESMTPS id zg1si4111864pbb.2.2015.10.27.02.26.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Oct 2015 02:26:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of theonly.ultimate@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) client-ip=2607:f8b0:400e:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of theonly.ultimate@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) smtp.mailfrom=theonly.ultimate@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22b.google.com with SMTP id fv9so226988980pac.3
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Oct 2015 02:26:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=B/hLEGxu8Llp6uFgudGn3clv6FaPw4mT6OezecDRiJs=;
        b=tgjbjXQ8rRvCpe1LFoECkb/6jcXv8ubyUKBhbFYRcUNVdtr+f4Jyvvom/jNU8qZhbm
         NuRUFOWQGpqkpyXTtuaCPjSR/Smdpux6IhO5quhhZQd9yPeoDhx12JUzsqdf4NAc9bo+
         m7D9ylidUBeLf+O6VzMNcalApU4XuTMICNYX1WPS1OezlG2+IHiwr8zv1PrAvYHKXagi
         g3Y1I1kM0jn49DDCGxGjccZJgfU+JC41vwF/6hIfrpxh3Otde5cCI8ZvfZwF2lV6IQtH
         j0kFelBFXfjWwdEUhUi9BJ+o0VCfdQ9xKIrO+pMNomrJuh0F/WggabCWBqNXTzUx/uqr
         S8iQ==
X-Received: by 10.68.170.101 with SMTP id al5mr27561818pbc.38.1445937969218;
        Tue, 27 Oct 2015 02:26:09 -0700 (PDT)
Return-Path: <theonly.ultimate@gmail.com>
Received: from localhost ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id yp9sm38580039pab.1.2015.10.27.02.26.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Tue, 27 Oct 2015 02:26:08 -0700 (PDT)
Date: Tue, 27 Oct 2015 14:56:13 +0530
From: Sirnam Swetha <theonly.ultimate@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 4/4] Staging: panel: Logical continuations should be on the
 previous line
Message-ID: <fcf9f6bf26e8dec8deffa6561eae0bb22a45a6b6.1445937649.git.theonly.ultimate@gmail.com>
References: <cover.1445937649.git.theonly.ultimate@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1445937649.git.theonly.ultimate@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch fixes the checkpatch issue:

CHECK: Logical continuations should be on the previous line

Signed-off-by: Sirnam Swetha <theonly.ultimate@gmail.com>
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


