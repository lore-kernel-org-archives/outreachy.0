X-GM-THRID: 6388897294904721408
X-Received: by 10.46.9.81 with SMTP id 78mr2116758ljj.30.1487573084195;
        Sun, 19 Feb 2017 22:44:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.159.195 with SMTP id i186ls1037355wme.12.canary-gmail; Sun,
 19 Feb 2017 22:44:43 -0800 (PST)
X-Received: by 10.28.196.130 with SMTP id u124mr634722wmf.19.1487573083355;
        Sun, 19 Feb 2017 22:44:43 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 14si695990wmn.2.2017.02.19.22.44.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 19 Feb 2017 22:44:43 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,185,1484002800"; 
   d="scan'208";a="214016623"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 20 Feb 2017 07:44:42 +0100
Date: Mon, 20 Feb 2017 07:44:41 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Gargi Sharma <gs051095@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH v3] staging: rtl8192u: Remove ternary
 operator
In-Reply-To: <1487567108-6362-1-git-send-email-gs051095@gmail.com>
Message-ID: <alpine.DEB.2.20.1702200742300.2222@hadrien>
References: <1487567108-6362-1-git-send-email-gs051095@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 20 Feb 2017, Gargi Sharma wrote:

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
> ----
> Changes in v3:
>         - Converted ? operator to &&.
> Changes in v2:
>         - Converted ? operator to if else statements.
> ---
>  drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c b/drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c
> index c27397b..1fbee3c 100644
> --- a/drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c
> +++ b/drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c
> @@ -977,16 +977,16 @@ void HTOnAssocRsp(struct ieee80211_device *ieee)
>  	HTSetConnectBwMode(ieee, (HT_CHANNEL_WIDTH)(pPeerHTCap->ChlWidth), (HT_EXTCHNL_OFFSET)(pPeerHTInfo->ExtChlOffset));
>
>  //	if (pHTInfo->bCurBW40MHz)
> -		pHTInfo->bCurTxBW40MHz = ((pPeerHTInfo->RecommemdedTxWidth == 1)?true:false);
> +		pHTInfo->bCurTxBW40MHz = (pPeerHTInfo->RecommemdedTxWidth == 1);

This appears to be one character too long.  Since these statements are all
similar and you have a newline in the others, you could put a newline for
this one too.

>
>  	//
>  	// Update short GI/ long GI setting
>  	//
>  	// TODO:
>  	pHTInfo->bCurShortGI20MHz=
> -		((pHTInfo->bRegShortGI20MHz)?((pPeerHTCap->ShortGI20Mhz==1)?true:false):false);
> +		pHTInfo->bRegShortGI20MHz && (pPeerHTCap->ShortGI20Mhz == 1);
>  	pHTInfo->bCurShortGI40MHz=
> -		((pHTInfo->bRegShortGI40MHz)?((pPeerHTCap->ShortGI40Mhz==1)?true:false):false);
> +		pHTInfo->bRegShortGI40MHz && (pPeerHTCap->ShortGI40Mhz == 1);

It would be nice to straighten up the assignment overall and add a space
before the =.

julia

>  	//
>  	// Config TX STBC setting
> @@ -998,7 +998,7 @@ void HTOnAssocRsp(struct ieee80211_device *ieee)
>  	//
>  	// TODO:
>  	pHTInfo->bCurSuppCCK =
> -		((pHTInfo->bRegSuppCCK)?((pPeerHTCap->DssCCk==1)?true:false):false);
> +		pHTInfo->bRegSuppCCK && (pPeerHTCap->DssCCk == 1);
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1487567108-6362-1-git-send-email-gs051095%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

