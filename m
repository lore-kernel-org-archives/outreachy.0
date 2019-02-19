X-GM-THRID: 6659597331609944064
X-Received: by 2002:a17:906:228b:: with SMTP id p11mr3185238eja.1.1550590947167;
        Tue, 19 Feb 2019 07:42:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:358c:: with SMTP id o12ls1590545ejb.0.gmail; Tue, 19
 Feb 2019 07:42:26 -0800 (PST)
X-Google-Smtp-Source: AHgI3IbPVHnpGfpQklFL05woaCpSaO6YrHwDt/bzu+OJW32VTzmkAjPnrZoNJYR8Y1+anzr4NFEd
X-Received: by 2002:a17:906:1589:: with SMTP id k9mr2043310ejd.5.1550590946375;
        Tue, 19 Feb 2019 07:42:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550590946; cv=none;
        d=google.com; s=arc-20160816;
        b=hJa1lJcRT06+7wK0/iHJEitDUgml5TSBDPqoI5s366qVUEvMfiJ+BngA8x4NoYLGnh
         pkbQSnkYL0NzatJEopHO1Ki+a76DsAKGb7rkRGpdX7Y5upPugpKuyeANAW0SVJnGi0aK
         4k42Ui4TrABvKWfFK358Sqm6STynG7m/cLSXA+x2rJke1jFlL5ev5sGwPx0NOlZlTi01
         pH99TqeOwkkCyFutaOlaapuCFMvfXk1cG1B/DQL2UDBhpJ4NOZk29HYWTpgp4QE+aUmn
         rTf5utUZCrGk6EmCqktE0PwzYPOjFs2u4c8kirM0IPO0KZ6TaRHBu03f+Z+8dECApiYd
         akCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=LyYt+9fPOwVnditQoylxcvBRkMccx0DRXufjNbnqfRo=;
        b=S0j9lP1xhYCLe4Y64yrUBxjb3pJtVmKl8U7ZFMme+fABiCd+Ra8bIxYTPmTj88iOPp
         45kj7crgzHFG+SLtAYlBaeW5jzn1SAl3GjG+SNzy+51wB8kjkHNI9M/Iom1/Xt6TPTko
         jaOeBp8WrDNHV7oAzeyhVboboIXbRRymj5whUJ1ePg4SUIqKRb5Bj3UgfFU87l38BVUX
         kOfM9Pe96qScYRiLfqLsHI06XFfYkJ0EjG0tpIV77Q3eASxze6+RtguESGfpVwpBJikL
         lHZgcwCv5aZIeOmKxrcJBScCjZXgsxj2GIXGsq6oAHe/n1ptFIMfimmgfuxh6byfVSSc
         bRZg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id i17si662731edg.2.2019.02.19.07.42.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Feb 2019 07:42:26 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,388,1544482800"; 
   d="scan'208";a="370050462"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Feb 2019 16:42:25 +0100
Date: Tue, 19 Feb 2019 16:42:23 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Matthias Brugger <matthias.bgg@gmail.com>
cc: Bhanusree Pola <bhanusreemahesh@gmail.com>, 
    outreachy-kernel@googlegroups.com, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] Re: [Outreachy Kernel][PATCH]staging:mt7621-mmc:
 Prefer using BIT macro
In-Reply-To: <3d66e3f3-74d3-2da7-57cb-8b04427ae680@gmail.com>
Message-ID: <alpine.DEB.2.20.1902191641050.3588@hadrien>
References: <20190219063848.GA2994@bhanusree-MacBookAir> <3d66e3f3-74d3-2da7-57cb-8b04427ae680@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 19 Feb 2019, Matthias Brugger wrote:

>
>
> On 19/02/2019 07:38, Bhanusree Pola wrote:
> > Use BIT(x) instead of (1<<x), reported by checkpatch.pl.
> >
> > Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
> > ---
> >  drivers/staging/mt7621-mmc/mt6575_sd.h | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/mt7621-mmc/mt6575_sd.h b/drivers/staging/mt7621-mmc/mt6575_sd.h
> > index 4e287c140acb..038a484a9476 100644
> > --- a/drivers/staging/mt7621-mmc/mt6575_sd.h
> > +++ b/drivers/staging/mt7621-mmc/mt6575_sd.h
> > @@ -363,7 +363,7 @@ enum {
> >  #define MSDC_CKGEN_MSDC_DLY_SEL   (0x1F << 10)
> >  #define MSDC_INT_DAT_LATCH_CK_SEL  (0x7 << 7)
> >  #define MSDC_CKGEN_MSDC_CK_SEL     (0x1 << 6)
> > -#define CARD_READY_FOR_DATA             (1 << 8)
> > +#define CARD_READY_FOR_DATA		BIT(8)
>
> To be honest, I'm not sure if this is the right thing to do here, given that all
> other defines use the shift operator.
>
> Apart from that git grep tells me that CARD_READY_FOR_DATA is not used in the
> driver. Maybe that would be a better first patch: check if the defines are used
> in the driver and delete all these that are not used :)

I think that Greg has expressed the desire to keep them in the past, but
perhaps that was only for names that fit into a series, eg 1 << 0, 1 << 1,
1 << 2, etc.  This one seems different from the ones defined nearby it at
least.

julia

>
> Regards,
> Matthias
>
> >  #define CARD_CURRENT_STATE(x)           ((x & 0x00001E00) >> 9)
> >
> >  /*--------------------------------------------------------------------------*/
> >
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/3d66e3f3-74d3-2da7-57cb-8b04427ae680%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

