X-GM-THRID: 6388897294904721408
X-Received: by 10.46.88.70 with SMTP id x6mr1592390ljd.22.1487536176858;
        Sun, 19 Feb 2017 12:29:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.129.139 with SMTP id c133ls906234wmd.5.gmail; Sun, 19 Feb
 2017 12:29:36 -0800 (PST)
X-Received: by 10.28.148.199 with SMTP id w190mr335075wmd.19.1487536176065;
        Sun, 19 Feb 2017 12:29:36 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id v70si659015wmf.0.2017.02.19.12.29.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 19 Feb 2017 12:29:36 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,182,1484002800"; 
   d="scan'208";a="213987336"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Feb 2017 21:29:35 +0100
Date: Sun, 19 Feb 2017 21:29:34 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Gargi Sharma <gs051095@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH v2] staging: rtl8192u: Remove ternary
 operator
In-Reply-To: <1487535589-22437-1-git-send-email-gs051095@gmail.com>
Message-ID: <alpine.DEB.2.20.1702192128000.2363@hadrien>
References: <1487535589-22437-1-git-send-email-gs051095@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 20 Feb 2017, Gargi Sharma wrote:

> Relational and logical operators evaluate to either true or false.
> Lines with ternary operators were found using coccinelle script and
> conversion to if else statements was done manually to improve
> readability.
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
> ---
> Changes in v2:
>         - Converted ? operator to if else statements.
> ---
>  .../staging/rtl8192u/ieee80211/rtl819x_HTProc.c    | 24 +++++++++++++++-------
>  1 file changed, 17 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c b/drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c
> index c27397b..cc4394e 100644
> --- a/drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c
> +++ b/drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c
> @@ -977,16 +977,24 @@ void HTOnAssocRsp(struct ieee80211_device *ieee)
>  	HTSetConnectBwMode(ieee, (HT_CHANNEL_WIDTH)(pPeerHTCap->ChlWidth), (HT_EXTCHNL_OFFSET)(pPeerHTInfo->ExtChlOffset));
>
>  //	if (pHTInfo->bCurBW40MHz)
> -		pHTInfo->bCurTxBW40MHz = ((pPeerHTInfo->RecommemdedTxWidth == 1)?true:false);
> +	if (pPeerHTInfo->RecommemdedTxWidth == 1)
> +		pHTInfo->bCurTxBW40MHz = true;
> +	else
> +		pHTInfo->bCurTxBW40MHz = false;

Sorry, I wasn't suggesting tochange this one to an if.  You were already
able to completely get rid of the ?

>
>  	//
>  	// Update short GI/ long GI setting
>  	//
>  	// TODO:
> -	pHTInfo->bCurShortGI20MHz=
> -		((pHTInfo->bRegShortGI20MHz)?((pPeerHTCap->ShortGI20Mhz==1)?true:false):false);
> -	pHTInfo->bCurShortGI40MHz=
> -		((pHTInfo->bRegShortGI40MHz)?((pPeerHTCap->ShortGI40Mhz==1)?true:false):false);
> +	if (pHTInfo->bRegShortGI20MHz == 1)
> +		pHTInfo->bCurShortGI20MHz = (pPeerHTCap->ShortGI20Mhz == 1);
> +	else
> +		pHTInfo->bCurShortGI20MHz = false;
> +
> +	if (pHTInfo->bRegShortGI40MHz == 1)
> +		pHTInfo->bCurShortGI40MHz = (pPeerHTCap->ShortGI40Mhz == 1);
> +	else
> +		pHTInfo->bCurShortGI40MHz = false;

Now that the code is more readable, it seems that actually the if is not
needed, and you can use &&.  The same for the next one.

julia

>  	//
>  	// Config TX STBC setting
> @@ -997,9 +1005,11 @@ void HTOnAssocRsp(struct ieee80211_device *ieee)
>  	// Config DSSS/CCK  mode in 40MHz mode
>  	//
>  	// TODO:
> -	pHTInfo->bCurSuppCCK =
> -		((pHTInfo->bRegSuppCCK)?((pPeerHTCap->DssCCk==1)?true:false):false);
>
> +	if (pHTInfo->bRegSuppCCK == 1)
> +		pHTInfo->bCurSuppCCK = (pPeerHTCap->DssCCk == 1);
> +	else
> +		pHTInfo->bCurSuppCCK = false;
>
>  	//
>  	// Config and configure A-MSDU setting
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1487535589-22437-1-git-send-email-gs051095%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

