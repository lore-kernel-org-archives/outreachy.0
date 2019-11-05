X-GM-THRID: 6755490770490228736
X-Received: by 2002:a1c:7c16:: with SMTP id x22mr3727863wmc.46.1572951664659;
        Tue, 05 Nov 2019 03:01:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:82:: with SMTP id 124ls2848299wma.1.gmail; Tue, 05 Nov
 2019 03:01:03 -0800 (PST)
X-Google-Smtp-Source: APXvYqxFw/6/X7fB0A85TU8kaFDmsGbUz3XkK/cc4GGZ131jg0c0i6S8Dtyrw8McHT6ZxkxfVGhZ
X-Received: by 2002:a1c:e91a:: with SMTP id q26mr3816549wmc.88.1572951663436;
        Tue, 05 Nov 2019 03:01:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572951663; cv=none;
        d=google.com; s=arc-20160816;
        b=t3jWuJVB7vTEVrVY87jdRCiEZwwHo7WpT43viLElG6zd/7nrGB7SkCrscwATt1EvqN
         7LNY/BYoPf/7XD4Idfkzt3KME2NrrL+fxTxjScoEA5rhmrZxELixPZ6S1YrF+RALPIe7
         RokuHtC09TNYnzzhl0Xq+/G2Kt5aGgAUN5RMcC69HL5X5Mw/RDNhh36TNfOBV/iEURoY
         AJ7E4qtRXOyAVc0tDuDZIx10lPlA2HppfX5NE8ixmNcroGca3rIkf2Izub5a1dre/2W1
         bm0HVRxbk7FGJoyYzhvqi3Eb37eq7YSR92TKyeP0OLBCPDAC1g5adcDihvKLBGucDVlG
         h2Bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:date
         :from:dkim-signature;
        bh=EZghrgWEU7PinMbxhgFFAGKP8eV2Li80iVqhELRRUNk=;
        b=XTUNOHXFHkJeqC1bpajszfhT5CHtJJXGfIIw2QOT8UZeWl/Rw+hFk9ooFsNDKqX1Rr
         k4RJ7tCBmJpwOxSHTXRIYh5iKezqZi2Ex84M5nJPBx+P4uqDLas+mNAZeLXoVZcHQRxm
         2uQCH4sfruqnOH+pTsU+5kK+sVDhOfP9dpGYqnlvQPyX4+4JORdD1LnGNq/wdAgGMXiv
         4dyvK5pBTOyDMzeyRv35TPMpWJGzCA3Crg/4AU3K/0rYQaSDH6N/QH1HMd9jSK8p89mY
         fKOjEu3c35aWaVB/BdMK8TelFtp9kWxRk+sVI+4ruc3qJE17VBwfGWd4c9u/KofXewJP
         GmMQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=R14zOSWy;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id e17si831289wre.3.2019.11.05.03.01.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Nov 2019 03:01:03 -0800 (PST)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=R14zOSWy;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x444.google.com with SMTP id b3so15041528wrs.13
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Nov 2019 03:01:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:in-reply-to:message-id:references
         :mime-version;
        bh=EZghrgWEU7PinMbxhgFFAGKP8eV2Li80iVqhELRRUNk=;
        b=R14zOSWyNvnQV94JDavTe85Z2Fw5Vh6JQY1YZyMFH78lqlQ4CFLQK7+AK3SIm8RV1W
         TgFgLPQuZkG/NAFioFBsPbrIfyUKjtJxvQGvRbCzrgILMad9ix/4OabzQJyDcYwgWRLI
         szNcSya8o5WB6aGzYVgRCywhGgV0/aEH4h1ScNVje3D1nu1yvysHJA9ZNaM8sSVITay1
         +MwePjVMuQn2DVL50ykuPTlNJfGnmQJNIaNnoHatgEfhhO4pa6iLY5NQbjSeKWLIa2VJ
         bbxCkFYcBGUU9W+kGodO7729kMfdevtedaVuGwIGuQGf0SivS06ZRc8+X47mjlTl2m+I
         j1rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:date:to:cc:subject:in-reply-to:message-id
         :references:mime-version;
        bh=EZghrgWEU7PinMbxhgFFAGKP8eV2Li80iVqhELRRUNk=;
        b=X86nedMgxG2YfeUaKKHY3QXev2KKDOa1TS94a9WeqMYLj+jHT5IQrlMORVuAlEo73x
         MHKAHuRcy95Ybz2OXfhs76CbA4u4cTbuaeKLePA2wfzFek3CwptS/4AEXfieUskg7fSH
         L87uk6QxSAX+7J+GAVp8vuPZC1gdZDARCnq2+e3N/bHr4/FlOztWnAWbZUNAo40MGv7N
         OfJ3yHXZplBPkWfNf/qSbCrd3oP5lVHbiTHrl88qX4bI4mi4YYyVoTuwKnB8mOk6+PN4
         oPqVasGS0iLrlud34f4n8N6hmm6vsOqbVipRSL6JLZpgH2slCTvG8UWG3HaILAYP09iU
         DjJA==
X-Gm-Message-State: APjAAAUDDdSOgwmB8swOrb9uicjanZkwDmYlRArg2G9VHxs17d49HciJ
	O91gSSfxlymwFeLu7BvwYg==
X-Received: by 2002:a5d:4688:: with SMTP id u8mr10457814wrq.40.1572951662765;
        Tue, 05 Nov 2019 03:01:02 -0800 (PST)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjahub.lan (79-73-36-243.dynamic.dsl.as9105.com. [79.73.36.243])
        by smtp.gmail.com with ESMTPSA id j22sm28263721wrd.41.2019.11.05.03.01.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Nov 2019 03:01:02 -0800 (PST)
From: Jules Irenge <jbi.octave@gmail.com>
X-Google-Original-From: Jules Irenge <maxx@ninjahub.org>
Date: Tue, 5 Nov 2019 11:00:44 +0000 (GMT)
To: Ian Abbott <abbotti@mev.co.uk>
cc: Jules Irenge <jbi.octave@gmail.com>, outreachy-kernel@googlegroups.com, 
    gregkh@linuxfoundation.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, hsweeten@visionengravers.com
Subject: Re: [PATCH v2] staging: comedi: rewrite macro function with GNU
 extension typeof
In-Reply-To: <84a2d50f-a1ac-bdc5-989c-b0294e9dea22@mev.co.uk>
Message-ID: <alpine.LFD.2.21.1911051053560.11074@ninjahub.org>
References: <20191104163331.68173-1-jbi.octave@gmail.com> <84a2d50f-a1ac-bdc5-989c-b0294e9dea22@mev.co.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 4 Nov 2019, Ian Abbott wrote:

> On 04/11/2019 16:33, Jules Irenge wrote:
> > Rewrite macro function with the GNU extension typeof
> > to remove a possible side-effects of MACRO argument reuse "x".
> >   - Problem could rise if arguments have different types
> > and different use though.
> > 
> > Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> > ---
> > v1 - had no full commit log message, with changes not intended to be in the
> > patch
> > v2 - remove some changes not intended to be in this driver
> >       include note of a potential problem
> >   drivers/staging/comedi/comedi.h | 6 ++++--
> >   1 file changed, 4 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/staging/comedi/comedi.h
> > b/drivers/staging/comedi/comedi.h
> > index 09a940066c0e..a57691a2e8d8 100644
> > --- a/drivers/staging/comedi/comedi.h
> > +++ b/drivers/staging/comedi/comedi.h
> > @@ -1103,8 +1103,10 @@ enum ni_common_signal_names {
> >   
> >   /* *** END GLOBALLY-NAMED NI TERMINALS/SIGNALS *** */
> >   
> > -#define NI_USUAL_PFI_SELECT(x)	(((x) < 10) ? (0x1 + (x)) : (0xb +
> > (x)))
> > -#define NI_USUAL_RTSI_SELECT(x)	(((x) < 7) ? (0xb + (x)) : 0x1b)
> > +#define NI_USUAL_PFI_SELECT(x)\
> > +	({typeof(x) x_ = (x); (x_ < 10) ? (0x1 + x_) : (0xb + x_); })
> > +#define NI_USUAL_RTSI_SELECT(x)\
> > +	({typeof(x) x_ = (x); (x_ < 7) ? (0xb + x_) : 0x1b; })
> >   
> >   /*
> >    * mode bits for NI general-purpose counters, set with
> > 
> 
> I wasn't sure about this the first time around due to the use of GNU
> extensions in uapi header files, but I see there are a few, rare instances of
> this GNU extension elsewhere in other uapi headers (mainly in netfilter
> stuff), so I guess it's OK.  However, it  does mean that user code that uses
> these macros will no longer compile unless GNU extensions are enabled.
> 
> Does anyone know any "best practices" regarding use of GNU extensions in user
> header files under Linux?
> 
> -- 
> -=( Ian Abbott <abbotti@mev.co.uk> || Web: www.mev.co.uk )=-
> -=( MEV Ltd. is a company registered in England & Wales. )=-
> -=( Registered number: 02862268.  Registered address:    )=-
> -=( 15 West Park Road, Bramhall, STOCKPORT, SK7 3JZ, UK. )=-
> 
> 
Apology, I misinterpreted the comments and send a second 
version without thinking much.
Please discard it unless you wish to try out.
Any way thanks for the feedback, I really appreciate I find it educative.
Kind regards,
Jules

