X-GM-THRID: 6210059285862285312
X-Received: by 10.182.52.132 with SMTP id t4mr34137671obo.16.1445937942949;
        Tue, 27 Oct 2015 02:25:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.8.93 with SMTP id 90ls2110446ioi.9.gmail; Tue, 27 Oct 2015
 02:25:42 -0700 (PDT)
X-Received: by 10.107.9.36 with SMTP id j36mr34396857ioi.2.1445937942693;
        Tue, 27 Oct 2015 02:25:42 -0700 (PDT)
Return-Path: <theonly.ultimate@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id zg1si4108899pbb.2.2015.10.27.02.25.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Oct 2015 02:25:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of theonly.ultimate@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of theonly.ultimate@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mailfrom=theonly.ultimate@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22a.google.com with SMTP id hk11so217468181pad.1
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Oct 2015 02:25:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=zZhUFXLPonk+udphkKFlA2xPqOX2Qu8caU28JHbu37Q=;
        b=F4mlh47a/4OSYsTxLn571keUk3NR9o1gW33ijZVR5PrWjwIW1TYKS+f4TqdmgJMr0/
         opvqc5hEYnpqWO/LvwYxjNeBpXj0NCv0UNgV6oi1GBqcd5vhXA1EEfbNNtTPiTKxLmhX
         eXc11M3q00fYeC6kCI+JmJeTyxQAZw1003PM3otyZMVDe8vpv42OOvVIKPgMYqGNALiH
         ZxNZpPKX0mteNDFWnpqZ0I1p+riBqP7vgGffKGatNDlaLCP5AzMAHkBfxYwy7slAU4Rc
         TwmNr/hZlLELjPX4xVbtJogGu99Bgm+tZVMPQM/tJEKxVu04pN3b0xaQ7bRfXfip3+QT
         fj4Q==
X-Received: by 10.68.69.17 with SMTP id a17mr46462401pbu.10.1445937942561;
        Tue, 27 Oct 2015 02:25:42 -0700 (PDT)
Return-Path: <theonly.ultimate@gmail.com>
Received: from localhost ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id v13sm38470547pbs.51.2015.10.27.02.25.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Tue, 27 Oct 2015 02:25:42 -0700 (PDT)
Date: Tue, 27 Oct 2015 14:55:46 +0530
From: Sirnam Swetha <theonly.ultimate@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/4] Staging: panel: usleep_range is preferred over udelay
Message-ID: <40eae260662f03f9f8cc37eb18d2badcfc4ecea4.1445937649.git.theonly.ultimate@gmail.com>
References: <cover.1445937649.git.theonly.ultimate@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1445937649.git.theonly.ultimate@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch fixes the issue:

CHECK: usleep_range is preferred over udelay; see
Documentation/timers/timers-howto.txt

Signed-off-by: Sirnam Swetha <theonly.ultimate@gmail.com>
---
 drivers/staging/panel/panel.c | 34 +++++++++++++++++++---------------
 1 file changed, 19 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/panel/panel.c b/drivers/staging/panel/panel.c
index 11a50f6..66ad4d0 100644
--- a/drivers/staging/panel/panel.c
+++ b/drivers/staging/panel/panel.c
@@ -825,7 +825,8 @@ static void lcd_write_cmd_s(int cmd)
 	lcd_send_serial(0x1F);	/* R/W=W, RS=0 */
 	lcd_send_serial(cmd & 0x0F);
 	lcd_send_serial((cmd >> 4) & 0x0F);
-	udelay(40);		/* the shortest command takes at least 40 us */
+	/* the shortest command takes at least 40 us */
+	usleep_range(40, 100);
 	spin_unlock_irq(&pprt_lock);
 }
 
@@ -836,7 +837,8 @@ static void lcd_write_data_s(int data)
 	lcd_send_serial(0x5F);	/* R/W=W, RS=1 */
 	lcd_send_serial(data & 0x0F);
 	lcd_send_serial((data >> 4) & 0x0F);
-	udelay(40);		/* the shortest data takes at least 40 us */
+	/* the shortest data takes at least 40 us */
+	usleep_range(40, 100);
 	spin_unlock_irq(&pprt_lock);
 }
 
@@ -846,19 +848,20 @@ static void lcd_write_cmd_p8(int cmd)
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
 
@@ -868,19 +871,20 @@ static void lcd_write_data_p8(int data)
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
 
@@ -890,7 +894,7 @@ static void lcd_write_cmd_tilcd(int cmd)
 	spin_lock_irq(&pprt_lock);
 	/* present the data to the control port */
 	w_ctr(pprt, cmd);
-	udelay(60);
+	usleep_range(60, 120);
 	spin_unlock_irq(&pprt_lock);
 }
 
@@ -900,7 +904,7 @@ static void lcd_write_data_tilcd(int data)
 	spin_lock_irq(&pprt_lock);
 	/* present the data to the data port */
 	w_dtr(pprt, data);
-	udelay(60);
+	usleep_range(60, 120);
 	spin_unlock_irq(&pprt_lock);
 }
 
@@ -943,7 +947,7 @@ static void lcd_clear_fast_s(void)
 		lcd_send_serial(0x5F);	/* R/W=W, RS=1 */
 		lcd_send_serial(' ' & 0x0F);
 		lcd_send_serial((' ' >> 4) & 0x0F);
-		udelay(40);	/* the shortest data takes at least 40 us */
+		usleep_range(40, 100);	/* the shortest data takes at least 40 us */
 	}
 	spin_unlock_irq(&pprt_lock);
 
@@ -967,7 +971,7 @@ static void lcd_clear_fast_p8(void)
 		w_dtr(pprt, ' ');
 
 		/* maintain the data during 20 us before the strobe */
-		udelay(20);
+		usleep_range(20, 100);
 
 		bits.e = BIT_SET;
 		bits.rs = BIT_SET;
@@ -975,13 +979,13 @@ static void lcd_clear_fast_p8(void)
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
 
@@ -1003,7 +1007,7 @@ static void lcd_clear_fast_tilcd(void)
 	for (pos = 0; pos < lcd.height * lcd.hwidth; pos++) {
 		/* present the data to the data port */
 		w_dtr(pprt, ' ');
-		udelay(60);
+		usleep_range(60, 120);
 	}
 
 	spin_unlock_irq(&pprt_lock);
-- 
1.9.1


