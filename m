X-GM-THRID: 6803797198848917504
X-Received: by 2002:ac8:310b:: with SMTP id g11mr4535837qtb.128.1584134281342;
        Fri, 13 Mar 2020 14:18:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:a784:: with SMTP id q126ls5584397qke.11.gmail; Fri, 13
 Mar 2020 14:18:00 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vun3/VfNhdAwOFx2OiU8JSw5unKd3t7X+z9KLy3JzTKQWKHrAQHB3MQV/CIuxM29zwtz8rS
X-Received: by 2002:a05:620a:22ea:: with SMTP id p10mr14955238qki.75.1584134280085;
        Fri, 13 Mar 2020 14:18:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584134280; cv=none;
        d=google.com; s=arc-20160816;
        b=NSlS9QXMZYxef58zggv0CYKlDV03b0aO7CwTcOVvWmqnOJqXaVPSFjPic2MJFqOTCX
         MLCN47+Hn1Chgku5i7ploox4m07SEvGFV5lNVGpVLX+qkfZzVBsAWr4FvHbZUtflheFP
         7OW8xbcr6f+RVqSxyyNek87HnMRp2JzZF3ely9EQ32K/fs9MnpMn2VaZLg36ZdffX954
         kqanQL94DJqgRUxrS42aJ8p0p4otXd3Tl+C9HLuWeCIYL3pXDRc+G6/k5UAFZHiPLO1M
         2PHPIp29lxmL3f7IZ2oRsc1WncwOthtSAiO+77DWEAzOsBEL9DQR/49afeNCsQOqA1PF
         ASNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:date:from:dkim-signature;
        bh=JGwh14ZC9jEuLZEmRjHz9S5mhttaKfh3rA1rjasuFF8=;
        b=H9KkZ/cMznpKPt/nvNPF3ZKecBE+hZDCcKyK6cSDzxmJc3kH9lCo0GDQ7dNJp19j0H
         g6PK/gs0Z95xLu1uKy4ExEohU4UdwV5G+hlHcNYDXDcwUgBTFfM5yKCcHipwtZyfPeaj
         73yP+g+KtK/i8VXvE7rJLpYo22Vc+LdQXvYjKPzseM9TOoVsLBKRDrM1jlpgMEOBM2Dv
         h+yCHNLNjE/yyKvgxo4FAMDN59caOflxv2UiTl9O/jijunQok0qqUefveszvFzvJgrTv
         +iJ994fBoMe08YdCemNAVT1UvZXyknEGMkdFfa0yXombQwRr/549CZrsd+1BfU1wOXC+
         /vDg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=YmCWzFsL;
       spf=neutral (google.com: 2607:f8b0:4864:20::643 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Return-Path: <kgupta@es.iitr.ac.in>
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id c6si688968qko.3.2020.03.13.14.17.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2020 14:17:57 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::643 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) client-ip=2607:f8b0:4864:20::643;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=YmCWzFsL;
       spf=neutral (google.com: 2607:f8b0:4864:20::643 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Received: by mail-pl1-x643.google.com with SMTP id d9so4855698plo.11
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2020 14:17:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=es-iitr-ac-in.20150623.gappssmtp.com; s=20150623;
        h=from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=JGwh14ZC9jEuLZEmRjHz9S5mhttaKfh3rA1rjasuFF8=;
        b=YmCWzFsLibzJAkBOZw+NbgdgAfkQXRuZzreTg3ax+I1/A66kXVI3pLFqz3+1QlcU1n
         QglPvDpis5AFOfC7A/pcYFQiPVKYBfvNjznkVbvrBWMDCpbSkQV+PUrg1dmkYWaoyoYC
         bQg5ncSscUqOeh1ECMCYCIRYO+T+3VsjTRZemXeSu5i2sq3ZCnjXgf12G2MUg817yFMo
         FLO16IdWaERsq9IjTRAt/pBrP78VRc4djQphH3OoS8NBhO/9PF18Wybzi/RKtv8pJhhE
         hUI3OCcgXynseRngGRNFE0zlFBmEZmY+3wL6BuqEX2n+EvbPATZeYNduje7VpCNrHNGq
         dEPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:date:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=JGwh14ZC9jEuLZEmRjHz9S5mhttaKfh3rA1rjasuFF8=;
        b=XjlEtNyFUQJldTnCieyKCwKusQmzv3GXXcww0V82UrLQJ0sXRWHFZgDkjC0qpoRpf2
         bKXiWNSunaA4lrcw1Ij8gAzxlB2VBhB54jh0EOp5O6bNt6pNb/U5nsJoXOog+N6hbXHR
         7rYntrdif96H9sO5PYSOwGqDXkEEf6mw8VU1v/GEMk72XLicHSCJPoWLQLo5jB3t1O+x
         cxTDUg0Q96aH3rT7RSsA7ng1OaB2zNNfsArHFi/Ych/G9jL/tRILYZkm6SSBaz/ioYSf
         uFKvsQR3MRIqiQaC1xs+8ciY0Wvd9uzPS5U8AbXMiIlYwrY94m6wc18FIjFZUa/91aUd
         vRxA==
X-Gm-Message-State: ANhLgQ3idP+EyrgDWPpLNjqhnwZvXHtXtXS+vEBTAFpDmjCcB01Ow1Gg
	VkfB3DPUx7JHdcnkhxz9kJqGIpjkL0c=
X-Received: by 2002:a17:90a:ae16:: with SMTP id t22mr11721778pjq.34.1584134276385;
        Fri, 13 Mar 2020 14:17:56 -0700 (PDT)
Return-Path: <kgupta@es.iitr.ac.in>
Received: from kaaira-HP-Pavilion-Notebook ([103.113.213.153])
        by smtp.gmail.com with ESMTPSA id 3sm13102538pjg.27.2020.03.13.14.17.53
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 13 Mar 2020 14:17:55 -0700 (PDT)
From: Kaaira Gupta <kgupta@es.iitr.ac.in>
X-Google-Original-From: Kaaira Gupta <Kaairakgupta@es.iitr.ac.in>
Date: Sat, 14 Mar 2020 02:47:49 +0530
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Kaaira Gupta <kgupta@es.iitr.ac.in>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 4/5] staging: media: hanto: remove
 parentheses
Message-ID: <20200313211749.GA1148@kaaira-HP-Pavilion-Notebook>
References: <20200313204739.32676-1-kgupta@es.iitr.ac.in>
 <20200313204739.32676-5-kgupta@es.iitr.ac.in>
 <alpine.DEB.2.21.2003132206050.2355@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.2003132206050.2355@hadrien>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Fri, Mar 13, 2020 at 10:06:46PM +0100, Julia Lawall wrote:
> 
> 
> On Sat, 14 Mar 2020, Kaaira Gupta wrote:
> 
> > Remove unnecessary parentheses in file hantro_postproc.c. Check reported
> > by coccinelle.
> >
> > Signed-off-by: Kaaira Gupta <kgupta@es.iitr.ac.in>
> > ---
> >  drivers/staging/media/hantro/hantro_postproc.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/staging/media/hantro/hantro_postproc.c b/drivers/staging/media/hantro/hantro_postproc.c
> > index 28a85d301d7f..d99238f4753c 100644
> > --- a/drivers/staging/media/hantro/hantro_postproc.c
> > +++ b/drivers/staging/media/hantro/hantro_postproc.c
> > @@ -15,14 +15,14 @@
> >  #define HANTRO_PP_REG_WRITE(vpu, reg_name, val) \
> >  { \
> >  	hantro_reg_write((vpu), \
> > -			 &((vpu)->variant->postproc_regs->reg_name), \
> > +			 &(vpu)->variant->postproc_regs->reg_name, \
> >  			 (val)); \
> >  }
> >
> >  #define HANTRO_PP_REG_WRITE_S(vpu, reg_name, val) \
> >  { \
> >  	hantro_reg_write_s((vpu), \
> > -			   &((vpu)->variant->postproc_regs->reg_name), \
> > +			   &(vpu)->variant->postproc_regs->reg_name, \
> >  			   (val)); \
> >  }
> 
> I don't think that vpu and val need parentheses either, ie the occurrence
> of vpu that is the first argument to hantro_reg_write_s.

Yes, you are right! I'll remove them as well.
Thanks.

> 
> julia
> 
> >
> > --
> > 2.17.1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200313204739.32676-5-kgupta%40es.iitr.ac.in.
> >

