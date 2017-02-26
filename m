X-GM-THRID: 6391533776278650880
X-Received: by 10.46.20.27 with SMTP id u27mr1601576ljd.4.1488145321281;
        Sun, 26 Feb 2017 13:42:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.131.199 with SMTP id f190ls906665wmd.19.canary-gmail; Sun,
 26 Feb 2017 13:42:00 -0800 (PST)
X-Received: by 10.28.18.2 with SMTP id 2mr320126wms.7.1488145320332;
        Sun, 26 Feb 2017 13:42:00 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 14si691661wmn.2.2017.02.26.13.42.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Feb 2017 13:42:00 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,210,1484002800"; 
   d="scan'208";a="214778515"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 26 Feb 2017 22:41:59 +0100
Date: Sun, 26 Feb 2017 22:41:58 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging:rtl8188eu Add spaces around
 binary operator
In-Reply-To: <20170226213519.GA5074@fireworks>
Message-ID: <alpine.DEB.2.20.1702262241130.2056@hadrien>
References: <20170226213519.GA5074@fireworks>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 26 Feb 2017, Georgiana Rodica Chelu wrote:

> Spaces around binary operator '&' are needed in order to
> increase the readability of the code.

To put the commit message in the imperative, you could say "Add spaces
around ... in order to ..."

> Issue found with checkpatch.pl.
>
> Signed-off-by: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
>  drivers/staging/rtl8188eu/core/rtw_xmit.c | 24 ++++++++++++------------
>  1 file changed, 12 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/staging/rtl8188eu/core/rtw_xmit.c b/drivers/staging/rtl8188eu/core/rtw_xmit.c
> index 630fdc3..1dcb4eb 100644
> --- a/drivers/staging/rtl8188eu/core/rtw_xmit.c
> +++ b/drivers/staging/rtl8188eu/core/rtw_xmit.c
> @@ -1763,20 +1763,20 @@ int xmitframe_enqueue_for_sleeping_sta(struct adapter *padapter, struct xmit_fra
>  			switch (pattrib->priority) {
>  			case 1:
>  			case 2:
> -				wmmps_ac = psta->uapsd_bk&BIT(0);
> +				wmmps_ac = psta->uapsd_bk & BIT(0);
>  				break;
>  			case 4:
>  			case 5:
> -				wmmps_ac = psta->uapsd_vi&BIT(0);
> +				wmmps_ac = psta->uapsd_vi & BIT(0);
>  				break;
>  			case 6:
>  			case 7:
> -				wmmps_ac = psta->uapsd_vo&BIT(0);
> +				wmmps_ac = psta->uapsd_vo & BIT(0);
>  				break;
>  			case 0:
>  			case 3:
>  			default:
> -				wmmps_ac = psta->uapsd_be&BIT(0);
> +				wmmps_ac = psta->uapsd_be & BIT(0);
>  				break;
>  			}
>
> @@ -1890,20 +1890,20 @@ void wakeup_sta_to_xmit(struct adapter *padapter, struct sta_info *psta)
>  		switch (pxmitframe->attrib.priority) {
>  		case 1:
>  		case 2:
> -			wmmps_ac = psta->uapsd_bk&BIT(1);
> +			wmmps_ac = psta->uapsd_bk & BIT(1);
>  			break;
>  		case 4:
>  		case 5:
> -			wmmps_ac = psta->uapsd_vi&BIT(1);
> +			wmmps_ac = psta->uapsd_vi & BIT(1);
>  			break;
>  		case 6:
>  		case 7:
> -			wmmps_ac = psta->uapsd_vo&BIT(1);
> +			wmmps_ac = psta->uapsd_vo & BIT(1);
>  			break;
>  		case 0:
>  		case 3:
>  		default:
> -			wmmps_ac = psta->uapsd_be&BIT(1);
> +			wmmps_ac = psta->uapsd_be & BIT(1);
>  			break;
>  		}
>
> @@ -2016,20 +2016,20 @@ void xmit_delivery_enabled_frames(struct adapter *padapter, struct sta_info *pst
>  		switch (pxmitframe->attrib.priority) {
>  		case 1:
>  		case 2:
> -			wmmps_ac = psta->uapsd_bk&BIT(1);
> +			wmmps_ac = psta->uapsd_bk & BIT(1);
>  			break;
>  		case 4:
>  		case 5:
> -			wmmps_ac = psta->uapsd_vi&BIT(1);
> +			wmmps_ac = psta->uapsd_vi & BIT(1);
>  			break;
>  		case 6:
>  		case 7:
> -			wmmps_ac = psta->uapsd_vo&BIT(1);
> +			wmmps_ac = psta->uapsd_vo & BIT(1);
>  			break;
>  		case 0:
>  		case 3:
>  		default:
> -			wmmps_ac = psta->uapsd_be&BIT(1);
> +			wmmps_ac = psta->uapsd_be & BIT(1);
>  			break;
>  		}
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170226213519.GA5074%40fireworks.
> For more options, visit https://groups.google.com/d/optout.
>

