X-GM-THRID: 6390391577465847808
X-Received: by 10.25.168.20 with SMTP id r20mr3897404lfe.10.1487879744515;
        Thu, 23 Feb 2017 11:55:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.45.80 with SMTP id t77ls26192wmt.9.canary-gmail; Thu, 23
 Feb 2017 11:55:43 -0800 (PST)
X-Received: by 10.28.17.11 with SMTP id 11mr223781wmr.9.1487879743672;
        Thu, 23 Feb 2017 11:55:43 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id p185si227374wme.1.2017.02.23.11.55.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Feb 2017 11:55:43 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,198,1484002800"; 
   d="scan'208";a="214526021"
Received: from 198.67.28.109.rev.sfr.net (HELO [192.168.1.69]) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 23 Feb 2017 20:55:39 +0100
Date: Thu, 23 Feb 2017 20:55:38 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Gargi Sharma <gs051095@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8188eu: replace explicit
 NULL comparison
In-Reply-To: <1487878851-27132-1-git-send-email-gs051095@gmail.com>
Message-ID: <alpine.DEB.2.20.1702232055240.2103@hadrien>
References: <1487878851-27132-1-git-send-email-gs051095@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 24 Feb 2017, Gargi Sharma wrote:

> Replace explicit NULL comparison with ! operator to
> simplify code.
>
> Found with Coccinelle script:
> @@
> expression ptr;
> position p;
> statement s0;
> @@
>
> ptr@p =
> \(kmalloc\|devm_kzalloc\|kmalloc_array\|devm_ioremap\|usb_alloc_urb\|
> alloc_netdev\|dev_alloc_skb\)(...)
> ... when != ptr
>
> if (
> (
> + !
> ptr
> - == NULL
> )
> ) s0
>
> Signed-off-by: Gargi Sharma <gs051095@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
>  drivers/staging/rtl8188eu/os_dep/xmit_linux.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/rtl8188eu/os_dep/xmit_linux.c b/drivers/staging/rtl8188eu/os_dep/xmit_linux.c
> index e097c61..8bf8248 100644
> --- a/drivers/staging/rtl8188eu/os_dep/xmit_linux.c
> +++ b/drivers/staging/rtl8188eu/os_dep/xmit_linux.c
> @@ -72,7 +72,7 @@ int rtw_os_xmit_resource_alloc(struct adapter *padapter, struct xmit_buf *pxmitb
>
>  	for (i = 0; i < 8; i++) {
>  		pxmitbuf->pxmit_urb[i] = usb_alloc_urb(0, GFP_KERNEL);
> -		if (pxmitbuf->pxmit_urb[i] == NULL) {
> +		if (!pxmitbuf->pxmit_urb[i]) {
>  			DBG_88E("pxmitbuf->pxmit_urb[i]==NULL");
>  			return _FAIL;
>  		}
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1487878851-27132-1-git-send-email-gs051095%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

