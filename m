X-GM-THRID: 6808656295974928384
X-Received: by 2002:a17:90b:284:: with SMTP id az4mr1766960pjb.20.1585444355146;
        Sat, 28 Mar 2020 18:12:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:9e2:: with SMTP id 89ls11795744pjo.2.canary-gmail;
 Sat, 28 Mar 2020 18:12:33 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vt9Fzlp3KdHR0ZPSQox89/TErc9fQVkv3u68BOdC+i+RiHrnTvscHq4igtZBcbNmJJA8yTd
X-Received: by 2002:a17:902:342:: with SMTP id 60mr6441767pld.29.1585444353683;
        Sat, 28 Mar 2020 18:12:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585444353; cv=none;
        d=google.com; s=arc-20160816;
        b=w0wTB+dzXkSFHYW6dPuoMWO0TNhylHHUrBbH/L3QlSbkd0EszsvwcEy7FCrhC7D9pW
         n8XRzklJiSYd2V6CdsepjkFbQK2gJkg7Zue3YnpNsmvoD744/KOhTSyxjO2Z3k9TcdXa
         GriwrtPfNYQz20feao23mrBABDxF2BtZ2RDSf7d+eOrDjEuvzdwHtfBqvR2NOl0OkcQV
         LXEjaLnIJ0SjEq8OdQ6hmAaeqLCwoqnK8J0lRPQxmyx5x/3oBfJSsH/0RcCt8qtSK3nR
         bxqHr8zD4KoGRj8wErq9bUgYVpPA4M60XQTeFJ9bnfn78NyJ3pL/z0G6v9M1ufBobQlW
         9o6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=CjKcGgOU/vywZZKMJEaJIQDApKbbxgqCoaYOwXB89g4=;
        b=EX5shmrqHV4vbs+/y5jxfwhI5BOD0kALgCstTJFUgHqdpHib36o8yP66q4E0W9hTyX
         SOxTeE1vQmnfzvD4ixJW1eGsVZ29K57W50NL1hKrOHuu6e8+WOxW0pGyB6JOh7xXtxpT
         3ZW890p6iBCZ0w9fUYXylqmKNBFEdZJKPOGDRpqwGSxgmBVh756t5mic/emRWIFr1G8M
         nfeSkkPmLhOinFcfjt5MClBXVtgr5rVMM601UmVN6F3ZIX7bX/A6tWZmBmPeciA8DdFq
         JH/c+L/aIW7ATCOvPPa3CY5JyZDFZN3nRr/XvNhTyXwQp2P0m8PuHkmTIj6UYG0tA9Pn
         4z5w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=H0F1kiHN;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <briana.oursler@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id 188si671856pfb.1.2020.03.28.18.12.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 28 Mar 2020 18:12:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=H0F1kiHN;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id j1so6692784pfe.0
        for <outreachy-kernel@googlegroups.com>; Sat, 28 Mar 2020 18:12:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=CjKcGgOU/vywZZKMJEaJIQDApKbbxgqCoaYOwXB89g4=;
        b=H0F1kiHNQs5cbH+m/8z70fzHFF2gLVHz/cUMpWkUd5F7AszZ9ntaPM32uVM7EULVKQ
         esAjGehMOT8K8qiTzdQ9k55tkHX82fSrYSJsOAwDkHu200JvfJD6qZFBjlA3J6avbX5d
         7g6Nx9dRVm+nFPVu71CzE5xKyCY+vGaJqKMWXAXKxPxjI8m4cpgdRdmaUWXuv7FzzIrB
         7gvdzevjfnYrTB4hWetFxJAc0/l9O1K0WVN9fDaAX/vVWTDde/dGDATDG7TVwxHxb7Zu
         spvGmRNubunGPy91WzOt0as17YLP9oPinS/9XfyYxZcm1c5FFrP3EuBWJQuZX9HgDx0J
         6ReQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=CjKcGgOU/vywZZKMJEaJIQDApKbbxgqCoaYOwXB89g4=;
        b=pRZWvzXdvGaYCQsq/Dovj4/newVk40yNlKfalg5Ja7iBO5liSoDofpDPQOEa+me8RX
         1KsVX/oMAHrDIWDYkTluHLnX8fXrcdFXBgn2WlJ/Zu+l7zQumeqnO7u5WQ1P0IEirsIl
         QakJngpB1vJ5qO5U9KCdqRdwh37KOWevG14ivN26UUN5gUdbPOIRu45Ufjw/9756uqES
         FsZ/GKIl0TtL5/lyrRTd2kcRIJg4rghsn7AcTx+/ZG1QV4Pxztyp3qMzs0BtHeEAWtCi
         jB8KWVDNxr0Y4qM8X7bGYLIfNl16LpoYmM8wdfrgrsMS2Dz+FkGgABLNLkurrgVQmG8Y
         OtoQ==
X-Gm-Message-State: ANhLgQ1Jb9l/KZu3kovs51G/T+rWFNOyubYR7iWvcmusb+t6fSRhHDYm
	NzxfwtC0ET1SC9bjN2vgd11EPj2kiyvNYQ==
X-Received: by 2002:aa7:9481:: with SMTP id z1mr6262223pfk.185.1585444353318;
        Sat, 28 Mar 2020 18:12:33 -0700 (PDT)
Return-Path: <briana.oursler@gmail.com>
Received: from ?IPv6:2601:1c0:5400:122:2697:be21:1d90:fb7a? ([2601:1c0:5400:122:2697:be21:1d90:fb7a])
        by smtp.gmail.com with ESMTPSA id d7sm7064149pfa.106.2020.03.28.18.12.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Mar 2020 18:12:32 -0700 (PDT)
Message-ID: <765acee87a2ec31a56b33b44cadde913311343f0.camel@gmail.com>
Subject: Re: [PATCH v2] staging: vt6655: Remove multiple assignments.
From: Briana Oursler <briana.oursler@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: nramas@linux.microsoft.com, forest@alittletooquiet.net, 
	outreachy-kernel@googlegroups.com
Date: Sat, 28 Mar 2020 18:12:31 -0700
In-Reply-To: <20200327090534.GB1669531@kroah.com>
References: <5951d33f-ea8a-ec99-474b-2d8b2009da6a@linux.microsoft.com>
	 <20200327023550.74406-1-briana.oursler@gmail.com>
	 <20200327090534.GB1669531@kroah.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.32.5 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Fri, 2020-03-27 at 10:05 +0100, Greg KH wrote:
> On Thu, Mar 26, 2020 at 07:35:50PM -0700, Briana Oursler wrote:
> > Remove multiple assignments at initialization and in computations
> > to
> > better match Linux style. Issue found by checkpatch.pl.
> > 
> > Signed-off-by: Briana Oursler <briana.oursler@gmail.com>
> > ---
> > 
> > Changes in v2:
> > 	- Change removes to remove in patch description.
> > 
> >  drivers/staging/vt6655/rxtx.c | 34 ++++++++++++++++++++-----------
> > ---
> >  1 file changed, 20 insertions(+), 14 deletions(-)
> > 
> > diff --git a/drivers/staging/vt6655/rxtx.c
> > b/drivers/staging/vt6655/rxtx.c
> > index 37fcc42ed000..cdea2ff1c8f0 100644
> > --- a/drivers/staging/vt6655/rxtx.c
> > +++ b/drivers/staging/vt6655/rxtx.c
> > @@ -195,21 +195,29 @@ s_uGetRTSCTSRsvTime(
> >  	unsigned short wCurrentRate
> >  )
> >  {
> > -	unsigned int uRrvTime, uRTSTime, uCTSTime, uAckTime, uDataTime;
> > -
> > -	uRrvTime = uRTSTime = uCTSTime = uAckTime = uDataTime = 0;
> > +	unsigned int uRrvTime = 0;
> > +	unsigned int uRTSTime = 0;
> > +	unsigned int uCTSTime = 0;
> > +	unsigned int uAckTime = 0;
> > +	unsigned int uDataTime = 0;
> >  
> >  	uDataTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType,
> > cbFrameLength, wCurrentRate);
> >  	if (byRTSRsvType == 0) { /* RTSTxRrvTime_bb */
> > -		uRTSTime = BBuGetFrameTime(pDevice->byPreambleType,
> > byPktType, 20, pDevice->byTopCCKBasicRate);
> > -		uCTSTime = uAckTime = BBuGetFrameTime(pDevice-
> > >byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
> > +		uRTSTime = BBuGetFrameTime(pDevice->byPreambleType,
> > byPktType,
> > +					   20, pDevice-
> > >byTopCCKBasicRate);
> 
> While I understand the compulsion to want to fix up coding style
> issues
> all over the place, don't mix changes like this with changes like:
> 
> > +		uAckTime = BBuGetFrameTime(pDevice->byPreambleType,
> > byPktType,
> > +					   14, pDevice-
> > >byTopCCKBasicRate);
> > +		uCTSTime = uAckTime;
> 
> That, as it makes it much harder to review when you do multiple
> different things in the same patch.

Thanks, I sent another version where I undid reformatting to try to
make the log more readable. I'm trying to be more disciplined in the
commits so that they are not so messy to read.

> And you didn't document that you did the reformatting here...

Thank you,
Briana

> thanks,
> 
> greg k-h


