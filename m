X-GM-THRID: 6336898988213534720
X-Received: by 10.46.1.75 with SMTP id 72mr1021097ljb.10.1475424549690;
        Sun, 02 Oct 2016 09:09:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.26.129 with SMTP id a123ls999983wma.15.gmail; Sun, 02 Oct
 2016 09:09:09 -0700 (PDT)
X-Received: by 10.28.1.129 with SMTP id 123mr317813wmb.7.1475424549163;
        Sun, 02 Oct 2016 09:09:09 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id c13si870065wme.3.2016.10.02.09.09.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Oct 2016 09:09:09 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,285,1473112800"; 
   d="scan'208";a="195349255"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 02 Oct 2016 18:09:08 +0200
Date: Sun, 2 Oct 2016 18:09:07 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Anchal Jain <anchalj109@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: rtl8188eu: core: rtw_ap:
 Replace memcmp() with ether_addr_equal()
In-Reply-To: <20161002160401.GA4550@life-desktop>
Message-ID: <alpine.DEB.2.10.1610021808080.3327@hadrien>
References: <20161002160401.GA4550@life-desktop>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sun, 2 Oct 2016, Anchal Jain wrote:
> When comparing MAC addresses, use ether_addr_equal instead of memcmp to
> ETH_ALEN length.

The definition of ether_addr_equal says that this function can only be
used if some alignment constraints are met.  So you have to show that this
is the case.  Look at patches that others have sent on this issue.

julia


>
> Signed-off-by: Anchal Jain <anchalj109@gmail.com>
> ---
>  drivers/staging/rtl8188eu/core/rtw_ap.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/rtl8188eu/core/rtw_ap.c b/drivers/staging/rtl8188eu/core/rtw_ap.c
> index fbe9941..6a3dc5e 100644
> --- a/drivers/staging/rtl8188eu/core/rtw_ap.c
> +++ b/drivers/staging/rtl8188eu/core/rtw_ap.c
> @@ -1163,7 +1163,7 @@ int rtw_acl_add_sta(struct adapter *padapter, u8 *addr)
>  		paclnode = container_of(plist, struct rtw_wlan_acl_node, list);
>  		plist = plist->next;
>
> -		if (!memcmp(paclnode->addr, addr, ETH_ALEN)) {
> +		if (!ether_addr_equal(paclnode->addr, addr)) {
>  			if (paclnode->valid) {
>  				added = true;
>  				DBG_88E("%s, sta has been added\n", __func__);
> @@ -1223,7 +1223,7 @@ int rtw_acl_remove_sta(struct adapter *padapter, u8 *addr)
>  		paclnode = container_of(plist, struct rtw_wlan_acl_node, list);
>  		plist = plist->next;
>
> -		if (!memcmp(paclnode->addr, addr, ETH_ALEN)) {
> +		if (!ether_addr_equal(paclnode->addr, addr, ETH_ALEN)) {
>  			if (paclnode->valid) {
>  				paclnode->valid = false;
>
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20161002160401.GA4550%40life-desktop.
> For more options, visit https://groups.google.com/d/optout.
>

