X-GM-THRID: 6950478192224239616
X-Received: by 2002:a9d:3424:: with SMTP id v33mr16841618otb.137.1618284348152;
        Mon, 12 Apr 2021 20:25:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:65cf:: with SMTP id z15ls4532590oth.10.gmail; Mon, 12
 Apr 2021 20:25:47 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxlllIiy8qKA90ChSiTnz0DnbFsaVf07i6PvS3kumEz0Qh7GLv1OgEN1ydXcRssZUVDnHz0
X-Received: by 2002:a05:6830:1d88:: with SMTP id y8mr11165684oti.147.1618284347492;
        Mon, 12 Apr 2021 20:25:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618284347; cv=none;
        d=google.com; s=arc-20160816;
        b=pzEBVZNE51Sczn5dfqlE0X5+cb9mmUjhKNhtecDLyWy0VFk7XCfaSJTPoZcVjOK2KT
         RetDkzNTMns0BO5FhcA4xPMNidmBvsFKwiod8KonWU88vGlCX0X0B3rLKVOz5twsDqYl
         IOl78KjrcXxDknEQIQZmqssRhGK8i1TDwDUhVO3RkNCOJPt6xhIKNTv6giMXxT1XJT+m
         FWwN6Hxw8i/m2mS/ZReizjCyCNdA+rxEmUVwwjuAXRgEyKlQJxBoIrnASFM+b0jlkCij
         ob4WkwF0BdlOodfxFwZxJFO9i00/Os+S1z6pAsDwxWTm+k0S6vIEgVPnsUc7tKs2h2LZ
         0f/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=dSZfSUphe0NnbZB4k0O50WfWli08mKIdprthWm9Rpno=;
        b=KRPjBW+87iT5tBjB+PXPoD/VaaJ8K6wlrdgJdqEAk2g+1hX44opsHV1G7ItSxD0i/r
         7j4rHoN4b9J09kJq3Rg1wYLM8FimRlmbIaA+Dp6J9qFaSzlfuaTCKuNjHdKuw2g2BcR9
         4zwt8DS8dLtfUml3j5s8LrxbL9PP5ItrsSqYFLerSqCaAXvXFZd2zj1f4JvwArYAF/hM
         TGhQe0ZgRV22eXJjeQQdMfIOJXQPJtmjCLdNCOIn8b+fPRIfop59qO7dgus6plcsKrOo
         j3fyPkcRh+Ug8UfmTrZ9yO9RgvNBnKHYRSmx/hT8OfLlBn+u+MdQzXCe2kAQHFGkCuh2
         rs+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Q2zyqbhk;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::630 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com. [2607:f8b0:4864:20::630])
        by gmr-mx.google.com with ESMTPS id a12si973133oid.0.2021.04.12.20.25.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Apr 2021 20:25:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::630 as permitted sender) client-ip=2607:f8b0:4864:20::630;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Q2zyqbhk;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::630 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x630.google.com with SMTP id 20so3503448pll.7
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Apr 2021 20:25:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=dSZfSUphe0NnbZB4k0O50WfWli08mKIdprthWm9Rpno=;
        b=Q2zyqbhkJBE+68u2PKiL6DXL1fRUnCaElQ5huclQL9s5/ARpDjGe+BQ+/6Fwu6SJoB
         lhhqE++b+6bpKJBmIxMtXPtOeuYPrwxliwSyyhXxyVzMV5QMo4/pQnP+sbYWtMNCwzDB
         SaO3oIjJAr60Q6hHixI6zO30B/buCvH6clz1gwhuzujMC6zK1nYe8qCdDKTOK2Uo6tO0
         aLAWxN4au9GG2KGT9XT2uhSnpezXZJypo9G279gHbm/fPLZZi6uBZDj5eGqndlErlah+
         GXKswWWEDlemT8ZkZF1RlNWxogeMEZ4KFjNDsKxxvEDVCs/+Bdw+tz1eYQAx2GtPZKYR
         L8yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=dSZfSUphe0NnbZB4k0O50WfWli08mKIdprthWm9Rpno=;
        b=F2h/FEMz9WT3bjVKLrFPmXaWWgbklL4xVIVehGXjEEKu0wwMdL41beDFrkM48EzvMS
         TRVi47pI2ItnY9oEYriX4UMyEEK82pyiakKhi56IFGQZlE2k6SHF6978XcQkeggCKniw
         2vy+MI0BLfg7DPjDX7UiwMiDdcjWs78uQ8BqQbFL35GPrkAU+6j7JKYCd1OiofsXQeYV
         C8fek5sUnWbn05hFpoITTonoCX4bS905N4T6hLvjaXbGrMwM1h/w32K+AmvXZQKYGTQy
         WL+tzaF8p0ygrs8W4LXCO9mv/MKIKkSEBb2WEyOCYx304vNCo1zVKj5N3XPqbX409eKe
         UoYw==
X-Gm-Message-State: AOAM530u4L3CQINHelSIkjHkWpM8r+FVUvcefkaHITJgjiTkw5gRckkT
	33kEU3nPS22yzFzWwTiotco=
X-Received: by 2002:a17:902:d306:b029:ea:bb6c:3c99 with SMTP id b6-20020a170902d306b02900eabb6c3c99mr15772422plc.9.1618284346794;
        Mon, 12 Apr 2021 20:25:46 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.254])
        by smtp.gmail.com with ESMTPSA id k13sm10334636pfc.50.2021.04.12.20.25.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Apr 2021 20:25:46 -0700 (PDT)
Date: Tue, 13 Apr 2021 08:55:41 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: gregkh@linuxfoundation.org
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: [PATCH v5 2/3] staging: rtl8192e: remove unnecessary ftrace-like
 logging
Message-ID: <460ba9cdd256bf1064c4e3a694caa046171cb60e.1618283232.git.mitaliborkar810@gmail.com>
References: <cover.1618283232.git.mitaliborkar810@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1618283232.git.mitaliborkar810@gmail.com>

Removed unncessary ftrace-like logging by simply deleting that statement
as we have other modes of logging like ftrace.
Reported by checkpatch.

Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
---
 
Changes from v4:- No changes.
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


