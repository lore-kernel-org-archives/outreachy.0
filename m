X-GM-THRID: 6339413407077236736
X-Received: by 10.157.24.44 with SMTP id b41mr7151916ote.9.1476010615995;
        Sun, 09 Oct 2016 03:56:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.35.106 with SMTP id k39ls7511070otd.3.gmail; Sun, 09 Oct
 2016 03:56:55 -0700 (PDT)
X-Received: by 10.200.51.171 with SMTP id c40mr4783331qtb.39.1476010615661;
        Sun, 09 Oct 2016 03:56:55 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id ua1si7263891pac.1.2016.10.09.03.56.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 09 Oct 2016 03:56:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id t25so5634198pfg.2
        for <outreachy-kernel@googlegroups.com>; Sun, 09 Oct 2016 03:56:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Pxp8UOXP9KnnX11JVU8RmI+nbmA47Ls0X7Gq5DFPOLA=;
        b=nyljNw1H3q67gmYVGR2gwH06eyrUKn2BmIHBFVAOP+5MVDM4qlpLIqIZbH6kzUttCT
         H49K9hK67zBj1tILUPZdYGSyL5LfQwdtAGPJ4iPqzZREJ7AiNYeIMD03Jj+2GI2pylCN
         rNR5wdPoue9TVXPcR618TxjpGnFmISfQhIbnheOngKYkhhKSE0rB8F+D1eOl4keF4NEs
         gW0uVCbYdbp41fkCKxGOASMUGxVbvW3W5M5YY1dk3cWvENeaHOXW9sZs1knkCAiCGQCQ
         MfkxFOYXbKbStjRwEZImIzugwEskRyhh0/fnCknJ9FsXMF2yXd1Gkr3Vy1K21FAY9rlK
         BM7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Pxp8UOXP9KnnX11JVU8RmI+nbmA47Ls0X7Gq5DFPOLA=;
        b=H/uX9lXkjR5/Wi8Yz6FaW25ND0SQ4ALvMLwzeP9zlJgEPM7AKpR2HCXluMop8AGAjU
         71aLKw9eD5XCHsY+CMAiUXzfPjRhGIy9102OdVunf2p83kSSkOUo1sqpYQknrUrq4BfJ
         F0qjVr31jSXUar98DWnAMSw6D+v/nY6eo0dmGHlCcHiZn6/6qaUkb3ZBAV/X2e1pH7/N
         6GsYWzGrzcO563NA5rblf5XwO1GsFlSQblX0V+AUQ9j0piDj2dVZqPPccYHwUZ2s5yw2
         uInXs88IwOSXSvCF2JQw3DX6huMDdzG2mFYsbB/zpF9ig49j2wAoX2qkRvOLiRq2bwCF
         H9DA==
X-Gm-Message-State: AA6/9RlMcinF5ps5zzFhqi3/1e46VitA1AD/sFRRBVOLWz+WtzKqHmx/vHeXxjOoZpKbWg==
X-Received: by 10.98.73.17 with SMTP id w17mr40718983pfa.32.1476010615443;
        Sun, 09 Oct 2016 03:56:55 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.249.142.137])
        by smtp.gmail.com with ESMTPSA id f203sm26533223pfa.12.2016.10.09.03.56.53
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 09 Oct 2016 03:56:54 -0700 (PDT)
Date: Sun, 9 Oct 2016 16:26:50 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
	forest@alittletooquiet.net
Cc: rvarsha016@gmail.com
Subject: [PATCH v2] staging: vt6655: Removes unnecessary blank lines.
Message-ID: <20161009105650.GA11365@euri>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.7.0 (2016-08-17)

This patch fixes the checkpatch issue of
multiple blank lines, by removing them.

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


