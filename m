X-GM-THRID: 6330577059983654912
X-Received: by 10.13.230.79 with SMTP id p76mr7164297ywe.5.1473954536631;
        Thu, 15 Sep 2016 08:48:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.13.203 with SMTP id 194ls1195586ion.11.gmail; Thu, 15 Sep
 2016 08:48:55 -0700 (PDT)
X-Received: by 10.107.169.66 with SMTP id s63mr7444518ioe.16.1473954535461;
        Thu, 15 Sep 2016 08:48:55 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id si10si1506351pab.1.2016.09.15.08.48.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 08:48:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id p2so2262462pap.3
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 08:48:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=5/cw/KONAtyaW/tjAryxiKZJE2DNGW9WZeNuNzZEkv0=;
        b=p2CFygQcIzWOY4nIdCmVmlw1fDVY6ekiNlx2YLD+iFg0J8bjPnRhWl3NAVhF1OUvgS
         Sik91bqACm/AfnGNnrcCvghLypXmXy1SkKnSxms9OOI5GYJ+MWHdVUNN2rV4ZnpdnGuU
         KAm87e36ch76sWsSbBvmhLakm1NbpeELcwORtU/6Xby3WACViKNxYWtYBZQsjHR2HqyS
         gnkwjXK8l+XlGAL99EMvFvIQ7DUt747/tIXd4k6+9qYLxMdNqiEnI+zYAZiPv8zYQonX
         JvO8SarPTj+w5iSBt7LYn8B6W3IQXFvjYKovVmM0dGBxinQ4LRxOf+q89zNWGy+ilXL8
         puPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=5/cw/KONAtyaW/tjAryxiKZJE2DNGW9WZeNuNzZEkv0=;
        b=k5ckwYZnKvUhsRklTgCjs5qtGuxDfhpubJhTuqvyGW+HxzfEZmNmBpYwzmmMnwDY3X
         gpht+Yid7XmCtHfMwu2Dye1Y24TCIQ9+HIYKd+rwJG45fsQ8b+UYdqI8spNxvC1rmUy9
         +SRlFlrNdsoqswjG/8/3GkPVQWUy4bl+X146fK9IiLktS9HmYrnaZsmKH4fUlYDzRVW/
         LqtIh23DYgOGB7BEUzp6o/BYs61wzU5zYTC1qaU7SbEi2kMF5R4wl8F40bMN91bdMy43
         cxxcLUDo/9SEZkpwL1WWM9Jr2emQRmysEUBdZugiVAJYlQNtUbyP8cC4KbQMR5hMYFyy
         oeqA==
X-Gm-Message-State: AE9vXwNUkXinwkEsBzov8VT5MBGjQDw2KFlYTSjuLesstPZPegJ7qQvrmgqgyfe2o+24Nw==
X-Received: by 10.66.245.177 with SMTP id xp17mr15756839pac.118.1473954535075;
        Thu, 15 Sep 2016 08:48:55 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.71.113.22])
        by smtp.gmail.com with ESMTPSA id ah5sm6075246pad.30.2016.09.15.08.48.53
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Thu, 15 Sep 2016 08:48:54 -0700 (PDT)
Date: Thu, 15 Sep 2016 21:18:46 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, jon.nettleton@gmail.com
Subject: [PATCH v2] staging: olpc_dcon: Prefer using the BIT macro
Message-ID: <20160915154838.GA7175@life-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch fix the CHECK
CHECK: Prefer using the BIT macro
detected by checkpatch.pl

Signed-off-by: Anchal Jain <anchalj109@gmail.com>
---
	changes in v2:
		-modify commit message
 
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


