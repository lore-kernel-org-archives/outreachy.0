X-GM-THRID: 6335483864335515648
X-Received: by 10.194.6.228 with SMTP id e4mr1981684wja.13.1475095708996;
        Wed, 28 Sep 2016 13:48:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.9.67 with SMTP id 64ls168201ljj.50.gmail; Wed, 28 Sep 2016
 13:48:28 -0700 (PDT)
X-Received: by 10.46.33.77 with SMTP id h74mr2006712ljh.24.1475095708505;
        Wed, 28 Sep 2016 13:48:28 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 82si818749wmg.3.2016.09.28.13.48.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Sep 2016 13:48:28 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,411,1470693600"; 
   d="scan'208";a="194989992"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 28 Sep 2016 22:48:27 +0200
Date: Wed, 28 Sep 2016 22:48:27 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8188eu: core: rtw_xmit:
 Move constant of the right side
In-Reply-To: <20160928203302.GA19044@fireworks>
Message-ID: <alpine.DEB.2.10.1609282247380.3211@hadrien>
References: <20160928203302.GA19044@fireworks>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Wed, 28 Sep 2016, Georgiana Rodica Chelu wrote:

> Constants should be on the right side of comparisons.
>
> Issue found by checkpatch.pl script.
>
> Signed-off-by: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

I wonder if there is some more meaningful way to describe 0x888e.

julia

> ---
>  drivers/staging/rtl8188eu/core/rtw_xmit.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/rtl8188eu/core/rtw_xmit.c b/drivers/staging/rtl8188eu/core/rtw_xmit.c
> index 1d2817b..1392899 100644
> --- a/drivers/staging/rtl8188eu/core/rtw_xmit.c
> +++ b/drivers/staging/rtl8188eu/core/rtw_xmit.c
> @@ -451,14 +451,14 @@ static s32 update_attrib(struct adapter *padapter, struct sk_buff *pkt, struct p
>
>  	pattrib->pktlen = pktfile.pkt_len;
>
> -	if (ETH_P_IP == pattrib->ether_type) {
> +	if (pattrib->ether_type == ETH_P_IP) {
>  		/*  The following is for DHCP and ARP packet, we use cck1M to tx these packets and let LPS awake some time */
>  		/*  to prevent DHCP protocol fail */
>  		u8 tmp[24];
>  		_rtw_pktfile_read(&pktfile, &tmp[0], 24);
>  		pattrib->dhcp_pkt = 0;
>  		if (pktfile.pkt_len > 282) {/* MINIMUM_DHCP_PACKET_SIZE) { */
> -			if (ETH_P_IP == pattrib->ether_type) {/*  IP header */
> +			if (pattrib->ether_type == ETH_P_IP) {/*  IP header */
>  				if (((tmp[21] == 68) && (tmp[23] == 67)) ||
>  				    ((tmp[21] == 67) && (tmp[23] == 68))) {
>  					/*  68 : UDP BOOTP client */
> @@ -469,7 +469,7 @@ static s32 update_attrib(struct adapter *padapter, struct sk_buff *pkt, struct p
>  				}
>  			}
>  		}
> -	} else if (0x888e == pattrib->ether_type) {
> +	} else if (pattrib->ether_type == 0x888e) {
>  		DBG_88E_LEVEL(_drv_info_, "send eapol packet\n");
>  	}
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160928203302.GA19044%40fireworks.
> For more options, visit https://groups.google.com/d/optout.
>

