X-GM-THRID: 6388897294904721408
X-Received: by 10.25.145.73 with SMTP id y9mr219606lfj.29.1487531597327;
        Sun, 19 Feb 2017 11:13:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.130.17 with SMTP id e17ls890041wmd.10.gmail; Sun, 19 Feb
 2017 11:13:16 -0800 (PST)
X-Received: by 10.28.137.200 with SMTP id l191mr337386wmd.5.1487531596493;
        Sun, 19 Feb 2017 11:13:16 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id y19si552812wmd.0.2017.02.19.11.13.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 19 Feb 2017 11:13:16 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,182,1484002800"; 
   d="scan'208";a="261183646"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Feb 2017 20:13:15 +0100
Date: Sun, 19 Feb 2017 20:13:15 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Gargi Sharma <gs051095@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8192u: Remove ternary
 operator
In-Reply-To: <1487530938-17297-1-git-send-email-gs051095@gmail.com>
Message-ID: <alpine.DEB.2.20.1702192012320.2363@hadrien>
References: <1487530938-17297-1-git-send-email-gs051095@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 20 Feb 2017, Gargi Sharma wrote:

> Relational and logical operators evaluate to either true or false.
> Explicit conversion is not needed so remove the ternary operator.
> Done using coccinelle:
>
> @r@
> expression A,B;
> symbol true,false;
> binary operator b = {==,!=,&&,||,>=,<=,>,<};
> @@
> - (A b B) ? true : false
> + A b B
>
> Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> ---
>  drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c b/drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c
> index c27397b..8faa3d6 100644
> --- a/drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c
> +++ b/drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c
> @@ -977,16 +977,16 @@ void HTOnAssocRsp(struct ieee80211_device *ieee)
>  	HTSetConnectBwMode(ieee, (HT_CHANNEL_WIDTH)(pPeerHTCap->ChlWidth), (HT_EXTCHNL_OFFSET)(pPeerHTInfo->ExtChlOffset));
>
>  //	if (pHTInfo->bCurBW40MHz)
> -		pHTInfo->bCurTxBW40MHz = ((pPeerHTInfo->RecommemdedTxWidth == 1)?true:false);
> +		pHTInfo->bCurTxBW40MHz = (pPeerHTInfo->RecommemdedTxWidth == 1);
>
>  	//
>  	// Update short GI/ long GI setting
>  	//
>  	// TODO:
>  	pHTInfo->bCurShortGI20MHz=
> -		((pHTInfo->bRegShortGI20MHz)?((pPeerHTCap->ShortGI20Mhz==1)?true:false):false);
> +		((pHTInfo->bRegShortGI20MHz)?(pPeerHTCap->ShortGI20Mhz == 1):false);
>  	pHTInfo->bCurShortGI40MHz=
> -		((pHTInfo->bRegShortGI40MHz)?((pPeerHTCap->ShortGI40Mhz==1)?true:false):false);
> +		((pHTInfo->bRegShortGI40MHz)?(pPeerHTCap->ShortGI40Mhz == 1):false);

Maybe an if would be better in cases like this where there is still
something to test.

julia

>
>  	//
>  	// Config TX STBC setting
> @@ -998,7 +998,7 @@ void HTOnAssocRsp(struct ieee80211_device *ieee)
>  	//
>  	// TODO:
>  	pHTInfo->bCurSuppCCK =
> -		((pHTInfo->bRegSuppCCK)?((pPeerHTCap->DssCCk==1)?true:false):false);
> +		((pHTInfo->bRegSuppCCK)?(pPeerHTCap->DssCCk == 1):false);
>
>
>  	//
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1487530938-17297-1-git-send-email-gs051095%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

