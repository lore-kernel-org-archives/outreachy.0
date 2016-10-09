X-GM-THRID: 6339162656111329280
X-Received: by 10.46.5.11 with SMTP id 11mr1315572ljf.6.1475992843113;
        Sat, 08 Oct 2016 23:00:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.168.10 with SMTP id r10ls1420168wme.20.canary; Sat, 08 Oct
 2016 23:00:42 -0700 (PDT)
X-Received: by 10.28.27.138 with SMTP id b132mr20016wmb.1.1475992842514;
        Sat, 08 Oct 2016 23:00:42 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id w79si443277wmw.0.2016.10.08.23.00.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Oct 2016 23:00:42 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,316,1473112800"; 
   d="scan'208";a="239978227"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 09 Oct 2016 08:00:41 +0200
Date: Sun, 9 Oct 2016 08:00:40 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhumika Goyal <bhumirks@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192e: Remove ternary
 operator
In-Reply-To: <1475951297-10364-1-git-send-email-bhumirks@gmail.com>
Message-ID: <alpine.DEB.2.10.1610090759420.3134@hadrien>
References: <1475951297-10364-1-git-send-email-bhumirks@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sat, 8 Oct 2016, Bhumika Goyal wrote:

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
> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
> ---
>  drivers/staging/rtl8192e/rtl819x_HTProc.c | 12 ++++--------
>  drivers/staging/rtl8192e/rtllib.h         |  2 +-
>  2 files changed, 5 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/staging/rtl8192e/rtl819x_HTProc.c b/drivers/staging/rtl8192e/rtl819x_HTProc.c
> index dd9c0c8..8cd51a9 100644
> --- a/drivers/staging/rtl8192e/rtl819x_HTProc.c
> +++ b/drivers/staging/rtl8192e/rtl819x_HTProc.c
> @@ -558,19 +558,15 @@ void HTOnAssocRsp(struct rtllib_device *ieee)
>  #endif
>  	HTSetConnectBwMode(ieee, (enum ht_channel_width)(pPeerHTCap->ChlWidth),
>  			  (enum ht_extchnl_offset)(pPeerHTInfo->ExtChlOffset));
> -	pHTInfo->bCurTxBW40MHz = ((pPeerHTInfo->RecommemdedTxWidth == 1) ?
> -				 true : false);
> +	pHTInfo->bCurTxBW40MHz = (pPeerHTInfo->RecommemdedTxWidth == 1);
>
>  	pHTInfo->bCurShortGI20MHz = ((pHTInfo->bRegShortGI20MHz) ?
> -				    ((pPeerHTCap->ShortGI20Mhz == 1) ?
> -				    true : false) : false);
> +				    (pPeerHTCap->ShortGI20Mhz == 1) : false);
>  	pHTInfo->bCurShortGI40MHz = ((pHTInfo->bRegShortGI40MHz) ?
> -				     ((pPeerHTCap->ShortGI40Mhz == 1) ?
> -				     true : false) : false);
> +				     (pPeerHTCap->ShortGI40Mhz == 1) : false);
>
>  	pHTInfo->bCurSuppCCK = ((pHTInfo->bRegSuppCCK) ?
> -			       ((pPeerHTCap->DssCCk == 1) ? true :
> -			       false) : false);
> +			       (pPeerHTCap->DssCCk == 1) : false);

Even with the simplification, these look like a mess.  Could && and || be
used here?

julia

>
>
>  	pHTInfo->bCurrent_AMSDU_Support = pHTInfo->bAMSDU_Support;
> diff --git a/drivers/staging/rtl8192e/rtllib.h b/drivers/staging/rtl8192e/rtllib.h
> index b895a53..f2c28f3 100644
> --- a/drivers/staging/rtl8192e/rtllib.h
> +++ b/drivers/staging/rtl8192e/rtllib.h
> @@ -464,7 +464,7 @@ struct ieee_param {
>  #define RTLLIB_QCTL_TID	      0x000F
>
>  #define	FC_QOS_BIT					BIT7
> -#define IsDataFrame(pdu)	(((pdu[0] & 0x0C) == 0x08) ? true : false)
> +#define IsDataFrame(pdu)	((pdu[0] & 0x0C) == 0x08)
>  #define	IsLegacyDataFrame(pdu)	(IsDataFrame(pdu) && (!(pdu[0]&FC_QOS_BIT)))
>  #define IsQoSDataFrame(pframe)			\
>  	((*(u16 *)pframe&(RTLLIB_STYPE_QOS_DATA|RTLLIB_FTYPE_DATA)) ==	\
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1475951297-10364-1-git-send-email-bhumirks%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

