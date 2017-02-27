X-GM-THRID: 6388897294904721408
X-Received: by 10.25.203.151 with SMTP id b145mr233552lfg.17.1488176935282;
        Sun, 26 Feb 2017 22:28:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.47.141 with SMTP id v135ls1027934wmv.0.canary-gmail; Sun,
 26 Feb 2017 22:28:54 -0800 (PST)
X-Received: by 10.223.142.196 with SMTP id q62mr184764wrb.8.1488176934491;
        Sun, 26 Feb 2017 22:28:54 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id p185si698389wme.1.2017.02.26.22.28.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Feb 2017 22:28:54 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,212,1484002800"; 
   d="scan'208";a="262173526"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 27 Feb 2017 07:28:54 +0100
Date: Mon, 27 Feb 2017 07:28:53 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Gargi Sharma <gs051095@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH v5] staging: rtl8192u: Remove ternary
 operator
In-Reply-To: <1488173270-12445-1-git-send-email-gs051095@gmail.com>
Message-ID: <alpine.DEB.2.20.1702270728410.2187@hadrien>
References: <1488173270-12445-1-git-send-email-gs051095@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 27 Feb 2017, Gargi Sharma wrote:

> Relational and logical operators evaluate to either true or false.
> Lines with ternary operators were found using coccinelle script. In a
> few cases using logical && operator would suffice. Hence those were
> changed to improve readability.
>
> Coccinelle Script:
> @r@
> expression A,B;
> symbol true,false;
> binary operator b = {==,!=,&&,||,>=,<=,>,<};
> @@
> - (A b B) ? true : false
> + A b B
>
> Signed-off-by: Gargi Sharma <gs051095@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
> Changes in v5:
> 	- Removed if statement under comments.
> Changes in v4:
>         - Aligned operands for && and added a newline.
> Changes in v3:
>         - Converted ? operator to &&.
> Changes in v2:
>         - Converted ? operator to if else statements.
> ---
>  drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c | 15 +++++++--------
>  1 file changed, 7 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c b/drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c
> index c27397b..6072099 100644
> --- a/drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c
> +++ b/drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c
> @@ -976,17 +976,16 @@ void HTOnAssocRsp(struct ieee80211_device *ieee)
>  	//
>  	HTSetConnectBwMode(ieee, (HT_CHANNEL_WIDTH)(pPeerHTCap->ChlWidth), (HT_EXTCHNL_OFFSET)(pPeerHTInfo->ExtChlOffset));
>
> -//	if (pHTInfo->bCurBW40MHz)
> -		pHTInfo->bCurTxBW40MHz = ((pPeerHTInfo->RecommemdedTxWidth == 1)?true:false);
> +	pHTInfo->bCurTxBW40MHz = (pPeerHTInfo->RecommemdedTxWidth == 1);
>
>  	//
>  	// Update short GI/ long GI setting
>  	//
>  	// TODO:
> -	pHTInfo->bCurShortGI20MHz=
> -		((pHTInfo->bRegShortGI20MHz)?((pPeerHTCap->ShortGI20Mhz==1)?true:false):false);
> -	pHTInfo->bCurShortGI40MHz=
> -		((pHTInfo->bRegShortGI40MHz)?((pPeerHTCap->ShortGI40Mhz==1)?true:false):false);
> +	pHTInfo->bCurShortGI20MHz = pHTInfo->bRegShortGI20MHz &&
> +				    (pPeerHTCap->ShortGI20Mhz == 1);
> +	pHTInfo->bCurShortGI40MHz = pHTInfo->bRegShortGI40MHz &&
> +				   (pPeerHTCap->ShortGI40Mhz == 1);
>
>  	//
>  	// Config TX STBC setting
> @@ -997,8 +996,8 @@ void HTOnAssocRsp(struct ieee80211_device *ieee)
>  	// Config DSSS/CCK  mode in 40MHz mode
>  	//
>  	// TODO:
> -	pHTInfo->bCurSuppCCK =
> -		((pHTInfo->bRegSuppCCK)?((pPeerHTCap->DssCCk==1)?true:false):false);
> +	pHTInfo->bCurSuppCCK = pHTInfo->bRegSuppCCK &&
> +			       (pPeerHTCap->DssCCk == 1);
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1488173270-12445-1-git-send-email-gs051095%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

