X-GM-THRID: 6664414939270086656
X-Received: by 2002:a6b:8b57:: with SMTP id n84mr11381075iod.4.1551698282372;
        Mon, 04 Mar 2019 03:18:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:194d:: with SMTP id b74ls2392914itb.3.canary-gmail; Mon,
 04 Mar 2019 03:18:01 -0800 (PST)
X-Google-Smtp-Source: APXvYqwWa0LKf4OftmtJmztu0ozb9i/cwmDa2XUGO560RYfYn4eZxLEGbdbKPWbMy/IlHz8aS1AJ
X-Received: by 2002:a24:1fc2:: with SMTP id d185mr11714707itd.6.1551698281504;
        Mon, 04 Mar 2019 03:18:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551698281; cv=none;
        d=google.com; s=arc-20160816;
        b=nhS2Q6AKc6QIfNs7i9wOVIZNWIC7QgqIcr3WqHemunQfUiGu23HgcJ6Z0/t4Zjc2Jw
         y5LMjs9GomJfxdmklLfHP6CLaFJlPwuivbDC6Dm2y0TbGIx/JPApXZe2VKcOvtbS5J8M
         RyYIdIJMMfmc7vS+9qfVoAEbL8eY+je+jvoj+AJzJrv7tfNXQjBoKH7eSbMrlB4Cw+qq
         h5AAd0Uv0xHAM814OJ40Iz5SH3x1U5lm0P8jg3bzyVV3aZFTze1+yJOBV3YeeJwzaLp5
         2hpQTH9UVN9HBWiys3te5E7Re0AU2JSn974flAPT4aHPVkvPqagy7YurkvDLLo+sRJpy
         gnlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=x7vCJC8OunQSEVu4AsdN1nE0rRpXPgW9Wd18n6OQyGw=;
        b=wwVSJSd1o6yOqReI/LY1neTdF5/USVzb4TN19oT5aTRLPJNeW+FnheTtHYL4rjky91
         6GKAfag0ODEIoS+yhkGjHvnZy0z7d11O+1yHpmy9nP/aDpY9HgceZjGqfFCkTNkiBa4c
         Jy1+MZNvJjtsmfWNcxqsBSe37V7sdadyc4JlNr6qc3OtWLsWHJn6xLpZujgHsj3a/iG0
         J+ouLfaoUC0lc0bt0YvLoEOl5tcTLra9ieLk4LKLsotLCKD8mr8+uUXdizX37DQtWsle
         MLB579GHW7OferEWFO8cCyaZejMOHUZ6tOSj3Q2MfWA4T2m3xZNwtrn1WpIStQorSrCz
         vRoA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UZXMCTbJ;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id x22si382755ita.0.2019.03.04.03.18.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Mar 2019 03:18:01 -0800 (PST)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UZXMCTbJ;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id d25so2801263pfn.8
        for <outreachy-kernel@googlegroups.com>; Mon, 04 Mar 2019 03:18:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=x7vCJC8OunQSEVu4AsdN1nE0rRpXPgW9Wd18n6OQyGw=;
        b=UZXMCTbJjvFYQo1ySkG8kMVlb0Ns5u1pEN/L3y1hEwIdm491uNX1im17wzNmHRYKwI
         IpDfDgMz5ZUKCtIoEj9cO0QCCK2wRfpybe+HhVuq5ZJEuzghtusdaeCp1qaf8DYpdiyl
         3mFu0GTbvIeZ8IAxpi+7rIwEVVwEhWhSVDiELuscY6MOTaxWGbPZMcfRCnU+oV2hS5PK
         p51VcXyhGDNoPNoGeQ2gBE4vOBBO9z5qdhb6TwZaBNdhIBTyZ8vHqojCIAKjiWwrdGA+
         AdkU1zTWAT417HyTnMC5y4GDCatLs6ZM0lCgaYQkHWg1I65RDoi2thDtCPC8Nh5CBz8O
         I0Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=x7vCJC8OunQSEVu4AsdN1nE0rRpXPgW9Wd18n6OQyGw=;
        b=KHa2/0rQBmj+Oi/wRfDS6u0zgifyThds7hCiXaN3UXORve6fhJgyp+n6V4mLD2Glei
         OWeku8zxDvjj8Bqb+IEuWXI5Vitv2dh1EiF9rkZN7nxYSC9O63z5yy4pS7fT7cJ7WIro
         FtS2wferHWec0ROencWEUZdY+j9xmKe/z+9TmdGuDVnxoptvwmlMvfCOCJrASFWK8Csx
         YWaiWGz9w1yhY0ML+U+M7rjAY7T96RpokPKJfNdHRj/0ZY8GYNHISpcvgGglumpA1VMG
         9hsuN/ArnZeuI3MQbWwOKo7QiZLLvUdtYB346r0qeeHsX5LIoe85J0jfHigChTwUBxB/
         vT4w==
X-Gm-Message-State: APjAAAXc+8dQt0savcMMNaUroI4zMSUUFYeSukwPUtOg029TGafczjTZ
	wEQvgZNRO67okBDffNk2Byx1R1IDQPA=
X-Received: by 2002:a63:8d42:: with SMTP id z63mr18282516pgd.414.1551698280416;
        Mon, 04 Mar 2019 03:18:00 -0800 (PST)
Return-Path: <digholebhagyashri@gmail.com>
Received: from bhagyashri-Lenovo-G570 ([2409:4042:2e9a:e46c:8dfa:7ea1:3df8:ed68])
        by smtp.gmail.com with ESMTPSA id w23sm8241731pfn.60.2019.03.04.03.17.58
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 04 Mar 2019 03:17:59 -0800 (PST)
Date: Mon, 4 Mar 2019 16:47:54 +0530
From: Bhagyashri Dighole <digholebhagyashri@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Outreachy <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2 1/1] staging: fbtft: line over 80 characters.
Message-ID: <20190304111754.GA3926@bhagyashri-Lenovo-G570>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix coding style issues, which solves checkpatch.pl warning:
"WARNING: line over 80 characters"

Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
---
Changes in v2:
  - Improve code order.
  - Make the code more readable.

 drivers/staging/fbtft/fb_ssd1306.c  |  3 ++-
 drivers/staging/fbtft/fb_ssd1331.c  |  3 ++-
 drivers/staging/fbtft/fbtft-sysfs.c |  3 ++-
 drivers/staging/fbtft/fbtft.h       | 20 ++++++++++++++------
 drivers/staging/fbtft/flexfb.c      | 12 ++++++++----
 5 files changed, 28 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/fbtft/fb_ssd1306.c b/drivers/staging/fbtft/fb_ssd1306.c
index d7c5e2e..412871b 100644
--- a/drivers/staging/fbtft/fb_ssd1306.c
+++ b/drivers/staging/fbtft/fb_ssd1306.c
@@ -184,7 +184,8 @@ static int write_vmem(struct fbtft_par *par, size_t offset, size_t len)
 		for (y = 0; y < yres / 8; y++) {
 			*buf = 0x00;
 			for (i = 0; i < 8; i++)
-				*buf |= (vmem16[(y * 8 + i) * xres + x] ? 1 : 0) << i;
+				*buf |= (vmem16[(y * 8 + i) * xres + x] ?
+						 1 : 0) << i;
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
diff --git a/drivers/staging/fbtft/fbtft-sysfs.c b/drivers/staging/fbtft/fbtft-sysfs.c
index 2a5c630..26c971f 100644
--- a/drivers/staging/fbtft/fbtft-sysfs.c
+++ b/drivers/staging/fbtft/fbtft-sysfs.c
@@ -68,7 +68,8 @@ int fbtft_gamma_parse_str(struct fbtft_par *par, u32 *curves,
 			ret = get_next_ulong(&curve_p, &val, " ", 16);
 			if (ret)
 				goto out;
-			curves[curve_counter * par->gamma.num_values + value_counter] = val;
+			curves[curve_counter * par->gamma.num_values + value_counter]
+				= val;
 			value_counter++;
 		}
 		if (value_counter != par->gamma.num_values) {
diff --git a/drivers/staging/fbtft/fbtft.h b/drivers/staging/fbtft/fbtft.h
index 7fdd3b0..7b66926 100644
--- a/drivers/staging/fbtft/fbtft.h
+++ b/drivers/staging/fbtft/fbtft.h
@@ -347,9 +347,15 @@ module_exit(fbtft_driver_module_exit);
 
 /* shorthand debug levels */
 #define DEBUG_LEVEL_1	DEBUG_REQUEST_GPIOS
-#define DEBUG_LEVEL_2	(DEBUG_LEVEL_1 | DEBUG_DRIVER_INIT_FUNCTIONS | DEBUG_TIME_FIRST_UPDATE)
-#define DEBUG_LEVEL_3	(DEBUG_LEVEL_2 | DEBUG_RESET | DEBUG_INIT_DISPLAY | DEBUG_BLANK | DEBUG_REQUEST_GPIOS | DEBUG_FREE_GPIOS | DEBUG_VERIFY_GPIOS | DEBUG_BACKLIGHT | DEBUG_SYSFS)
-#define DEBUG_LEVEL_4	(DEBUG_LEVEL_2 | DEBUG_FB_READ | DEBUG_FB_WRITE | DEBUG_FB_FILLRECT | DEBUG_FB_COPYAREA | DEBUG_FB_IMAGEBLIT | DEBUG_FB_BLANK)
+#define DEBUG_LEVEL_2	(DEBUG_LEVEL_1 | DEBUG_DRIVER_INIT_FUNCTIONS	   \
+			| DEBUG_TIME_FIRST_UPDATE)
+#define DEBUG_LEVEL_3	(DEBUG_LEVEL_2 | DEBUG_RESET | DEBUG_INIT_DISPLAY  \
+			| DEBUG_BLANK |  DEBUG_REQUEST_GPIOS		   \
+			| DEBUG_FREE_GPIOS | DEBUG_VERI Y_GPIOS		   \
+			| DEBUG_BACKLIGHT | DEBUG_SYSFS)
+#define DEBUG_LEVEL_4	(DEBUG_LEVEL_2 | DEBUG_FB_READ | DEBUG_FB_WRITE	   \
+			| DEBUG_FB_FILLRECT | DEBUG_FB_COPYAREA		   \
+			| DEBUG_FB_IMAGEBLIT | DEBUG_FB_BLANK)
 #define DEBUG_LEVEL_5	(DEBUG_LEVEL_3 | DEBUG_UPDATE_DISPLAY)
 #define DEBUG_LEVEL_6	(DEBUG_LEVEL_4 | DEBUG_LEVEL_5)
 #define DEBUG_LEVEL_7	0xFFFFFFFF
@@ -390,9 +396,11 @@ module_exit(fbtft_driver_module_exit);
 
 #define fbtft_init_dbg(dev, format, arg...)                  \
 do {                                                         \
-	if (unlikely((dev)->platform_data &&                 \
-	    (((struct fbtft_platform_data *)(dev)->platform_data)->display.debug & DEBUG_DRIVER_INIT_FUNCTIONS))) \
-		dev_info(dev, format, ##arg);                \
+	if (unlikely((dev)->platform_data &&		     \
+	    (((struct fbtft_platform_data *)                 \
+	      (dev)->platform_data)->display.debug	     \
+	     & DEBUG_DRIVER_INIT_FUNCTIONS)))		     \
+		dev_info(dev, format, ##arg);
 } while (0)
 
 #define fbtft_par_dbg(level, par, format, arg...)            \
diff --git a/drivers/staging/fbtft/flexfb.c b/drivers/staging/fbtft/flexfb.c
index c5fa591..48e9c73 100644
--- a/drivers/staging/fbtft/flexfb.c
+++ b/drivers/staging/fbtft/flexfb.c
@@ -667,11 +667,13 @@ static int flexfb_probe_common(struct spi_device *sdev,
 		case 8:
 			par->fbtftops.write_vmem = fbtft_write_vmem16_bus8;
 			if (!par->startbyte)
-				par->fbtftops.verify_gpios = flexfb_verify_gpios_dc;
+				par->fbtftops.verify_gpios =
+					flexfb_verify_gpios_dc;
 			break;
 		case 9:
 			if (regwidth == 16) {
-				dev_err(dev, "argument 'regwidth': %d is not supported with buswidth=%d and SPI.\n", regwidth, buswidth);
+				dev_err(dev, "argument 'regwidth': %d is not supported with buswidth=%d and SPI.\n",
+					regwidth, buswidth);
 				return -EINVAL;
 			}
 			par->fbtftops.write_register = fbtft_write_reg8_bus9;
@@ -712,13 +714,15 @@ static int flexfb_probe_common(struct spi_device *sdev,
 		case 16:
 			par->fbtftops.write_register = fbtft_write_reg16_bus16;
 			if (latched)
-				par->fbtftops.write = fbtft_write_gpio16_wr_latched;
+				par->fbtftops.write =
+					fbtft_write_gpio16_wr_latched;
 			else
 				par->fbtftops.write = fbtft_write_gpio16_wr;
 			par->fbtftops.write_vmem = fbtft_write_vmem16_bus16;
 			break;
 		default:
-			dev_err(dev, "argument 'buswidth': %d is not supported with parallel.\n", buswidth);
+			dev_err(dev, "argument 'buswidth': %d is not supported with parallel.\n",
+				buswidth);
 			return -EINVAL;
 		}
 	}
-- 
2.7.4


