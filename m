X-GM-THRID: 6210059285862285312
X-Received: by 10.129.51.213 with SMTP id z204mr31336811ywz.20.1445892245302;
        Mon, 26 Oct 2015 13:44:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.135.143 with SMTP id r15ls1102293ioi.75.gmail; Mon, 26 Oct
 2015 13:44:04 -0700 (PDT)
X-Received: by 10.66.148.233 with SMTP id tv9mr17488082pab.7.1445892244860;
        Mon, 26 Oct 2015 13:44:04 -0700 (PDT)
Return-Path: <theonly.ultimate@gmail.com>
Received: from mail-pa0-x234.google.com (mail-pa0-x234.google.com. [2607:f8b0:400e:c03::234])
        by gmr-mx.google.com with ESMTPS id zg1si3790626pbb.2.2015.10.26.13.44.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2015 13:44:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of theonly.ultimate@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) client-ip=2607:f8b0:400e:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of theonly.ultimate@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) smtp.mailfrom=theonly.ultimate@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x234.google.com with SMTP id la5so5148466pab.0
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Oct 2015 13:44:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=5tjrcMI4Gxa/DYV+MwRQty5ac5cDYQ4CBh1r5BapguM=;
        b=fa39U9MOY0wniPrn0NEQUofycCw/Mwf0ENG8snNUxR+zdgx0DPhxJp1p894Rl/aCoM
         jwBK6cuEHMaWPI5wLAHX/TevdCjwFeFtkjhuTdvZzETpjLnniUHkNu3qhaBInAcQ9uTF
         xJM6USrJHiU8IGZvKynTlMCdf/gVst216ya6WEJGD9gfhBVlL4GIcDdf1xP859FmjFtA
         PJdyyQSA6EKijmfv3Hqch3trCWStsbIJiihygALK6S27gj38X0SA6iZ1J2/6ECHLfBIr
         xq+JEoVqrxBxhrN032TvPEeZx3ZTSrxwkwSGkXKWgIBR5djynL2eaM8iv46Knj7uVxI2
         BVEw==
X-Received: by 10.68.137.161 with SMTP id qj1mr24363048pbb.154.1445892244743;
        Mon, 26 Oct 2015 13:44:04 -0700 (PDT)
Return-Path: <theonly.ultimate@gmail.com>
Received: from localhost ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id yz3sm35530924pbb.37.2015.10.26.13.44.03
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Mon, 26 Oct 2015 13:44:04 -0700 (PDT)
Date: Tue, 27 Oct 2015 02:14:08 +0530
From: Swetha <theonly.ultimate@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: linux-usb@vger.kernel.org
Subject: [PATCH 3/4] Staging: panel: usleep_range is preferred over udelay
Message-ID: <40eae260662f03f9f8cc37eb18d2badcfc4ecea4.1445891839.git.theonly.ultimate@gmail.com>
References: <cover.1445891839.git.theonly.ultimate@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1445891839.git.theonly.ultimate@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch fixes the issue:

CHECK: usleep_range is preferred over udelay; see
Documentation/timers/timers-howto.txt

Signed-off-by: Swetha <theonly.ultimate@gmail.com>
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


