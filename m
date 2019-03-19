X-GM-THRID: 6667786089217916928
X-Received: by 2002:a9d:1b26:: with SMTP id l35mr735521otl.59.1552993250311;
        Tue, 19 Mar 2019 04:00:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:4255:: with SMTP id p82ls706161oia.4.gmail; Tue, 19 Mar
 2019 04:00:48 -0700 (PDT)
X-Google-Smtp-Source: APXvYqybGkPEgk/LKh9b2e61SGW3ARtjUGZofDQwpKDxBO66QKxSkjzgvP1vc5RyfqE/WJvqL9yd
X-Received: by 2002:aca:cf05:: with SMTP id f5mr770880oig.46.1552993248921;
        Tue, 19 Mar 2019 04:00:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552993248; cv=none;
        d=google.com; s=arc-20160816;
        b=JKGc84K+WEWVVV2+wDgorbcS01Mb2I3cJAKZhXP0gosZuS9iAHTewCWyWrne9bXdxA
         oDG6iM9QI4ZBE1OU3U/rUlkFOkv+u2syQ1VZK7uCSFrZjzRMbnqBl/0OmbCUD4pENtNe
         i6h1/BoYuwi06BSHUhtw71fehCqCeVxJqYfUnicar6bexyWLQWeHs2eeiTPnsF16yUjb
         WRrvp1Zzv7/f4m3w4Q/rKcQOcDGV8P0MitsKQ6kMz2BICwDhH4F2kGDfkWsVVMfuA/GE
         xyNvK9u9CLiuQP/oGRSFsgKY5SDPH0T3HVaIAb7jOLDZVAwvABMsE3X7J3WEloaUZqQO
         diOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=Fu88BxVgx4510WxzV1VxWjN1mMR+jJsfOE4Cm/c19Q4=;
        b=DGvO1V0pto0Hy7fHw025xTBpc7XEaL+DW5LXLm4j0CqpOKDPFGwG+3whBBjsmegWcw
         5m/+vVMGcGg9o9DEGPa0gf4Ren5Niek0WrpSHkxD2uSswhi8TYucZw4g9J2Wxru1mqkx
         YWD0mFXyMKQWZiwFSR5btWjpzX+OWyKax7lmOqsgXzOtyPMKdFT9uegkV5PygQ3OH5Bo
         ZRS0aNp3uPhMrpBPVepUqCq9J6FWaoct5nsMWNBVPiNuufxFGMklvHaEumnN3eENmiJq
         Ym/5N+XLd2JHo9MkNzbNd319RWd6b/2GYeioQc9wL0eJmJ0idKdnLcbdG2fZmTq4LBzW
         impw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=by4puGvp;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id a188si790757oih.4.2019.03.19.04.00.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Mar 2019 04:00:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=by4puGvp;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id g8so2938385pgf.2
        for <outreachy-kernel@googlegroups.com>; Tue, 19 Mar 2019 04:00:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Fu88BxVgx4510WxzV1VxWjN1mMR+jJsfOE4Cm/c19Q4=;
        b=by4puGvpsPR2CkuWz5CXxosPdW7EGFN0+YiJAgd1jjExa9FRaSn68O+Ccjxn22rc8g
         /Hkda2Cs44iks2LD/4xP9FnTYfNeqWiz5Hiu8sr0O+jse65XZ00StbM+1vez1bNsw9E8
         ZNVQI/tFUPv9Tbz/WkM7/zxXcUJbO13cP8NqICAeRgDo6vyO6SrWRF/j5md+MVtCmfby
         MSMTYSz4/e8vo4gnpluXlDL8XfCkk6Po5YxDUAJuLP2/0qb8B2YuQsetigs70OfchvmD
         A3DhnJBxaxgFBbN0xH6FNJbkzmymPNqdzDPyJwtntPSczXObOQ7z7TEHeIhXkMyMy6uV
         LSHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Fu88BxVgx4510WxzV1VxWjN1mMR+jJsfOE4Cm/c19Q4=;
        b=Td7Rwl5BOrM5vOsV/l6F1IeJEjmTjfDF9ireWJlmcCweYUSuSpPTfztUHa9kUToro6
         gCTkyBj9GtXlkCxNOVRYYP76/vG/JVCQtnyZ/8f9ca1shxgAjZZriyP8+sEtKXo7DQLo
         /TAyR1viKbo9lJId/U2aNd4gvh5tizCE9XF1yWDLn+U3WZ6A8rtui3R9+d+Tm3DaPLHy
         eTsCvVKgmgy2jW7kN04iKWJVo4pqPmHqsMx58v5u8GU5I4D/iv+IG3Ci+QQQYzXUpiuu
         dgbKxycVK9RNJjBqvqDQw8rujZnJqrPrN4LtDggAzqaqV5jLTwjb02kuKnJ+YIruAt4d
         fIhw==
X-Gm-Message-State: APjAAAVFTXcSX4+no2V3UnK19f/obgf5Athqd2GOLdpph1Y5/ICe7oza
	IAs3vpTmy3C3hLk29RT3HXI=
X-Received: by 2002:a65:62d4:: with SMTP id m20mr1246039pgv.416.1552993248068;
        Tue, 19 Mar 2019 04:00:48 -0700 (PDT)
Return-Path: <digholebhagyashri@gmail.com>
Received: from localhost.localdomain ([2409:4042:2487:6a1:cc39:aeea:69fa:1946])
        by smtp.googlemail.com with ESMTPSA id k83sm20826502pfj.178.2019.03.19.04.00.45
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 19 Mar 2019 04:00:47 -0700 (PDT)
From: Bhagyashri Dighole <digholebhagyashri@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Outreachy <outreachy-kernel@googlegroups.com>
Subject: [PATCH v7 1/2] Staging: fbtft: line over 80 characters
Date: Tue, 19 Mar 2019 16:30:36 +0530
Message-Id: <1552993237-4231-1-git-send-email-digholebhagyashri@gmail.com>
X-Mailer: git-send-email 2.7.4

Fix the checkpatch.pl warning
WARNING: line over 80 characters

Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
---
Changes in v7:
  - Use BIT() macro for left shifting.

Changes in v6:
  - Drop some invalid changes.

Changes in v5:
  - Make patch series.

Changes in v4:
  - Convert a ternary statement into a if statement.

Changes in v3:
  - Make the code in original form.
  - Use tab to line up the code.

Changes in v2:
  - Improve code order.
  - Make the code more readable.

 drivers/staging/fbtft/fb_ssd1331.c | 3 ++-
 drivers/staging/fbtft/flexfb.c     | 3 ++-
 2 files changed, 4 insertions(+), 2 deletions(-)

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


