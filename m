X-GM-THRID: 6949252648486830080
X-Received: by 2002:a05:6000:550:: with SMTP id b16mr101354wrf.378.1617999997023;
        Fri, 09 Apr 2021 13:26:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:6204:: with SMTP id w4ls4776819wmb.2.gmail; Fri, 09 Apr
 2021 13:26:35 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz3AC8dzGCFYkb5Q08mFwmxVNsFH231Qb7D3NiiaBBfdvZPRfjUXYGrQ/x+9atdEWcTePue
X-Received: by 2002:a05:600c:228d:: with SMTP id 13mr15569340wmf.49.1617999995658;
        Fri, 09 Apr 2021 13:26:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617999995; cv=none;
        d=google.com; s=arc-20160816;
        b=tr7JKfs6bNAaW8nRPoR/6+XT1IK07Z9To5pgcDDgNh/l58fSqQgByOV5Fwq8AL0tNR
         phwt0RzyqeTbfyCZcIHiRuSzH6Y8FPHB+s+c4c/b3KckJIphGtfQk85FGtpS06NvoIB/
         ODTpUoxMssxbbq/ZdBuLzR0Xdn1g73pHiGx5SqTS7ghBUUrxjdLwQu4a0KA6nfdcZFu7
         zRFILD1+Be5d2EVn2FnpKjA+QOb0bz+6N7ilbimO1t0nab9KYc1DTOfWe21b8N6pvJ6Y
         a8DwVh4PWjPSC1a/m7+bthhdHyXo8lIBjmdgf7zDkTpck+8kkKHlC1Uu6dV8Qt1YlS3W
         uqig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Ss6IHHWDuc5/9aHBaI46ANKOdbJf0Qwz/Ge6WTAUH34=;
        b=O4qa/TsuNbXOgjNGHuAi1LOXONIxD8TbXxmz1keGkz3x+fwpSE/5bQJWhCDWaYd+JM
         MDWBVC1ajMRdE1TlPoKLAaV7DNLEqTSebaJJARvz3YtsqZeG8/3HLFzMN4EsV7MASolj
         WDTfT0YxnqHvN5tF+oIDqtAkoZehJkhT0wMcsI5r9MbpG2CFilczblqDYLKffslQHsRP
         gD3BB+mZ2Lz8iaRq2f2qIpjyvEFMzozolF49joPDyhck1po+F1hVzegLyt5YyIm9DeWM
         yg+Ne9Cwad4hb/+GUzJGYZh1/VDOf0ICKDNM8fyciDbDe5UUSxVB7ecy+MrxGIh3R0Q1
         SGPQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WPjjEfag;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52e as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com. [2a00:1450:4864:20::52e])
        by gmr-mx.google.com with ESMTPS id i8si419507wrv.2.2021.04.09.13.26.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Apr 2021 13:26:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52e as permitted sender) client-ip=2a00:1450:4864:20::52e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WPjjEfag;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52e as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x52e.google.com with SMTP id s15so7976833edd.4
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Apr 2021 13:26:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Ss6IHHWDuc5/9aHBaI46ANKOdbJf0Qwz/Ge6WTAUH34=;
        b=WPjjEfagbrOebKBt2B7jURackH272hmHhpqIW3jB67tDcC+h05olNIDOop/0XeieZx
         Eq9U8Q615APFosY2RnFbGfl4VtZ/QyQYXmgoJA46epYddqMW5GC7ok5MzMfGdNwY0kCy
         NUWM74N53DB4y6m7AXSSQ+nKZFe+drjSsnrVs5w2nfJsvV0vaLjaEMzA0dwEG6iG84nT
         b4j1QDa5skpfRWEnnBLo0Hb7b0McNk0kBvYvv17AMsqSeVTMYc8+B64wfURUnLAsqgkc
         my4/F270QezgxDw2uVhds3uGEpsLx6Xep+U0zOMqQop4AkBY2Ok3xUZqWrcT6u/nmgWw
         i2hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Ss6IHHWDuc5/9aHBaI46ANKOdbJf0Qwz/Ge6WTAUH34=;
        b=eMGAuruLTaNyT4nrWwWyWf/r6bxZbAJWgAdiZtkV4IbDUBikt7uj7RdovkeKQRg5aB
         zkq+Fn1y8lw+Erh0AKA63qmdN8yo7MT09etNihOM1DhwiyNTeVetaW4x+leAUcAI2Tnd
         Ku0odP54mJfg8xMBN9I8mLi9GU2Rk/QIkTjCrN5kty5Jm9q+j9nAdbNgQCcjYGfklVl4
         4bIV0oAkcYJXRrBNiXi3cW/hdra2JOMQUiDKOlbrBJyfcZZ+/jgbE3P5rPxacjqs+ySf
         N+VE/CkrkNKdNxR8josgWezm1MRasoViCE3AHTC7L+za7B2vn7ZtLEMouIb5yQPRtLFq
         AIvw==
X-Gm-Message-State: AOAM533kZ9CPnTIbphe1HzL2rFokvUgkN52Gi6lTKjEDOvESbRk0kE2f
	ddgG78hoLHotI11yP6KA30TCB3vL5aumlvXD
X-Received: by 2002:a05:6402:430c:: with SMTP id m12mr19739407edc.138.1617999995466;
        Fri, 09 Apr 2021 13:26:35 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from localhost.localdomain (host-95-237-55-30.retail.telecomitalia.it. [95.237.55.30])
        by smtp.gmail.com with ESMTPSA id rh6sm1726332ejb.39.2021.04.09.13.26.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Apr 2021 13:26:34 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, gregkh@linuxfoundation.org
Subject: Re: Variables defined, (sometimes) assigned, and never used
Date: Fri, 09 Apr 2021 22:26:33 +0200
Message-ID: <1845136.ylLD8seOMz@localhost.localdomain>
In-Reply-To: <alpine.DEB.2.22.394.2104092213000.23056@hadrien>
References: <3125862.SBIft5tIRe@localhost.localdomain> <alpine.DEB.2.22.394.2104092213000.23056@hadrien>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="US-ASCII"

On Friday, April 9, 2021 10:14:09 PM CEST Julia Lawall wrote:
> On Fri, 9 Apr 2021, Fabio M. De Francesco wrote:
> > When compiling with flag W=1 a lot of warnings about variables defined
> > but never used show up. If one read the source sometimes it's clear
> > that the original author placed them there because she/he wants to use
> > the variable for doing something in a future release of the driver.
> > I've also seen a comment like /* TODO */ near some unused variables.
> > 
> > I thought to delete a couple of variables that are declared, may be
> > also
> > assigned as a result of some expression, but neither  used within a
> > function or returned to the caller.
> > 
> > What to do with those (currently) unnecessary variables? Should we
> > remove them or let everything as is?
> 
> Generally, code that is not used is not wanted.  But use some common
> sense.
> 
> Be sure to compile the code.  It can happen that the variable is only
> used by a macro.  Not very nice, but it can happen.
> 
> julia

I'll check carefully that the resulting code can still work. I'm a bit 
tired of removing camelcase and the like :(

Thanks,

Fabio




