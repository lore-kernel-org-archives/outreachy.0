X-GM-THRID: 6949862244544937984
X-Received: by 2002:a4a:e70a:: with SMTP id y10mr18939566oou.75.1618140935204;
        Sun, 11 Apr 2021 04:35:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6830:605:: with SMTP id w5ls461716oti.8.gmail; Sun, 11
 Apr 2021 04:35:34 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyDZ65Rjow4ee4Zz9ePgRcXHp2A5qNWlHUG0f+HWm4TzN+Ep9ecsBDR3KEqlq1RnCyTceQG
X-Received: by 2002:a05:6830:1046:: with SMTP id b6mr19585913otp.156.1618140934582;
        Sun, 11 Apr 2021 04:35:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618140934; cv=none;
        d=google.com; s=arc-20160816;
        b=s0eITqjg/bdvWxvGXGUji8ztWSzapOx1ybJnMkJ2LzwM/EcTPQfis+CyPJeYnLO67Y
         Tbiwh94kHdLg0l6zQO3YGPzKwpVG+EDDHyENzS7+bmPkGGM9sifq6LPCEHjKSMYUyra1
         zTVd0IICPhRB1U9ZOd33vlI3EnLVsS0hNWKdecry6hQjV3rOB3BLJM+s3cx/6PaMuEVs
         nDIDcquRE7fXgpHsKoRUxXCekgQBRSMeVQ0sP/wpuhH0JaxXwXL4LzdVg8ecCUiH0U6C
         JFY4kG6HHvrpO+AcJw2A1OWY2c5VT/nUxlBsGnzGKAZqQcFYabsXnNcQqZMCuYLsFzk7
         ljzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=vA8lw1ubzFZMaLM7kqq8oMrtyRFAa93RWghGoalPd7A=;
        b=Mn+QxGW9vBfgvGLD4QfneyUh9ihId1zRuzdFRNf/JYV57Siy49bkqH6Nx++V407bdm
         Tl4TkqcaA9PbVgcrTWBfXSPwoGCvrEdEVltrvsW/x1PXLidLIBeVTo+StwP18aaFD1UE
         lv245zA45GajgTeqRw9jJa90CEjQ72BOHoaLtsphjN1RLDoHE/BA7rniFHJhrQ6HHiP7
         jX96UalrYqzaqEtJHxaDRuBO+vAJRjlsTzPN8srONRcPc66KPjtu39ojOli5SEFO6SgW
         Kcrd0kFHP8MkZyw/VhvDfPKKHpf6if+7x0BvBaPkgkFi5GXw3ZvK+ji2+5Ro+FphJkqh
         zErg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=D5Gk92Ys;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::42d as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com. [2607:f8b0:4864:20::42d])
        by gmr-mx.google.com with ESMTPS id 6si387779ooy.1.2021.04.11.04.35.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Apr 2021 04:35:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::42d as permitted sender) client-ip=2607:f8b0:4864:20::42d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=D5Gk92Ys;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::42d as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x42d.google.com with SMTP id l123so7298926pfl.8
        for <outreachy-kernel@googlegroups.com>; Sun, 11 Apr 2021 04:35:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=vA8lw1ubzFZMaLM7kqq8oMrtyRFAa93RWghGoalPd7A=;
        b=D5Gk92YsRMpnAtiafUraa1IM89Wi/bc2KSEwOC2hgUUTEtI+eGY9sJYv3WTwOTZ8D5
         ijZ1rtM2iYbRocFVqg8J1AqDgjMzYzAWsqHVeSaPtPko81t2T/J8X99ftzKT9/AkcFy0
         Lq0iKICotnX9mKeVeKzKPrtBeIQ04UddS4e4AHFWbHHUuxvvt5dBpaf/uNDiNHJYdAyI
         KUZQtnohHC0ajVgiYQ6KDFyER52AFqI70MxAh96HOPw411HYaNS2rNEAPQkiC8Z09XBC
         Dc31qJeO64b4c+HMq3RU84DMUTBZQ694XXw1hEkBVzxNGBX69VwVNEclqpCWjIpRE3Cf
         liLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=vA8lw1ubzFZMaLM7kqq8oMrtyRFAa93RWghGoalPd7A=;
        b=YHLyY7EalK6iwyOM8hd1cYo1pKJcQNTYxFY+sonOyIosp0xVEEFeSvqtICcFcziTHV
         04of/L5DNycsPsfigwO8wmzOfpq1Q1bpJgwQHL3b8lQVK2fpT+65N8C8NOzFCFiGMDJV
         T5tSVegJ/ai2cEjICyvHG0OFeG9vL89OJtTMCbzDIHPI9+z/jc8z/x2u1ks5hJZBCtDD
         d+VfNtjnL5GC6AkuVs7zYSmfkPmlZMebSsp+L+WC+A2+GY2GyGitvBtL/hr2iUrI6mBj
         VFaqcW0mCeCrE81XQM0Th+Kr/hRAUldClXNOBY3/TkybZqRNh3GldRWA2eZK9y4HB2Xg
         o6KQ==
X-Gm-Message-State: AOAM530Rdqshdv4yZG9UiwTNKbX57NoJTlU/Img75OPpz/ckNKJa18ma
	pHssoj4bvmNv/y32hOwF7KA=
X-Received: by 2002:a62:2cc8:0:b029:23d:bd0d:2ac3 with SMTP id s191-20020a622cc80000b029023dbd0d2ac3mr20390208pfs.41.1618140933800;
        Sun, 11 Apr 2021 04:35:33 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.254])
        by smtp.gmail.com with ESMTPSA id l25sm8731836pgu.72.2021.04.11.04.35.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Apr 2021 04:35:33 -0700 (PDT)
Date: Sun, 11 Apr 2021 17:05:24 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: gregkh@linuxfoundation.org
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: [PATCH v4 2/3] staging: rtl8192e: remove unnecessary ftrace-like
 logging
Message-ID: <460ba9cdd256bf1064c4e3a694caa046171cb60e.1618139271.git.mitaliborkar810@gmail.com>
References: <cover.1618139271.git.mitaliborkar810@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1618139271.git.mitaliborkar810@gmail.com>

Removed unncessary ftrace-like logging by simply deleting that statement
as we have other modes of logging like ftrace.
Reported by checkpatch.

Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
---

Changes from v3:- No changes.
Changes from v2:- No changes.
Changes from v1:- NO changes.

 drivers/staging/rtl8192e/rtl819x_HTProc.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl819x_HTProc.c b/drivers/staging/rtl8192e/rtl819x_HTProc.c
index 0b1e92f17805..89d0e9ec188d 100644
--- a/drivers/staging/rtl8192e/rtl819x_HTProc.c
+++ b/drivers/staging/rtl8192e/rtl819x_HTProc.c
@@ -630,7 +630,6 @@ void HTInitializeHTInfo(struct rtllib_device *ieee)
 {
 	struct rt_hi_throughput *pHTInfo = ieee->pHTInfo;
 
-	netdev_vdbg(ieee->dev, "%s()\n", __func__);
 	pHTInfo->bCurrentHTSupport = false;
 
 	pHTInfo->bCurBW40MHz = false;
@@ -698,7 +697,6 @@ void HTResetSelfAndSavePeerSetting(struct rtllib_device *ieee,
 	struct rt_hi_throughput *pHTInfo = ieee->pHTInfo;
 	u8	bIOTAction = 0;
 
-	netdev_vdbg(ieee->dev, "%s()\n", __func__);
 	/* unmark bEnableHT flag here is the same reason why unmarked in
 	 * function rtllib_softmac_new_net. WB 2008.09.10
 	 */
@@ -832,8 +830,6 @@ static void HTSetConnectBwModeCallback(struct rtllib_device *ieee)
 {
 	struct rt_hi_throughput *pHTInfo = ieee->pHTInfo;
 
-	netdev_vdbg(ieee->dev, "%s()\n", __func__);
-
 	if (pHTInfo->bCurBW40MHz) {
 		if (pHTInfo->CurSTAExtChnlOffset == HT_EXTCHNL_OFFSET_UPPER)
 			ieee->set_chan(ieee->dev,
-- 
2.30.2


