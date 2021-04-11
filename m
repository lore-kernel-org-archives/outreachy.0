X-GM-THRID: 6949836539406843904
X-Received: by 2002:ac8:5448:: with SMTP id d8mr20480376qtq.392.1618134947985;
        Sun, 11 Apr 2021 02:55:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:5781:: with SMTP id v1ls5820902qta.3.gmail; Sun, 11 Apr
 2021 02:55:47 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxkoEmT2m7ZOYeI2zBSuXo4uJjivjSMu9nswNFylqK97Io1IhfXfnvuz+gJ+V7BoOWuSCGI
X-Received: by 2002:ac8:7547:: with SMTP id b7mr21849181qtr.176.1618134947077;
        Sun, 11 Apr 2021 02:55:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618134947; cv=none;
        d=google.com; s=arc-20160816;
        b=stGjAgNLZpmn5YG0PApbE8AmleaiLlMqN+5/Pjc7gxHU/pBOvuCg4jeRS3UhFfU9Hd
         I48PkcS4aNxZpqx8YHprOAOB3gX/NsIXIpKAVKPk/x3xKxyCzd4sANTlpLdK8L0M0L3z
         osgkQAPsNdOr3hRzuKpnAd8pojgNuwkj5pxZ1atZyWZDTWWWhtRaNwWYIdQ+NL1gqKM1
         +Drc71hL2fvFV0C5CrjJ5wu7qUHjSAxuY98JZrCe+IMRElIo11jFm63h8B7cOBXo79PT
         rxBd83EIqUovZ4QMnpxJgjT2GEIaaRhOj59rZ7c6iDTdrqorq+kIF+Q37Xxrkt8tVvS7
         jmxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=9+Tud+EwHobwTf+ByrLi6YGTbViJEd1nIvc/V1lBmp0=;
        b=tbXCAvEjn0HVdJkBmx+1kM0OfqITDC/E8e2B1QlrcBEXgw4B8QLxKkNbCHzMxl0Gat
         V5Daajs8AaySqtD79o832HPMOwUz5ibCf6cGzMtTF3Sd6Q+fstM7NCV7RwLLChjS1Vi2
         dCCYaAWtKujhZnqlPv0wtaksWsWkRvFDVSqFqQxWah2YupVISDDunVWovNU0TmMaMxzl
         jZ6TSF2dY3v0UWT+3OKHHxImdI54UNLJBkwBYlYhMA2aFSrTFgRP1DShwtoOxJQStTzQ
         tuPETYwEojZPtPRbbt3eRgbmsuhyei8BQCH2GErkntnsVHPMlzNKCDFaZlR8f+L1KVMC
         pGbQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pFNSOKCB;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::42d as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com. [2607:f8b0:4864:20::42d])
        by gmr-mx.google.com with ESMTPS id r24si901200qtp.1.2021.04.11.02.55.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Apr 2021 02:55:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::42d as permitted sender) client-ip=2607:f8b0:4864:20::42d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pFNSOKCB;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::42d as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x42d.google.com with SMTP id d124so7192892pfa.13
        for <outreachy-kernel@googlegroups.com>; Sun, 11 Apr 2021 02:55:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=9+Tud+EwHobwTf+ByrLi6YGTbViJEd1nIvc/V1lBmp0=;
        b=pFNSOKCBR6L8loV8oFAVLnvUBfHS1UArAffhRwOUDaoA0Iw7fq9YY2MRVVwHOy5IEB
         /B7OfrSOP9Uqw1UKBOBr+qICE0Spu+oD/23kav/Jzy93/nHi8oJ9YIaTVoCnnFvDwf+r
         wG3ErJudWtO/tbgwhT9r+DvJ7m5EQLKBLjp4FZh5AhBUbhn27baht5Z23LdHKm93Zs+e
         X/xRjJP22immfK+Za7ZWmV5MjRoopyI2e/PATVD7VHnlhY6KcnXXQZtnaLbGcfBjqQc/
         V1WDUY46W0YjvOo3JydPwk/RXBZsjHfp83JtiVFp4QufIrCaNbL2NsQXCYACStULlI+F
         rTWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=9+Tud+EwHobwTf+ByrLi6YGTbViJEd1nIvc/V1lBmp0=;
        b=Pi1k28v1HCblezP4CfEfuPIBNnXb5aaY1nVwDAnUKQWksPdSreLQ8MHDZ6GPV4a9lT
         mKgkO/TLo1i8l/inYCeL14XtQZBIE3h7BFfJ4NJUmAAqlLviaZT3S3PP70wMeGtatwiz
         lcsOvFwOUqNI0BWhjioR6teMe+xIWtfLharPKmA/L88iMKwUQmvPSwUoMl4sazhsEw5B
         nYTmp+0tcLgLlr9STnWLLFizhyUbjA6VoE8XNITfVrDB8lxdmRFnV4zlc8EB8CaeIhjc
         vg7qaCFGWjqiv1fR/Z2P1i2Fm1mgGiFjINlwU1VBd+Yq1vx0Mm/pcTElugr94Vnu8j1J
         6F5Q==
X-Gm-Message-State: AOAM533H6abEPhmxa9iETLUMUs46XsHK3MGi5RThn/VozItS7xqjOgEG
	CkBHKQ855aNObYrC+8M7KGM=
X-Received: by 2002:a63:43c2:: with SMTP id q185mr21052350pga.41.1618134946241;
        Sun, 11 Apr 2021 02:55:46 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.253])
        by smtp.gmail.com with ESMTPSA id e7sm6581072pfv.107.2021.04.11.02.55.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Apr 2021 02:55:45 -0700 (PDT)
Date: Sun, 11 Apr 2021 15:25:39 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: gregkh@linuxfoundation.org
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: [PATCH v3 2/3] staging: rtl8192e: remove unnecessary ftrace-like
 logging
Message-ID: <460ba9cdd256bf1064c4e3a694caa046171cb60e.1618133351.git.mitaliborkar810@gmail.com>
References: <cover.1618133351.git.mitaliborkar810@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1618133351.git.mitaliborkar810@gmail.com>

Removed unncessary ftrace-like logging by simply deleting that statement
as we have other modes of logging like ftrace.
Reported by checkpatch.

Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
---
 
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


