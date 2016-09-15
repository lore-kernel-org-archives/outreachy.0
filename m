X-GM-THRID: 6330577059983654912
X-Received: by 10.66.226.10 with SMTP id ro10mr6631125pac.29.1473952331296;
        Thu, 15 Sep 2016 08:12:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.8.10 with SMTP id 10ls3864470oty.10.gmail; Thu, 15 Sep
 2016 08:12:10 -0700 (PDT)
X-Received: by 10.31.3.25 with SMTP id 25mr2858961vkd.7.1473952329639;
        Thu, 15 Sep 2016 08:12:09 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id c3si278352ith.1.2016.09.15.08.12.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 08:12:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id vz6so2244975pab.1
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 08:12:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=WU16iwZZUw9rhk94DJQguf/IoS+xzLRDnn5ig6FIy4Q=;
        b=qPdO64mJMfn9VwER0fIiuIpzYDuWKepl3VuhfspkNMAUDCEFLOtibEfhZplOqppZqh
         JW6PAHtozmvE2W4LmOcmoDmbLmBT9SGEC2Xut0Gw8DK5MZKJeUEOO8gaKfVIQHjqgDBn
         8EE2u1/tS4lyJQMJmYtWHO4nzMtfBebvZSCI3N7TcBnoGq2nwIj6o3YsPQg6bYlBI1nh
         2vjtN1Qzr4/0eMZ72MsrG9ffNtEcUBVMMixgEmFKmK/VQSO5rYGxaYtgXVfsANUtZjSX
         LM+cKcZuUJ+ifqcjQz42mz16cbLo3Ole4zhdM5eh9fPiDyB/6H6LoBjRBHsMzJ143J4M
         CUOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=WU16iwZZUw9rhk94DJQguf/IoS+xzLRDnn5ig6FIy4Q=;
        b=Ve66fY0F7vcS9DVdlPmSxW6hTnFJy2jzPPUcvqfTJLmlPFcNH6Hadab+yBNhfAlfiZ
         SXXufa/ftgFRiLRJCL70P7PLnFRAVvISZ/6apgPIoJqVwtSqu7naWUwWgYQO0ebL3LyG
         I+mq3xGOCvRPiriDBahU2rdyohVoD6W5HcIlVdwr7TF9a8yY+ybvjr9XbNVLxkIo1OdI
         9yrfG96dOHMw8bPjQqZ+oQ2gmCr8T8WVbVTjlX+hoGBuoqytCdScxQp9JCqG1X4o2Q9Y
         0xwCwe0K2e5gyqvoc98ZioPgYED4HgOL3sMfgxDdKTpnu5nXbNfWjSvtd5iRg2XABje7
         dPuA==
X-Gm-Message-State: AE9vXwPZmxCyvd7Cwga/OrKIobO9Cic2f42lu9EFABdUqP295H4eDAZRJm35IEsd4WK42w==
X-Received: by 10.66.20.165 with SMTP id o5mr15474663pae.142.1473952329177;
        Thu, 15 Sep 2016 08:12:09 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.71.113.22])
        by smtp.gmail.com with ESMTPSA id i62sm5382856pfg.89.2016.09.15.08.12.06
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Thu, 15 Sep 2016 08:12:08 -0700 (PDT)
Date: Thu, 15 Sep 2016 20:41:58 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, jon.nettleton@gmail.com
Subject: [PATCH] staging: olpc_dcon: Prefer using the BIT macro
Message-ID: <20160915151150.GA6172@life-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Replace all occurences of (1<<x) by BIT(x) in the file olpc_dcon.h to get rid
of checkpatch.pl "CHECK" output "Prefer using the BIT macro"


Signed-off-by: Anchal Jain <anchalj109@gmail.com>
---
 drivers/staging/olpc_dcon/olpc_dcon.h | 30 +++++++++++++++---------------
 1 file changed, 15 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/olpc_dcon/olpc_dcon.h b/drivers/staging/olpc_dcon/olpc_dcon.h
index 215e7ec..23a48a1 100644
--- a/drivers/staging/olpc_dcon/olpc_dcon.h
+++ b/drivers/staging/olpc_dcon/olpc_dcon.h
@@ -9,18 +9,18 @@
 #define DCON_REG_ID		 0
 #define DCON_REG_MODE		 1
 
-#define MODE_PASSTHRU	(1<<0)
-#define MODE_SLEEP	(1<<1)
-#define MODE_SLEEP_AUTO	(1<<2)
-#define MODE_BL_ENABLE	(1<<3)
-#define MODE_BLANK	(1<<4)
-#define MODE_CSWIZZLE	(1<<5)
-#define MODE_COL_AA	(1<<6)
-#define MODE_MONO_LUMA	(1<<7)
-#define MODE_SCAN_INT	(1<<8)
-#define MODE_CLOCKDIV	(1<<9)
-#define MODE_DEBUG	(1<<14)
-#define MODE_SELFTEST	(1<<15)
+#define MODE_PASSTHRU	bit(0)
+#define MODE_SLEEP	bit(1)
+#define MODE_SLEEP_AUTO	bit(2)
+#define MODE_BL_ENABLE	bit(3)
+#define MODE_BLANK	bit(4)
+#define MODE_CSWIZZLE	bit(5)
+#define MODE_COL_AA	bit(6)
+#define MODE_MONO_LUMA	bit(7)
+#define MODE_SCAN_INT	bit(8)
+#define MODE_CLOCKDIV	bit(9)
+#define MODE_DEBUG	bit(14)
+#define MODE_SELFTEST	bit(15)
 
 #define DCON_REG_HRES		0x2
 #define DCON_REG_HTOTAL		0x3
@@ -35,11 +35,11 @@
 #define DCON_REG_MEM_OPT_B	0x42
 
 /* Load Delay Locked Loop (DLL) settings for clock delay */
-#define MEM_DLL_CLOCK_DELAY	(1<<0)
+#define MEM_DLL_CLOCK_DELAY	bit(0)
 /* Memory controller power down function */
-#define MEM_POWER_DOWN		(1<<8)
+#define MEM_POWER_DOWN		bit(8)
 /* Memory controller software reset */
-#define MEM_SOFT_RESET		(1<<0)
+#define MEM_SOFT_RESET		bit(0)
 
 /* Status values */
 
-- 
1.9.1


