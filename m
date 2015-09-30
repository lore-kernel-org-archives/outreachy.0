X-GM-THRID: 6200282727557627904
X-Received: by 10.152.120.232 with SMTP id lf8mr620308lab.1.1443624596543;
        Wed, 30 Sep 2015 07:49:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.152.199 with SMTP id a190ls47701lfe.62.gmail; Wed, 30 Sep
 2015 07:49:55 -0700 (PDT)
X-Received: by 10.152.9.65 with SMTP id x1mr619877laa.7.1443624595863;
        Wed, 30 Sep 2015 07:49:55 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id k7si30758wif.1.2015.09.30.07.49.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Sep 2015 07:49:55 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,612,1437429600"; 
   d="scan'208";a="180224907"
Received: from unknown (HELO hadrien.local) ([89.202.203.52])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 30 Sep 2015 16:49:55 +0200
Date: Wed, 30 Sep 2015 16:49:55 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: aybuke <aybuke.147@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: octeon: Use preferred kernel
 type
In-Reply-To: <1443615808-6064-1-git-send-email-aybuke.147@gmail.com>
Message-ID: <alpine.DEB.2.10.1509301647590.2526@hadrien>
References: <1443615808-6064-1-git-send-email-aybuke.147@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Wed, 30 Sep 2015, aybuke wrote:

> This patch fixes "CHECK: Prefer kernel type 'u8' over 'uint8_t'"
> checkpatch.pl issue in ethernet.c file.

Say instead what you do to carry out the fix.  Here it could be "Change
uint8_t to u8, as is preferred in kernel code.  Problem identified using
checkpatch."

> Signed-off-by: aybuke <aybuke.147@gmail.com>

The signed off needs to have your full name, ie what is in your passpport,
more or less.

julia

> ---
>  drivers/staging/octeon/ethernet.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/octeon/ethernet.c b/drivers/staging/octeon/ethernet.c
> index 7274fda..7f9518d 100644
> --- a/drivers/staging/octeon/ethernet.c
> +++ b/drivers/staging/octeon/ethernet.c
> @@ -382,7 +382,7 @@ static int cvm_oct_set_mac_filter(struct net_device *dev)
>  	    && (cvmx_helper_interface_get_mode(interface) !=
>  		CVMX_HELPER_INTERFACE_MODE_SPI)) {
>  		int i;
> -		uint8_t *ptr = dev->dev_addr;
> +		u8 *ptr = dev->dev_addr;
>  		uint64_t mac = 0;
>
>  		for (i = 0; i < 6; i++)
> --
> 2.1.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1443615808-6064-1-git-send-email-aybuke.147%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

