X-GM-THRID: 6664414939270086656
X-Received: by 2002:ac8:3523:: with SMTP id y32mr4907980qtb.59.1551896244847;
        Wed, 06 Mar 2019 10:17:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:893b:: with SMTP id 56ls1386647qvp.5.gmail; Wed, 06 Mar
 2019 10:17:24 -0800 (PST)
X-Google-Smtp-Source: APXvYqylv6LIcFQ5dmfs9fWFtDbVZ/OOdjG/gpdNaMBJtKuOaaPtDKX80ZcHl/2YdH1MvO9o8ZOm
X-Received: by 2002:a0c:b996:: with SMTP id v22mr5531987qvf.2.1551896244321;
        Wed, 06 Mar 2019 10:17:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551896244; cv=none;
        d=google.com; s=arc-20160816;
        b=Z0x4/0oFyAmSa1RIZtiAE0JK1q+//nUCNpUO0hM3DAplv4tp6/vMbeX+9BSqxiYcf+
         9rVYKG5JjFYEwPIH0kDcJDWRwktRAgAxnQIBlr9U+HnkI48d4lfTRlsyv2U99LQ72+i/
         agHHes6b3qlbjflCH+M3/lC4O5xMmeA5L1GGoD/ycRcGdwJFUbbwwZzVm8vFeMPEtC9j
         abJ3GHEccMBV9xlReWphEbJpG9IExRZ1qk1b3Pb8x2t6bx5ZfopnKqzK+zUbyJ/HNa5F
         nwOvmvMN0LR+Iqc7EuVblyAHEwnEUT/ivOmENymoJMjg26Xi7g9SDtCWSPP+pepeZpFK
         iLyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=iR8dF8YXgVcpCdqGHrcPvGzAOrjcChJSgeC/Z5tv7X0=;
        b=aThZHalb1xgRJUS0Ul5WWOkFnJ8DbUwz2YMGuhVUDUjSxK1PGylWmoOEBlXb6s+0MY
         OhMw0TaZ5LkuUIci95ntRDKr6DOk04fDOQ4NVItbKxn1uqoME2TjM+Lkbc+9Zz+gPtSi
         wbYWnvJ7iY8v67ZUozGmeq1G+m8pcHb2VCj3umqbS2VQyOp25GkHvwAhsbhBE4rNPytb
         CfAuucmBqIZ47pFj51/JY7YSCdfzYLymEj2RZPNPL6LcZsHhRuWxUyDmPfEbVQOzdeCM
         3haOs6M8MIl10VlTOTRb/SjKod5h/xzg95bDtLBbM59I/8x6NIf4OYLgtM2NkNSxV4Ks
         bbXw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CU2ER7ba;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id i11si167901qkk.4.2019.03.06.10.17.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Mar 2019 10:17:24 -0800 (PST)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CU2ER7ba;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id n22so9252327pfa.3
        for <outreachy-kernel@googlegroups.com>; Wed, 06 Mar 2019 10:17:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=iR8dF8YXgVcpCdqGHrcPvGzAOrjcChJSgeC/Z5tv7X0=;
        b=CU2ER7baGVdKqy8TKcSjuxc8Zd7tZdVy2kK73R8pZ6QIx6PYkVVXP8pwpNWB0aRL6j
         4FBcdmI8TrKTAppMSswNX/gE5Fe8eP+RNtNKol7G5zjdeqKoSl+LETM6C/7XdHEhcCCV
         TE+gwl2nh7ggAqa8qS+xJiXhEHhx4qjLMozIIfJNv2929KwzQQZb/ijBJTog9NmidtEN
         LORpK7WPBM28L+3pwKO2IVb5rlqGFqBjow6kkG43Ya48EmHk2NTI7D+guu4uJFVjVSPU
         TyjIt8vgJ/0RHpkVwbyPaQf4VXMQEPQthiyF4uI9YZFC2p5IyY2dz2QNJ573i04YoAyo
         xXFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=iR8dF8YXgVcpCdqGHrcPvGzAOrjcChJSgeC/Z5tv7X0=;
        b=Em7o4JXKHyO9fxRf+9FldgNufopphsr7Evmc8Ks1lG9CnGVAbufOfTdmm8SuLQLbTT
         VSJspe7HUvk4ZncrS4nkZsrHZ7KRqTVny4axXoF8yNVsTGhyNwMQGCVNMWnzmvaLWyuN
         8GcYLqAojfn2xBjBUzjbtU8qPbxAows6A4Mdl5jWxi1E4MZF+My7J8CLl+NPcFujurkP
         avPPEBat7AMqFIJkN5ZH8f6Zx6rVxLLD+g0ACcSO1cY4gbblEvUwSJ30p963Jj+xmnHR
         mx98OcUGdhnighdBSGdHUMKx314V1VwbLgUdK1/N0dzGse0yBtis+iER1pjpt9m0hN9e
         Yu+g==
X-Gm-Message-State: APjAAAWQdshnINtTT7o7q4AqvirIShb4Hn5718+i1I7EHwuRHBlW+Ifa
	dESZEYXJj4EJKeC0A5RRUzI=
X-Received: by 2002:a62:e11a:: with SMTP id q26mr8410026pfh.187.1551896243123;
        Wed, 06 Mar 2019 10:17:23 -0800 (PST)
Return-Path: <digholebhagyashri@gmail.com>
Received: from bhagyashri-Lenovo-G570 ([2409:4042:2e9d:fc:2d23:4503:1edf:a0e9])
        by smtp.gmail.com with ESMTPSA id t185sm4781857pfd.165.2019.03.06.10.17.21
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 06 Mar 2019 10:17:22 -0800 (PST)
Date: Wed, 6 Mar 2019 23:47:17 +0530
From: Bhagyashri Dighole <digholebhagyashri@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Outreachy <outreachy-kernel@googlegroups.com>,
	Bhagyashri <digholebhagyashri@gmail.com>
Subject: [PATCH v4] staging: fbtft: line over 80 characters.
Message-ID: <20190306181716.GA15455@bhagyashri-Lenovo-G570>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix coding style issues, which solves checkpatch.pl warning:
"WARNING: line over 80 characters".

Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
---
Changes in v4:
  - Resend patch.

Changes in v3:
  - Make the code in original form.
  - Use tab to line up the code.

Changes in v2:
  - Improve code order.
  - Make the code more readable.

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


