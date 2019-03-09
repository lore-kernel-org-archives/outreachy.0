X-GM-THRID: 6664414939270086656
X-Received: by 2002:a17:902:1744:: with SMTP id i62mr7453800pli.52.1552142122380;
        Sat, 09 Mar 2019 06:35:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:93:: with SMTP id 141ls4343795pga.1.gmail; Sat, 09 Mar
 2019 06:35:21 -0800 (PST)
X-Google-Smtp-Source: APXvYqzjmtRJ/3zsADM7gxcne0hu3Fr3xRXvF1zdBOak9V1BQ/Z/5pux5O2bQ7n0kC5u59Fj612G
X-Received: by 2002:a63:4e11:: with SMTP id c17mr9264326pgb.138.1552142121487;
        Sat, 09 Mar 2019 06:35:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552142121; cv=none;
        d=google.com; s=arc-20160816;
        b=Tteq3w0/xPRA3LzqI+xvE/qU/zE8cAEiwmQLuzRf8JUI5FsuUO9zJ2/z91pjDpcYj7
         I8fRNr531Yt9JN7WfsHvKlzbzToeoXPF47rS4C2qx/fA85LIPgIQvfFNGO7hN/vGrjqz
         Vc29eJ5TInyJjTyrIpcYwZGWyhfpukIuSY4lhFcNN9RMIPTBRdMbhh0cONCmM4AcwPEO
         chvgNSVV5LrssDJUfnbAfk2jHlfbgjOx7nD6xEiAvbuSK4FFd0+hsNs+hmN1Cl5/Dw+L
         E8Hw7xgn97/eyxFlXS3pGfXuLoADtccZ48bD87QEhb0Y6trHDZOiTxQ6ZxtxzBqNjboN
         RYyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=qZYfyqsbNRQxKYooN+pOC7DsBB0dR3rS3ZpDV5dygTM=;
        b=q9eq9E3fmmtIyTJijaiv00pSOrt0q7l0eQVmRn0h2duqu/tWMCFKQJNfE8L9uRqQnz
         OyJa5vfNgIEj3kmk2sUUHVz8GjpGW7tAYzISNnBcxxdmIBwaOOI++W/23o6D346ME9jB
         zZ3Oetxp0Mc59PsFOrxsyr9Q/VupFKFL/ifhbYvHuEA8EUWfjypoo3VMeCX5FtwHF44Y
         ZhU+07IqNA2Owam6x+y34jdnNX8kbuXoXV7rUl96r+ZUgnh7Oyakaai4EQQ7fGQiQuKe
         2tixtGe19b7P49a9MtJYh1SZwzDNSRi/1QbDdXOlyIysIYwO34XJOqW+77NX3qt/WCCI
         qTsw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ewlA1SMz;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::433 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com. [2607:f8b0:4864:20::433])
        by gmr-mx.google.com with ESMTPS id g83si11454pfg.5.2019.03.09.06.35.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Mar 2019 06:35:21 -0800 (PST)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::433 as permitted sender) client-ip=2607:f8b0:4864:20::433;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ewlA1SMz;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::433 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x433.google.com with SMTP id n22so292818pfa.3
        for <outreachy-kernel@googlegroups.com>; Sat, 09 Mar 2019 06:35:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=qZYfyqsbNRQxKYooN+pOC7DsBB0dR3rS3ZpDV5dygTM=;
        b=ewlA1SMzNY9yCfSy8M7cxJsnmrn0BvqyR0Hgv46HayaA/RQlNLsotSJgGisWZ/LyWZ
         WlrlxgsWVEYDZmEqklI4N04NUzuulbZiJuoPj7RSeWftIZYXHn1ppfERKyRCO8bV33Be
         JZAXzOSt9cKr6O7vCGEqe+N2a4Z0atOT7IkvGUp9KZlzi3Z07doS9dPq+htCBmFz+WUk
         JvQncQeqpOzwrR/peou1wDD2MSHhBXMevDRPrS6WzLIOUOcR2maej6tHFKRQ/LEwMCeN
         3OxlZ5iDDb9VaHNU2/5m7KPHdzs2d58aghtksO6X+HoBtvE7FBFO5G5U4wbaZoIS7x7g
         lJMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=qZYfyqsbNRQxKYooN+pOC7DsBB0dR3rS3ZpDV5dygTM=;
        b=YqZ77Q9UpjayMxwqNjQ1XvqWEKyynCmx5brxp8zLbkBt27qxUF9GuYhK8vU/VLR/12
         KRsRGWmdmILgsMuZWAaYk4iQ0ZqEnZg4+iBfN4Ft5cgj/bRKNo5fkcZcECrSJ1lC2xVV
         xjnIH8+gNNs63HUU1CHZo1G+pELwKBkhAXqgADTfVvOwOk/viRqLLUDuIubrZOeB9h7G
         9ODZ0xhB8aOEwExxbjDrhcGJ2R4+e2jZaEKMDiThcWR8HexQKSFz5900emtAdggKz00h
         1mA460TRstnu7eHRW4gbOrUmTpgcZ7oD5rhpVNExkL0vkp0NpMVNFbmpBc0NwsD+J80h
         PgHg==
X-Gm-Message-State: APjAAAXaeGSZUDmk+1hovuhxAOOcCZOPKK5j8CNiV/khgo3n9ASuYdAX
	cE8C96rh1Bjrnyb7e03QlE+X+rypaj4=
X-Received: by 2002:a17:902:9a98:: with SMTP id w24mr24009208plp.247.1552142120743;
        Sat, 09 Mar 2019 06:35:20 -0800 (PST)
Return-Path: <digholebhagyashri@gmail.com>
Received: from bhagyashri-Lenovo-G570 ([2409:4042:2e8c:9ce5:f828:5bfa:d9dc:e4ec])
        by smtp.gmail.com with ESMTPSA id i10sm1109829pgs.26.2019.03.09.06.35.12
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 09 Mar 2019 06:35:20 -0800 (PST)
Date: Sat, 9 Mar 2019 20:05:05 +0530
From: Bhagyashri Dighole <digholebhagyashri@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Outreachy <outreachy-kernel@googlegroups.com>
Subject: [PATCH v4] staging: fbtft: line over 80 characters.
Message-ID: <20190309143505.GA14822@bhagyashri-Lenovo-G570>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix coding style issues, which solves checkpatch.pl warning:
"WARNING: line over 80 characters".

Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
---
Changes in v4:
  - Convert a ternary statement into a if statement.

Changes in v3:
  - Make the code in original form.
  - Use tab to line up the code.
  
Changes in v2:
  - Improve code order.
  - Make the code more readable.

 drivers/staging/fbtft/fb_ssd1306.c |  5 ++++-
 drivers/staging/fbtft/fb_ssd1331.c |  3 ++-
 drivers/staging/fbtft/fbtft.h      | 14 +++++++++++---
 drivers/staging/fbtft/flexfb.c     |  3 ++-
 4 files changed, 19 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/fbtft/fb_ssd1306.c b/drivers/staging/fbtft/fb_ssd1306.c
index d7c5e2e..22c506a 100644
--- a/drivers/staging/fbtft/fb_ssd1306.c
+++ b/drivers/staging/fbtft/fb_ssd1306.c
@@ -184,7 +184,10 @@ static int write_vmem(struct fbtft_par *par, size_t offset, size_t len)
 		for (y = 0; y < yres / 8; y++) {
 			*buf = 0x00;
 			for (i = 0; i < 8; i++)
-				*buf |= (vmem16[(y * 8 + i) * xres + x] ? 1 : 0) << i;
+				if (vmem16[(y * 8 + i) * xres + x])
+					*buf |= (1 << i);
+				else
+					*buf |= (0 << i);
 			buf++;
 		}
 	}
diff --git a/drivers/staging/fbtft/fb_ssd1331.c b/drivers/staging/fbtft/fb_ssd1331.c
index 9f54fe2..4cfe9f8 100644
--- a/drivers/staging/fbtft/fb_ssd1331.c
+++ b/drivers/staging/fbtft/fb_ssd1331.c
@@ -74,7 +74,8 @@ static void write_reg8_bus8(struct fbtft_par *par, int len, ...)
 		for (i = 0; i < len; i++)
 			buf[i] = (u8)va_arg(args, unsigned int);
 		va_end(args);
-		fbtft_par_dbg_hex(DEBUG_WRITE_REGISTER, par, par->info->device, u8, buf, len, "%s: ", __func__);
+		fbtft_par_dbg_hex(DEBUG_WRITE_REGISTER, par, par->info->device,
+				  u8, buf, len, "%s: ", __func__);
 	}
 
 	va_start(args, len);
diff --git a/drivers/staging/fbtft/fbtft.h b/drivers/staging/fbtft/fbtft.h
index 7fdd3b0..22c0c5d 100644
--- a/drivers/staging/fbtft/fbtft.h
+++ b/drivers/staging/fbtft/fbtft.h
@@ -347,9 +347,17 @@ module_exit(fbtft_driver_module_exit);
 
 /* shorthand debug levels */
 #define DEBUG_LEVEL_1	DEBUG_REQUEST_GPIOS
-#define DEBUG_LEVEL_2	(DEBUG_LEVEL_1 | DEBUG_DRIVER_INIT_FUNCTIONS | DEBUG_TIME_FIRST_UPDATE)
-#define DEBUG_LEVEL_3	(DEBUG_LEVEL_2 | DEBUG_RESET | DEBUG_INIT_DISPLAY | DEBUG_BLANK | DEBUG_REQUEST_GPIOS | DEBUG_FREE_GPIOS | DEBUG_VERIFY_GPIOS | DEBUG_BACKLIGHT | DEBUG_SYSFS)
-#define DEBUG_LEVEL_4	(DEBUG_LEVEL_2 | DEBUG_FB_READ | DEBUG_FB_WRITE | DEBUG_FB_FILLRECT | DEBUG_FB_COPYAREA | DEBUG_FB_IMAGEBLIT | DEBUG_FB_BLANK)
+#define DEBUG_LEVEL_2	(DEBUG_LEVEL_1 | DEBUG_DRIVER_INIT_FUNCTIONS |	\
+			 DEBUG_TIME_FIRST_UPDATE)			\
+#define DEBUG_LEVEL_3	(DEBUG_LEVEL_2 | DEBUG_RESET |			\
+			 DEBUG_INIT_DISPLAY | DEBUG_BLANK |		\
+			 DEBUG_REQUEST_GPIOS | DEBUG_FREE_GPIOS |	\
+			 DEBUG_VERIFY_GPIOS | DEBUG_BACKLIGHT |		\
+			 DEBUG_SYSFS)					\
+#define DEBUG_LEVEL_4	(DEBUG_LEVEL_2 | DEBUG_FB_READ |		\
+			 DEBUG_FB_WRITE | DEBUG_FB_FILLRECT |		\
+			 DEBUG_FB_COPYAREA | DEBUG_FB_IMAGEBLIT |	\
+			 DEBUG_FB_BLANK)
 #define DEBUG_LEVEL_5	(DEBUG_LEVEL_3 | DEBUG_UPDATE_DISPLAY)
 #define DEBUG_LEVEL_6	(DEBUG_LEVEL_4 | DEBUG_LEVEL_5)
 #define DEBUG_LEVEL_7	0xFFFFFFFF
diff --git a/drivers/staging/fbtft/flexfb.c b/drivers/staging/fbtft/flexfb.c
index b91b459..3747321 100644
--- a/drivers/staging/fbtft/flexfb.c
+++ b/drivers/staging/fbtft/flexfb.c
@@ -671,7 +671,8 @@ static int flexfb_probe_common(struct spi_device *sdev,
 			break;
 		case 9:
 			if (regwidth == 16) {
-				dev_err(dev, "argument 'regwidth': %d is not supported with buswidth=%d and SPI.\n", regwidth, buswidth);
+				dev_err(dev, "argument 'regwidth': %d is not supported with buswidth=%d and SPI.\n",
+					regwidth, buswidth);
 				return -EINVAL;
 			}
 			par->fbtftops.write_register = fbtft_write_reg8_bus9;
-- 
2.7.4


