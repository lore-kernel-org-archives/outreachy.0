X-GM-THRID: 6664078765132349440
X-Received: by 2002:a63:6407:: with SMTP id y7mr5105143pgb.24.1551601748940;
        Sun, 03 Mar 2019 00:29:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:1548:: with SMTP id 69ls5291483pfv.7.gmail; Sun, 03 Mar
 2019 00:29:08 -0800 (PST)
X-Google-Smtp-Source: APXvYqz+Qx0ArOjlOPPDgXjjaGrIRJZSM3KLAOnYhsfwYaKpEIOu9lz4oTEbQrmtkZgk3u+uj3px
X-Received: by 2002:a65:66cd:: with SMTP id c13mr5044173pgw.73.1551601748379;
        Sun, 03 Mar 2019 00:29:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551601748; cv=none;
        d=google.com; s=arc-20160816;
        b=z2A/XTqXO8pN88pJI5WR8b0qZoxxidvb5nibOD5bK3hSFI9EykrlJoS4xq2vy1ugrB
         TtwbHAzsTPB8LTFhreQy8MZO1Msq+jctipbNcy5EgOLt7yfRkcG+hbwKu3uLN8PpbWd5
         v+FDOtyro3yi8UcdAyV5/cE6vMwTrKOcIUwYkK3DADE7QrjFrDa4ZI5rT6xImixTwLk/
         kakn+UWmwx8XUfuFj3N+j6qKjWkAu2We40StSVriQoid2NADrJFwMZ8yo8iJ3vRNTBeT
         a6CVaa/Fdc6iWseYBzFyJrCMgH1xmIC5q5xWGrypUN9lv02mQwIoCYydhA0KVccyAEMI
         yB3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=eIGtR4EqPzUxVX/pGk2vFk8JUq9hZS2LJuxjNI20RkA=;
        b=ImMSYLw87kEjhZwHcgX1HGop2y9VArBG4AvyYd8+7TLGCqa8S1HGqMn6fUvjQ8NO67
         qs42Czpw3TUDwrd4+Jm7BYqlmkG6raYmvno60fkVbJjNv0+J0Rrn1s79UhaXJCX35zJZ
         5UX87mZluRdIas1VnvBPAr967hrI8gyyK29qLRMeyuGpNya39rhOfLmIgAbKOQxz7ERH
         TEGQXhiu7JfQtVYa3ymWTr+3uMKCnJXIGKolhMgswJMedp7KraKxH6/RmAdmReONV1H+
         5X6E6hgauVa5GOk1qIBs7NSb0fwaV8jVqd4AilAnPLbUMGRswEbXZ5qqCeb90ejH4Cjb
         gncw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=n0UeVcI4;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::52e as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com. [2607:f8b0:4864:20::52e])
        by gmr-mx.google.com with ESMTPS id j8si115128plk.3.2019.03.03.00.29.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 03 Mar 2019 00:29:08 -0800 (PST)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::52e as permitted sender) client-ip=2607:f8b0:4864:20::52e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=n0UeVcI4;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::52e as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x52e.google.com with SMTP id l11so1040040pgq.10
        for <outreachy-kernel@googlegroups.com>; Sun, 03 Mar 2019 00:29:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=eIGtR4EqPzUxVX/pGk2vFk8JUq9hZS2LJuxjNI20RkA=;
        b=n0UeVcI4e3e4EdyhdvV97UQfzyOeSCor4Y6SJ17ho6pEwD0k8YjhIJBt2rbnoEze16
         cO4S4m8DbnVlM1EtsLce5esI3MRJu2LIeQOskF71mnpXKnbALDpWYiy+VaKsvVR7b4Mw
         F61fZhfs1Q5EOpHK6rz3aaaroxBhoNbJ60Syd5HyG8Ue7yAD2xx/Zal9EcnPcJFXuhqb
         Y42pgwRfe1PrrfyU2oNf4dO7/9WON4ya/0BAMyPKsXnpSkQdrXvAD4pCoAHlwfgGDEJZ
         cL0aXHj5aoxJdzd7iZ1N3w4mmovL/wzh7dwWCbvhh9KtqKtdhTJ/4HDXLz1wKtF+JwyF
         oIng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=eIGtR4EqPzUxVX/pGk2vFk8JUq9hZS2LJuxjNI20RkA=;
        b=Ba7SqOg+U6t3ZlMAoCX1hvlKzdKWCk000wATFJ8no0SVbySPosqUZODGpdqkhKDGd7
         WUJ8Z4mVg0ngH3Ul5E5fodaz7Thwq1fNN0xBDDpzdyjiklBZvGqZE32IHXgjeGHitLAd
         nR+dsTvHFlNCNzakZcgfAE0QAx3DJ6rJh1MtN5PKNpdExm0Jf6v8FQUlf2Hq3hU6V0S5
         32osp8aShfs2QdNAV/uJnzBE97fO1j98aHx5GLnYx7HOBfC4+Boyindk8+fvOhEYzfgl
         Bqn4GTyC+B/ubEkCeX8Sd+icOTP4fk3d+OI5PXKabC69cmWZ2WbwqyKShQHSw3u2F+SP
         NBOA==
X-Gm-Message-State: AHQUAuZisBoj1yw229CRvRYySnNblXlSllM41h0dV79MucOYYZMhV+3b
	PwrOIHOo5/CmW3oTnBqneIX5ua87Zek=
X-Received: by 2002:a62:1854:: with SMTP id 81mr14157800pfy.223.1551601747995;
        Sun, 03 Mar 2019 00:29:07 -0800 (PST)
Return-Path: <digholebhagyashri@gmail.com>
Received: from bhagyashri-Lenovo-G570 ([2405:204:9406:e157:a9ce:acf1:ad9a:ed4a])
        by smtp.gmail.com with ESMTPSA id e21sm8080183pfh.45.2019.03.03.00.29.06
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 03 Mar 2019 00:29:07 -0800 (PST)
Date: Sun, 3 Mar 2019 13:59:02 +0530
From: Bhagyashri Dighole <digholebhagyashri@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Outreachy <outreachy-kernel@googlegroups.com>,
	Bhagyashri <digholebhagyashri@gmail.com>
Subject: [PATCH] Staging: fbtft: Replace udelay to usleep_range
Message-ID: <20190303082902.GA16698@bhagyashri-Lenovo-G570>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Replace udelay to usleep_range function call with 10 microsecond range.
Detected by checkpatch.pl "CHECK: usleep_range is preferred over udelay".

Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
---
 drivers/staging/fbtft/fb_agm1264k-fl.c |  2 +-
 drivers/staging/fbtft/fb_ra8875.c      |  4 ++--
 drivers/staging/fbtft/fb_tinylcd.c     |  2 +-
 drivers/staging/fbtft/fb_upd161704.c   | 18 +++++++++---------
 drivers/staging/fbtft/fb_watterott.c   |  4 ++--
 5 files changed, 15 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/fbtft/fb_agm1264k-fl.c b/drivers/staging/fbtft/fb_agm1264k-fl.c
index 8f27bd8..b2d19b1 100644
--- a/drivers/staging/fbtft/fb_agm1264k-fl.c
+++ b/drivers/staging/fbtft/fb_agm1264k-fl.c
@@ -85,7 +85,7 @@ static void reset(struct fbtft_par *par)
 	dev_dbg(par->info->device, "%s()\n", __func__);
 
 	gpiod_set_value(par->gpio.reset, 0);
-	udelay(20);
+	usleep_range(20, 30);
 	gpiod_set_value(par->gpio.reset, 1);
 	mdelay(120);
 }
diff --git a/drivers/staging/fbtft/fb_ra8875.c b/drivers/staging/fbtft/fb_ra8875.c
index 70b37fc..5f857ba 100644
--- a/drivers/staging/fbtft/fb_ra8875.c
+++ b/drivers/staging/fbtft/fb_ra8875.c
@@ -217,7 +217,7 @@ static void write_reg8_bus8(struct fbtft_par *par, int len, ...)
 	}
 	len--;
 
-	udelay(100);
+	usleep_range(100, 110);
 
 	if (len) {
 		buf = (u8 *)par->buf;
@@ -238,7 +238,7 @@ static void write_reg8_bus8(struct fbtft_par *par, int len, ...)
 
 	/* restore user spi-speed */
 	par->fbtftops.write = fbtft_write_spi;
-	udelay(100);
+	usleep_range(100, 110);
 }
 
 static int write_vmem16_bus8(struct fbtft_par *par, size_t offset, size_t len)
diff --git a/drivers/staging/fbtft/fb_tinylcd.c b/drivers/staging/fbtft/fb_tinylcd.c
index 9469248..7a9f0e1 100644
--- a/drivers/staging/fbtft/fb_tinylcd.c
+++ b/drivers/staging/fbtft/fb_tinylcd.c
@@ -41,7 +41,7 @@ static int init_display(struct fbtft_par *par)
 		       0x00, 0x35, 0x33, 0x00, 0x00, 0x00);
 	write_reg(par, MIPI_DCS_SET_PIXEL_FORMAT, 0x55);
 	write_reg(par, MIPI_DCS_EXIT_SLEEP_MODE);
-	udelay(250);
+	usleep_range(250, 260);
 	write_reg(par, MIPI_DCS_SET_DISPLAY_ON);
 
 	return 0;
diff --git a/drivers/staging/fbtft/fb_upd161704.c b/drivers/staging/fbtft/fb_upd161704.c
index 564a38e..b00161e 100644
--- a/drivers/staging/fbtft/fb_upd161704.c
+++ b/drivers/staging/fbtft/fb_upd161704.c
@@ -36,27 +36,27 @@ static int init_display(struct fbtft_par *par)
 
 	/* oscillator start */
 	write_reg(par, 0x003A, 0x0001);	/*Oscillator 0: stop, 1: operation */
-	udelay(100);
+	usleep_range(100, 110);
 
 	/* y-setting */
 	write_reg(par, 0x0024, 0x007B);	/* amplitude setting */
-	udelay(10);
+	usleep_range(10, 20);
 	write_reg(par, 0x0025, 0x003B);	/* amplitude setting */
 	write_reg(par, 0x0026, 0x0034);	/* amplitude setting */
-	udelay(10);
+	usleep_range(10, 20);
 	write_reg(par, 0x0027, 0x0004);	/* amplitude setting */
 	write_reg(par, 0x0052, 0x0025);	/* circuit setting 1 */
-	udelay(10);
+	usleep_range(10, 20);
 	write_reg(par, 0x0053, 0x0033);	/* circuit setting 2 */
 	write_reg(par, 0x0061, 0x001C);	/* adjustment V10 positive polarity */
-	udelay(10);
+	usleep_range(10, 20);
 	write_reg(par, 0x0062, 0x002C);	/* adjustment V9 negative polarity */
 	write_reg(par, 0x0063, 0x0022);	/* adjustment V34 positive polarity */
-	udelay(10);
+	usleep_range(10, 20);
 	write_reg(par, 0x0064, 0x0027);	/* adjustment V31 negative polarity */
-	udelay(10);
+	usleep_range(10, 20);
 	write_reg(par, 0x0065, 0x0014);	/* adjustment V61 negative polarity */
-	udelay(10);
+	usleep_range(10, 20);
 	write_reg(par, 0x0066, 0x0010);	/* adjustment V61 negative polarity */
 
 	/* Basical clock for 1 line (BASECOUNT[7:0]) number specified */
@@ -64,7 +64,7 @@ static int init_display(struct fbtft_par *par)
 
 	/* Power supply setting */
 	write_reg(par, 0x0019, 0x0000);	/* DC/DC output setting */
-	udelay(200);
+	usleep_range(200, 210);
 	write_reg(par, 0x001A, 0x1000);	/* DC/DC frequency setting */
 	write_reg(par, 0x001B, 0x0023);	/* DC/DC rising setting */
 	write_reg(par, 0x001C, 0x0C01);	/* Regulator voltage setting */
diff --git a/drivers/staging/fbtft/fb_watterott.c b/drivers/staging/fbtft/fb_watterott.c
index 0a5206d..4bd0b86 100644
--- a/drivers/staging/fbtft/fb_watterott.c
+++ b/drivers/staging/fbtft/fb_watterott.c
@@ -84,7 +84,7 @@ static int write_vmem(struct fbtft_par *par, size_t offset, size_t len)
 			par->txbuf.buf, 10 + par->info->fix.line_length);
 		if (ret < 0)
 			return ret;
-		udelay(300);
+		usleep_range(300, 310);
 	}
 
 	return 0;
@@ -129,7 +129,7 @@ static int write_vmem_8bit(struct fbtft_par *par, size_t offset, size_t len)
 			par->txbuf.buf, 10 + par->info->var.xres);
 		if (ret < 0)
 			return ret;
-		udelay(700);
+		usleep_range(700, 710);
 	}
 
 	return 0;
-- 
2.7.4


