X-GM-THRID: 8956373106688
X-Received: by 10.152.164.171 with SMTP id yr11mr8103403lab.4.1426682192101;
        Wed, 18 Mar 2015 05:36:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.180.138 with SMTP id do10ls51541lac.29.gmail; Wed, 18 Mar
 2015 05:36:31 -0700 (PDT)
X-Received: by 10.152.3.70 with SMTP id a6mr215764laa.0.1426682191451;
        Wed, 18 Mar 2015 05:36:31 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id ew13si143739wid.0.2015.03.18.05.36.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Wed, 18 Mar 2015 05:36:31 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.11,422,1422918000"; 
   d="scan'208";a="103830975"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 18 Mar 2015 13:36:30 +0100
Date: Wed, 18 Mar 2015 13:36:24 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Darshana Padmadas <darshanapadmadas@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 1/5] Staging: rtl8192e: Replace
 memcpy with ether_addr_copy
In-Reply-To: <9eab4a1c89f930dac0710fda702a6de414172237.1426681038.git.darshanapadmadas@gmail.com>
Message-ID: <alpine.DEB.2.10.1503181336030.2398@hadrien>
References: <07d5dca03ac0a1d777e133546e2f914e36efeb3f.1426533157.git.darshanapadmadas@gmail.com> <9eab4a1c89f930dac0710fda702a6de414172237.1426681038.git.darshanapadmadas@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

I think that both addresses have to be aligned?

julia

On Wed, 18 Mar 2015, Darshana Padmadas wrote:

> This patch fixes the following warning found by checkpatch.pl:
> Prefer ether_addr_copy() over memcpy() if the Ethernet addresses are __aligned(2
>
> Also included the header file linux/etherdevice.h where ether_addr_copy has
> been defined.
> Pahole showed that the structure for BAReq and Delba is aligned:
> struct rtllib_hdr_3addr {
>         __le16                     frame_ctl;            /*     0     2 */
>         __le16                     duration_id;          /*     2     2 */
>         u8                         addr1[6];             /*     4     6 */
>         u8                         addr2[6];             /*    10     6 */
>         u8                         addr3[6];             /*    16     6 */
>         __le16                     seq_ctl;              /*    22     2 */
>         u8                         payload[0];           /*    24     0 */
>
>         /* size: 24, cachelines: 1, members: 7 */
>         /* last cacheline: 24 bytes */
> };
>
> Signed-off-by: Darshana Padmadas <darshanapadmadas@gmail.com>
> ---
> Changes in v2:
>     - Included header file where ether_addr_copy is defined.
>     - Made the commit message more clear.
>
>  drivers/staging/rtl8192e/rtl819x_BAProc.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/rtl8192e/rtl819x_BAProc.c b/drivers/staging/rtl8192e/rtl819x_BAProc.c
> index 0415e02..4031462 100644
> --- a/drivers/staging/rtl8192e/rtl819x_BAProc.c
> +++ b/drivers/staging/rtl8192e/rtl819x_BAProc.c
> @@ -18,6 +18,7 @@
>  ******************************************************************************/
>  #include <asm/byteorder.h>
>  #include <asm/unaligned.h>
> +#include <linux/etherdevice.h>
>  #include "rtllib.h"
>  #include "rtl819x_BA.h"
>
> @@ -103,7 +104,7 @@ static struct sk_buff *rtllib_ADDBA(struct rtllib_device *ieee, u8 *Dst,
>  	BAReq = (struct rtllib_hdr_3addr *)skb_put(skb,
>  		 sizeof(struct rtllib_hdr_3addr));
>
> -	memcpy(BAReq->addr1, Dst, ETH_ALEN);
> +	ether_addr_copy(BAReq->addr1, Dst);
>  	memcpy(BAReq->addr2, ieee->dev->dev_addr, ETH_ALEN);
>
>  	memcpy(BAReq->addr3, ieee->current_network.bssid, ETH_ALEN);
> @@ -168,7 +169,7 @@ static struct sk_buff *rtllib_DELBA(struct rtllib_device *ieee, u8 *dst,
>  	Delba = (struct rtllib_hdr_3addr *) skb_put(skb,
>  		 sizeof(struct rtllib_hdr_3addr));
>
> -	memcpy(Delba->addr1, dst, ETH_ALEN);
> +	ether_addr_copy(Delba->addr1, dst);
>  	memcpy(Delba->addr2, ieee->dev->dev_addr, ETH_ALEN);
>  	memcpy(Delba->addr3, ieee->current_network.bssid, ETH_ALEN);
>  	Delba->frame_ctl = cpu_to_le16(RTLLIB_STYPE_MANAGE_ACT);
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/9eab4a1c89f930dac0710fda702a6de414172237.1426681038.git.darshanapadmadas%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

