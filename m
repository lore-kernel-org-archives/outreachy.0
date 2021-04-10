X-GM-THRID: 6949196106394763264
X-Received: by 2002:a2e:9816:: with SMTP id a22mr169239ljj.356.1618041424106;
        Sat, 10 Apr 2021 00:57:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:3b95:: with SMTP id g21ls237738lfv.1.gmail; Sat, 10
 Apr 2021 00:57:02 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzHRaYSmWKEF0r/DhwFfCkvgFRU7xwE6ItY5HJ9qMEyxAqgwlBK/L7PuzS4detZTkozVe7a
X-Received: by 2002:a05:6512:b8f:: with SMTP id b15mr13322558lfv.633.1618041422394;
        Sat, 10 Apr 2021 00:57:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618041422; cv=none;
        d=google.com; s=arc-20160816;
        b=KL9CRRXwicikYOo6HeJf12iutVp1YcSW57pDCkWjY8Pk9TN63pw8YnN4YeOYK4t08J
         X13d6YnvGu7aK7Z90QDzcGaFixImpacUXqdZWvEHTChiHg0Di4Eozje26fSU5lxg3HbH
         kWKbnyCD3R/Ag/wg93jcP2H61PfWaY+fJxlebt+Zftds0NcJ4NVw5oWV6mdVqvfia2yI
         qToqcCoecZK0HIIkJVlJA5CtmYBeNZb+GqHFGNxJwxe3z5Z0mS2rRvUFfm6ssaN4n52t
         BTikiH0CupHcQYFXIWtv1Hrsot7dU1PsHvyRMiQ7u1HcrGq1saWsieXc9wi73u2BdPp+
         wUTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=fDz3jvFOwEc4wUnq/2xbNrKI18OHCzs173xEX28V0No=;
        b=cTiLArPcqE9/HCoGuR0pzbhSvIrnEj7NbFNR78/eIelHCwVaKe4ULtDHeDTd4E+Sal
         YhOMRHfBKCIvp6Wn3Jcy17b67cucxgnixzLf8qa+lOO3nM3IcXxJPfWvu50AyQl9t81Y
         6Ud0MRc+72x5PwbmBAHNGJGvXRxdj1FHnUqeoI5RhDXulwjliEOFtfBzRAQXG2bvsijm
         xPkzbCSwTaAxgHchfJKFDfV1jtu05YRFWgPU8/q6esGBYnUYoWPBEUpUcAkQuQ3DB6oo
         YutfMDT73jLTJlrmbGX447eM66HMkc/cwpWg1BI7iA61xoom6Jl+oaGFe7CtF92J88/O
         phXw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=n9juL8nY;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::534 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com. [2a00:1450:4864:20::534])
        by gmr-mx.google.com with ESMTPS id a10si393117lfs.11.2021.04.10.00.57.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 10 Apr 2021 00:57:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::534 as permitted sender) client-ip=2a00:1450:4864:20::534;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=n9juL8nY;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::534 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x534.google.com with SMTP id ba6so9110791edb.1
        for <outreachy-kernel@googlegroups.com>; Sat, 10 Apr 2021 00:57:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=fDz3jvFOwEc4wUnq/2xbNrKI18OHCzs173xEX28V0No=;
        b=n9juL8nY9gtyrFUHl8AS1kpInNH6B86eiKl34oAZg0sZCb4wHZzrwnXJoDXGziJ1Db
         szYD4zY6bXgb0M0MWmCwo4b14h1wO5vNMAIAryFxDb5ZVZJJhCrOPDX0tXz//g6b6001
         H1jbg4fuZ9mdBLSuzA995ZQJL9sYUBT1g/7n7+W3e6Qpen/c063j8vmrdaVuoLH54vR3
         SLU80W38bsAg71MGPUKQdoxHfIrRNFg0cFd20WljCqQpoFLgQo/S/l/dQmgIHLvTwHXG
         4COg+t5Fy3ClyxhwBVOnR+YO0+dtH+SBN+EooKwZGBuJcjG82/XY0gzkbLsujU1KLr54
         X2Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=fDz3jvFOwEc4wUnq/2xbNrKI18OHCzs173xEX28V0No=;
        b=HHKCXr3itiqWdTYxusUJv4WX2+6gBCUuSGG9SmV9DPJ9ucEMxvvCJTtncRxuQ3HtcM
         H90hliPn8/yAfR434Pz14VLYS2+FUy53RdzQ9YTpPfRJBv7rFOCld0mZbw3SaIMV/IT9
         4pVGu3l1Hbv2TtsDXUZTBH1m0Rz1IaOoMGf7dHfD7sCdnItAGn+WF9She0ckGZ3iBhsO
         Iyk90fanZO1CraKgY9rOwaT4fIXMraYGVkQNJEzIiISkDtfgPnC2wBspSREH+OsX5esh
         a5HUJhC9CP8yTXr2I0vw4+wAoEBex2iu107qVQQaD1TtyrbcCA47y49o4dndz7J/PL7x
         lLPg==
X-Gm-Message-State: AOAM532CrzKLnFWWPFRURxJWUcT6sjVnRYAv5JucK09dC5y+GxWg6vuW
	IMcHCZo++6YoveOTtqoeGyA=
X-Received: by 2002:a50:bb05:: with SMTP id y5mr18490755ede.384.1618041422174;
        Sat, 10 Apr 2021 00:57:02 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from localhost.localdomain (host-95-237-55-30.retail.telecomitalia.it. [95.237.55.30])
        by smtp.gmail.com with ESMTPSA id x24sm2708176edr.36.2021.04.10.00.57.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Apr 2021 00:57:01 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com, linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [Patch 0/3]
Date: Sat, 10 Apr 2021 09:57:00 +0200
Message-ID: <2101069.1PIH1tPmJ7@localhost.localdomain>
In-Reply-To: <YHFT2S31kFy72DMv@kroah.com>
References: <6552860.D8CPca6BT0@localhost.localdomain> <YHFT2S31kFy72DMv@kroah.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Saturday, April 10, 2021 9:29:29 AM CEST Greg KH wrote:
> On Fri, Apr 09, 2021 at 06:29:59PM +0200, Fabio M. De Francesco wrote:
> > This patch series removes camelcases, changes the type and use of a
> > variable, and correct misspelled words.
> > 
> > Patch 1/3: staging: rtl8723bs: Remove camelcase in several files
> > 
> > drivers/staging/rtl8723bs/core/rtw_cmd.c       |  2 +-
> > drivers/staging/rtl8723bs/core/rtw_mlme.c      |  2 +-
> > drivers/staging/rtl8723bs/core/rtw_pwrctrl.c   | 18 +++++++++---------
> > drivers/staging/rtl8723bs/hal/hal_intf.c       |  2 +-
> > drivers/staging/rtl8723bs/hal/rtl8723b_dm.c    |  6 +++---
> > .../staging/rtl8723bs/hal/rtl8723b_hal_init.c  |  2 +-
> > drivers/staging/rtl8723bs/hal/sdio_ops.c       | 14 +++++++-------
> > .../staging/rtl8723bs/include/rtw_pwrctrl.h    |  2 +-
> > 8 files changed, 24 insertions(+), 24 deletions(-)
> > 
> > Patch 2/3: staging: rtl8723bs: Change the type and use of a variable
> > 
> > drivers/staging/rtl8723bs/hal/hal_intf.c        | 2 +-
> > 
> >  drivers/staging/rtl8723bs/include/rtw_pwrctrl.h | 2 +-
> >  2 files changed, 2 insertions(+), 2 deletions(-)
> > 
> > Patch 3/3: staging: rtl8723bs: include: Fix misspelled words in
> > comments
> > 
> > .../rtl8723bs/include/Hal8192CPhyReg.h        |  8 ++---
> > 
> >  .../staging/rtl8723bs/include/basic_types.h   |  2 +-
> >  drivers/staging/rtl8723bs/include/drv_types.h |  2 +-
> >  drivers/staging/rtl8723bs/include/hal_com.h   |  2 +-
> >  .../staging/rtl8723bs/include/hal_com_reg.h   | 34 +++++++++----------
> >  drivers/staging/rtl8723bs/include/hal_data.h  |  2 +-
> >  .../staging/rtl8723bs/include/hal_pwr_seq.h   |  2 +-
> >  drivers/staging/rtl8723bs/include/rtw_cmd.h   |  6 ++--
> >  drivers/staging/rtl8723bs/include/rtw_mlme.h  | 18 +++++-----
> >  .../staging/rtl8723bs/include/rtw_mlme_ext.h  |  2 +-
> >  drivers/staging/rtl8723bs/include/rtw_mp.h    |  2 +-
> >  .../staging/rtl8723bs/include/rtw_pwrctrl.h   |  2 +-
> >  drivers/staging/rtl8723bs/include/rtw_recv.h  |  4 +--
> >  drivers/staging/rtl8723bs/include/rtw_xmit.h  |  2 +-
> >  drivers/staging/rtl8723bs/include/sta_info.h  |  2 +-
> >  drivers/staging/rtl8723bs/include/wifi.h      |  2 +-
> >  16 files changed, 46 insertions(+), 46 deletions(-)
> > 
> > Fabio M. De Francesco
> 
> I have no idea how you created this patch series, but I do not think it
> worked well :(
> 
> Please use our standard tools, that do this all for you automatically,
>
Apart from the fact that I forgot to save the subject, I didn't know that 
there are standard tools for doing Patch 0/N. Therefore I thought to make  
an email message that contained the information about the patch series.

I was wrong, sorry. I have to research this topic in the git manual or 
somewhere else.

Thanks,

Fabio
>
> and send them out in a series of emails that have a proper subject line
> (look at what you used here...) and are properly "threaded".
> 
> thanks,
> 
> greg k-h





