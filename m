X-GM-THRID: 6949336424403435520
X-Received: by 2002:a17:903:3106:b029:e9:15e8:250e with SMTP id w6-20020a1709033106b02900e915e8250emr26209522plc.33.1618226528485;
        Mon, 12 Apr 2021 04:22:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:c70c:: with SMTP id o12ls3535319pjt.3.canary-gmail;
 Mon, 12 Apr 2021 04:22:07 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx6Jq88oZ8CGYhSEOnGgdibYPWm/hIz3+Q0PQblsCInnpL4AX1/rGr0GaZqxlld9tt9oXQ+
X-Received: by 2002:a17:90a:ab09:: with SMTP id m9mr29972581pjq.122.1618226526976;
        Mon, 12 Apr 2021 04:22:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618226526; cv=none;
        d=google.com; s=arc-20160816;
        b=ahWHTpW7uGrQN6vl6S1FPqHiwzJbeepNRbltfzMDMIsd3Do/77R1Kza6PzR4eIuQBr
         Yy9/g4ZWpxljuCtqhLyYpxuSwaqmrDjro1zMsFc18FhlfIjV9G9TWzD55blJ4SrbOPT7
         7oP72D2Xr1Gmayi/a6e0W7aXbBq47bKM1eMTSV4A2dm8VBHDPC0V3DWsnRnZZoNNnLw0
         XycBRVgkYk0hlcK8U6xp8citYkoCbbdUsrg2JPTK7pLSH1C7NeUahqM8yynYNwTluN+d
         2bJ4Do+XJgPnaD7UL1IiYAg+9+038APtui02wu+u1lObyUbGMdfyhWVjjb+e09PP2qVX
         8nvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=IF7DiNeW+btUxyTKofRBmzZoNs1Ddr8B6E6fKZD+Y8c=;
        b=QGvx7VOLjQiYf1gPE9RvQabYIiVt4SSUrqaaEkXayFdGohR9uqiEijjWT9TnEApZgC
         I7FWdTEtnCE56woL7zxI4tQm4UyowDbargf70nsR4PwIP+/lLRCASnTCKVgWSzkiNasP
         G28enbeUR4tXOXWy4Su0oReSjObw4IWJ/0N7cmUmto3MSS1636Xb8Yw+wm0CuM51ToHZ
         0CtX4NLK+n4JeMXzThEADGK5/8ns+kQe/PEqwjoiKfqoNjDakbXCRKt3kuco1lHGj15P
         lSczFF+XQgzMtjQYVdrtOHjljCU3BcU8U2Rr3y0BiXAVgMxvs1h5JQkvMz+kp1xFgd7U
         Cxvg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BXwH1gx1;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::52e as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com. [2607:f8b0:4864:20::52e])
        by gmr-mx.google.com with ESMTPS id p2si601301pli.3.2021.04.12.04.22.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Apr 2021 04:22:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::52e as permitted sender) client-ip=2607:f8b0:4864:20::52e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BXwH1gx1;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::52e as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x52e.google.com with SMTP id t22so9142645pgu.0
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Apr 2021 04:22:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=IF7DiNeW+btUxyTKofRBmzZoNs1Ddr8B6E6fKZD+Y8c=;
        b=BXwH1gx1FDC5C0bniBbo3dMjUpqV6el5fFbg/3NfIieNfMr3wm3z359mGwzwNtHRAH
         MLJowFhfPp//s/QA3jlA9WgEfd/N/0Xp3xVwPluhb01sWj1aXNA6H4VYB1eEMIL3BU+v
         OjBALDIAIE72J5jzU9+JOO1cuIyWyFyuO1lyteGJaZ+eEyEcPjXXR00I9dpUFTW6iy59
         Jw7jzwaYFBugfnI9Y6ps9dhoFapwnQ9lpgLD1UaxZ/TxgkeXRa17tdcBC8oNkiLECOvv
         z9otx4BwjeKtlH8pZm4PUzy9dbOOIrtmkrPQOx5aIJpCcVOpIGtLmd7kk5Sq5ZT836E8
         DLMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=IF7DiNeW+btUxyTKofRBmzZoNs1Ddr8B6E6fKZD+Y8c=;
        b=uAcUGShsqy9X31G+UKogH44Uq8RiKcO/YGi714aKa8zgvEzyQ8JSxQqZ+N+oowv11W
         DYZ6+OxntBbTGV6kkpgHbb9fQCeza8N+BdJA0Z93uPuvJjwms4Ou2btL1txnUA5389JZ
         AItu5pUNPrVW/3KiqV7D8J+VMS/A8h9tExfkCXP76jaG5xIvhNoLRLTuovQs02ocJyrR
         Pyczp3zGakwqYDqGsFFQ8Si429VEQfgX5VebiuCXMyp6+Bgqy6tOIntK4acNYlCBQtjx
         SUPm7sxjpJxnUSDzedtIbjLvGxxYKLQnVU8jpBnN0/QVsJ2NC78kmoZt6Y9YnRvehyDF
         WYZA==
X-Gm-Message-State: AOAM530x0CSkCn/jwQ+Ip/M4szMm3iuIEOP39bom6adgREk8BUBBDH+j
	7KlMZh5Y7PUZ3ND/caktbJrIywjdUqfzlg==
X-Received: by 2002:a63:7708:: with SMTP id s8mr26647721pgc.265.1618226526669;
        Mon, 12 Apr 2021 04:22:06 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.253])
        by smtp.gmail.com with ESMTPSA id e14sm11488811pga.14.2021.04.12.04.22.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Apr 2021 04:22:05 -0700 (PDT)
Date: Mon, 12 Apr 2021 16:51:57 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: gregkh@linuxfoundation.org
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: [PATCH v4 2/3] staging: rtl8192e: remove unnecessary ftrace-like
 logging
Message-ID: <460ba9cdd256bf1064c4e3a694caa046171cb60e.1618224838.git.mitaliborkar810@gmail.com>
References: <cover.1618224838.git.mitaliborkar810@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1618224838.git.mitaliborkar810@gmail.com>

Removed unncessary ftrace-like logging by simply deleting that statement
as we have other modes of logging like ftrace.
Reported by checkpatch.

Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
---
 
Changes from v3:- No changes.
Changes from v2:- No changes.
Changes from v1:- No changes.

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


