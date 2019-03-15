X-GM-THRID: 6668560476445605888
X-Received: by 2002:a1c:7dce:: with SMTP id y197mr192015wmc.16.1552652439109;
        Fri, 15 Mar 2019 05:20:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:9609:: with SMTP id y9ls311173wmd.0.gmail; Fri, 15 Mar
 2019 05:20:38 -0700 (PDT)
X-Google-Smtp-Source: APXvYqweO86o6EjXTiA2zioVhTeuR7cqqJKSI1Ufk7MrpIeJs9ZKJAymkypx6HyPIo7EM0K5O5F1
X-Received: by 2002:a1c:7910:: with SMTP id l16mr192728wme.8.1552652438231;
        Fri, 15 Mar 2019 05:20:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552652438; cv=none;
        d=google.com; s=arc-20160816;
        b=AsI3ung+leoPtd4/sHjFhL4WqFlRvxVsX9ZfiWwgdtCdTuLnLQske12xfe95AcduCS
         SJDkxo6ykcmR5SLnnxaHOUrlVuF7wi5I6hAmyUZyAKFEBGeKWLweoz/8JpBaGE9IX4Ko
         DRQcDZnMVNwFmDIbU5tcfI8YeoCjlemx+PwoQ4ITze++YXVZS8TTZD1J5MoBkiFwRXTi
         XHohCyHrzqYpCdVs3pHkw7RUHybscL9rezIhwSQIZd3ZrkS6AI2+iS10lYjYauXlEhRa
         FQiEYS3Uybr/ksHhbTMVH5C/RsGCtQFrdFbZAIriuWL955N2boBkEKdQZ0w8YcQZU1et
         fhyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=s+KYAK66Aw2XWdlDEx5DD4zcLOnmOY5/L9rMS9Tf+ek=;
        b=DX0bfTqwBEJMuzdSdPzRabZtk2zAtm9LleuG1a/0J26eW8ikgmfmTbgPbeZNY31a0i
         +4HCsMCE2zvOniuJrnaCi7yiV4/noclA4ZsNnsI8xjT2EGEMlaqjIzf+//pQRpYqYc1m
         XKpXX6ukW7LlQYDl/pAVPhLIxDu4zY5rDpyVZE7fH/DtlvzD7kavOMqr5WtSnlIyb2h2
         5hsyssF/iehg+5hekRB2EX5szvGL50He94ti9E85/2XIuZHirqry6d48hKscb45phh2j
         xwy/RZXRZNYHDv0YN3roL3cdMIcvwBbI5qXMDfsWtGMN5cj/XKyYYUptPRqVycrctJZa
         ntrw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id q6si29190wmf.4.2019.03.15.05.20.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Mar 2019 05:20:38 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,482,1544482800"; 
   d="scan'208";a="373584072"
Received: from amphi-dhcp48.cnam.fr ([163.173.88.48])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 15 Mar 2019 13:20:15 +0100
Date: Fri, 15 Mar 2019 13:20:12 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
cc: gregkh@linuxfoundation.org, sudipm.mukherjee@gmail.com, 
    teddy.wang@siliconmotion.com, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: sm750fb: Remove unnecessary
 function
In-Reply-To: <e999c266-1b09-0bd5-0a94-4d92d073bde7@yahoo.com>
Message-ID: <alpine.DEB.2.20.1903151318520.10610@hadrien>
References: <20190315102007.26612-1-nishka.dasgupta@yahoo.com> <alpine.DEB.2.20.1903151127460.10610@hadrien> <e999c266-1b09-0bd5-0a94-4d92d073bde7@yahoo.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 15 Mar 2019, Nishka Dasgupta wrote:

>
>
> On 15/03/19 3:58 PM, Julia Lawall wrote:
> >
> >
> > On Fri, 15 Mar 2019, 'Nishka Dasgupta' via outreachy-kernel wrote:
> >
> > > Remove function sii164ResetChip() as comment above it said "below
> > > function is not necessary".
> >
> > I think that this is not the best justification for removing something.
> > Is the function ever called in the kernel?  If not, it should go.
>
> I don't think it's ever called in the kernel. I compiled sm750fb by itself and
> then the entire kernel after removing the function.

OK, you can also check with grep.  It's not always reliable due to the
interaction with macros that can create names, but it does give some
useful information.  Compilation is not a perfect test either, because it
is sensitive to the chosen configuration.

julia

> - Nishka
>
> > julia
> >
> > >
> > > Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
> > > ---
> > >   drivers/staging/sm750fb/ddk750_sii164.c | 13 -------------
> > >   drivers/staging/sm750fb/ddk750_sii164.h |  1 -
> > >   2 files changed, 14 deletions(-)
> > >
> > > diff --git a/drivers/staging/sm750fb/ddk750_sii164.c
> > > b/drivers/staging/sm750fb/ddk750_sii164.c
> > > index c8e856c13912..8884ef927893 100644
> > > --- a/drivers/staging/sm750fb/ddk750_sii164.c
> > > +++ b/drivers/staging/sm750fb/ddk750_sii164.c
> > > @@ -237,21 +237,8 @@ long sii164InitChip(unsigned char edge_select,
> > >   	return -1;
> > >   }
> > >
> > > -/* below sii164 function is not necessary */
> > > -
> > >   #ifdef SII164_FULL_FUNCTIONS
> > >
> > > -/*
> > > - *  sii164ResetChip
> > > - *      This function resets the DVI Controller Chip.
> > > - */
> > > -void sii164ResetChip(void)
> > > -{
> > > -	/* Power down */
> > > -	sii164SetPower(0);
> > > -	sii164SetPower(1);
> > > -}
> > > -
> > >   /*
> > >    * sii164GetChipString
> > >    *      This function returns a char string name of the current DVI
> > > Controller chip.
> > > diff --git a/drivers/staging/sm750fb/ddk750_sii164.h
> > > b/drivers/staging/sm750fb/ddk750_sii164.h
> > > index 862e7bf27353..1f7b5f9c1885 100644
> > > --- a/drivers/staging/sm750fb/ddk750_sii164.h
> > > +++ b/drivers/staging/sm750fb/ddk750_sii164.h
> > > @@ -28,7 +28,6 @@ unsigned short sii164GetVendorID(void);
> > >   unsigned short sii164GetDeviceID(void);
> > >
> > >   #ifdef SII164_FULL_FUNCTIONS
> > > -void sii164ResetChip(void);
> > >   char *sii164GetChipString(void);
> > >   void sii164SetPower(unsigned char powerUp);
> > >   void sii164EnableHotPlugDetection(unsigned char enableHotPlug);
> > > --
> > > 2.19.1
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups
> > > "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an
> > > email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > To view this discussion on the web visit
> > > https://groups.google.com/d/msgid/outreachy-kernel/20190315102007.26612-1-nishka.dasgupta%40yahoo.com.
> > > For more options, visit https://groups.google.com/d/optout.
> > >
>

