X-GM-THRID: 6339413407077236736
X-Received: by 10.98.95.71 with SMTP id t68mr5854411pfb.7.1476009703206;
        Sun, 09 Oct 2016 03:41:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.10.12 with SMTP id 12ls8455877otg.13.gmail; Sun, 09 Oct
 2016 03:41:42 -0700 (PDT)
X-Received: by 10.237.36.152 with SMTP id t24mr1715130qtc.1.1476009702745;
        Sun, 09 Oct 2016 03:41:42 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id z73si3518454pfa.1.2016.10.09.03.41.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 09 Oct 2016 03:41:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id qn10so5227911pac.2
        for <outreachy-kernel@googlegroups.com>; Sun, 09 Oct 2016 03:41:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=fGYno/FIAq0A41qD88PFjXS0la/plega2uCKWOoO4hY=;
        b=pqLZ4vzq+OcB41J1bBVE3w5w8LFr2wLUDuK0DlLxZ7iok0mG9LQRGrfaXaElENXGnW
         VM1Y16sQF4ugLMwLN3mSePbcaQg/pqEjUIpVoDtgmw5GnOGeoNp+EazrNTBBXXz1AwAF
         CMql0lAvgl1RWGuyDtTKh4iRM0JVLS2DcprBD3OJCSzRr44B7ZuakeouU5TtKkPBoZfK
         oO2n3gSVNidIiGmmU3vzcLYbmsq/mK4NlTyHw23utZScOEyh0I7TE8zVzx21HLOTOOB5
         G6aBs35DUDa3fcDApkMmFXXm8/IHRMEnf9EB8yjJFdxPaIrrIPEIu/9pL2YyUUeTNgMu
         uE5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=fGYno/FIAq0A41qD88PFjXS0la/plega2uCKWOoO4hY=;
        b=Ww2fN+PrcG4uMFhy5Run2WBAaOYELkL4Yt1JotViIa8/1/XdHigmMZBPvtzsEkOA+5
         BwUnM/V0kNA/5wACHkfXdw/2sCn7ShJAyJK3GDAJ023HY/JYMxorUfx+yb/IoJk/CbO6
         EdfrY5mcM6yj1wHqxpBTMqUuERHrHbk4XseHPEoQ4iTsQJ9M8N0QDGs4dBGoQYTGwm7v
         gE77hH++ipkWZosoADd0S3CQ7kKkjj2IX/1aUxybJNteHXBtDzh+iI2jxZRu9eiXG0Kh
         CJLlxff6Nf6KDTqPZ8qirhA5Wtq09mMctMwA8Jx+kv0M8j99X3Qw0eZYbRroQHG+pEpD
         wcdA==
X-Gm-Message-State: AA6/9Rkg1fOexixOteI1MrzNUFMhlzwaiXkkVGTDZO/0DgZjXsm2Mr0mRCPg/VbNflOfHA==
X-Received: by 10.66.194.197 with SMTP id hy5mr13917163pac.68.1476009702529;
        Sun, 09 Oct 2016 03:41:42 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.249.142.137])
        by smtp.gmail.com with ESMTPSA id xo5sm36293064pab.13.2016.10.09.03.41.40
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 09 Oct 2016 03:41:42 -0700 (PDT)
Date: Sun, 9 Oct 2016 16:11:36 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
	forest@alittletooquiet.net
Cc: rvarsha016@gmail.com
Subject: [PATCH] staging: vt6655: Removes unnecessary blank lines.
Message-ID: <20161009104136.GA4465@euri>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.7.0 (2016-08-17)

This patch fixes the chechpatch issue of multiple blank
lines,by removing them.

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
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


