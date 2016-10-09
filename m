X-GM-THRID: 6339413407077236736
X-Received: by 10.237.34.99 with SMTP id o32mr4820324qtc.65.1476011642363;
        Sun, 09 Oct 2016 04:14:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.10.12 with SMTP id 12ls8489345otg.13.gmail; Sun, 09 Oct
 2016 04:14:02 -0700 (PDT)
X-Received: by 10.157.60.185 with SMTP id z54mr7809987otc.78.1476011642049;
        Sun, 09 Oct 2016 04:14:02 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id ua1si7274269pac.1.2016.10.09.04.14.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 09 Oct 2016 04:14:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id i85so5656417pfa.0
        for <outreachy-kernel@googlegroups.com>; Sun, 09 Oct 2016 04:14:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=6/pEcrg6hmi41xOi4yn3Ykeljga5SobCXpLfKbt8maI=;
        b=yETfetnlvA6own9AcjuiAfcbRrsojjvsUHPMZKsrrLLO0iPOA4Vf6KBh0jtS7Qp7rg
         9MMnuJLW9n0Y/2+oE7gBlq2JwuF1qE2XmjjB1ZXPC6BDQI2HDOb6gN/DIHcGd9TetWgH
         UhPKmG2E8Hlt6J8vfy4ANunQPErNt9RNlXvvIC9cPZni9fuf1HqpW9ud4alG6GFuZA/j
         z50wpB8wsirkB3riNC60CjzJTbHUN9fm1b5CC6EReph1rwUUIvOZ8mcbRm79snSfwmEi
         c0QYsEp4UXpxOGIt+2YN/RMYbV7hPO3x0iWamSt1/iNFnUr/QC0+Mhd4yQs3UIvLISIx
         Kg3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=6/pEcrg6hmi41xOi4yn3Ykeljga5SobCXpLfKbt8maI=;
        b=T82Cy2EK+pQK8WHpe92T0sfcOB3546KAozok8L8/6Q4SYiJqvT5aP90JVql6uOHdU3
         Dv0yxrE0A9O1dd/j7MEyoKCbR/WCm/i4Vb/qPhXBPUyFiYAPgbDm9nC3Rvf8/53VNhLA
         jvBKKihL+vlJbcgLNfKZ3qldFnz7Bo6/aOOHbpkfq8jq6l8BycXWEvPBwSl+UCR1e3GH
         Dr1BYSaBSfRwPm8hjYsnAHEchr/uzmD0wcbxgXPfdEbDQMm/tD6YxL7zcembkirY+9HZ
         jljn8Jb9liFo1hAWfZndmUwtbavEY0YGE6KxlM8UaFoaSDII0zVGQVR0SDwhgsi1DY1t
         4AUQ==
X-Gm-Message-State: AA6/9Rlh8wGRNWDjs6VYdu8Dk4drimxOqujSNykPDplh8dhNHeq+uutRAYBkUe/wPBdMWQ==
X-Received: by 10.99.98.5 with SMTP id w5mr1519848pgb.77.1476011641841;
        Sun, 09 Oct 2016 04:14:01 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.249.142.137])
        by smtp.gmail.com with ESMTPSA id l84sm26601929pfi.14.2016.10.09.04.14.00
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 09 Oct 2016 04:14:01 -0700 (PDT)
Date: Sun, 9 Oct 2016 16:43:56 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
	forest@alittletooquiet.net
Cc: rvarsha016@gmail.com
Subject: [PATCH v2] staging: vt6655: Removes unnecessary blank lines.
Message-ID: <20161009111356.GA11461@euri>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.7.0 (2016-08-17)

This patch fixes the checkpatch issue of 
multiple blank lines, by removing them.

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
Changes in v2:
    -Edited commit message.
 drivers/staging/vt6655/baseband.c    | 1 -
 drivers/staging/vt6655/device_main.c | 1 -
 drivers/staging/vt6655/mac.c         | 1 -
 drivers/staging/vt6655/power.c       | 1 -
 drivers/staging/vt6655/power.h       | 1 -
 5 files changed, 5 deletions(-)

diff --git a/drivers/staging/vt6655/baseband.c b/drivers/staging/vt6655/baseband.c
index dae1e87..6e25d01 100644
--- a/drivers/staging/vt6655/baseband.c
+++ b/drivers/staging/vt6655/baseband.c
@@ -2162,7 +2162,6 @@ bool BBbVT3253Init(struct vnt_private *priv)
 				byVT3253B0_AIROHA2230[ii][0],
 				byVT3253B0_AIROHA2230[ii][1]);
 
-
 		/* {{ RobertYu:20050223, request by JerryChung */
 		/* Init ANT B select,TX Config CR09 = 0x61->0x45,
 		 * 0x45->0x41(VC1/VC2 define, make the ANT_A, ANT_B inverted)
diff --git a/drivers/staging/vt6655/device_main.c b/drivers/staging/vt6655/device_main.c
index f109eea..9b2ec25 100644
--- a/drivers/staging/vt6655/device_main.c
+++ b/drivers/staging/vt6655/device_main.c
@@ -1272,7 +1272,6 @@ static void vnt_remove_interface(struct ieee80211_hw *hw,
 	priv->op_mode = NL80211_IFTYPE_UNSPECIFIED;
 }
 
-
 static int vnt_config(struct ieee80211_hw *hw, u32 changed)
 {
 	struct vnt_private *priv = hw->priv;
diff --git a/drivers/staging/vt6655/mac.c b/drivers/staging/vt6655/mac.c
index 8e13f7f..d3f4eb2 100644
--- a/drivers/staging/vt6655/mac.c
+++ b/drivers/staging/vt6655/mac.c
@@ -147,7 +147,6 @@ void MACvSetShortRetryLimit(struct vnt_private *priv,
 	iowrite8(byRetryLimit, io_base + MAC_REG_SRT);
 }
 
-
 /*
  * Description:
  *      Set 802.11 Long Retry Limit
diff --git a/drivers/staging/vt6655/power.c b/drivers/staging/vt6655/power.c
index 7d6e746..1506b1b 100644
--- a/drivers/staging/vt6655/power.c
+++ b/drivers/staging/vt6655/power.c
@@ -133,7 +133,6 @@ PSvDisablePowerSaving(
 	priv->bPWBitOn = false;
 }
 
-
 /*
  *
  * Routine Description:
diff --git a/drivers/staging/vt6655/power.h b/drivers/staging/vt6655/power.h
index d82dd8d..d619c42 100644
--- a/drivers/staging/vt6655/power.h
+++ b/drivers/staging/vt6655/power.h
@@ -46,7 +46,6 @@ PSvEnablePowerSaving(
 	unsigned short wListenInterval
 );
 
-
 bool
 PSbIsNextTBTTWakeUp(
 	struct vnt_private *
-- 
2.7.4


