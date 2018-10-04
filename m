X-GM-THRID: 6608144919941873664
X-Received: by 2002:a24:648e:: with SMTP id t136-v6mr4751536itc.25.1538652953721;
        Thu, 04 Oct 2018 04:35:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5e:8618:: with SMTP id z24-v6ls1443392ioj.0.gmail; Thu, 04
 Oct 2018 04:35:53 -0700 (PDT)
X-Google-Smtp-Source: ACcGV63+7f2Vz6Gs8TZQHwfy2YrvMXdY61wastAcuqrd7Swq3pNx8YFEpMKnxKY77sgBmYfYo8Fx
X-Received: by 2002:a6b:f801:: with SMTP id o1-v6mr4182123ioh.7.1538652953040;
        Thu, 04 Oct 2018 04:35:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538652953; cv=none;
        d=google.com; s=arc-20160816;
        b=EsRPgVvpk3E541bYZG34Q5pqmRN44YpQ318sZvQclwPfZEC4QibozaCMFOgSCoLPmG
         1RynjdJIdi+qfGwC4WuRQCjyrZxAZgzE4JVZOF3X9yupreFCWbbFCizuqOpdbt0s/USt
         HVsRIGaAsP8h6ht1DjJkcxkqq/1gzB4H/XsuhFa6nLrCdqkCfoWOQxQ9A60dGlY3yJZR
         xyLaCmy6vCSz1IXaDWuOLI5qaEuEd+Cd7LPCe7nwJfLME5CHUpUtyC2CbQ7zDZ/VBqV6
         zitylMd7JEafv6Grax3HCWPBgUuCApjKeLT++t68ChLUJFY/AJFByXjaIeI5kiJJd08o
         DSYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=BMUVbz9N10oEp/p/yx6bMjtal5TXGYOhdDrXp57uPtU=;
        b=BloqVkv5A1ew6MLBjZj8HyauJpL4YBYUtg478pr7+FVBCM8Y8fC1EwpnbEQgxIuWht
         BW+ihgCHub/VjNdTpfV3CpItDQDIt3381lifvQAtfsFQLdrm6+th3Wn5mKIXiesV97n5
         omBoj3/pIi7IkmLQKEcVBVWvWwDLe8FpLxoyjqjdB8DxkXDgDLOdDOfItiaKmJhvPDWl
         nbHRCrqHdL69XfQtyop/pDnvssM2eAJiAnmneA4d/9bhY5wH94wRlRx8kBVo6TeQTfh/
         2tmSYKFpbO7BFE0BDx1+IffXhkoJ73r68yAxF2wC1A16g4Fi2lko9cs6aNplOeeQSACD
         fmFw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VV1LeDsf;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::434 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mamtashukla555@gmail.com>
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com. [2607:f8b0:4864:20::434])
        by gmr-mx.google.com with ESMTPS id n3-v6si131501ioh.4.2018.10.04.04.35.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Oct 2018 04:35:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::434 as permitted sender) client-ip=2607:f8b0:4864:20::434;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VV1LeDsf;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::434 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x434.google.com with SMTP id r64-v6so3226082pfb.13
        for <outreachy-kernel@googlegroups.com>; Thu, 04 Oct 2018 04:35:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=BMUVbz9N10oEp/p/yx6bMjtal5TXGYOhdDrXp57uPtU=;
        b=VV1LeDsfIfi21pVERMT/acS+4my2v5OiuzkMLcFK9KQ9IfnVtGs2amZi5gsomnL+EE
         igpBXfiFxHK1q937TS1rw/Rrck7WQ3QzhEHtgFrf9NQsqrx1txMUaTORsKm/b+UyHXuS
         ScSe3EcffkdSfVwoOfRCx5baCNbfQoFXi04i+XVF20nHVOZYBwM2+OpBfeLv0usszEaV
         qxZLfuSqQUfal15+YPEKiUWkGtsKb1Ng5ODNs+tadwHDKwfZngfyEJo9xXBC1cBV9J0b
         D9t7D1fDjvlfcFQ5su1QdR/G3T+b8isFmkuFCy2PjFP0hEiOnLqKtp0QHf/j31+FFgHx
         L6kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=BMUVbz9N10oEp/p/yx6bMjtal5TXGYOhdDrXp57uPtU=;
        b=kt/C3Hfy6xKaJy11aQVQCFQAK523rE/jbfAvGHKSCwMsowZx5KWHbJNs/b+04akaPv
         VEspQpFPV0KHc4ukTNWlt74vp6BDToUaKhSsIIiTKw0NVi/PwjHjTHaiczXA2dRy1ALb
         lDzyKQdjYC4oZa4lWAiZVKyp5pDmIz9a8QdUe07Zd7SjPpBm7H7b9f9UjH+M9LeqWc43
         19rJwWBIsohs+j+NGH9M/nerxVd0ikvnJF94ZQnmbga6CLPChruMCA5PL2EP6c6W/PuX
         A6UJVaM2hHhc4n3F+KoCDto8yXgvNYYawtHKKNCYL4UZMQZO1Cp23UtBjDcLmRMxOLS+
         2fjg==
X-Gm-Message-State: ABuFfoh9npaGY/FKINhhSTeRbu27hq3iqcMTOOaN2fDr+zdsvfPxPSe0
	ysdmLGxbEXF2cRklC3xeBOBKzfjZ
X-Received: by 2002:a63:c54a:: with SMTP id g10-v6mr5229949pgd.201.1538652952552;
        Thu, 04 Oct 2018 04:35:52 -0700 (PDT)
Return-Path: <mamtashukla555@gmail.com>
Received: from armorer ([117.195.35.235])
        by smtp.gmail.com with ESMTPSA id i184-v6sm9757643pfg.88.2018.10.04.04.35.51
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 04 Oct 2018 04:35:51 -0700 (PDT)
Date: Thu, 4 Oct 2018 17:05:18 +0530
From: Mamta Shukla <mamtashukla555@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: mamtashukla555@gmail.com
Subject: [PATCH v2] staging: fbtft: Prefer using the BIT macro
Message-ID: <20181004113518.GA8855@armorer>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Replace all occurrences of (1<<x) with BIT(x) to fix checkpatch issue.
CHECK:Prefer using the BIT macro

Signed-off-by: Mamta Shukla <mamtashukla555@gmail.com>

change in v2:

  'Replace' in place of 'Replacing'.
---
 drivers/staging/fbtft/fbtft.h | 56 +++++++++++++++++++++----------------------
 1 file changed, 28 insertions(+), 28 deletions(-)

diff --git a/drivers/staging/fbtft/fbtft.h b/drivers/staging/fbtft/fbtft.h
index 25302ff..ac427ba 100644
--- a/drivers/staging/fbtft/fbtft.h
+++ b/drivers/staging/fbtft/fbtft.h
@@ -355,39 +355,39 @@ static void __exit fbtft_driver_module_exit(void)                          \
 #define DEBUG_LEVEL_6	(DEBUG_LEVEL_4 | DEBUG_LEVEL_5)
 #define DEBUG_LEVEL_7	0xFFFFFFFF
 
-#define DEBUG_DRIVER_INIT_FUNCTIONS (1<<3)
-#define DEBUG_TIME_FIRST_UPDATE     (1<<4)
-#define DEBUG_TIME_EACH_UPDATE      (1<<5)
-#define DEBUG_DEFERRED_IO           (1<<6)
-#define DEBUG_FBTFT_INIT_FUNCTIONS  (1<<7)
+#define DEBUG_DRIVER_INIT_FUNCTIONS BIT(3)
+#define DEBUG_TIME_FIRST_UPDATE     BIT(4)
+#define DEBUG_TIME_EACH_UPDATE      BIT(5)
+#define DEBUG_DEFERRED_IO           BIT(6)
+#define DEBUG_FBTFT_INIT_FUNCTIONS  BIT(7)
 
 /* fbops */
-#define DEBUG_FB_READ               (1<<8)
-#define DEBUG_FB_WRITE              (1<<9)
-#define DEBUG_FB_FILLRECT           (1<<10)
-#define DEBUG_FB_COPYAREA           (1<<11)
-#define DEBUG_FB_IMAGEBLIT          (1<<12)
-#define DEBUG_FB_SETCOLREG          (1<<13)
-#define DEBUG_FB_BLANK              (1<<14)
+#define DEBUG_FB_READ               BIT(8)
+#define DEBUG_FB_WRITE              BIT(9)
+#define DEBUG_FB_FILLRECT           BIT(10)
+#define DEBUG_FB_COPYAREA           BIT(11)
+#define DEBUG_FB_IMAGEBLIT          BIT(12)
+#define DEBUG_FB_SETCOLREG          BIT(13)
+#define DEBUG_FB_BLANK              BIT(14)
 
-#define DEBUG_SYSFS                 (1<<16)
+#define DEBUG_SYSFS                 BIT(16)
 
 /* fbtftops */
-#define DEBUG_BACKLIGHT             (1<<17)
-#define DEBUG_READ                  (1<<18)
-#define DEBUG_WRITE                 (1<<19)
-#define DEBUG_WRITE_VMEM            (1<<20)
-#define DEBUG_WRITE_REGISTER        (1<<21)
-#define DEBUG_SET_ADDR_WIN          (1<<22)
-#define DEBUG_RESET                 (1<<23)
-#define DEBUG_MKDIRTY               (1<<24)
-#define DEBUG_UPDATE_DISPLAY        (1<<25)
-#define DEBUG_INIT_DISPLAY          (1<<26)
-#define DEBUG_BLANK                 (1<<27)
-#define DEBUG_REQUEST_GPIOS         (1<<28)
-#define DEBUG_FREE_GPIOS            (1<<29)
-#define DEBUG_REQUEST_GPIOS_MATCH   (1<<30)
-#define DEBUG_VERIFY_GPIOS          (1<<31)
+#define DEBUG_BACKLIGHT             BIT(17)
+#define DEBUG_READ                  BIT(18)
+#define DEBUG_WRITE                 BIT(19)
+#define DEBUG_WRITE_VMEM            BIT(20)
+#define DEBUG_WRITE_REGISTER        BIT(21)
+#define DEBUG_SET_ADDR_WIN          BIT(22)
+#define DEBUG_RESET                 BIT(23)
+#define DEBUG_MKDIRTY               BIT(24)
+#define DEBUG_UPDATE_DISPLAY        BIT(25)
+#define DEBUG_INIT_DISPLAY          BIT(26)
+#define DEBUG_BLANK                 BIT(27)
+#define DEBUG_REQUEST_GPIOS         BIT(28)
+#define DEBUG_FREE_GPIOS            BIT(29)
+#define DEBUG_REQUEST_GPIOS_MATCH   BIT(30)
+#define DEBUG_VERIFY_GPIOS          BIT(31)
 
 #define fbtft_init_dbg(dev, format, arg...)                  \
 do {                                                         \
-- 
1.9.1


