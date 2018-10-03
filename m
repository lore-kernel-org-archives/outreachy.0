X-GM-THRID: 6608144919941873664
X-Received: by 2002:a24:9dc9:: with SMTP id f192-v6mr1529829itd.31.1538578635003;
        Wed, 03 Oct 2018 07:57:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5e:8618:: with SMTP id z24-v6ls523863ioj.0.gmail; Wed, 03
 Oct 2018 07:57:14 -0700 (PDT)
X-Google-Smtp-Source: ACcGV63zMQvr/Gb0V0hDzP+riETn2xRVrMClTaY/kfQ7Di/JkF8xZvJek79sLqLelC9Q2S/PFlX/
X-Received: by 2002:a6b:a052:: with SMTP id j79-v6mr1251453ioe.39.1538578634180;
        Wed, 03 Oct 2018 07:57:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538578634; cv=none;
        d=google.com; s=arc-20160816;
        b=xRd0SSsBtnpNEn+YQcjJGTjsjAzE2pJBc1V5l7MdJlma+oTDgQ5atCLXXBIo1vxWaX
         0B3G3pH45I7+lyGc5wMwv9jvhjNQT6mtiWP6etLhxseShyITtYqMjHspTKCrDjJHH2Ni
         Q3+/gl9f+ZxsfHvnNaVWg5DR5VvTotaE/NSr9HXlfB5qrlLalgqlRQC96unF3vlrxYMV
         9+LqaWC3YQ2cTuITGbPwVQ5MJKR5HsOZWOU8hF+le/mPMZ1D6o1hg2cF6AP8lW02lJmZ
         q5GlvBAqAIsQgkmBKNd1nCxfy8ibUv6A2QUH5d5Tqx0LX9rtY8vSRwKX1hFEUKAVZJgw
         26YQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=mMOOYdXxF2ZXFMRoHARxIeXnLFEfr85tud6rO+uB70w=;
        b=xU9Q7lJWEYCEDiFTD2XN7Je0mk9wzPTb6BwtHNGkY77vYsLCm/liSoK5JZZ8Ju+aEO
         iTyMi5I3tImuWLmIwKVwgE8cEzw2pdWS+Zdobt/L+7GJ+wZAsC7QN9390hRHRNq8PCo2
         rgkuKgDaWITCV8r6L26e0gLc71G8th1BYgOCdXF51jHwfh1bieaz6/TCDBhNj07T1hE/
         lqnZx6GA8Ox1Bw7Ji5I6W4VA5yU83d2G3ER18rJw+LhOZHWSA5IrWXY427BOJbMaqjck
         c1M69pLIcLd0NAKm7OBGCzj2CPKBUBmFoMcKeu4zx8IfOMgcj89wR+WtS0uFQ56l4/ha
         rSqA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KiKjQqfk;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::430 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mamtashukla555@gmail.com>
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com. [2607:f8b0:4864:20::430])
        by gmr-mx.google.com with ESMTPS id n3-v6si45616ioh.4.2018.10.03.07.57.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 Oct 2018 07:57:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::430 as permitted sender) client-ip=2607:f8b0:4864:20::430;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KiKjQqfk;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::430 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x430.google.com with SMTP id r64-v6so1796334pfb.13
        for <outreachy-kernel@googlegroups.com>; Wed, 03 Oct 2018 07:57:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=mMOOYdXxF2ZXFMRoHARxIeXnLFEfr85tud6rO+uB70w=;
        b=KiKjQqfkraXMDTNU7dInvbeTXJx/yjyhrfVTNC5aNZmib+LRS9zOuFwYpXevuYTy24
         YUBxVjwWiBfLv/LDiOrnFg7whcv1yAl11GTCO2tRMu1rEJ6/ehoU5D4rDk+2OyYBwfjg
         DM356agyVECRMuYrp2fhshbfXUerKDSudJHePrzLyyAeISIJ3IoQUVZesToC/d7VZq77
         YS+8DpmsngUwvM9JylYkZb80xdt70dt8BjEtKH9ZuWgFlVKK5VlKek1XQ0muM8NN5MGm
         kKj2iqHagnga1iEfPbbqq87Z7yxU8wEKgW97HlDYQAmhDmxw1WBWFS6pHY29DN5QtQju
         yQ6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=mMOOYdXxF2ZXFMRoHARxIeXnLFEfr85tud6rO+uB70w=;
        b=kZvGI1iltUTqEB454OHUmPAUz/+EwJrbCR1eGn9vtQ3ZNttuzNVWrcsQrKw1o4V/sG
         2a5NxE2cLG5m6/ZESPnwl3l22uJiIFwRh/2tgBG20rQtGPfI1SIqNXuHdSt8eNduTt7N
         C/Gk/sTVtY2qZg5SBo0kjYYjNt5RfBv5BvLyvPGvM05bFZ2ePieTC/5O0LCgJPJTPK7Q
         TwCbc4AgNcDa+A6ZDzgMoecl32eHeCrIqHCMXQDrbEk1gBtx9ke5pEkE7Gt3G5S72rC7
         Ej/p0MNMsv80mz1VGpZxS7eOHoOAPR3PGEJ/kz2u2vMpC0tmfaupKgasPS3zkKBHHrbb
         /feA==
X-Gm-Message-State: ABuFfojkkSzbq2L0cjceHncYuF9CAL8HzbIlxtxeFcVbbtq1Sg2fDIyZ
	QlDtR0OFUmc/IzjXaytemlc=
X-Received: by 2002:a62:1a16:: with SMTP id a22-v6mr1976611pfa.237.1538578633752;
        Wed, 03 Oct 2018 07:57:13 -0700 (PDT)
Return-Path: <mamtashukla555@gmail.com>
Received: from armorer ([59.97.9.91])
        by smtp.gmail.com with ESMTPSA id n22-v6sm2830206pfi.185.2018.10.03.07.57.12
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 03 Oct 2018 07:57:13 -0700 (PDT)
Date: Wed, 3 Oct 2018 20:10:15 +0530
From: Mamta Shukla <mamtashukla555@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, mamtashukla555@gmail.com
Subject: [PATCH] staging: fbtft: Prefer using the BIT macro
Message-ID: <20181003144015.GA31815@armorer>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Replacing all occurrences of (1<<x) with BIT(x) to fix checkpatch issue.
CHECK:Prefer using the BIT macro

Signed-off-by: Mamta Shukla <mamtashukla555@gmail.com>
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


