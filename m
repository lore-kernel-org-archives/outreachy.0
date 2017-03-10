X-GM-THRID: 6395900241087823872
X-Received: by 10.46.82.157 with SMTP id n29mr3678326lje.29.1489169353683;
        Fri, 10 Mar 2017 10:09:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.87.14 with SMTP id l14ls1116489ljb.38.gmail; Fri, 10 Mar
 2017 10:09:13 -0800 (PST)
X-Received: by 10.46.80.82 with SMTP id v18mr3446788ljd.27.1489169353143;
        Fri, 10 Mar 2017 10:09:13 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id f7si7571wmg.3.2017.03.10.10.09.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 10:09:13 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,141,1486422000"; 
   d="scan'208";a="264078432"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Mar 2017 19:09:12 +0100
Date: Fri, 10 Mar 2017 19:08:59 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
cc: Larry.Finger@lwfinger.net, florian.c.schilhabel@googlemail.com, 
    gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 4/4] staging: rtl8712: Refactor
 conditional in r871x_get_ap_info
In-Reply-To: <51a2ef5e1c0eedf9700b43a83914983a6584ed24.1489161001.git.narcisaanamaria12@gmail.com>
Message-ID: <alpine.DEB.2.20.1703101908200.3356@hadrien>
References: <cover.1489161001.git.narcisaanamaria12@gmail.com> <51a2ef5e1c0eedf9700b43a83914983a6584ed24.1489161001.git.narcisaanamaria12@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 10 Mar 2017, Narcisa Ana Maria Vasile wrote:

> Reduce indentation level in r871x_get_ap_info.
> This was done using the following Coccinelle script:

Actually, this script doesn't do anything to the code.  It just detects an
opportunity.  Otherwise,

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

>
> @disable neg_if@
> expression e,E;
> statement S;
> @@
>
> *if (e)
> S
> else { return -E; }
>
> @disable neg_if@
> expression e,E;
> statement S;
> identifier l;
> @@
>
> *if (e)
> S
> else { rc = -E; goto l; }
>
> Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
> ---
>  drivers/staging/rtl8712/rtl871x_ioctl_linux.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
> index 7ba8cf6..0b73f67 100644
> --- a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
> +++ b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
> @@ -1971,13 +1971,13 @@ static int r871x_get_ap_info(struct net_device *dev,
>  			break;
>  	}
>  	pdata->flags = 0;
> -	if (pdata->length >= 32) {
> -		if (copy_from_user(data, pdata->pointer, 32))
> -			return -EINVAL;
> -		data[32] = 0;
> -	} else {
> +	if (pdata->length < 32)
>  		return -EINVAL;
> -	}
> +
> +	if (copy_from_user(data, pdata->pointer, 32))
> +		return -EINVAL;
> +	data[32] = 0;
> +
>  	spin_lock_irqsave(&(pmlmepriv->scanned_queue.lock), irqL);
>  	phead = &queue->queue;
>  	plist = phead->next;
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/51a2ef5e1c0eedf9700b43a83914983a6584ed24.1489161001.git.narcisaanamaria12%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

