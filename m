X-GM-THRID: 6664414939270086656
X-Received: by 2002:a24:6b55:: with SMTP id v82mr5698463itc.37.1551877592101;
        Wed, 06 Mar 2019 05:06:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5e:8303:: with SMTP id x3ls766867iom.3.gmail; Wed, 06 Mar
 2019 05:06:31 -0800 (PST)
X-Google-Smtp-Source: APXvYqzSHeZDT+vazcvcnSdcT+lXemw0EpxYfpEiWpYrqZMKM5hFFNm1cLcXgUW4eEzZetIH7kP3
X-Received: by 2002:a6b:fb01:: with SMTP id h1mr3317222iog.31.1551877591186;
        Wed, 06 Mar 2019 05:06:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551877591; cv=none;
        d=google.com; s=arc-20160816;
        b=ZWpisJkvYuA7nifbLT6xCazMawfYToYNSqa38+xyF0+w8DlnGNHX0kMaCA49KDQivt
         T86H6/qaz4H5y27JK0lzYfRqu9G9oYXxz9zLMP2/pfSDTPJkGfslQtPC+BD6mxzHc+Iv
         SJ7IpruOIV2ywe3/3SDcEWdbKI5aKTC4vvB6u3sl8WQvqLI3MkQ7mG8y0TludvwkDxJk
         8adKgx5DK655CWfAhpQfm3Iyf0sYhPwexT7Avf8SoLHrMIXfc+YqAU0h9HHNxCyrKW+V
         5mBHFrw1W6NlzMwhYprI0O4QzqQzBe2q8lphMtJ/hqtR83r8MtgHwqnUVtI7kevOPNne
         ptSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=op3VmbftRMk2CHcWH4ihdjLSd181ekNBJl5iaHZUKi4=;
        b=ThedIThHa+sAYLZbY3f1F+DTP87H+fY+SV9u0ft9/MRHFsQZki+KrrpX2UF+n/Daqy
         v0VadXBC56sU8lPl7YzPu3esG39pda3tjHRSptZiHF0SQhwVnWWentVzbAmWNikLonAn
         9LZl8WYZ2V60w4oPcMdWLhRlcl3Z9rozz5jGdVV8uZhVZSe6U3sKyOV/mIBxyT+AAOUr
         SDJ/D2PnmkwOKiswBYdQ5WKXbZkeKdrQjL8g8fDHw2qkvBqUT7TLk6zzzx3Z+gSpn7B+
         aa96u6hW5WQfnQrxEotyLtcV7EyulCDG5AYoOInrclN52MxFMoGSZkmKt3Ual4MSvzRN
         zElA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=k4vGVUT+;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::42a as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com. [2607:f8b0:4864:20::42a])
        by gmr-mx.google.com with ESMTPS id y7si46611iof.5.2019.03.06.05.06.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Mar 2019 05:06:31 -0800 (PST)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::42a as permitted sender) client-ip=2607:f8b0:4864:20::42a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=k4vGVUT+;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::42a as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x42a.google.com with SMTP id n74so8571677pfi.9
        for <outreachy-kernel@googlegroups.com>; Wed, 06 Mar 2019 05:06:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=op3VmbftRMk2CHcWH4ihdjLSd181ekNBJl5iaHZUKi4=;
        b=k4vGVUT+xNbwxs3zy2TA6yBLdlaQHfN3PjZq2qR+e96Z4Li/Z1eIyXj9rIl2z/7qT6
         WrISgiDDSSyTvOFgqaBA2QT8jK9lvS6UimRtKLjf3gifRvli7+j4awNeqrtpS1Zm4YL9
         joUTYo4deG0n6tmmVQRZB+6La6n3cVyMgpTugju1doFVfGrerV5aC87fsI5boPvCDlin
         pDDej459h9gXNJ1cdAlZr80EhmypMZnyRU7ffqeOfBydzUuyph5Edh0SA3iR2r9RTg4d
         BYnMoZ/N4xrNFHYpbjAtdIjaM8/XDkddv2wY61JcM2OkiqfhZyLLQlLKEDeFnBm2715o
         dRkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=op3VmbftRMk2CHcWH4ihdjLSd181ekNBJl5iaHZUKi4=;
        b=M+8uRlSnIpTPLuCwBLv9qOc8nNnJXD4mUv/XLFouAmolrncWc6dScmgL/cdmpWlG3y
         gf+GQd4Y25yPnW0xg9YLEzjP2ccLy+90yqylsOJEBujD1eduVKuZVk7uqZ82lrlJsjUA
         3GU38rQ3kKgTJb2IZFBg96PXlg1PuOiMeWIJT2nyz55Sdzv++T5ay6zlcVCqOp6Zuysh
         nW/1QNB760r9qAG3vzYDkAotwoShGTvxzhuT544S79Re+xgv+lJp0D2YeEnvasx4otmb
         9QqxcXWiVJ87rNZO/IGvQ8d2mqBjLMynxSIVxRkcZhP+KEPGwk88zkOQcmuiRBJKKcls
         Cg8Q==
X-Gm-Message-State: APjAAAVQhe+HtkcSvXxgm2nRnMNHVfsu8LZ4Iy3+QxQTVKvz2VB4Tjkt
	QDq778pURTvJ6Ht7Ph32a/mmI0Fd8qqv8Q==
X-Received: by 2002:a63:1746:: with SMTP id 6mr6294438pgx.127.1551877590429;
        Wed, 06 Mar 2019 05:06:30 -0800 (PST)
Return-Path: <digholebhagyashri@gmail.com>
Received: from bhagyashri-Lenovo-G570 ([2409:4042:2e9a:2b3b:2d23:4503:1edf:a0e9])
        by smtp.gmail.com with ESMTPSA id k12sm2799457pfk.109.2019.03.06.05.06.28
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 06 Mar 2019 05:06:29 -0800 (PST)
Date: Wed, 6 Mar 2019 18:36:24 +0530
From: Bhagyashri Dighole <digholebhagyashri@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Outreachy <outreachy-kernel@googlegroups.com>
Subject: [RESEND PATCH] staging: fbtft: line over 80 characters.
Message-ID: <20190306130624.GA12872@bhagyashri-Lenovo-G570>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix coding style issues, which solves checkpatch.pl warning:
"WARNING: line over 80 characters".

Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
---
 drivers/staging/fbtft/fb_ssd1306.c |  3 ++-
 drivers/staging/fbtft/fb_ssd1331.c |  3 ++-
 drivers/staging/fbtft/fbtft.h      | 14 ++++++++++----
 drivers/staging/fbtft/flexfb.c     |  3 ++-
 4 files changed, 16 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/fbtft/fb_ssd1306.c b/drivers/staging/fbtft/fb_ssd1306.c
index d7c5e2e..e4c5a1c 100644
--- a/drivers/staging/fbtft/fb_ssd1306.c
+++ b/drivers/staging/fbtft/fb_ssd1306.c
@@ -184,7 +184,8 @@ static int write_vmem(struct fbtft_par *par, size_t offset, size_t len)
 		for (y = 0; y < yres / 8; y++) {
 			*buf = 0x00;
 			for (i = 0; i < 8; i++)
-				*buf |= (vmem16[(y * 8 + i) * xres + x] ? 1 : 0) << i;
+				*buf |= (vmem16[(y * 8 + i) * xres + x] ?
+						1 : 0) << i;
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
index 7fdd3b0..597db9d 100644
--- a/drivers/staging/fbtft/fbtft.h
+++ b/drivers/staging/fbtft/fbtft.h
@@ -347,10 +347,16 @@ module_exit(fbtft_driver_module_exit);
 
 /* shorthand debug levels */
 #define DEBUG_LEVEL_1	DEBUG_REQUEST_GPIOS
-#define DEBUG_LEVEL_2	(DEBUG_LEVEL_1 | DEBUG_DRIVER_INIT_FUNCTIONS | DEBUG_TIME_FIRST_UPDATE)
-#define DEBUG_LEVEL_3	(DEBUG_LEVEL_2 | DEBUG_RESET | DEBUG_INIT_DISPLAY | DEBUG_BLANK | DEBUG_REQUEST_GPIOS | DEBUG_FREE_GPIOS | DEBUG_VERIFY_GPIOS | DEBUG_BACKLIGHT | DEBUG_SYSFS)
-#define DEBUG_LEVEL_4	(DEBUG_LEVEL_2 | DEBUG_FB_READ | DEBUG_FB_WRITE | DEBUG_FB_FILLRECT | DEBUG_FB_COPYAREA | DEBUG_FB_IMAGEBLIT | DEBUG_FB_BLANK)
-#define DEBUG_LEVEL_5	(DEBUG_LEVEL_3 | DEBUG_UPDATE_DISPLAY)
+#define DEBUG_LEVEL_2	(DEBUG_LEVEL_1 | DEBUG_DRIVER_INIT_FUNCTIONS |		\
+			 DEBUG_TIME_FIRST_UPDATE)				\
+#define DEBUG_LEVEL_3	(DEBUG_LEVEL_2 | DEBUG_RESET |				\
+			 DEBUG_INIT_DISPLAY | DEBUG_BLANK |			\
+			 DEBUG_REQUEST_GPIOS | DEBUG_FREE_GPIOS |		\
+			 DEBUG_VERIFY_GPIOS | DEBUG_BACKLIGHT | DEBUG_SYSFS)	\
+#define DEBUG_LEVEL_4	(DEBUG_LEVEL_2 | DEBUG_FB_READ | DEBUG_FB_WRITE |	\
+			 DEBUG_FB_FILLRECT | DEBUG_FB_COPYAREA |		\
+			 DEBUG_FB_IMAGEBLIT | DEBUG_FB_BLANK)			\
+#define DEBUG_LEVEL_5	(DEBUG_LEVEL_3 | DEBUG_UPDATE_DISPLAY)			\
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


