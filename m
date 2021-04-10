X-GM-THRID: 6949308630417014784
X-Received: by 2002:ac2:5306:: with SMTP id c6mr12734373lfh.88.1618056513691;
        Sat, 10 Apr 2021 05:08:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:5081:: with SMTP id f1ls870123lfm.2.gmail; Sat, 10 Apr
 2021 05:08:31 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxea6OfianbVREB8SG4svBbSlWP6s8MHT46Jn4vHvSKCc6a4D4NdO3V8l7qTpUjx2F3hWEm
X-Received: by 2002:a05:6512:3d18:: with SMTP id d24mr12471040lfv.204.1618056511868;
        Sat, 10 Apr 2021 05:08:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618056511; cv=none;
        d=google.com; s=arc-20160816;
        b=DnL/EW9qfp7kI9em/LjxMyt3G/JAVp80vpLV7vmyTHX9ct6GtrDe7DBvfDW2qMX/xC
         U3v7EDfSFI4ydHpGR9qn+dZcHPYDt8X67RwyOZKuzAaCjfw2ZzR18QVvK7nxOAvqmzQe
         kx1fn6/Jh6U41jMsACu7SX8OiNaWyJ70hw+Icz1evpbIl+mPAfwIHqB4xJFhZA/77svN
         n1pugmxaQbV/aHFB4b5jH6Wtgb6ONChD9Jk1cO8PyWkGH+cFyCj9NiZyomQSaF5N92Yw
         DRdcM9DzSLFv+FdtSRCU9/HBdcaCVVQmOWcNsYhuTjRTcv9vRVCONAjJHYSXe9wAsCOm
         +m6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=R4ha3si1oFjEHzUCiFKEDDFpCawhPoPCQFoJ2oviXnU=;
        b=XhAJpfw9cm3/KL9lnsxmoiDjNpJzDpmzYQ4ThAqMlfKcikPSY/X15nXJmf59rPTGXK
         ru+dM/43tSDzDOzmb6oeEfujoydfhV85FijHTSYMQoqfstKKwWYXcf/BxCIUGHqJDuVA
         d3JaWkh1CPArnumbA5wfnve56ebwMD6HalhH6tRubQMgmDb49ZJbGlATgAStr1+HRB4G
         PFCyQzk/UHJiUwEUCx9lu12xPtvSBgK22fNThhNg40bilMUVR0gLPjcIy0n0LeFygGln
         7jjAvmLkRnlVU+/Qnj2gwlX8GoSKHq4TfmA7KdPmLxQ3hP8tFwPyqFO5To9GDg+ieNk4
         ytbA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id p5si401181lfd.4.2021.04.10.05.08.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Apr 2021 05:08:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3AV9AJgaqWA7P3crQT0RgVjsMaV5rKeYIsi2QD?=
 =?us-ascii?q?101hICF9WMqeisyogbAnxQb54QxhPE0ItNicNMC7Kk/02oVy5eAqV4uKfA6jg2?=
 =?us-ascii?q?ewKZEn0I2K+VzdMgnf0sIY6qt6aah5D7TLfD1HpOL3+hOxHdpl4PTvysCVrNzT?=
 =?us-ascii?q?xXtsUg1mApsIhztRMQqVHlZ7QwNLH/MCZfmhz/BarDmtc2l/VKqGL0QCNtKum/?=
 =?us-ascii?q?T2jp78JTYJCxk7gTP+7w+A2frKVyKV2RoTSFp0rIsK+2KtqWPE2pk=3D?=
X-IronPort-AV: E=Sophos;i="5.82,210,1613430000"; 
   d="scan'208";a="378283426"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Apr 2021 14:08:30 +0200
Date: Sat, 10 Apr 2021 14:08:30 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Mitali Borkar <mitaliborkar810@gmail.com>
cc: gregkh@linuxfoundation.org, linux-staging@lists.linux.dev, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com, 
    mitali_s@me.iitr.ac.in
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8192e: replace comparison
 to NULL by bool
In-Reply-To: <YHDnWpWztxeZospi@kali>
Message-ID: <alpine.DEB.2.22.394.2104101408100.2975@hadrien>
References: <YHDnWpWztxeZospi@kali>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 10 Apr 2021, Mitali Borkar wrote:

> Fixed Comparison to NULL can be written as '!...' by replacing it with
> simpler form i.e boolean expression. This makes code more readable alternative.
> Reported by checkpatch.
>
> Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
> ---
>  drivers/staging/rtl8192e/rtl819x_TSProc.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/rtl8192e/rtl819x_TSProc.c b/drivers/staging/rtl8192e/rtl819x_TSProc.c
> index 65eac33aaa5b..476875125e87 100644
> --- a/drivers/staging/rtl8192e/rtl819x_TSProc.c
> +++ b/drivers/staging/rtl8192e/rtl819x_TSProc.c
> @@ -269,12 +269,12 @@ static void MakeTSEntry(struct ts_common_info *pTsCommonInfo, u8 *Addr,
>  {
>  	u8	count;
>
> -	if (pTsCommonInfo == NULL)
> +	if (!pTsCommonInfo)
>  		return;
>
>  	memcpy(pTsCommonInfo->Addr, Addr, 6);
>
> -	if (pTSPEC != NULL)
> +	if (pTSPEC)
>  		memcpy((u8 *)(&(pTsCommonInfo->TSpec)), (u8 *)pTSPEC,
>  		       sizeof(union tspec_body));
>
> @@ -328,7 +328,7 @@ bool GetTs(struct rtllib_device *ieee, struct ts_common_info **ppTS,
>  	}
>
>  	*ppTS = SearchAdmitTRStream(ieee, Addr, UP, TxRxSelect);
> -	if (*ppTS != NULL)
> +	if (ppTS)

You lost a * here.

julia

>  		return true;
>
>  	if (!bAddNewTs) {
> --
> 2.30.2
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/YHDnWpWztxeZospi%40kali.
>

