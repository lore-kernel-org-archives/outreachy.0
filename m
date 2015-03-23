X-GM-THRID: 9490543935488
X-Received: by 10.152.27.134 with SMTP id t6mr15211681lag.5.1427093361070;
        Sun, 22 Mar 2015 23:49:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.42.237 with SMTP id r13ls645139lal.74.gmail; Sun, 22 Mar
 2015 23:49:20 -0700 (PDT)
X-Received: by 10.112.44.167 with SMTP id f7mr12965512lbm.9.1427093360390;
        Sun, 22 Mar 2015 23:49:20 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id na10si399398wic.0.2015.03.22.23.49.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sun, 22 Mar 2015 23:49:20 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.11,450,1422918000"; 
   d="scan'208";a="105151982"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 23 Mar 2015 07:49:19 +0100
Date: Mon, 23 Mar 2015 07:49:18 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Vatika Harlalka <vatikaharlalka@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 08/10] Staging: rtl8712: Fix incorrect
 assignment type in rtl8712_xmit.c
In-Reply-To: <68911b4fb09acb91c39291e2596ce73cc3e8e2f2.1426983594.git.vatikaharlalka@gmail.com>
Message-ID: <alpine.DEB.2.02.1503230748590.2075@localhost6.localdomain6>
References: <5f860bc9d9ff4bd82c61c4bbe7a80b88d1176847.1426983594.git.vatikaharlalka@gmail.com> <68911b4fb09acb91c39291e2596ce73cc3e8e2f2.1426983594.git.vatikaharlalka@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sun, 22 Mar 2015, Vatika Harlalka wrote:

> This patch is to fix Sparse warnings due to incorrect assignment
> type in rtl8712_xmit.c

You should explain why the change is correct, not just make the message go 
away.

julia

> Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
> ---
>  drivers/staging/rtl8712/rtl8712_xmit.c | 26 +++++++++++++-------------
>  1 file changed, 13 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/staging/rtl8712/rtl8712_xmit.c b/drivers/staging/rtl8712/rtl8712_xmit.c
> index 732e774..c0c86ef 100644
> --- a/drivers/staging/rtl8712/rtl8712_xmit.c
> +++ b/drivers/staging/rtl8712/rtl8712_xmit.c
> @@ -550,22 +550,22 @@ static void update_txdesc(struct xmit_frame *pxmitframe, uint *pmem, int sz)
>  			 * This will maybe make the handshake smooth.
>  			 */
>  			/*driver uses data rate*/
> -			ptxdesc->txdw4 = cpu_to_le32(0x80000000);
> -			ptxdesc->txdw5 = cpu_to_le32(0x001f8000);/*1M*/
> +			ptxdesc->txdw4 = 0x80000000;
> +			ptxdesc->txdw5 = 0x001f8000;/*1M*/
>  		}
>  		if (pattrib->pctrl == 1) { /* mp tx packets */
>  			struct tx_desc *ptxdesc_mp;
>  
>  			ptxdesc_mp = &txdesc_mp;
>  			/* offset 8 */
> -			ptxdesc->txdw2 = cpu_to_le32(ptxdesc_mp->txdw2);
> +			ptxdesc->txdw2 = ptxdesc_mp->txdw2;
>  			if (bmcst)
>  				ptxdesc->txdw2 |= BMC;
>  			ptxdesc->txdw2 |= BK;
>  			/* offset 16 */
> -			ptxdesc->txdw4 = cpu_to_le32(ptxdesc_mp->txdw4);
> +			ptxdesc->txdw4 = ptxdesc_mp->txdw4;
>  			/* offset 20 */
> -			ptxdesc->txdw5 = cpu_to_le32(ptxdesc_mp->txdw5);
> +			ptxdesc->txdw5 = ptxdesc_mp->txdw5;
>  			pattrib->pctrl = 0;/* reset to zero; */
>  		}
>  	} else if (pxmitframe->frame_tag == MGNT_FRAMETAG) {
> @@ -585,12 +585,12 @@ static void update_txdesc(struct xmit_frame *pxmitframe, uint *pmem, int sz)
>  		 * correct mapping between AC&Endpoint,
>  		 * the purpose is that correct mapping let the MAC releases
>  		 * the AC Queue list correctly. */
> -		ptxdesc->txdw3 = cpu_to_le32((pattrib->priority << SEQ_SHT) &
> -					      0x0fff0000);
> +		ptxdesc->txdw3 = (pattrib->priority << SEQ_SHT) &
> +					      0x0fff0000;
>  		/* offset 16 */
> -		ptxdesc->txdw4 = cpu_to_le32(0x80002040);/*gtest*/
> +		ptxdesc->txdw4 = 0x80002040;/*gtest*/
>  		/* offset 20 */
> -		ptxdesc->txdw5 = cpu_to_le32(0x001f8000);/* gtest 1M */
> +		ptxdesc->txdw5 = 0x001f8000;/* gtest 1M */
>  	} else if (pxmitframe->frame_tag == TXAGG_FRAMETAG) {
>  		/* offset 4 */
>  		qsel = 0x13;
> @@ -601,12 +601,12 @@ static void update_txdesc(struct xmit_frame *pxmitframe, uint *pmem, int sz)
>  		ptxdesc->txdw1 |= (qsel << QSEL_SHT) & 0x00001f00;
>  		/*offset 8*/
>  		/*offset 12*/
> -		ptxdesc->txdw3 = cpu_to_le32((pattrib->seqnum << SEQ_SHT) &
> -					      0x0fff0000);
> +		ptxdesc->txdw3 = (pattrib->seqnum << SEQ_SHT) &
> +					      0x0fff0000;
>  		/*offset 16*/
> -		ptxdesc->txdw4 = cpu_to_le32(0x80002040);/*gtest*/
> +		ptxdesc->txdw4 = 0x80002040;/*gtest*/
>  		/*offset 20*/
> -		ptxdesc->txdw5 = cpu_to_le32(0x001f9600);/*gtest*/
> +		ptxdesc->txdw5 = 0x001f9600;/*gtest*/
>  	}
>  }
>  
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/68911b4fb09acb91c39291e2596ce73cc3e8e2f2.1426983594.git.vatikaharlalka%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

