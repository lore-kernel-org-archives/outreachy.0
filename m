X-GM-THRID: 6209936175528935424
X-Received: by 10.140.233.208 with SMTP id e199mr29575935qhc.8.1445863436008;
        Mon, 26 Oct 2015 05:43:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.21.228 with SMTP id 91ls3252063qgl.15.gmail; Mon, 26 Oct
 2015 05:43:55 -0700 (PDT)
X-Received: by 10.140.234.135 with SMTP id f129mr29594154qhc.9.1445863435299;
        Mon, 26 Oct 2015 05:43:55 -0700 (PDT)
Return-Path: <theonly.ultimate@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id vy6si3453312pbc.1.2015.10.26.05.43.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2015 05:43:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of theonly.ultimate@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of theonly.ultimate@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mailfrom=theonly.ultimate@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22d.google.com with SMTP id hk11so187801184pad.1
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Oct 2015 05:43:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=zfVtI+0DA1pcYmr145ywbDmsJGr0RS0QwRpOKN5rnhM=;
        b=DYPk5JYUM78hBTXOuoqgaot+/cBVsQO9oDW4UnUHLdUDcMY4yFQUqJqev+MP7ZhWxP
         sLROU6zTEtq+Lupk/pWmobvUrIJt+e4Qhqo2JAhJz7AxGCj7Mm5PqefY9H0BTUJJ6ucN
         63fERBRji8IXC3U4XoxhMu1EhOCHAMinhwfyEk/lS2noApO1SKnAFWfvlefUlzZ157kc
         I7kbC0V8TFcGxVEfPFGfzjMDSq6nl5kA2JF4sK9UfyyFN0gYr9SBcwGerFNRNk43h6xC
         LCm/nUmPd6l3G54a4F1dNkmjuUgDWrxmYtDPKqYgdfXzUOFuhSPzpiwgncA/sp/JPz6X
         cPXg==
X-Received: by 10.66.232.5 with SMTP id tk5mr16868431pac.106.1445863435126;
        Mon, 26 Oct 2015 05:43:55 -0700 (PDT)
Return-Path: <theonly.ultimate@gmail.com>
Received: from localhost ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id rx10sm34002560pab.21.2015.10.26.05.43.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Mon, 26 Oct 2015 05:43:54 -0700 (PDT)
Date: Mon, 26 Oct 2015 18:13:56 +0530
From: Swetha <theonly.ultimate@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: panel: Fix the checkpatch.pl issues
Message-ID: <20151026124356.GA5629@swetha>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Fix checkpatch.pl issue:

CHECK: Please don't use multiple blank lines

Remove multiple blank lines

CHECK: usleep_range is preferred over udelay; see
       Documentation/timers/timers-howto.txt

Replace the udelay() with usleep_range() with a reasonable upper limit.

CHECK: No space is necessary after a cast

Remove the space.

CHECK: Logical continuations should be on the previous line

Fixed it.

Signed-off-by: Swetha <theonly.ultimate@gmail.com>
---
 drivers/staging/panel/panel.c | 54 +++++++++++++++++++++++--------------------
 1 file changed, 29 insertions(+), 25 deletions(-)

diff --git a/drivers/staging/panel/panel.c b/drivers/staging/panel/panel.c
index a7e3875..4b50a8a 100644
--- a/drivers/staging/panel/panel.c
+++ b/drivers/staging/panel/panel.c
@@ -71,7 +71,7 @@
 #define KEYPAD_BUFFER		64
 
 /* poll the keyboard this every second */
-#define INPUT_POLL_TIME		(HZ/50)
+#define INPUT_POLL_TIME		(HZ / 50)
 /* a key starts to repeat after this times INPUT_POLL_TIME */
 #define KEYPAD_REP_START	(10)
 /* a key repeats this times INPUT_POLL_TIME */
@@ -576,7 +576,6 @@ static int keypad_enabled = NOT_SET;
 module_param(keypad_enabled, int, 0000);
 MODULE_PARM_DESC(keypad_enabled, "Deprecated option, use keypad_type instead");
 
-
 static const unsigned char *lcd_char_conv;
 
 /* for some LCD drivers (ks0074) we need a charset conversion table. */
@@ -826,7 +825,8 @@ static void lcd_write_cmd_s(int cmd)
 	lcd_send_serial(0x1F);	/* R/W=W, RS=0 */
 	lcd_send_serial(cmd & 0x0F);
 	lcd_send_serial((cmd >> 4) & 0x0F);
-	udelay(40);		/* the shortest command takes at least 40 us */
+	/* the shortest command takes at least 40 us */
+	usleep_range(40, 100);
 	spin_unlock_irq(&pprt_lock);
 }
 
@@ -837,7 +837,8 @@ static void lcd_write_data_s(int data)
 	lcd_send_serial(0x5F);	/* R/W=W, RS=1 */
 	lcd_send_serial(data & 0x0F);
 	lcd_send_serial((data >> 4) & 0x0F);
-	udelay(40);		/* the shortest data takes at least 40 us */
+	/* the shortest data takes at least 40 us */
+	usleep_range(40, 100);
 	spin_unlock_irq(&pprt_lock);
 }
 
@@ -847,19 +848,20 @@ static void lcd_write_cmd_p8(int cmd)
 	spin_lock_irq(&pprt_lock);
 	/* present the data to the data port */
 	w_dtr(pprt, cmd);
-	udelay(20);	/* maintain the data during 20 us before the strobe */
+	/* maintain the data during 20 us before the strobe */
+	usleep_range(20, 100);
 
 	bits.e = BIT_SET;
 	bits.rs = BIT_CLR;
 	bits.rw = BIT_CLR;
 	set_ctrl_bits();
 
-	udelay(40);	/* maintain the strobe during 40 us */
+	usleep_range(40, 100);	/* maintain the strobe during 40 us */
 
 	bits.e = BIT_CLR;
 	set_ctrl_bits();
 
-	udelay(120);	/* the shortest command takes at least 120 us */
+	usleep_range(120, 500);	/* the shortest command takes at least 120 us */
 	spin_unlock_irq(&pprt_lock);
 }
 
@@ -869,19 +871,20 @@ static void lcd_write_data_p8(int data)
 	spin_lock_irq(&pprt_lock);
 	/* present the data to the data port */
 	w_dtr(pprt, data);
-	udelay(20);	/* maintain the data during 20 us before the strobe */
+	/* maintain the data during 20 us before the strobe */
+	usleep_range(20, 100);
 
 	bits.e = BIT_SET;
 	bits.rs = BIT_SET;
 	bits.rw = BIT_CLR;
 	set_ctrl_bits();
 
-	udelay(40);	/* maintain the strobe during 40 us */
+	usleep_range(40, 100);	/* maintain the strobe during 40 us */
 
 	bits.e = BIT_CLR;
 	set_ctrl_bits();
 
-	udelay(45);	/* the shortest data takes at least 45 us */
+	usleep_range(45, 100);	/* the shortest data takes at least 45 us */
 	spin_unlock_irq(&pprt_lock);
 }
 
@@ -891,7 +894,7 @@ static void lcd_write_cmd_tilcd(int cmd)
 	spin_lock_irq(&pprt_lock);
 	/* present the data to the control port */
 	w_ctr(pprt, cmd);
-	udelay(60);
+	usleep_range(60, 120);
 	spin_unlock_irq(&pprt_lock);
 }
 
@@ -901,7 +904,7 @@ static void lcd_write_data_tilcd(int data)
 	spin_lock_irq(&pprt_lock);
 	/* present the data to the data port */
 	w_dtr(pprt, data);
-	udelay(60);
+	usleep_range(60, 120);
 	spin_unlock_irq(&pprt_lock);
 }
 
@@ -944,7 +947,8 @@ static void lcd_clear_fast_s(void)
 		lcd_send_serial(0x5F);	/* R/W=W, RS=1 */
 		lcd_send_serial(' ' & 0x0F);
 		lcd_send_serial((' ' >> 4) & 0x0F);
-		udelay(40);	/* the shortest data takes at least 40 us */
+		/* the shortest data takes at least 40 us */
+		usleep_range(40, 100);
 	}
 	spin_unlock_irq(&pprt_lock);
 
@@ -968,7 +972,7 @@ static void lcd_clear_fast_p8(void)
 		w_dtr(pprt, ' ');
 
 		/* maintain the data during 20 us before the strobe */
-		udelay(20);
+		usleep_range(20, 100);
 
 		bits.e = BIT_SET;
 		bits.rs = BIT_SET;
@@ -976,13 +980,13 @@ static void lcd_clear_fast_p8(void)
 		set_ctrl_bits();
 
 		/* maintain the strobe during 40 us */
-		udelay(40);
+		usleep_range(40, 100);
 
 		bits.e = BIT_CLR;
 		set_ctrl_bits();
 
 		/* the shortest data takes at least 45 us */
-		udelay(45);
+		usleep_range(45, 100);
 	}
 	spin_unlock_irq(&pprt_lock);
 
@@ -1004,7 +1008,7 @@ static void lcd_clear_fast_tilcd(void)
 	for (pos = 0; pos < lcd.height * lcd.hwidth; pos++) {
 		/* present the data to the data port */
 		w_dtr(pprt, ' ');
-		udelay(60);
+		usleep_range(60, 120);
 	}
 
 	spin_unlock_irq(&pprt_lock);
@@ -1119,8 +1123,8 @@ static inline int handle_lcd_special_code(void)
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
@@ -1785,7 +1789,7 @@ static void phys_scan_contacts(void)
 	gndmask = PNL_PINPUT(r_str(pprt)) & scan_mask_i;
 
 	/* grounded inputs are signals 40-44 */
-	phys_read |= (pmask_t) gndmask << 40;
+	phys_read |= (pmask_t)gndmask << 40;
 
 	if (bitmask != gndmask) {
 		/*
@@ -1801,7 +1805,7 @@ static void phys_scan_contacts(void)
 
 			w_dtr(pprt, oldval & ~bitval);	/* enable this output */
 			bitmask = PNL_PINPUT(r_str(pprt)) & ~gndmask;
-			phys_read |= (pmask_t) bitmask << (5 * bit);
+			phys_read |= (pmask_t)bitmask << (5 * bit);
 		}
 		w_dtr(pprt, oldval);	/* disable all outputs */
 	}
@@ -2008,14 +2012,14 @@ static void panel_scan_timer(void)
 
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


