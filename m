X-GM-THRID: 6949196106394763264
X-Received: by 2002:a37:ae85:: with SMTP id x127mr5741063qke.436.1618041896472;
        Sat, 10 Apr 2021 01:04:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:5810:: with SMTP id g16ls4840141qtg.11.gmail; Sat, 10
 Apr 2021 01:04:55 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJybeJj3M5xBFUsOay0AjLVTeIfYLjxs3oQsoU6QwPiF+PCn8WaGTlsObulH79cR7iNgt0rt
X-Received: by 2002:ac8:580a:: with SMTP id g10mr17302371qtg.93.1618041895501;
        Sat, 10 Apr 2021 01:04:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618041895; cv=none;
        d=google.com; s=arc-20160816;
        b=Bi5arBvmbLNq7Qhk1rxjDL78Ah7ssFNMEPHtk9HB3p7MkG6ceLWkzq/wbnyqizZvSy
         RV/7GM+KPeXAlOMOCfSNjEdMd+RtKsQV1mw5xdSXkoGzyWSDQ22XYRWxfdTpMyxaBQRd
         FTr+2uy2RtOa7RG+N2suRlHAHQ4qRDb3RxD/kxaUE4rXWMTuEu6mnyQkCL7UZp2HzdkR
         syki6a7RwBUJ2P2VjTwwYCS4VPmopRxSYflI6TJlfBYSZqusw2DbFdqIzK9zPm4vzv9N
         I+WkkZs4V/NZLaEpJ4716z2Jl+0FMgeH74OSv+vN+IlinZwuUBcRTEygU7fnE5qfDeCH
         oU5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=1EMVF2pNOm+FIkSk+eC3OYJoe447pac7efHd30jkvI4=;
        b=u9ZHgO6fz6ra0NMhL5yLKtpA1z+coajRo9TEsuUvTzWRv2mEdirQxgQII2fve+8Sa8
         Iw8WueaTw0uYrBVCVu4B35c2UIK/C1OkbOWqA6ECU0b/XzlNGjQM3HpiMFFMt/b/lPdq
         vmteyR81fHT1b3ZFsaL0/Yw6T3/dRxKLaLSQk903JrMxcWxVvOEDy3Y3Ujer2CJ+TsXk
         uBFBw6VX71yTXwYNEWe2XaQW2xIDcguG5CXteVQkTZySfH/FQ+qVvDSaANMnlkHQkv/s
         9flLvrytD77tv82Wv//QPFCXOiR6xSth/pXQVlBLZjI5FwUVXYdslCHuK2oj9zjqYiV/
         6r8w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=0Kas3gYd;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b201si409280qkg.6.2021.04.10.01.04.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Apr 2021 01:04:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=0Kas3gYd;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id D3DE661182;
	Sat, 10 Apr 2021 08:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1618041894;
	bh=0c+0FmkCkm37cdzRy9sQ6yCvVZSa+EvziuKpc7wHoGA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=0Kas3gYdyGTIRPOYa6UvdjA66DkpoPFNEZ4P7VvLQedwV+PewdSU5jGVOB1b89R5F
	 Ncn0MhSlDhR/+lokN8+2xX8jMtATtic4G3NZ9Ttjoq6Q0STQO/kRA2NJCt/PrUIAc4
	 +A/JqWGwQ8LFt/IIG7zfUgjI72z8UtxSQk6Jwz14=
Date: Sat, 10 Apr 2021 10:04:51 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: outreachy-kernel@googlegroups.com, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [Patch 0/3]
Message-ID: <YHFcI104K+ih3UDG@kroah.com>
References: <6552860.D8CPca6BT0@localhost.localdomain>
 <YHFT2S31kFy72DMv@kroah.com>
 <2101069.1PIH1tPmJ7@localhost.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2101069.1PIH1tPmJ7@localhost.localdomain>

On Sat, Apr 10, 2021 at 09:57:00AM +0200, Fabio M. De Francesco wrote:
> On Saturday, April 10, 2021 9:29:29 AM CEST Greg KH wrote:
> > On Fri, Apr 09, 2021 at 06:29:59PM +0200, Fabio M. De Francesco wrote:
> > > This patch series removes camelcases, changes the type and use of a
> > > variable, and correct misspelled words.
> > > 
> > > Patch 1/3: staging: rtl8723bs: Remove camelcase in several files
> > > 
> > > drivers/staging/rtl8723bs/core/rtw_cmd.c       |  2 +-
> > > drivers/staging/rtl8723bs/core/rtw_mlme.c      |  2 +-
> > > drivers/staging/rtl8723bs/core/rtw_pwrctrl.c   | 18 +++++++++---------
> > > drivers/staging/rtl8723bs/hal/hal_intf.c       |  2 +-
> > > drivers/staging/rtl8723bs/hal/rtl8723b_dm.c    |  6 +++---
> > > .../staging/rtl8723bs/hal/rtl8723b_hal_init.c  |  2 +-
> > > drivers/staging/rtl8723bs/hal/sdio_ops.c       | 14 +++++++-------
> > > .../staging/rtl8723bs/include/rtw_pwrctrl.h    |  2 +-
> > > 8 files changed, 24 insertions(+), 24 deletions(-)
> > > 
> > > Patch 2/3: staging: rtl8723bs: Change the type and use of a variable
> > > 
> > > drivers/staging/rtl8723bs/hal/hal_intf.c        | 2 +-
> > > 
> > >  drivers/staging/rtl8723bs/include/rtw_pwrctrl.h | 2 +-
> > >  2 files changed, 2 insertions(+), 2 deletions(-)
> > > 
> > > Patch 3/3: staging: rtl8723bs: include: Fix misspelled words in
> > > comments
> > > 
> > > .../rtl8723bs/include/Hal8192CPhyReg.h        |  8 ++---
> > > 
> > >  .../staging/rtl8723bs/include/basic_types.h   |  2 +-
> > >  drivers/staging/rtl8723bs/include/drv_types.h |  2 +-
> > >  drivers/staging/rtl8723bs/include/hal_com.h   |  2 +-
> > >  .../staging/rtl8723bs/include/hal_com_reg.h   | 34 +++++++++----------
> > >  drivers/staging/rtl8723bs/include/hal_data.h  |  2 +-
> > >  .../staging/rtl8723bs/include/hal_pwr_seq.h   |  2 +-
> > >  drivers/staging/rtl8723bs/include/rtw_cmd.h   |  6 ++--
> > >  drivers/staging/rtl8723bs/include/rtw_mlme.h  | 18 +++++-----
> > >  .../staging/rtl8723bs/include/rtw_mlme_ext.h  |  2 +-
> > >  drivers/staging/rtl8723bs/include/rtw_mp.h    |  2 +-
> > >  .../staging/rtl8723bs/include/rtw_pwrctrl.h   |  2 +-
> > >  drivers/staging/rtl8723bs/include/rtw_recv.h  |  4 +--
> > >  drivers/staging/rtl8723bs/include/rtw_xmit.h  |  2 +-
> > >  drivers/staging/rtl8723bs/include/sta_info.h  |  2 +-
> > >  drivers/staging/rtl8723bs/include/wifi.h      |  2 +-
> > >  16 files changed, 46 insertions(+), 46 deletions(-)
> > > 
> > > Fabio M. De Francesco
> > 
> > I have no idea how you created this patch series, but I do not think it
> > worked well :(
> > 
> > Please use our standard tools, that do this all for you automatically,
> >
> Apart from the fact that I forgot to save the subject, I didn't know that 
> there are standard tools for doing Patch 0/N. Therefore I thought to make  
> an email message that contained the information about the patch series.
> 
> I was wrong, sorry. I have to research this topic in the git manual or 
> somewhere else.

'git format-patch --cover-letter main..HEAD' will to the trick, if you
are on a different branch from 'main'.  Then edit the 0000-* file and
then send them all off with 'git send-email'.

thanks,

greg k-h

