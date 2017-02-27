X-GM-THRID: 6391533776278650880
X-Received: by 10.46.21.91 with SMTP id 27mr2058647ljv.0.1488231455921;
        Mon, 27 Feb 2017 13:37:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.77.17 with SMTP id a17ls329519ljb.42.gmail; Mon, 27 Feb
 2017 13:37:35 -0800 (PST)
X-Received: by 10.46.83.7 with SMTP id h7mr2322594ljb.24.1488231455367;
        Mon, 27 Feb 2017 13:37:35 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id f7si906648wmg.3.2017.02.27.13.37.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 13:37:35 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,215,1484002800"; 
   d="scan'208";a="262318911"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 27 Feb 2017 22:37:34 +0100
Date: Mon, 27 Feb 2017 22:37:34 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH v2] staging:rtl8188eu Add spaces around
 binary operator
In-Reply-To: <20170227212948.GA5171@fireworks>
Message-ID: <alpine.DEB.2.20.1702272237140.2127@hadrien>
References: <20170227212948.GA5171@fireworks>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 27 Feb 2017, Georgiana Rodica Chelu wrote:

> Add spaces around binary operator '&' in order to
> increase the readability of the code.
>
> Signed-off-by: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

Thanks for the improved commit message.

> ---
> Changes in v2:
>  - rephrase the commit message to avoid passive voice
>
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170227212948.GA5171%40fireworks.
> For more options, visit https://groups.google.com/d/optout.
>

