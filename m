X-GM-THRID: 6201180955724480512
X-Received: by 10.112.145.3 with SMTP id sq3mr2886690lbb.7.1443873144595;
        Sat, 03 Oct 2015 04:52:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.105.135 with SMTP id gm7ls533565wib.29.gmail; Sat, 03 Oct
 2015 04:52:24 -0700 (PDT)
X-Received: by 10.180.72.68 with SMTP id b4mr462702wiv.2.1443873144217;
        Sat, 03 Oct 2015 04:52:24 -0700 (PDT)
Return-Path: <aybuke.147@gmail.com>
Received: from mail-wi0-x234.google.com (mail-wi0-x234.google.com. [2a00:1450:400c:c05::234])
        by gmr-mx.google.com with ESMTPS id ch7si101598wib.2.2015.10.03.04.52.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Oct 2015 04:52:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) client-ip=2a00:1450:400c:c05::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) smtp.mailfrom=aybuke.147@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x234.google.com with SMTP id ge5so64037592wic.0
        for <outreachy-kernel@googlegroups.com>; Sat, 03 Oct 2015 04:52:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=Vwg6UzvUxv3UXcEvvpv3L2L+ziYOilP2CIXQgVzYBEU=;
        b=v0KnsmP+Qs3/3fEo1YoYHqS+JWugWioy4fJp0ccKkpUUR0ePxRX8dvjoW4fjeVQCGT
         sZ0DZ9sbEezN35Kchj0AMN6QqfMhE0blOde/IarhdXaPFQmTo5GidGxslhUVA3k5a89Y
         ewaaLxSLFyhdyQH3leHg/cpE4UE5WV8kTiN9sX9qb+2TtD0/q0lIbO3PPqzOVG5+p4Hg
         DRBvP8WkgvHDO4rxFBrktDr7VNa+dSHBA24KJ/5TFOsP8nWmOtXkWNBPMPaBL0VzkD0K
         AgKui2OUPKmfZhfwcLBvK8Rgt2CUoO4sifPAdnNv2ndOdyo0nEG+ot33vpCkzwHFtWrL
         Tyfw==
X-Received: by 10.194.48.81 with SMTP id j17mr20314397wjn.81.1443873144123;
        Sat, 03 Oct 2015 04:52:24 -0700 (PDT)
Return-Path: <aybuke.147@gmail.com>
Received: from kripton.comu.edu.tr ([193.255.97.43])
        by smtp.gmail.com with ESMTPSA id s1sm3789117wik.16.2015.10.03.04.52.22
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 03 Oct 2015 04:52:23 -0700 (PDT)
From: Aybuke Ozdemir <aybuke.147@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Aybuke Ozdemir <aybuke.147@gmail.com>
Subject: [PATCH v3] Staging: panel: Replace NULL comparison.
Date: Sat,  3 Oct 2015 14:52:09 +0300
Message-Id: <1443873129-3222-1-git-send-email-aybuke.147@gmail.com>
X-Mailer: git-send-email 2.1.4

Use ! operating instead of NULL checks.
Addresses "CHECK: Comparison to NULL" from checkpatch.pl.

Signed-off-by: Aybuke Ozdemir <aybuke.147@gmail.com>
---
Changes since v1:
* change commit explain message.
Changes since v2:
* generalized CHECK message from checkpatch.pl in commit message.
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


