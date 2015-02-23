X-GM-THRID: 2819880910848
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,62db0f3bf3ff7f2f
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.236.70.100 with SMTP id o64mr15032811yhd.9.1424720093689;
        Mon, 23 Feb 2015 11:34:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.97.163 with SMTP id eb3ls809923obb.82.gmail; Mon, 23 Feb
 2015 11:34:53 -0800 (PST)
X-Received: by 10.182.29.3 with SMTP id f3mr14014522obh.16.1424720093520;
        Mon, 23 Feb 2015 11:34:53 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from mail-qg0-x22a.google.com (mail-qg0-x22a.google.com. [2607:f8b0:400d:c04::22a])
        by gmr-mx.google.com with ESMTPS id ba9si6218056qcb.0.2015.02.23.11.34.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 11:34:53 -0800 (PST)
Received-SPF: pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c04::22a as permitted sender) client-ip=2607:f8b0:400d:c04::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c04::22a as permitted sender) smtp.mail=jes.sorensen@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-f42.google.com with SMTP id z107so26254201qgd.1
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Feb 2015 11:34:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:message-id:date:user-agent:mime-version:to:subject:references
         :in-reply-to:content-type:content-transfer-encoding;
        bh=KgnErYlREBRatH5oxAMF/814AAgPKYM8kxpNsvx1wmo=;
        b=BetF50SisvknQ8Db5dnQAYKa3OlEKJNe/lLCQ7+0FWL7FQucNIJAB/7hF+neMiWUuL
         SXuoBnSErFN3qR/TkDmyHDZ/wBwtPBmMC19e23jF0TtMmDYENCi1Y4AlfbbZkjaweZIV
         NYWaImVCpjlbckwZtty+oeiXwraIOoioKcb4hlN/XVoZloAAn/rso4q+aQyCEq3yqTub
         GOJKSB8AV7uRHad7rU55jh5AUDitCq8PGBe38dh/FNkg04/sZj8EXWM8TosWVgEHW94V
         AyfCIgMpYKX8KfYoSa++fvS12ViflINgTs4lmkIr5ZO0CunBBMQzYNYbOevE8jSMXkT2
         2ccA==
X-Received: by 10.140.93.199 with SMTP id d65mr6516770qge.104.1424720093419;
        Mon, 23 Feb 2015 11:34:53 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from [10.15.49.233] (nat-pool-rdu-t.redhat.com. [66.187.233.202])
        by mx.google.com with ESMTPSA id 63sm18032587qhw.30.2015.02.23.11.34.52
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 11:34:52 -0800 (PST)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
Message-ID: <54EB80DB.3050004@gmail.com>
Date: Mon, 23 Feb 2015 14:34:51 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: Vatika Harlalka <vatikaharlalka@gmail.com>, 
 outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3] Remove redundant if condition
References: <20150223114312.GA7095@gmail.com>
In-Reply-To: <20150223114312.GA7095@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On 02/23/15 06:43, Vatika Harlalka wrote:
> Remove redundant if condition as !result is always false.
> 
> Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
> ---
> Changes in v3: Removed unneeded newline after if condition to
> 		follow kernel coding conventions.
> Changes in v2: Removed {} around the outer if condition as
>                 it has single statement.
> 
>  drivers/staging/rtl8188eu/hal/phy.c | 10 ++--------
>  1 file changed, 2 insertions(+), 8 deletions(-)

The patch is good, the commit message is good, however the subject needs
to include "staging: rtl8188eu: ....". You need to repost a v4 to cover
this.

Cheers,
Jes

> diff --git a/drivers/staging/rtl8188eu/hal/phy.c b/drivers/staging/rtl8188eu/hal/phy.c
> index 3950cb3..c20881d 100644
> --- a/drivers/staging/rtl8188eu/hal/phy.c
> +++ b/drivers/staging/rtl8188eu/hal/phy.c
> @@ -359,7 +359,6 @@ void phy_sw_chnl(struct adapter *adapt, u8 channel)
>  {
>  	struct hal_data_8188e *hal_data = GET_HAL_DATA(adapt);
>  	u8 tmpchannel = hal_data->CurrentChannel;
> -	bool  result = true;
>  
>  	if (hal_data->rf_chip == RF_PSEUDO_11N)
>  		return;
> @@ -369,15 +368,10 @@ void phy_sw_chnl(struct adapter *adapt, u8 channel)
>  
>  	hal_data->CurrentChannel = channel;
>  
> -	if ((!adapt->bDriverStopped) && (!adapt->bSurpriseRemoved)) {
> +	if ((!adapt->bDriverStopped) && (!adapt->bSurpriseRemoved))
>  		phy_sw_chnl_callback(adapt, channel);
> -
> -		if (!result)
> -			hal_data->CurrentChannel = tmpchannel;
> -
> -	} else {
> +	else
>  		hal_data->CurrentChannel = tmpchannel;
> -	}
>  }
>  
>  #define ODM_TXPWRTRACK_MAX_IDX_88E  6
> 


