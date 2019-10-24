X-GM-THRID: 6751148085003419648
X-Received: by 2002:a50:a227:: with SMTP id 36mr28991946edl.262.1571892455916;
        Wed, 23 Oct 2019 21:47:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:124d:: with SMTP id u13ls1003179eja.9.gmail; Wed, 23
 Oct 2019 21:47:34 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz4wCsa0yVsf3o90NuKu7IF2wXe5a7/fhb0YJKH1yqMB9Wd3DZSzyZ8zjlf9IZ//OsZpxRt
X-Received: by 2002:a17:906:4d16:: with SMTP id r22mr21404524eju.244.1571892454893;
        Wed, 23 Oct 2019 21:47:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571892454; cv=none;
        d=google.com; s=arc-20160816;
        b=ldUZ7s8j1u69hupDPbzXA3IuInnQZqFHESOjvXwTErwCGFlnb5ZRlwRoUH6/R+tVgw
         thVh47EsxzjeDhifJyq1sphsdTGk7+6mi62u1nsMlPzIl2pM+dtTYKONM/VZ9LfB+ipJ
         rVB2p8xtfw3bCgpXslNxitcPgfRlQ2K3cUSWuImSYcSVFPQmAHGaC/TYMvQbR7BLdBJT
         xG8ZJUlMa4nzdbjpKwGvKHIAycAfOG3Os/S3WBtYcPnU2HcjR8jAKz/SHat0mxSqyIU7
         ZoPXRXAQ7SvqEDb6a0d5o7Y9ZEfIZ22FgtXjU9M9quOOA1XIhhlO4Ak6M9SqjvyKkmeg
         umsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=xmlzOOuHtJFEtTsnXid894Di5IG4F2FX8aHbYD/TMeU=;
        b=KRrebOgHpiAvCOrnCrrrtuKp8TxQTPWmRpNkuZ49nuHkV9OIxnZkZZefYKO45SEuPn
         ucNv4B/iny92K/NitEdQkpQibzD1WLXdTbAxVgXpWHn6itJHxci63AY42BLbQ2GQum2Y
         QOAOcDoCVYs8ODNbwPlSJ+0yFHMgcwKoV4BMn5tIy5Zvihzfo8dwpfDxAr7l33HjIAWx
         uv4urFr3qRuNYVp2sUnFI89EWMNEKdf9/ZNZdeoMuLaRnfMw6P4yH3tXjEfGAIBz9cmb
         r5AMpA51KaMl4wTf9wC7oTh5kt9qa0JAEegj1be4kO4xvYnlgcGo6q5EnjAGqROHrXrU
         YJFA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id c31si11505edb.0.2019.10.23.21.47.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 23 Oct 2019 21:47:34 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.68,223,1569276000"; 
   d="scan'208";a="407873560"
Received: from ip-121.net-89-2-166.rev.numericable.fr (HELO hadrien) ([89.2.166.121])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 24 Oct 2019 06:47:34 +0200
Date: Thu, 24 Oct 2019 06:47:34 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Evan Chime <chime.evan.dri.devel@gmail.com>
cc: gregkh@linuxfoundation.org, hsweeten@visionengravers.com, 
    abbotti@mev.co.uk, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 4/7] Staging: comedi: Remove wrapper
 function declarartion
In-Reply-To: <20191023234427.GA4613@ik-ubuntu>
Message-ID: <alpine.DEB.2.21.1910240645570.2771@hadrien>
References: <20191023234427.GA4613@ik-ubuntu>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 24 Oct 2019, Evan Chime wrote:

> Remove wrapper function "comedi_buf_map_put" declaration
> as part of remove all wrappers in drivers/staging/comedi/TODO
>
> Signed-off-by: Evan Chime <chime.evan.dri.devel@gmail.com>
> ---
>  drivers/staging/comedi/comedi_internal.h | 2 --
>  1 file changed, 2 deletions(-)
>
> diff --git a/drivers/staging/comedi/comedi_internal.h b/drivers/staging/comedi/comedi_internal.h
> index df3b1af109f7..73131e625fe5 100644
> --- a/drivers/staging/comedi/comedi_internal.h
> +++ b/drivers/staging/comedi/comedi_internal.h
> @@ -23,12 +23,10 @@ struct comedi_device *comedi_alloc_board_minor(struct device *hardware_device);
>  void comedi_release_hardware_device(struct device *hardware_device);
>  int comedi_alloc_subdevice_minor(struct comedi_subdevice *s);
>  void comedi_free_subdevice_minor(struct comedi_subdevice *s);
> -

Removing this blank line is not relevant to your change.

>  int comedi_buf_alloc(struct comedi_device *dev, struct comedi_subdevice *s,
>  		     unsigned long new_size);
>  void comedi_buf_reset(struct comedi_subdevice *s);
>  bool comedi_buf_is_mmapped(struct comedi_subdevice *s);
> -int comedi_buf_map_put(struct comedi_buf_map *bm);

It looks suspicious that you are removing a prototype here and calls
afterwards.  Does the kernel compile after you apply this patch and before
you apply the remaining ones?  The kernel should compile before and after
every single patch, not before and after every series.

julia

>  int comedi_buf_map_access(struct comedi_buf_map *bm, unsigned long offset,
>  			  void *buf, int len, int write);
>  struct comedi_buf_map *comedi_buf_map_from_subdev_get(
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191023234427.GA4613%40ik-ubuntu.
>

