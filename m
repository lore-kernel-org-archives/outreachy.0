X-GM-THRID: 6249367928124211200
X-Received: by 10.182.246.130 with SMTP id xw2mr34767355obc.29.1455044357466;
        Tue, 09 Feb 2016 10:59:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.157.136 with SMTP id g130ls2148403ioe.56.gmail; Tue, 09
 Feb 2016 10:59:16 -0800 (PST)
X-Received: by 10.66.227.33 with SMTP id rx1mr14083638pac.8.1455044356759;
        Tue, 09 Feb 2016 10:59:16 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-qg0-x230.google.com (mail-qg0-x230.google.com. [2607:f8b0:400d:c04::230])
        by gmr-mx.google.com with ESMTPS id l85si657903ywb.2.2016.02.09.10.59.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 10:59:16 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c04::230 as permitted sender) client-ip=2607:f8b0:400d:c04::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c04::230 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x230.google.com with SMTP id b67so60064484qgb.1
        for <outreachy-kernel@googlegroups.com>; Tue, 09 Feb 2016 10:59:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=/gGcjaEKEM1GvSK3Hw5xhoYNJnC4W55+zcNz2wac85c=;
        b=ZoxeOm+wQ/r6mEVMRtYJDAehn1BFGDzSi3mvQx3R57PWfArHi7GXMKUW7gE/5WyNZe
         Vagi1OrhocvsbW4Amm2YjZxuxLZjHv7TB/i/e/xIaQrHcA0mJbVN710sYwnpy8+QlJq0
         b3xGv0cFIzuL/Q2DeUD7/wpMVkC1WXz7TZZKCXlhgwPcXSOTZmEhcW3T2cTpmfRNF8S3
         xWdFtCHNk7baSq5R6jgdOBh2McXo8qmcoJCU2jlSUMpQynNGMvEZbkgBREKzkROyIT6Y
         A6TBO4RMtrHWetZQw1KZ3ZBM0+TkZc/oQThVueaIQDhR5QpYqhEXYaPoK+w9MAADf3xi
         23mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=/gGcjaEKEM1GvSK3Hw5xhoYNJnC4W55+zcNz2wac85c=;
        b=hCdH2IQBsjc3SLjMjWCWfXuBC6S8qiRA8W5FoUAx8kzNbLy636WdKJck2LPkzhwInY
         8a3T3jeEWqPzFurWFfjq5D1JKvp1mIHGX4vCWJzwIwrV2EC9J/uDcOoE0FZNalQFWV6L
         0gwYHShyaTLIevvzHCOv6SshKqGVnRIcBGsk9kjPMy41NHGjIOwH3kLpZLPXu9NthSuv
         fC3mlyNimOhUk/d4mMCxLOAOUif0Bwx4N0UmaHQrdrS4IdVGEBS+8WSOwqk8IqH2sMJk
         GV52S5et9+3kILTSFeE4ZzkPTkt9kFe6VhG2aDwvIB/9zhyP9PmuP12sMSLZq5/i0p9g
         ruxw==
X-Gm-Message-State: AG10YORQoCZ5JM9NmIcyifBUZ78x3d0yad8YRhRLQ1joOZOpP4uPSCEuqhBzHhv+Bpjq9w==
X-Received: by 10.140.99.53 with SMTP id p50mr42777684qge.97.1455044356580;
        Tue, 09 Feb 2016 10:59:16 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id j67sm16230830qgj.35.2016.02.09.10.59.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 10:59:16 -0800 (PST)
Date: Tue, 9 Feb 2016 18:58:37 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8192u: Use kmalloc_array instead of kmalloc
Message-ID: <20160209235837.GA11402@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Use kmalloc_array instead of kmalloc for arrays. Coccinelle patch used:

@@
expression E, F;
constant FLAG;
@@

- kmalloc(E*F, FLAG)
+ kmalloc(E, F, FLAG)

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
index 28ad63a..fb344d1 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
@@ -601,8 +601,8 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
 	bool			bMatchWinStart = false, bPktInBuf = false;
 	IEEE80211_DEBUG(IEEE80211_DL_REORDER,"%s(): Seq is %d,pTS->RxIndicateSeq is %d, WinSize is %d\n",__func__,SeqNum,pTS->RxIndicateSeq,WinSize);
 
-	prxbIndicateArray = kmalloc(sizeof(struct ieee80211_rxb *) *
-			REORDER_WIN_SIZE, GFP_KERNEL);
+	prxbIndicateArray = kmalloc_array(RECORDER_WIN_SIZE,
+			sizeof(struct ieee80211_rxb *), GFP_KERNEL);
 	if (!prxbIndicateArray)
 		return;
 
-- 
2.5.0


