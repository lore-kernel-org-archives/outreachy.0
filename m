X-GM-THRID: 6751148365074923520
X-Received: by 2002:a19:895:: with SMTP id 143mr24325293lfi.158.1571892524171;
        Wed, 23 Oct 2019 21:48:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:f246:: with SMTP id d6ls424647lfk.9.gmail; Wed, 23 Oct
 2019 21:48:43 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxmREMTPtzVftzE0KalB/iMEHjJOAIFL5aDgckaP9gmhPhKjOBa9W7i5WLaDLR3CPjMU9m8
X-Received: by 2002:ac2:5182:: with SMTP id u2mr15629721lfi.143.1571892523274;
        Wed, 23 Oct 2019 21:48:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571892523; cv=none;
        d=google.com; s=arc-20160816;
        b=FTZeoYTc+HgvKoPom1xyodWCwtW07Wg/3bfZa5aMdfznFhvYFeEmlqyMTZXimI9Uci
         2XYCmMRPZygGhh7le/vPv890Uqp+doeWxGUFDOxM9xUIoqt6XEBoI4OCVT72TFXZeuHL
         /1p6yx30ewQwsR97EJHUXkA5xwVgjWQjR6K6pO9bqax8HNJ6Dixbu9u9sQjmA7/l3Rdp
         zGaqIqE8LrMUru+Cvj+FrjrAp/Mu/bwo9mFjqwfmJzD5S6JGjngY65w0kNAQowI8Iinn
         hUz0rKukQQusx6yWSfo6pKx1bDslKS4M8RLUH3w7DjZ35NuGrDyLic0S75In+7O90EWi
         BOog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=dQBfsiLRoNzmBKyle8rwz+K8P/UZxs6AzEIAMyC+bWU=;
        b=iwcSLWBSvytRB6WtbGj3bT3bNOWqDKG9eXdd7385/b5NuYqV3SGOHM7KhPGK1tFEZT
         rL0SRJH18Zek2a+/6ig7xfItypTGj69UP/sld1D2wu/iIz12jVwW2gbMVr3aNVmsGaMO
         xE4v9Bhzjebz1KlEIjzGHt0WGStyb3CcFos1M5tnqXi4OKADywTVncgyRQZohzo2h9W1
         u1f1z7MktORR0UJ5lkXbFW897WHrmQQV29kauJ9sjIQlgzeylsP18wStedDhuvq09EnP
         BLmO5eH8ZHiVeI/7LejvfL8RO0fWfKrKmAQzAUDuyPWj6o4YMgH3zhYSOVdiVjFcvOTg
         9b/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id d3si1242694lfq.1.2019.10.23.21.48.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 23 Oct 2019 21:48:43 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.68,223,1569276000"; 
   d="scan'208";a="407873626"
Received: from ip-121.net-89-2-166.rev.numericable.fr (HELO hadrien) ([89.2.166.121])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 24 Oct 2019 06:48:42 +0200
Date: Thu, 24 Oct 2019 06:48:42 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Evan Chime <chime.evan.dri.devel@gmail.com>
cc: gregkh@linuxfoundation.org, hsweeten@visionengravers.com, 
    abbotti@mev.co.uk, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/7] Staging: comedi: Remove wrapper
 function definition
In-Reply-To: <20191023234335.GA4557@ik-ubuntu>
Message-ID: <alpine.DEB.2.21.1910240648010.2771@hadrien>
References: <20191023234335.GA4557@ik-ubuntu>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 24 Oct 2019, Evan Chime wrote:

> Remove wrapper function "comedi_buf_map_get" definition as part of remove
> all wrappers in drivers/staging/comedi/TODO, and replace reference of the
> wrapper function in the file with the wrapped code
>
> Signed-off-by: Evan Chime <chime.evan.dri.devel@gmail.com>
> ---
>  drivers/staging/comedi/comedi_buf.c | 8 +-------
>  1 file changed, 1 insertion(+), 7 deletions(-)
>
> diff --git a/drivers/staging/comedi/comedi_buf.c b/drivers/staging/comedi/comedi_buf.c
> index 3ef3ddabf139..b6a9b5840afb 100644
> --- a/drivers/staging/comedi/comedi_buf.c
> +++ b/drivers/staging/comedi/comedi_buf.c
> @@ -187,12 +187,6 @@ static void __comedi_buf_alloc(struct comedi_device *dev,
>  	}
>  }
>
> -void comedi_buf_map_get(struct comedi_buf_map *bm)
> -{
> -	if (bm)
> -		kref_get(&bm->refcount);
> -}
> -

Again, removing the definition in patch 2 and a use in patch 3 doesn't
look like the right thing to do.

julia

>  int comedi_buf_map_put(struct comedi_buf_map *bm)
>  {
>  	if (bm)
> @@ -239,7 +233,7 @@ comedi_buf_map_from_subdev_get(struct comedi_subdevice *s)
>  	bm = async->buf_map;
>  	/* only want it if buffer pages allocated */
>  	if (bm && bm->n_pages)
> -		comedi_buf_map_get(bm);
> +		kref_get(&bm->refcount);
>  	else
>  		bm = NULL;
>  	spin_unlock_irqrestore(&s->spin_lock, flags);
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191023234335.GA4557%40ik-ubuntu.
>

