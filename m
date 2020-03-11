X-GM-THRID: 6802933186338750464
X-Received: by 2002:aa7:dd10:: with SMTP id i16mr2776873edv.39.1583931416655;
        Wed, 11 Mar 2020 05:56:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:bb02:: with SMTP id y2ls1359770ede.1.gmail; Wed, 11 Mar
 2020 05:56:55 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsnwgfuckDFS3Z+OtYFgqBo7YwI1y03eBK0ZUCKH2vOKcxwwkTk7vHTj4iH0AZJpARmCka0
X-Received: by 2002:a05:6402:151:: with SMTP id s17mr2798641edu.141.1583931415200;
        Wed, 11 Mar 2020 05:56:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583931415; cv=none;
        d=google.com; s=arc-20160816;
        b=nXbOkYOSXIrUJGvaxrOkE5egx2KZ66i+W4556jM+SkjIOuI/zcMC65t6Xu96p0Z7eD
         Yetd/zQzX7s64k22crlnAc+wDdUF5iEKMIZc4KdZ8jwbUACuNmkWhcXFxbYH85kfzhx3
         UbGKTsQR7Du+O1Vv16mEs2h/7LdSug4KCI5V97C5hy5ytf3RIWGLd46V5VvmSWAv0XmA
         c+FmB5ux71dkIq8tbZmalJ5YHboaZUynH9ZjlQy0rwqOqI0s9EhpwMo5SrNVG0DxA+RJ
         mgjBz5nX9cHb4E/zRyJB/rIw5frQdoKid5hfXxP18lNEqDNr9u0/7WwEPbeDdQuUjPkf
         X7vQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=Mx5DpTDBYp2tjNrpRDPM8axfdkKXVRaP9QTt5NdOu/s=;
        b=eJ1lz2PUIm2nPqwV/pXOvMda3+JzMjdcfwHTHIY1060R9BxQb2fRVsy43SVmvZ4dps
         YprcNeBG/nlnvWEIkRno5s8bRTrfxCaNICWEImzyYxtFMVATeeLIdxEmrgkKYvvIdi8A
         6o7bID2Nt+qKD5k8e8nb+qzvQ8eI8q8FOXqBfk7sCNFElTqj7S8NM8oV9b+NBz1rBJvI
         uP9Z9F8NESus0QC6/7GwPD8zuyujQAQGW6QY3xhLdtijo4HIwlQNEEeyQaSYiYMR0kal
         d5aYoW1h0QmJR04xE3odyQcaw8Uek+S2bGIn988DYd+KUoXrb3Nmqkk2oC/pFDn9JZMs
         7VnQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id dc25si111142ejb.1.2020.03.11.05.56.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Mar 2020 05:56:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,540,1574118000"; 
   d="scan'208";a="439836582"
Received: from dt-lawall.paris.inria.fr ([128.93.67.65])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 11 Mar 2020 13:56:54 +0100
Date: Wed, 11 Mar 2020 13:56:54 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: julia@hadrien
To: Enrique Vargas <jevargas@seas.upenn.edu>
cc: Chas Williams <3chas3@gmail.com>, linux-iio@vger.kernel.org, 
    Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] remove unnecessary newline for
 brace
In-Reply-To: <20200311125507.GA9347@evX1>
Message-ID: <alpine.DEB.2.21.2003111355390.2999@hadrien>
References: <20200311125507.GA9347@evX1>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

The subject line should give information about what part of the kernel is
being changed.  See other patches or the tutorial for examples.

On Wed, 11 Mar 2020, Enrique Vargas wrote:

> put brace at the end of line following coding conventions
>
> Signed-off-by: Enrique Vargas <jevargas@seas.upenn.edu>
> ---
>  drivers/atm/adummy.c | 3 +--

Is there a reason why you are working on drivers/atm?  Normally for the
application period you should only do cleanups on drivers/staging.

julia


>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/atm/adummy.c b/drivers/atm/adummy.c
> index 8157925af824..6eeaa1b21f3b 100644
> --- a/drivers/atm/adummy.c
> +++ b/drivers/atm/adummy.c
> @@ -131,8 +131,7 @@ adummy_proc_read(struct atm_dev *dev, loff_t *pos, char *page)
>  	return 0;
>  }
>
> -static const struct atmdev_ops adummy_ops =
> -{
> +static const struct atmdev_ops adummy_ops = {
>  	.open =		adummy_open,
>  	.close =	adummy_close,
>  	.send =		adummy_send,
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200311125507.GA9347%40evX1.
>

