X-GM-THRID: 2570422583296
X-Received: by 10.182.142.102 with SMTP id rv6mr14016380obb.47.1424719490542;
        Mon, 23 Feb 2015 11:24:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.160.81 with SMTP id j78ls1557132ioe.80.gmail; Mon, 23 Feb
 2015 11:24:50 -0800 (PST)
X-Received: by 10.50.109.202 with SMTP id hu10mr12945393igb.4.1424719490347;
        Mon, 23 Feb 2015 11:24:50 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from mail-qa0-x231.google.com (mail-qa0-x231.google.com. [2607:f8b0:400d:c00::231])
        by gmr-mx.google.com with ESMTPS id q2si6433586qcn.2.2015.02.23.11.24.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 11:24:50 -0800 (PST)
Received-SPF: pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c00::231 as permitted sender) client-ip=2607:f8b0:400d:c00::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c00::231 as permitted sender) smtp.mail=jes.sorensen@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qa0-x231.google.com with SMTP id w8so23531655qac.8
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Feb 2015 11:24:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:message-id:date:user-agent:mime-version:to:subject:references
         :in-reply-to:content-type:content-transfer-encoding;
        bh=wQ25DpGsJf/wYxM7qaD5zjqnUoi59noPGqwRui9OGmI=;
        b=W0HG5M5SAYyFb5p8cIUjYvLnR52yDWm7VdXXJ34D1h9QptRYpbIeSMl4qS5LoHzWIz
         UUHbfdcNVrI+1KglgxsHJaOabfP80GVfps6MyDOlH64M76x0g9HmQdycMx9XQk7fu71y
         yKD7jRm/hAaCt0emXoIDPChNUx+zb9+DROaizkTdT/MArrBSzhLkAGCkinA6QWlGdAQK
         Qje7YviLvdT/DWkPAhs2YEqG2xp9Xxn23zXswyp238AhedR0rOK+VrqAluhT/GZAo4tn
         RuK3XY5zCBRsRHg0o8y3kjH1S4xWa7X7LPJrzwEIntNAJGxSLeCloRJw7rzxhAwevEHJ
         J8cg==
X-Received: by 10.140.32.5 with SMTP id g5mr27412873qgg.83.1424719490227;
        Mon, 23 Feb 2015 11:24:50 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from [10.15.49.233] (nat-pool-rdu-t.redhat.com. [66.187.233.202])
        by mx.google.com with ESMTPSA id 63sm18015417qhw.30.2015.02.23.11.24.49
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 11:24:49 -0800 (PST)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
Message-ID: <54EB7E80.4020808@gmail.com>
Date: Mon, 23 Feb 2015 14:24:48 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: =?UTF-8?B?SGF0aWNlIEVSVMOcUks=?= <haticeerturk27@gmail.com>, 
 outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8723au: core: Add space
 after '&'
References: <1424706824-22670-1-git-send-email-haticeerturk27@gmail.com>
In-Reply-To: <1424706824-22670-1-git-send-email-haticeerturk27@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

On 02/23/15 10:53, Hatice ERTÜRK wrote:
> This Error found checkpatch.pl
> 
> ERROR: need consistent spacing around '&'
> 
> Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
> ---
>  drivers/staging/rtl8723au/core/rtw_xmit.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)

Patch is good, but I would like a better commit message. Something like "
Insert missing space after '&' to improve readability.
"

Then put the checkpatch reference after this.

Cheers,
Jes




> diff --git a/drivers/staging/rtl8723au/core/rtw_xmit.c b/drivers/staging/rtl8723au/core/rtw_xmit.c
> index 7a5e6bf..2c9fe07 100644
> --- a/drivers/staging/rtl8723au/core/rtw_xmit.c
> +++ b/drivers/staging/rtl8723au/core/rtw_xmit.c
> @@ -255,7 +255,7 @@ static void update_attrib_vcs_info(struct rtw_adapter *padapter, struct xmit_fra
>  		return;
>  	}
>  
> -	if (!(psta->state &_FW_LINKED)) {
> +	if (!(psta->state & _FW_LINKED)) {
>  		DBG_8723A("%s, psta->state(0x%x) != _FW_LINKED\n", __func__, psta->state);
>  		return;
>  	}
> @@ -661,7 +661,7 @@ static int xmitframe_addmic(struct rtw_adapter *padapter,
>  		return _FAIL;
>  	}
>  
> -	if (!(stainfo->state &_FW_LINKED)) {
> +	if (!(stainfo->state & _FW_LINKED)) {
>  		DBG_8723A("%s, psta->state(0x%x) != _FW_LINKED\n",
>  			  __func__, stainfo->state);
>  		return _FAIL;
> @@ -874,7 +874,7 @@ static int rtw_make_wlanhdr(struct rtw_adapter *padapter, u8 *hdr,
>  		return _FAIL;
>  	}
>  
> -	if (!(psta->state &_FW_LINKED)) {
> +	if (!(psta->state & _FW_LINKED)) {
>  		DBG_8723A("%s, psta->state(0x%x) != _FW_LINKED\n", __func__, psta->state);
>  		return _FAIL;
>  	}
> @@ -1012,7 +1012,7 @@ s32 rtw_txframes_sta_ac_pending23a(struct rtw_adapter *padapter,
>  		DBG_8723A("%s, psta == NUL\n", __func__);
>  		return 0;
>  	}
> -	if (!(psta->state &_FW_LINKED)) {
> +	if (!(psta->state & _FW_LINKED)) {
>  		DBG_8723A("%s, psta->state(0x%x) != _FW_LINKED\n", __func__,
>  			  psta->state);
>  		return 0;
> @@ -1098,7 +1098,7 @@ int rtw_xmitframe_coalesce23a(struct rtw_adapter *padapter, struct sk_buff *skb,
>  		return _FAIL;
>  	}
>  
> -	if (!(psta->state &_FW_LINKED)) {
> +	if (!(psta->state & _FW_LINKED)) {
>  		DBG_8723A("%s, psta->state(0x%x) != _FW_LINKED\n",
>  			  __func__, psta->state);
>  		return _FAIL;
> 


