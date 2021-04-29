X-GM-THRID: 6956170409670606848
X-Received: by 2002:a17:906:85c1:: with SMTP id i1mr34840923ejy.216.1619698055435;
        Thu, 29 Apr 2021 05:07:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:560d:: with SMTP id f13ls1352811ejq.1.gmail; Thu, 29
 Apr 2021 05:07:33 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxPMtE+wfWuyQwCuG3dJEUkNDcQ5jrjgdug8ZBiXwN9VTbPp/W3eNIjf+Le2Ty5ZuIqlS4a
X-Received: by 2002:a17:906:46d0:: with SMTP id k16mr706352ejs.105.1619698053771;
        Thu, 29 Apr 2021 05:07:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619698053; cv=none;
        d=google.com; s=arc-20160816;
        b=Moe6hDEG6OQ72QEYpo9tIH/W6vW3SLp2mJtUa8i7FmZuyWwP+R3x/ZBQYYXM9CroQ9
         w8M4/aDHuvpfsdDeEaXE2/gbZXT/RC91z4cV61MQ9Jpk0sLU0tCRxO28xJEFXVDdM+n0
         ZDV0ZSmG35rsJKgPFxm5K8VAglF7fyxeuitTRvZEMbxf51KHLuQyaMwhI8s3K+bTQ66c
         YWM2V8Is2ELcmCECZBG4eNH1R81nCInCluT0k/641P0v1RQ0WmElN59Q2e3SCThTrj4e
         RMRVuy57LGtjvD76UwCgO+OfvgEd0CgzOdos7VmItQP2PPrsHoAednH9XmYuCxRFT7yD
         vOFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=E/qBmN3w5ra6vzERr1tAnJ+lRCifYP6wOJclMHfbmgA=;
        b=tQRu7FPkOnUYyulzmqBT9u4gluRtCbJUl6fT+9mZNaVsIWKNqUfNPnnONKCmTOeRz5
         RH/r49ry11ZE7YzhNCyl+BuFh4127EJbKC0BwjnbKTrDvwzqwIyJYVrwJsBnPXHNJ1rN
         FZvcMSLzzZYk8dhLzI1iVAisQwxuIz6IIh5CPrA0AD1Q6KI2duFiNhTd7bpszrIOwBfC
         +vqEBPiuqYkWmbfLYfoKeh4pr7LRDuJU7sb64QHa5YQltAXyj/mRUv5eS0/E32gsAmnX
         CiJAkzvueiZssrPUSCee4z87bWasuqfRfmLIaNQvTHBPmFW9oyWeFyyKjBJgVCH7sFUi
         D+4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lga51PiH;
       spf=pass (google.com: domain of fabioaiuto83@gmail.com designates 2a00:1450:4864:20::52a as permitted sender) smtp.mailfrom=fabioaiuto83@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fabioaiuto83@gmail.com>
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com. [2a00:1450:4864:20::52a])
        by gmr-mx.google.com with ESMTPS id y16si208861edq.2.2021.04.29.05.07.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Apr 2021 05:07:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of fabioaiuto83@gmail.com designates 2a00:1450:4864:20::52a as permitted sender) client-ip=2a00:1450:4864:20::52a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lga51PiH;
       spf=pass (google.com: domain of fabioaiuto83@gmail.com designates 2a00:1450:4864:20::52a as permitted sender) smtp.mailfrom=fabioaiuto83@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x52a.google.com with SMTP id j28so14222707edy.9
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Apr 2021 05:07:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=E/qBmN3w5ra6vzERr1tAnJ+lRCifYP6wOJclMHfbmgA=;
        b=lga51PiHQT8AXJaHF9E+Rcm2L7rBLdrZM+LDIobxpUfFnTW7kT866PFjvaeamdIvSy
         oBD2mFz5kUbvDDg4P1Cg8yPYTBWvdZXO8RsJJc4oXIOxDg45gU7vEzM++OrTbHtzNBQe
         rC2SSb7iC4kcW17d3a11uA/rozz2QvFI0F4cEh0FnZAyP5OZleb0yDhj4BCF+ftMk3Z2
         byiuS7kh6koeNRV86e+Fxnw26SAom3jTRnzAe7a1jiU//Uxf7d/j2wCkKENOuPXiF9NE
         sQo2naXTvrxYe3K2YjKBJZmVXEjw0DZOLtjyFBFtm43mMQaypu7hcZmaQQTtedC9OPKp
         4onw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=E/qBmN3w5ra6vzERr1tAnJ+lRCifYP6wOJclMHfbmgA=;
        b=UZcIfybGbDgL/dP3srtE6skxvsDXlM3T0REroh8N2Gsxv4+pMrBjG2p8fyLBTD8jV4
         t8Q5fRbvLcokF/Ki5JCOOYRDpg9h54dvUhbagEVJiSWiqJycXrHdIAKknc+ZjIbv8iqr
         +doPLW8KqhyP6VMmwZJoQLPxJU7475PAn5B6KYlBO+KiinOSFuqsa7CBz2KHXuCfx4BD
         zyrQUn+lXjfU2p9eCdMtVfVuIcHkBddGczgdo2hZnUxYmy0DrrN1EYiHGjGJaGvKR4/7
         NT0NGxixFIQahGFaQe/rbIxEZvtlQFqqKqf+pwE4zo7i2deCJiMtusxAb6EzEN6hFIU6
         k1tg==
X-Gm-Message-State: AOAM530qz5wfR0kquxYSDfCbPHKlCOcf+gNfr5yCLBud1l1Qje2tsTEA
	mimVvVw3ZTvW/NdW7zDyJBZ4UOhlX/Bu7Q==
X-Received: by 2002:a05:6402:78b:: with SMTP id d11mr10066481edy.257.1619698053629;
        Thu, 29 Apr 2021 05:07:33 -0700 (PDT)
Return-Path: <fabioaiuto83@gmail.com>
Received: from agape.jhs ([5.171.72.170])
        by smtp.gmail.com with ESMTPSA id c25sm2184909edt.43.2021.04.29.05.07.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Apr 2021 05:07:33 -0700 (PDT)
Date: Thu, 29 Apr 2021 14:07:30 +0200
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH 1/2] staging: rtl8723bs: hal: Remove
 set but unused variables
Message-ID: <20210429120729.GA1393@agape.jhs>
References: <20210428113346.28305-1-fmdefrancesco@gmail.com>
 <YIqECQk/1Zb4JRjb@kroah.com>
 <20210429102201.GF1409@agape.jhs>
 <1870536.WTzYeaBcXf@linux.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1870536.WTzYeaBcXf@linux.local>
User-Agent: Mutt/1.10.1 (2018-07-13)

> > > Yes, but many types of hardware _REQUIRE_ reads to do something.  So
> > > "read that does nothing" is a requirement for some operations.
> > > 
> > > As an example, a write is only guaranteed to have been finished if you
> > > do a read of the same location back from it on some hardware busses.
> > > The bus can reorder things, but a write/read of the same location can
> > > not be reordered.
> > > 
> > > Sometimes you have to do reads multiple times to get things to "stick".
> > > 
> > > Other times reading from a location changes a state in the hardware
> > > (horrid but HW designers aren't the brightest at times...)
> > > 
> > > So you can NOT just remove reads without knowing that the hardware does
> > > not require this.  This is an issue where GCC "warnings" mean nothing as
> > > gcc does not actually know what hardware does, or does not, do for many
> > > things.
> > > 
> > > thanks,
> > > 
> > > greg k-h
> > 
> > thank you for explanation, my hardware knowledge is poor:(
> > Sorry for noise.
> > 
> > fabio
> >
> I suspected that removing those variables could have been a source of troubles 
> (but I was thinking of possible side effects on internal kernel's data, not of 
> hardware related idiosyncrasies), however I think that you did well to point 
> it out because:
> 
> 1) We learned something new from Greg;

yes that's been very good for me

> 2) I learned that, for the purpose of finding definitions, vim's ctrl-] is not 
> the right way to work out the problem.

3) I learned that with ctrl-] in vim one could (in some misterious conditions)
   see a function definition :-D

It seems that you know more than me about vim, I make intensive use of grep
for finding function defs and usages in code.

> 
> If you have time, I'd appreciate some comments on the topic of line (2).
> 
> Thanks,
> 
> Fabio
> 
> 
> 

thank you,

fabio

