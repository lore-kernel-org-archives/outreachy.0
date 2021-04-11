X-GM-THRID: 6949753709721026560
X-Received: by 2002:a17:902:bd41:b029:e6:933a:f3ef with SMTP id b1-20020a170902bd41b02900e6933af3efmr19987599plx.19.1618115677412;
        Sat, 10 Apr 2021 21:34:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:1315:: with SMTP id i21ls5479425pgl.8.gmail; Sat, 10 Apr
 2021 21:34:36 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJySLWIcKaIAfpfjncjsOkva3HOLrRP+cYV6ELwHG+5kLCaRP8Md33HbVwwWc3i5EzWmU0K6
X-Received: by 2002:aa7:91d1:0:b029:1fe:2a02:73b9 with SMTP id z17-20020aa791d10000b02901fe2a0273b9mr19257419pfa.2.1618115676314;
        Sat, 10 Apr 2021 21:34:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618115676; cv=none;
        d=google.com; s=arc-20160816;
        b=B/Qe+FGjh4jpRyxa/qkznB0qk6yp0eGv+KEjzf/wFHGN35voBmyp5vmFOjTy/jF0wP
         vD0GPYZgt3yvlxc0yT6d61jF79QUE6MVncgT4fbz9NHm+64nCK9qZG/YopuFI+d1wy82
         dtx+6T/Pne2krOl4WWgCKjgR+ZWltG3eynHlV6q/icmRjXIO9enJi6czFGXyADCDYgLx
         2q5TRXW+a+59xO7W6LFicH0Xe/GS9bUlfUXmoCyRhXuKeXQvdJhJ5kyDxqreWGIEeK1d
         L8QtcAxbicCYEk3oRk/WNXOUw8VlfriKoFykCJ5nuu0/l5YQ5k/y9jbXYCO4bIabgVBr
         TBxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=T2BqAHrw2lrAPveG5tNBR1zjqxaEBIbo2AlCFYFiJmQ=;
        b=EoN8IDsemxGyqyFNv4ph24Cro2y1zl3aFgNahliBMrpF98EAn8FELl5qJiutN6FWzM
         UqVFu9f3d4F/BeTTi8qmUpNof09IS6LPQNUyCGcPycr8/cGZoByHGg3ALfJdZ5d3cLwQ
         iVDWVP3o8NDRsHonMxeh2CeAewX1g76hsJdtb7QYPdTjk/G2n72vX4zmy6XCVs7zfC0P
         B2ANSBKsxdWA3Ru4sCtFvh+K4A3+CiM+iZmZs5trkNs7A+J+vAslHUxGh8CzOcvEGvUs
         sw3k2QnguPvlNt/RUKFW0We7246lDiOvHK5qrllhzWxKLjGXgZLLxGL2dkkyxrNhRFps
         vmXA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=P89JbJrF;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::536 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pg1-x536.google.com (mail-pg1-x536.google.com. [2607:f8b0:4864:20::536])
        by gmr-mx.google.com with ESMTPS id r141si522599pgr.5.2021.04.10.21.34.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 10 Apr 2021 21:34:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::536 as permitted sender) client-ip=2607:f8b0:4864:20::536;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=P89JbJrF;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::536 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x536.google.com with SMTP id q10so6833403pgj.2
        for <outreachy-kernel@googlegroups.com>; Sat, 10 Apr 2021 21:34:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=T2BqAHrw2lrAPveG5tNBR1zjqxaEBIbo2AlCFYFiJmQ=;
        b=P89JbJrFS35OLMoOnZ3PzsM4t153DPBw+PCNvnnp5YLyoT4G34xWY4CtV3DLczZKfS
         lSzFEl/8jUf6qnCub6OZIcMP91wYkydmsR6bDIjG8/NK3NPrWLqlQ1JiSI/dF2mo43pb
         UXTR1F/sf1fQxSUX96JGDgs3BNpCdfdxR02C8hlnC1XTmFVuYwudCNCzHBS8m8Rv9uPk
         v44oTiq0+KVV1cOIPneaekhGFexJR/ERlb9aY/2smG64jD/jmP2sYQQH4xPuSzYV1WpQ
         Owd4o3GRRqXQOE9Jsl3k3G2AyAJYFgYobbY8tIYz4JbC/SxWnxHownJcUb3b6vGUF6q9
         wJgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=T2BqAHrw2lrAPveG5tNBR1zjqxaEBIbo2AlCFYFiJmQ=;
        b=O3Ku+ZgRRUGaD0BAuC6Zq4N2hAw6CZbXI/CbWV1dXsHpts4/7ziHehh6Zh+5CW496m
         LfigMS9gG0eVbPlPUqjuXd8PLo3dL5zoE7BXQtKVWSR2hH1F0CGvMg6Ga9VyFmgOdJts
         2H3WMLstwh86hiKXgsf00/fjAX1DKshh2o1zfMFNs4mjsvUmjY+86XogJd44XAza2rsw
         powdfhorzaXDNXdHCUiV3piDZAicjxYLJHq+daAjrOPFt6j1kwhPWqQw+v/8vUIC55Ya
         f0+SBJvf4wH8srCrD3cA9GmOej5fRwq6W9LMLB2YnABW7qzPlTBKojHS3LF4Z2Xsd/s9
         OZQw==
X-Gm-Message-State: AOAM532N/pjhtHqxSopw8TooBaRN6GbxH9yv9t6eFV/BQEndOhQMT2/s
	kfvj6ZiD2fI9TfC8I48C8yk=
X-Received: by 2002:a63:2c8f:: with SMTP id s137mr20179759pgs.51.1618115675991;
        Sat, 10 Apr 2021 21:34:35 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.254])
        by smtp.gmail.com with ESMTPSA id s195sm6218785pfc.211.2021.04.10.21.34.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Apr 2021 21:34:35 -0700 (PDT)
Date: Sun, 11 Apr 2021 10:04:30 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: gregkh@linuxfoundation.org
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: [PATCH v2 2/3] staging: rtl8192e: remove unnecessary ftrace-like
 logging
Message-ID: <667dd268dd1387584cc28d2c63cb3b18edb4bc7f.1618110617.git.mitaliborkar810@gmail.com>
References: <cover.1618110617.git.mitaliborkar810@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1618110617.git.mitaliborkar810@gmail.com>

Removed unncessary ftrace-like logging by simply deleting that statement
as we have other modes of logging like ftrace.
Reported by checkpatch.

Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
---

Changes from v1:- No changes made.

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


