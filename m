X-GM-THRID: 6330315387682422784
X-Received: by 10.28.43.129 with SMTP id r123mr155671wmr.6.1473916765361;
        Wed, 14 Sep 2016 22:19:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.236.25 with SMTP id k25ls112222wmh.13.gmail; Wed, 14 Sep
 2016 22:19:24 -0700 (PDT)
X-Received: by 10.194.46.233 with SMTP id y9mr1133351wjm.3.1473916764853;
        Wed, 14 Sep 2016 22:19:24 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id p199si71412wmd.1.2016.09.14.22.19.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 22:19:24 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,338,1470693600"; 
   d="scan'208";a="236801402"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 15 Sep 2016 07:19:24 +0200
Date: Thu, 15 Sep 2016 07:19:23 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Namrata A Shettar <namrataashettar@gmail.com>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Malcolm Priestley <tvboxspy@gmail.com>, 
    Alison Schofield <amsfield22@gmail.com>, 
    maomao xu <albert008.xu@gmail.com>, Othmar Pasteka <pasteka@kabsi.at>, 
    Parth Sane <laerdevstudios@gmail.com>, 
    Wolfram Sang <wsa-dev@sang-engineering.com>, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH 3/6] staging: vt6656: main_usb: Replace
 data type declaration with variable of same type
In-Reply-To: <CAFrQyDHhpXVeYyQGb=kwRp=4ToJw-9i6Y2KiwxVTb=21Wtxb9Q@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1609150718460.6078@hadrien>
References: <CAFrQyDHhpXVeYyQGb=kwRp=4ToJw-9i6Y2KiwxVTb=21Wtxb9Q@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-1506648911-1473916764=:6078"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1506648911-1473916764=:6078
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Thu, 15 Sep 2016, Namrata A Shettar wrote:

> This patch fixes checkpatch issue:
> -Replacing sizeof(struct vnt_usb_send_context) with sizeof(*tx_context)
> -Replacing sizeof(struct vnt_rcb) with sizeof(*priv->rcb[ii])
> The replacements are of the type they are replaced with hence size
> remains same.
>
> Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
> ---
>  drivers/staging/vt6656/main_usb.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/vt6656/main_usb.c
> b/drivers/staging/vt6656/main_usb.c
> index d79f07f..c03f023 100644
> --- a/drivers/staging/vt6656/main_usb.c
> +++ b/drivers/staging/vt6656/main_usb.c
> @@ -429,7 +429,7 @@ static bool vnt_alloc_bufs(struct vnt_private *priv)
>         int ii;
>
>         for (ii = 0; ii < priv->num_tx_context; ii++) {
> -               tx_context = kmalloc(sizeof(struct vnt_usb_send_context),
> +               tx_context = kmalloc(sizeof(*tx_context),
>                                                                 GFP_KERNEL);

The GFP_KERNEL argument should not be left way out on the right like that.
Now it could be on the sam line as the kmalloc.

julia

>                 if (!tx_context)
>                         goto free_tx;
> @@ -447,7 +447,7 @@ static bool vnt_alloc_bufs(struct vnt_private *priv)
>         }
>
>         for (ii = 0; ii < priv->num_rcb; ii++) {
> -               priv->rcb[ii] = kzalloc(sizeof(struct vnt_rcb), GFP_KERNEL);
> +               priv->rcb[ii] = kzalloc(sizeof(*priv->rcb[ii]), GFP_KERNEL);
>                 if (!priv->rcb[ii]) {
>                         dev_err(&priv->usb->dev,
>                                         "failed to allocate rcb no %d\n",
> ii);
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CAFrQyDHhpXVeYyQGb%3DkwR
> p%3D4ToJw-9i6Y2KiwxVTb%3D21Wtxb9Q%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-1506648911-1473916764=:6078--

