X-GM-THRID: 6387642607582838784
X-Received: by 10.25.168.20 with SMTP id r20mr155980lfe.10.1487239134778;
        Thu, 16 Feb 2017 01:58:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.215.82 with SMTP id o79ls209051wmg.12.gmail; Thu, 16 Feb
 2017 01:58:53 -0800 (PST)
X-Received: by 10.223.135.118 with SMTP id 51mr67150wrz.13.1487239133714;
        Thu, 16 Feb 2017 01:58:53 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id d5si687325wmc.1.2017.02.16.01.58.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Feb 2017 01:58:53 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,168,1484002800"; 
   d="scan'208";a="260746375"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Feb 2017 10:58:44 +0100
Date: Thu, 16 Feb 2017 10:58:41 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Gargi Sharma <gs051095@gmail.com>
cc: outreachy-kernel@googlegroups.com, arnaud.patard@rtp-net.org, 
    gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: xgifb: add braces around if
 statement
In-Reply-To: <1487238803-24600-1-git-send-email-gs051095@gmail.com>
Message-ID: <alpine.DEB.2.20.1702161058060.3091@hadrien>
References: <1487238803-24600-1-git-send-email-gs051095@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 16 Feb 2017, Gargi Sharma wrote:

> add braces around if statment to fix the checkpatch issue, braces {}
> should be used on all arms of this statement.
>
> Signed-off-by: Gargi Sharma <gs051095@gmail.com>

Looks good.  Congratulations on sending the first patch of this round :)

Acked-by: Julia Lawall <julia.lawall@lip6.fr>


> ---
>  drivers/staging/xgifb/XGI_main_26.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/staging/xgifb/XGI_main_26.c b/drivers/staging/xgifb/XGI_main_26.c
> index 6930f7e..6d8120d 100644
> --- a/drivers/staging/xgifb/XGI_main_26.c
> +++ b/drivers/staging/xgifb/XGI_main_26.c
> @@ -178,8 +178,9 @@ static int XGIfb_mode_rate_to_ddata(struct vb_device_info *XGI_Pr,
>  		*sync |= FB_SYNC_HOR_HIGH_ACT;
>
>  	*vmode = FB_VMODE_NONINTERLACED;
> -	if (XGI330_RefIndex[RefreshRateTableIndex].Ext_InfoFlag & 0x0080)
> +	if (XGI330_RefIndex[RefreshRateTableIndex].Ext_InfoFlag & 0x0080) {
>  		*vmode = FB_VMODE_INTERLACED;
> +	}
>  	else {
>  		j = 0;
>  		while (XGI330_EModeIDTable[j].Ext_ModeID != 0xff) {
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1487238803-24600-1-git-send-email-gs051095%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

