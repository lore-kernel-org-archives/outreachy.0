X-GM-THRID: 6249367928124211200
X-Received: by 10.107.155.84 with SMTP id d81mr37336139ioe.27.1455092391639;
        Wed, 10 Feb 2016 00:19:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.132.220 with SMTP id o89ls177251ioi.29.gmail; Wed, 10 Feb
 2016 00:19:51 -0800 (PST)
X-Received: by 10.98.8.15 with SMTP id c15mr36486392pfd.0.1455092391365;
        Wed, 10 Feb 2016 00:19:51 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-qk0-x243.google.com (mail-qk0-x243.google.com. [2607:f8b0:400d:c09::243])
        by gmr-mx.google.com with ESMTPS id v197si157632ywa.1.2016.02.10.00.19.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Feb 2016 00:19:51 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c09::243 as permitted sender) client-ip=2607:f8b0:400d:c09::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c09::243 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x243.google.com with SMTP id u128so419687qkh.1
        for <outreachy-kernel@googlegroups.com>; Wed, 10 Feb 2016 00:19:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=Wi8GuwsxwH4STnHA3Bm8MorpCVKteuvTWFm8yuvzerg=;
        b=KCsLyEQbGu+pkG9yAEUAfu/4qTQVHgSpJyI5IxpjodU0qgqC+N4+Pnr0ri/7JdlrWn
         6+ZCppGxnmWPMOWgggnREFTAoD7GfPChSVRkXE8fAWD+B/N9uOWZKqfO36FBiTkvS+bt
         JIx7wO8CPuYWNa9EV6dsqDBYaFzlZBdtrwWaGe0kjeccG+6GCJXyqEfCBkdOMgy606o5
         Tj5GsBWx/sfVgQyzv4O5jyY3EwR9Sn4PhTtTZIMj/soshFPSNNvs2+HpVNpxivCZDcnQ
         /c4Xloe9HAZqkkI7dBHud58appjzWcxa25XjrCVp6SWZIL80aI2m1PyUD2O/lp7p14NS
         HzbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=Wi8GuwsxwH4STnHA3Bm8MorpCVKteuvTWFm8yuvzerg=;
        b=XSWq4tfGAcVRdsCGOp1SC2zBYBPqdTK8PzTGeUVBpMBL4d3iV1wly0/sDv874m5UwU
         iQ3fmRvFf9y8fGg5KIZbayKEzRG5izFPTiVrVcm8dd7wZyFzbPr+VxsaKNTze9UGZ8dB
         li4NZXIzClUH3JWjaLaSNwH4sOzobOiMxibLkLvw9AVDcJ9c2JoanFxUAHUjczu7cQkQ
         BgEPQ8cwrlR7fPaRnnqvBeIASzo9wTqimEIcelbgTRVVN/z9DXiENe+bEDUj83LbZIOE
         QZIog9Xx4hJKFrbvDq9fRCLtYXpJ9KEJdMtTYWn5E4d2c1xf25SQmbKkfNQ8ltL8ZJpA
         w/Eg==
X-Gm-Message-State: AG10YOQrxXsCokQgzGIpx7GssrPcKz/nmWmratN2lopAamDxpF0lIrJj6P6ndtxJJshb5Q==
X-Received: by 10.55.82.137 with SMTP id g131mr46371673qkb.66.1455092391137;
        Wed, 10 Feb 2016 00:19:51 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id g109sm843197qgg.40.2016.02.10.00.19.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Feb 2016 00:19:50 -0800 (PST)
Date: Wed, 10 Feb 2016 08:19:12 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v4] staging: rtl8192u: Use kmalloc_array instead of kmalloc
Message-ID: <20160210131912.GA2523@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Use kmalloc_array instead of kmalloc for arrays. The Coccinelle patch
for this conversion is:

@@
type T;
expression F;
constant FLAG;
@@

- kmalloc(sizeof(T)*F, FLAG)
+ kmalloc_array(F, sizeof(T), FLAG)

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
Changes since v3:
 * Changed RECORDER_WIN_SIZE to REORDER_WIN_SIZE as the former was
   incorrect.

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
+	prxbIndicateArray = kmalloc_array(REORDER_WIN_SIZE,
+			sizeof(struct ieee80211_rxb *), GFP_KERNEL);
 	if (!prxbIndicateArray)
 		return;
 
-- 
2.5.0


