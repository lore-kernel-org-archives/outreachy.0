X-GM-THRID: 6803023005726277632
X-Received: by 2002:a37:5685:: with SMTP id k127mr7908406qkb.481.1584024850208;
        Thu, 12 Mar 2020 07:54:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:a784:: with SMTP id q126ls3017477qke.11.gmail; Thu, 12
 Mar 2020 07:54:08 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtiqAPG0RjydHo6WomM7u+0sycOsi/Vw9UZ1J9HZdncI93gBW6x1ORA3BFslKbQfcrUrFHN
X-Received: by 2002:a37:a08b:: with SMTP id j133mr8536469qke.265.1584024848724;
        Thu, 12 Mar 2020 07:54:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584024848; cv=none;
        d=google.com; s=arc-20160816;
        b=Y4DWanF411cqlstIGVh5zAbjGtLNKoFlpR2dj0mI7KvpASAbFoUU7HiykSlmE6Z57q
         Ozt49pwTUTqEltmpkwkjyrFVTv749w/l1O9S76D0OO9Vi1gPqVYujFkGfMwYho3nTGtd
         h9eJAywr9r4XdElvQmuW1PJOHYHM9pevTr2OjLZmswOu9pj2CLY57xQ9mo/79bn8gjkA
         E94vBvrAKMCDzr1atOkOUsoQvCalKmZwCczADh1RvKb+0E2tvfeYMOz+tEZ6VRQw+z6W
         MSfxovKWAVqtzVfPIK66LsXCIDf37TuPwsRXGxo9UayRd/aZe9xqe4OEkYpZ3QncCwVN
         T9qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:date:from:dkim-signature;
        bh=MvT/BVTIBcG1FAxWSVAeKz31N5UfjYiczXA5MrVm9bU=;
        b=rgHSK4d0n8oetkufMVIBoKBkQv4G2vFAIcCdGKG679o/CacCt/1T8JA4XWPFk9C0yU
         f5tvRnl0fmA3BIJIZ22SmdWI2UeTEfyCFDmNvIzi9V17MwxUX9RVpnFecI/6afSRaxmU
         xSZFdHj/bbbXclkodV49jK+MgW9top83xLfDLNRsAZNfKqeWR/HunglYEpXdmVHQL43H
         nN9FJ+Rnhf5daRxEHRe1foBxkEkg2/+BiNzCf2YWfPDGmpES9adZoLANAUr58ZcIVmap
         7fpmIXj3SRZxbjRH/0EhYOrt9FHO7oA0atEGDpKdnvAO8fQ2C0qLMwpL233SLzPCxV0/
         21Ig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b="HDUrMMl/";
       spf=neutral (google.com: 2607:f8b0:4864:20::544 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Return-Path: <kgupta@es.iitr.ac.in>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id w10si244442qtn.1.2020.03.12.07.54.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Mar 2020 07:54:08 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::544 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b="HDUrMMl/";
       spf=neutral (google.com: 2607:f8b0:4864:20::544 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Received: by mail-pg1-x544.google.com with SMTP id 7so3203331pgr.2
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Mar 2020 07:54:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=es-iitr-ac-in.20150623.gappssmtp.com; s=20150623;
        h=from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=MvT/BVTIBcG1FAxWSVAeKz31N5UfjYiczXA5MrVm9bU=;
        b=HDUrMMl/Gh08uwjuJuajD2Nf91T1uOcD0LKUwBRHRETxy/Lj7tzetmm2845IaOG3Zf
         6JktihLygwJexuGJAizQbZXuzfeJa9O3R4w6ZV5WR7S13g76qVz/ZAnazr5NGmrvKb+B
         yqiGCaNnH80HBZ0vZPYSV6iIAgR1nHuznDGdFb1GXHEdCwyhJvPWaZLxYpnTzpm3ggKO
         FW3v/vK8rJjSg6hU8/aZZI/Hp1deuyPfCP7yv43kssziH0WT4zj0UAhzhNoP5MGJDLD+
         PiO1nH1xtmgL5CTsWFN6AOENuScQ42tSoJ4ZrYDFELTZfI+asosQh0LMAvwkbrOx4Rwu
         Gejg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:date:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=MvT/BVTIBcG1FAxWSVAeKz31N5UfjYiczXA5MrVm9bU=;
        b=WWsvK1kuRDfwaTHIE4G9eYn4+zGLGRRfB2ct2NQVzf46WYmxs+s3Nvtl2yR060lFFN
         dtNvXcjzKpBtKSz6e3OJTstREUWkxmeonOfWkHkRi0Hoez5Y6OHl+iuuP3oLvAIfF2qU
         y4lg4BGlcZVhhzDryKPZNwBJ+YdEFapQqJKVwHVkyThn0ved8aFgWGfUzBku0EwmKsaK
         /DZOxSuJEbdi+vkzNeJ/DQcInAxCxoizXfS+ldZg4Tcy+oKrxLe6eATuu+dD2dBE0E//
         2+kG3aQYZTUZ5faEhejqSqrc3fRaPgUDnCZlxh1LQ/VC9bZudck6MJ9zKRSvvJM/M3Jw
         Mbgg==
X-Gm-Message-State: ANhLgQ1H5ddSH4TBGy9S9yj0lnpxaB6BpQr/gIHRVwPVr+nbp2djF02R
	LTIqYnSNsgGXXWfsJt+2lKPbKA==
X-Received: by 2002:a65:68d9:: with SMTP id k25mr7943821pgt.89.1584024847321;
        Thu, 12 Mar 2020 07:54:07 -0700 (PDT)
Return-Path: <kgupta@es.iitr.ac.in>
Received: from kaaira-HP-Pavilion-Notebook ([103.37.201.175])
        by smtp.gmail.com with ESMTPSA id s20sm9141741pfm.154.2020.03.12.07.54.04
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 12 Mar 2020 07:54:06 -0700 (PDT)
From: Kaaira Gupta <kgupta@es.iitr.ac.in>
X-Google-Original-From: Kaaira Gupta <Kaairakgupta@es.iitr.ac.in>
Date: Thu, 12 Mar 2020 20:23:59 +0530
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Kaaira Gupta <kgupta@es.iitr.ac.in>, Ian Abbott <abbotti@mev.co.uk>,
	H Hartley Sweeten <hsweeten@visionengravers.com>,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 3/5] staging: comedi: drivers: add line after struct
Message-ID: <20200312145359.GC30896@kaaira-HP-Pavilion-Notebook>
References: <20200311184327.25338-1-kgupta@es.iitr.ac.in>
 <20200311184327.25338-4-kgupta@es.iitr.ac.in>
 <20200312081846.GF11746@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200312081846.GF11746@kroah.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Thu, Mar 12, 2020 at 09:18:46AM +0100, Greg Kroah-Hartman wrote:
> On Thu, Mar 12, 2020 at 12:13:25AM +0530, Kaaira Gupta wrote:
> > Add a blank line after struct declaration
> > 
> > Signed-off-by: Kaaira Gupta <kgupta@es.iitr.ac.in>
> > ---
> >  drivers/staging/comedi/drivers/das08.c | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> > diff --git a/drivers/staging/comedi/drivers/das08.c b/drivers/staging/comedi/drivers/das08.c
> > index 65e5f2e6c122..e6c1ff0e5beb 100644
> > --- a/drivers/staging/comedi/drivers/das08.c
> > +++ b/drivers/staging/comedi/drivers/das08.c
> > @@ -141,6 +141,7 @@ static const struct comedi_lrange *const das08_ai_lranges[] = {
> >  static const int das08_pgh_ai_gainlist[] = {
> >  	8, 0, 10, 2, 12, 4, 14, 6, 1, 3, 5, 7
> >  };
> > +
> 
> You said _what_ you did in the changelog (and subject), but not _WHY_
> you did it.

I'll correct it. Thanks!

> 
> thanks,
> 
> greg k-h

