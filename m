X-GM-THRID: 6391852583766458368
X-Received: by 10.28.104.2 with SMTP id d2mr465880wmc.12.1488230393727;
        Mon, 27 Feb 2017 13:19:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.148.198 with SMTP id w189ls1305386wmd.25.gmail; Mon, 27 Feb
 2017 13:19:52 -0800 (PST)
X-Received: by 10.28.129.14 with SMTP id c14mr463675wmd.13.1488230392898;
        Mon, 27 Feb 2017 13:19:52 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id f7si903107wmg.3.2017.02.27.13.19.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 13:19:52 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,215,1484002800"; 
   d="scan'208";a="262317885"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 27 Feb 2017 22:19:52 +0100
Date: Mon, 27 Feb 2017 22:19:51 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: simran singhal <singhalsimran0@gmail.com>
cc: gregkh@linuxfoundation.org, lustre-devel@lists.lustre.org, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
    linux-fbdev@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 3/5] staging: rtl8712: Remove unnecessary
 else after return
In-Reply-To: <1488219268-3006-3-git-send-email-singhalsimran0@gmail.com>
Message-ID: <alpine.DEB.2.20.1702272216140.2127@hadrien>
References: <1488219268-3006-1-git-send-email-singhalsimran0@gmail.com> <1488219268-3006-3-git-send-email-singhalsimran0@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 27 Feb 2017, simran singhal wrote:

> This patch fixes the checkpatch warning that else is not generally
> useful after a break or return.
>
> This was done using Coccinelle:
> @@
> expression e2;
> statement s1;
> @@
> if(e2) { ... return ...; }
> -else
>          s1

One might be surprised that the following code was detected using the
above semantic patch, because in the code below there is no return in the
if branches.  Actually, as a special feature, when one has an if branch
that ends in return, Coccinelle will skip through any gotos and see if the
return is matched afterward.  Indeed it is a common pattern to have

if (...) {
   foo(x);
   bar(y);
   return -ENOMEM;
}

But the code can also be cut up as eg

if (...) {
   ret = -ENOMEM;
   goto out;
}
...
out:
   foo(x);
   bar(y);
   return ret;

To avoid having to write multiple patterns for these cases, Coccinelle
will just jump through the return in the second case, allowing the same
pattern to match both of them.

julia

>
> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
> ---
>  drivers/staging/rtl8712/os_intfs.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/staging/rtl8712/os_intfs.c b/drivers/staging/rtl8712/os_intfs.c
> index 8836b31..3062167 100644
> --- a/drivers/staging/rtl8712/os_intfs.c
> +++ b/drivers/staging/rtl8712/os_intfs.c
> @@ -411,8 +411,7 @@ static int netdev_open(struct net_device *pnetdev)
>  			goto netdev_open_error;
>  		if (!padapter->dvobjpriv.inirp_init)
>  			goto netdev_open_error;
> -		else
> -			padapter->dvobjpriv.inirp_init(padapter);
> +		padapter->dvobjpriv.inirp_init(padapter);
>  		r8712_set_ps_mode(padapter, padapter->registrypriv.power_mgnt,
>  				  padapter->registrypriv.smart_ps);
>  	}
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1488219268-3006-3-git-send-email-singhalsimran0%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

