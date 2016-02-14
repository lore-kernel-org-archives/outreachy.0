X-GM-THRID: 6250921384778661888
X-Received: by 10.50.57.17 with SMTP id e17mr5228722igq.11.1455406049387;
        Sat, 13 Feb 2016 15:27:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.61.175 with SMTP id q15ls452744igr.3.gmail; Sat, 13 Feb
 2016 15:27:29 -0800 (PST)
X-Received: by 10.107.29.20 with SMTP id d20mr10245285iod.29.1455406049110;
        Sat, 13 Feb 2016 15:27:29 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-qg0-x22b.google.com (mail-qg0-x22b.google.com. [2607:f8b0:400d:c04::22b])
        by gmr-mx.google.com with ESMTPS id i133si1646693ywe.7.2016.02.13.15.27.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Feb 2016 15:27:29 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c04::22b as permitted sender) client-ip=2607:f8b0:400d:c04::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c04::22b as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x22b.google.com with SMTP id y9so88660906qgd.3
        for <outreachy-kernel@googlegroups.com>; Sat, 13 Feb 2016 15:27:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=Pkg4Xzl0Ejx6Zg8PcVuz3+z6rh/rN8E/h3R1UvQeT90=;
        b=JYLODtsvzpglfhvzdQ122uDnYvAyhV2p6DwZ5Jt50jpzL4MdHfdJBiDBpKv6oX21vd
         xsQdWfh+9RfAVv3ozp5/MuNG7RL6gFNA5EtCU8kGt8Z0Cb5TCTJddRTwuxC2oMc6Eixh
         o60QcTLqjtbKPvbgDHLfW2zIArsc38Y8aEaa1cc1/MGcHl3tF5aIOirENJqujCQGPQNM
         bs9oqma1XKg24MITJcLk6FgHDViFX+kzLhA2U9WjH77uZ28Re2C/5czFfXC7f+tSUB0j
         lIj6yQw933WjqZJIaGkbJmzU/ljWFEDDB6MCc+E6sWKsI7HQEWkzOPjS5ZQdipGdJjRZ
         SvZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=Pkg4Xzl0Ejx6Zg8PcVuz3+z6rh/rN8E/h3R1UvQeT90=;
        b=jMiJ663gnOPtpa734IQgCv8M20D4vFVZqPahZHs9eO5mCX06QOdvCmzQ5vZl0mhzRi
         A/t1/XvejNRxEX0m2N1JgDnrFayqJB1KxhuMVEQtmUx57IFrgkT8UHCRpZ08YKxhJ6Ar
         EkWF2XRX/UiHL0fCie1fd5VV8vfkcgFeOxEDr3HHWrkLRdQNBym6FI4cPe1yF5KjtTc9
         zv08BBe8xALhtk5aoHfb2Wa5uq6c6i7kTnD1NNerweBwZH/8Nn5UctL6vozL60UVAHeQ
         Yj4eP2A3mXeg4NdDzkJx3RyHVHoSdQYPxz7LuCxXwheyd2MLXYTbjfvFzO+pnrzsyqVQ
         goCQ==
X-Gm-Message-State: AG10YOT4d1s/VQVNm9ipK9ICI9syXfJ0C/n7dZK6UNjqtsUz/HBXIlXZaTDKJSkAJH57qA==
X-Received: by 10.140.95.119 with SMTP id h110mr11246362qge.105.1455406048928;
        Sat, 13 Feb 2016 15:27:28 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 ([2620:cc:8000:212:5635:30ff:fe6b:610b])
        by smtp.gmail.com with ESMTPSA id x62sm7230838qhc.42.2016.02.13.15.27.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Feb 2016 15:27:28 -0800 (PST)
Date: Sat, 13 Feb 2016 23:26:49 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: wilc1000: Eliminate spaces between function names
 and open parentheses
Message-ID: <20160214042649.GA25621@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove spaces between function names and open parentheses as they are
unnecessary.

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/wilc1000/linux_wlan_common.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/wilc1000/linux_wlan_common.h b/drivers/staging/wilc1000/linux_wlan_common.h
index 44573e2..f325051 100644
--- a/drivers/staging/wilc1000/linux_wlan_common.h
+++ b/drivers/staging/wilc1000/linux_wlan_common.h
@@ -12,7 +12,7 @@ enum debug_region {
 #define CFG80211_DBG            (1 << CFG80211_debug)
 #define INIT_DBG                (1 << Init_debug)
 
-#if defined (WILC_DEBUGFS)
+#if defined(WILC_DEBUGFS)
 extern atomic_t WILC_REGION;
 extern atomic_t WILC_DEBUG_LEVEL;
 
@@ -105,7 +105,7 @@ extern atomic_t WILC_DEBUG_LEVEL;
 
 #define WILC_MULTICAST_TABLE_SIZE	8
 
-#if defined (BEAGLE_BOARD)
+#if defined(BEAGLE_BOARD)
 	#define SPI_CHANNEL	4
 
 	#if SPI_CHANNEL == 4
@@ -118,7 +118,7 @@ extern atomic_t WILC_DEBUG_LEVEL;
 #elif defined(PLAT_WMS8304)             /* rachel */
 	#define MODALIAS	"wilc_spi"
 	#define GPIO_NUM	139
-#elif defined (PLAT_RKXXXX)
+#elif defined(PLAT_RKXXXX)
  #define MODALIAS	"WILC_IRQ"
  #define GPIO_NUM	RK30_PIN3_PD2 /* RK30_PIN3_PA1 */
 /* RK30_PIN3_PD2 */
-- 
2.5.0


