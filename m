X-GM-THRID: 6201180955724480512
X-Received: by 10.112.138.170 with SMTP id qr10mr3134613lbb.4.1443824953477;
        Fri, 02 Oct 2015 15:29:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.17.70 with SMTP id g67ls273188lfi.13.gmail; Fri, 02 Oct
 2015 15:29:12 -0700 (PDT)
X-Received: by 10.112.130.41 with SMTP id ob9mr3030835lbb.17.1443824952655;
        Fri, 02 Oct 2015 15:29:12 -0700 (PDT)
Return-Path: <aybuke.147@gmail.com>
Received: from mail-wi0-x229.google.com (mail-wi0-x229.google.com. [2a00:1450:400c:c05::229])
        by gmr-mx.google.com with ESMTPS id ch7si35326wib.2.2015.10.02.15.29.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Oct 2015 15:29:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) client-ip=2a00:1450:400c:c05::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) smtp.mailfrom=aybuke.147@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x229.google.com with SMTP id lk2so51731280wic.0
        for <outreachy-kernel@googlegroups.com>; Fri, 02 Oct 2015 15:29:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=uy7nDHlVDV4l6pRpUBMFUQ6Y7FIW9WqPz3axUGtVkpI=;
        b=jtkVabT4BgVeaiw2tCejumaONFZ5jS5st4KyzYJrhUAg1BkkMphC/B8U1wt3Lvx+4o
         +wS3GJnad7q8ZYjVzSP4iCidYNNGh9m9takHC1Wnwai3TOo1yeyQvHoiLMI/+eYLJDip
         tc24jSEdCyntZi7tvZxUB2fSMSMLdPsLRZMbCNhK/5UJAOiL2QQDrgmKJRo/HjubnbRt
         MBAOLQ1uyQY+KkNN/W62aFV0QQ8cx/byKafByqoufH6sP7VRCjwGV3vULGbaYMgnlOPK
         RbUL8H6yFExjnEmx+UTf6ZM6o2EpSX2FZAumGJ09w1OyCFIsSElvgwSW2ZvOjhRwN7PM
         B5vg==
X-Received: by 10.180.99.66 with SMTP id eo2mr1096481wib.88.1443824952539;
        Fri, 02 Oct 2015 15:29:12 -0700 (PDT)
Return-Path: <aybuke.147@gmail.com>
Received: from localhost.localdomain ([88.247.179.54])
        by smtp.gmail.com with ESMTPSA id wj4sm13403538wjb.10.2015.10.02.15.29.10
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 02 Oct 2015 15:29:11 -0700 (PDT)
From: Aybuke Ozdemir <aybuke.147@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Aybuke Ozdemir <aybuke.147@gmail.com>
Subject: [PATCH] Staging: panel: Replace NULL comparison.
Date: Sat,  3 Oct 2015 01:28:57 +0300
Message-Id: <1443824937-23444-1-git-send-email-aybuke.147@gmail.com>
X-Mailer: git-send-email 2.1.4

This patch using NULL checks instead of "!" operator in panel.c
Addresses checkpatch.pl check:
CHECK: Comparison to NULL could be written *.

Signed-off-by: Aybuke Ozdemir <aybuke.147@gmail.com>
---
 drivers/staging/panel/panel.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/panel/panel.c b/drivers/staging/panel/panel.c
index 498d623..a7e3875 100644
--- a/drivers/staging/panel/panel.c
+++ b/drivers/staging/panel/panel.c
@@ -920,7 +920,7 @@ static void lcd_gotoxy(void)
 static void lcd_print(char c)
 {
 	if (lcd.addr.x < lcd.bwidth) {
-		if (lcd_char_conv != NULL)
+		if (lcd_char_conv)
 			c = lcd_char_conv[(unsigned char)c];
 		lcd_write_data(c);
 		lcd.addr.x++;
@@ -1118,7 +1118,7 @@ static inline int handle_lcd_special_code(void)
 		break;
 	case '*':
 		/* flash back light using the keypad timer */
-		if (scan_timer.function != NULL) {
+		if (scan_timer.function) {
 			if (lcd.light_tempo == 0
 					&& ((lcd.flags & LCD_FLAG_L) == 0))
 				lcd_backlight(1);
@@ -1200,7 +1200,7 @@ static inline int handle_lcd_special_code(void)
 		char value;
 		int addr;
 
-		if (strchr(esc, ';') == NULL)
+		if (!strchr(esc, ';'))
 			break;
 
 		esc++;
@@ -1246,7 +1246,7 @@ static inline int handle_lcd_special_code(void)
 	}
 	case 'x':	/* gotoxy : LxXXX[yYYY]; */
 	case 'y':	/* gotoxy : LyYYY[xXXX]; */
-		if (strchr(esc, ';') == NULL)
+		if (!strchr(esc, ';'))
 			break;
 
 		while (*esc) {
@@ -1844,7 +1844,7 @@ static inline int input_state_high(struct logical_input *input)
 		if ((input->type == INPUT_TYPE_STD) &&
 		    (input->high_timer == 0)) {
 			input->high_timer++;
-			if (input->u.std.press_fct != NULL)
+			if (input->u.std.press_fct)
 				input->u.std.press_fct(input->u.std.press_data);
 		} else if (input->type == INPUT_TYPE_KBD) {
 			/* will turn on the light */
@@ -1924,7 +1924,7 @@ static inline void input_state_falling(struct logical_input *input)
 		if (input->type == INPUT_TYPE_STD) {
 			void (*release_fct)(int) = input->u.std.release_fct;
 
-			if (release_fct != NULL)
+			if (release_fct)
 				release_fct(input->u.std.release_data);
 		} else if (input->type == INPUT_TYPE_KBD) {
 			char *release_str = input->u.kbd.release_str;
@@ -2025,7 +2025,7 @@ static void panel_scan_timer(void)
 
 static void init_scan_timer(void)
 {
-	if (scan_timer.function != NULL)
+	if (scan_timer.function)
 		return;		/* already started */
 
 	setup_timer(&scan_timer, (void *)&panel_scan_timer, 0);
@@ -2229,7 +2229,7 @@ static void panel_attach(struct parport *port)
 	/* panel_cb.flags = 0 should be PARPORT_DEV_EXCL? */
 
 	pprt = parport_register_dev_model(port, "panel", &panel_cb, 0);
-	if (pprt == NULL) {
+	if (!pprt) {
 		pr_err("%s: port->number=%d parport=%d, parport_register_device() failed\n",
 		       __func__, port->number, parport);
 		return;
@@ -2276,10 +2276,10 @@ static void panel_detach(struct parport *port)
 		       __func__, port->number, parport);
 		return;
 	}
-	if (scan_timer.function != NULL)
+	if (scan_timer.function)
 		del_timer_sync(&scan_timer);
 
-	if (pprt != NULL) {
+	if (pprt) {
 		if (keypad.enabled) {
 			misc_deregister(&keypad_dev);
 			keypad_initialized = 0;
-- 
2.1.4


