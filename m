X-GM-THRID: 6610740007472726016
X-Received: by 2002:a2e:48b:: with SMTP id a11-v6mr879505ljf.12.1539183749764;
        Wed, 10 Oct 2018 08:02:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:7b1b:: with SMTP id w27-v6ls232465lfc.36.gmail; Wed, 10
 Oct 2018 08:02:29 -0700 (PDT)
X-Google-Smtp-Source: ACcGV60AqsT57Da3k6x1KRLlBnCeFwHeh7SXkCj7/uK+lKuOf2kZwDW6v59q6FRmq7zgRNsoUbNL
X-Received: by 2002:a19:1a12:: with SMTP id a18-v6mr899321lfa.37.1539183749005;
        Wed, 10 Oct 2018 08:02:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1539183748; cv=none;
        d=google.com; s=arc-20160816;
        b=TczqYEJE41WYK81SsRtwpYcMrl9Zy3lq+J1vKVlKvDWFS9IZM2barxZJlf+a78/M/w
         HuoI+Ut9xQSYwjNME5svPHOpDmyUCmTua0KvsMgDLZx9IjDhm52P9LcKnd4jYEztyQfP
         EnSWirIo8tdyKj7kyoOPLnILb4SzH8nbQ6/s+flQyEmF+BeiPwb/uDKaAKaJaRMkOLiu
         h45VqweecCXg1q9Z+ql1aDmgICrVtiT1N/Nw6EgZjK9WPTqHvuUF8tuHGA+6o5ymKtwq
         4j8/CVERsDmUb4lq8+RFdmycQ0BNSxrojB1oEwHcyoTA2lEHKJt3sU6P3ASQ5tP/flBC
         JMGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=KzT+4sxgagX78SLCdBBmFHZnuXX7FWc7Rm5FhZrp+d8=;
        b=v27g+Jkfx8qda9TVyh6rmLQ4b4smyz0V7PxsfYDYbwtsZ3BvVA/Av3o3g/TllvGYnc
         2vSq8z7b7xf3qaIvEtzKZdaox80oIPGvETnSU1qRAAgmtrmbCkc+F+ghp3P+P4N5bLPU
         HolDUU5LuyhafcbK5cHDRc2KTBeogotooXHTZtcya7ElxQNmYpnRKsHY09+RybPX5e9Y
         0Usb1NIbxdC6mQ8yu564CV5DitGQaraRXh1lc/97BGhECtDhP2548u9eSPxUwAgIVAig
         FF7d/GtzjZwVl60CkTgM4h7VNomTDydS/UzoqrlnpLgitMzlsvlFKC8gJrxCjuEYL0K0
         0NvQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id m9-v6si1062504lfb.5.2018.10.10.08.02.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Oct 2018 08:02:28 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,364,1534802400"; 
   d="scan'208";a="350564754"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Oct 2018 17:02:28 +0200
Date: Wed, 10 Oct 2018 17:02:25 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Ioannis Valasakis <code@wizofe.uk>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    aditya.shankar@microchip.com, ganesh.krishna@microchip.com
Subject: Re: [Outreachy kernel] [PATCH 1/3] staging: wilc1000: replace udelay
 with usleep_range
In-Reply-To: <20181010145905.GA21890@kvasir.local>
Message-ID: <alpine.DEB.2.20.1810101701390.3396@hadrien>
References: <cover.1539182155.git.code@wizofe.uk> <6eca799b032fdd5f674f55087c926b1957e22e5c.1539182155.git.code@wizofe.uk> <alpine.DEB.2.20.1810101654100.3396@hadrien> <20181010145905.GA21890@kvasir.local>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 10 Oct 2018, Ioannis Valasakis wrote:

> On Wed, Oct 10, 2018 at 04:54:38PM +0200, Julia Lawall wrote:
> >
> >
> > On Wed, 10 Oct 2018, Ioannis Valasakis wrote:
> >
> > > Fix warning and replace a udelay inside a non-atomic context and
> > > it can be safely replace by a usleep_range(t, t + delta), where delta is
> > > 20% of t, as that is between 10 and 20 microseconds.
> > > Reported by checkpatch.
> >
> > It looks like your delta is 5%?
> >
> > julia
>
> Indeed. Thanks for the quick reply, I am going to submit a new version.

Did you see the 20% rule somewhere?  Theer was anther patch that Greg
rejected, as he considered that one would need the hardware to find the
correct range.

julia

>
> >
> > >
> > > Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
> > > ---
> > >  drivers/staging/wilc1000/wilc_wlan.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/staging/wilc1000/wilc_wlan.c b/drivers/staging/wilc1000/wilc_wlan.c
> > > index 8b184aa30d25..661c594b0a3c 100644
> > > --- a/drivers/staging/wilc1000/wilc_wlan.c
> > > +++ b/drivers/staging/wilc1000/wilc_wlan.c
> > > @@ -436,7 +436,7 @@ void chip_wakeup(struct wilc *wilc)
> > >  		} while (wilc_get_chipid(wilc, true) == 0);
> > >  	} else if ((wilc->io_type & 0x1) == HIF_SDIO) {
> > >  		wilc->hif_func->hif_write_reg(wilc, 0xfa, 1);
> > > -		udelay(200);
> > > +		usleep_range(200, 210);
> > >  		wilc->hif_func->hif_read_reg(wilc, 0xf0, &reg);
> > >  		do {
> > >  			wilc->hif_func->hif_write_reg(wilc, 0xf0,
> > > --
> > > 2.19.1
> > >
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/6eca799b032fdd5f674f55087c926b1957e22e5c.1539182155.git.code%40wizofe.uk.
> > > For more options, visit https://groups.google.com/d/optout.
> > >
>
>

