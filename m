X-GM-THRID: 6394807331810443264
X-Received: by 10.46.77.69 with SMTP id a66mr328638ljb.11.1488908508377;
        Tue, 07 Mar 2017 09:41:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.76.17 with SMTP id z17ls123505lja.50.gmail; Tue, 07 Mar
 2017 09:41:47 -0800 (PST)
X-Received: by 10.46.69.7 with SMTP id s7mr306204lja.18.1488908507702;
        Tue, 07 Mar 2017 09:41:47 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id f7si380240wmg.3.2017.03.07.09.41.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 09:41:47 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,258,1486422000"; 
   d="scan'208";a="263566133"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 07 Mar 2017 18:41:47 +0100
Date: Tue, 7 Mar 2017 18:41:35 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Hartley Sweeten <HartleyS@visionengravers.com>
cc: Gargi Sharma <gs051095@gmail.com>, 
    "outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>, 
    "abbotti@mev.co.uk" <abbotti@mev.co.uk>, 
    "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] RE: [PATCH] staging: comedi: Replace ternary
 operator with min macro
In-Reply-To: <SN1PR0101MB15652DA28CB022F0A3A8ED02D02F0@SN1PR0101MB1565.prod.exchangelabs.com>
Message-ID: <alpine.DEB.2.20.1703071840580.3150@hadrien>
References: <1488906954-25933-1-git-send-email-gs051095@gmail.com> <SN1PR0101MB15652DA28CB022F0A3A8ED02D02F0@SN1PR0101MB1565.prod.exchangelabs.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 7 Mar 2017, Hartley Sweeten wrote:

> On Tuesday, March 07, 2017 10:16 AM, Gargi Sharma wrote:
> >
> > Use macro min() to get the minimum of two values for
> > brevity and readability.
> >
> > Found using Coccinelle:
> > @@ type T; T x; T y; @@
> > (
> > - x < y ? x : y
> > + min(x,y)
> > |
> > - x > y ? x : y
> > + max(x,y)
> > )
> >
> > Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> > ---
> >  drivers/staging/comedi/drivers.c | 2 +-
> > 1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/comedi/drivers.c b/drivers/staging/comedi/drivers.c
> > index a5bf2cc..6a413c7 100644
> > --- a/drivers/staging/comedi/drivers.c
> > +++ b/drivers/staging/comedi/drivers.c
> > @@ -815,7 +815,7 @@ int comedi_load_firmware(struct comedi_device *dev,
> > 		release_firmware(fw);
> >  	}
> >
> > -	return ret < 0 ? ret : 0;
> > +	return min(ret, 0);
> >  }
> >  EXPORT_SYMBOL_GPL(comedi_load_firmware);
>
> Technically this patch is correct. But, logically it might be confusing.
>
> This function either returns an error code (ret < 0) or success (0). The min() macro
> makes it look like this function returns a minimum value.

Agreed.  The ? is a bit ugly, but the min does not seem like the normal
way of returning an error code.

julia

>
> Just my two cents...
>
> Regards,
> Hartley
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/SN1PR0101MB15652DA28CB022F0A3A8ED02D02F0%40SN1PR0101MB1565.prod.exchangelabs.com.
> For more options, visit https://groups.google.com/d/optout.
>

