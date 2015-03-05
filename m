X-GM-THRID: 6698286710784
X-Received: by 10.50.23.75 with SMTP id k11mr9995925igf.3.1425519528563;
        Wed, 04 Mar 2015 17:38:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.56.110 with SMTP id z14ls404244obp.34.gmail; Wed, 04 Mar
 2015 17:38:48 -0800 (PST)
X-Received: by 10.182.248.227 with SMTP id yp3mr8316497obc.22.1425519528363;
        Wed, 04 Mar 2015 17:38:48 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from mail-qg0-x229.google.com (mail-qg0-x229.google.com. [2607:f8b0:400d:c04::229])
        by gmr-mx.google.com with ESMTPS id kt5si955305qcb.3.2015.03.04.17.38.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Mar 2015 17:38:48 -0800 (PST)
Received-SPF: pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c04::229 as permitted sender) client-ip=2607:f8b0:400d:c04::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c04::229 as permitted sender) smtp.mail=jes.sorensen@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x229.google.com with SMTP id q107so2960572qgd.6
        for <outreachy-kernel@googlegroups.com>; Wed, 04 Mar 2015 17:38:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:message-id:date:user-agent:mime-version:to:subject:references
         :in-reply-to:content-type:content-transfer-encoding;
        bh=JMym9w3YOSLRHbxyjJaWm8Dq52O0N/WFT5EGGlwZL9U=;
        b=WVeCXCxDIlDH93ov0USDiid92M/zKrkjdLfYrNrcRIB+UpIjE34n24czhUniXOdVdf
         DJxt5Tg1CB7nZrWN8WQTBAXevBgvpmnNmJw5Qve3c88lC9BEeBBHoisrkyzmOQIa3Aau
         QOdJhDcx1HN5gHBAtxVN3JHxyneiIwBvOU3H3qGUHVRpyJZ6tiyOKiemMHh/8crrE2X3
         +VnIvh0QhOgBpf+ApHSRH7/F0tu2qFVrUdgdWAezKOnveODqrm1MpqWcmsDsUvN7vEfn
         HUnyAc2N4C5T78Q8d0jOXNska+Famev/8RUBLOLmgRyJx46dJUysu/i7UDjZTT31gJeI
         wraQ==
X-Received: by 10.140.28.36 with SMTP id 33mr9424644qgy.6.1425519528286;
        Wed, 04 Mar 2015 17:38:48 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from [192.168.99.32] (pool-72-68-159-94.nycmny.fios.verizon.net. [72.68.159.94])
        by mx.google.com with ESMTPSA id p97sm2019830qkh.10.2015.03.04.17.38.47
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Mar 2015 17:38:47 -0800 (PST)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
Message-ID: <54F7B3A7.2010402@gmail.com>
Date: Wed, 04 Mar 2015 20:38:47 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>, 
 outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: Replace TRUE with
 true
References: <1425513106-22425-1-git-send-email-ksenija.stanojevic@gmail.com>
In-Reply-To: <1425513106-22425-1-git-send-email-ksenija.stanojevic@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On 03/04/15 18:51, Ksenija Stanojevic wrote:
> This patch replaces TRUE by true, since Linux kernel has already a
> boolean type, bool, defined in linux/stddef.h
> 
> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
> ---
>  drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)

Getting rid of their ugly TRUE is a good thing - however it would be
good to do the entire driver in one patch, and also get rid of the
#define of TRUE at the same time.

Cheers,
Jes


> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
> index 96ab304..9f68c65 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
> @@ -553,16 +553,16 @@ static void ieee80211_txrate_selectmode(struct ieee80211_device *ieee,
>  #ifdef TO_DO_LIST
>  	if(!IsDataFrame(pFrame))
>  	{
> -		pTcb->bTxDisableRateFallBack = TRUE;
> -		pTcb->bTxUseDriverAssingedRate = TRUE;
> +		pTcb->bTxDisableRateFallBack = true;
> +		pTcb->bTxUseDriverAssingedRate = true;
>  		pTcb->RATRIndex = 7;
>  		return;
>  	}
>  
>  	if(pMgntInfo->ForcedDataRate!= 0)
>  	{
> -		pTcb->bTxDisableRateFallBack = TRUE;
> -		pTcb->bTxUseDriverAssingedRate = TRUE;
> +		pTcb->bTxDisableRateFallBack = true;
> +		pTcb->bTxUseDriverAssingedRate = true;
>  		return;
>  	}
>  #endif
> 


