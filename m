X-GM-THRID: 7024064041486123008
X-Received: by 2002:adf:da44:: with SMTP id r4mr5161297wrl.180.1635421723456;
        Thu, 28 Oct 2021 04:48:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:8b92:: with SMTP id o18ls3384579wra.0.gmail; Thu, 28 Oct
 2021 04:48:41 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy+sL7Q7ZwjmICC9yjYKIzS0l2DlFmLsu4yU5MbNv4iPjFXFQ2RWW7vf/yKobTJ8RFGDLqd
X-Received: by 2002:a05:6000:1246:: with SMTP id j6mr5021949wrx.240.1635421721942;
        Thu, 28 Oct 2021 04:48:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1635421721; cv=none;
        d=google.com; s=arc-20160816;
        b=MOnVCi9MIteO4x42niqsp4bZZvrSFuyuir5IIiar/KBwusFJ3BPN3dOLx0QNFFi2DX
         FG1Av/gJ/xtRi3kYbX68/IAbNgYu4ybIQwUKzM7+mAdqQ6oveP8NbzOfAU3PDAtU5axv
         hflJaL+2WUcc5G4OYVxMBhArthXVqGSVM57rxKptvvRrp6T+lEBQJT1YYb5sBon9verK
         5gS2pS6wFbcy2+wS9azs+UdAkQrhhsT1cwU4SA9tdgh5tc6eNrPkPmG0/NXNL4ppNa0e
         bmLhNCe6ix033zwpBheRXBnlyuQ24/Q2l33KRt7N0ntbVdFtsdXSjn5sAcrirGANNJMB
         +etg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=oFqtoBu84uWB8xzASyVCnCV1AZJEfiefbpv4BLpVjpM=;
        b=o6xo56TSO61dJMHAnwSeFotJ+lYcL8rAqGDu3z/vGon++87INDiLxLbXYmP2lqCzt5
         a5o0Ys9aLBe3Kzj8kAOCSHyqF6XOQbNUUWE0D3tgqgsegVm5IFFqD2vqpxsi3MOoxDn4
         LuvoYhKGGCD7uIaMfzP7z0W5Ae56+Gmf8CVjU2BVf01UKvfFXDotGUAatPs1S4X++nHF
         XVIL7o4nvdu7LF1HKHyY12eo8ukqZGirgpN3DCYkVvLx3T3Do+RsLwSoWuppvarv8Q2j
         nD1dhLR7Hf0SnjMjrDRqm7+b+J879X7GeIPbdI2Aa6jXaTt19R/PXj9wPrjjLWBMOZbT
         AaKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=TCUTvegl;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52e as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com. [2a00:1450:4864:20::52e])
        by gmr-mx.google.com with ESMTPS id 13si208570wmb.1.2021.10.28.04.48.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Oct 2021 04:48:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52e as permitted sender) client-ip=2a00:1450:4864:20::52e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=TCUTvegl;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52e as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x52e.google.com with SMTP id h7so24076438ede.8
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Oct 2021 04:48:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=oFqtoBu84uWB8xzASyVCnCV1AZJEfiefbpv4BLpVjpM=;
        b=TCUTveglvKDDEt/ik1JrJRQ/hMmJYm3SL9PYaVti2YTY4ZIFfDrOOUojBW+L8EyJKe
         0RF9fbwNuLo5D8ODajEQMJjjCcynLvWtSQfSETZpTJ7LIz1BCKBabYj44gfBH18TWLHu
         eLwgjm6SWwKWWsNigU1HtZaCSgqp2ASOcIAuLhrWf9MPkPO6mrsZRjO6UPq+B3PV1KHF
         5hW3E9UygIiNmU+vAxKyQUAcsE4+DWr/XAbdZvg2eaNPMjWqABliYF4X5erYb2Lnx+vP
         OoEj+6yE9rbv2y0hTsUYxBZ4MhPSYCsgS7y3//a6HY1La2ennBTp8mMh48zgMeQTuAAS
         DAOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=oFqtoBu84uWB8xzASyVCnCV1AZJEfiefbpv4BLpVjpM=;
        b=clA7VCpGeg7FTlRUicR2nCt5iLRKWVEPN8tuNUThseZzqO58CLqLXrr24CCijAiKg+
         D1jcIyM1/6QULL3Tz6Eobm3lkDtsR84mFphKP8uVsq4AaafNiFxwDnBr54+mfQwRn5Ru
         kQ8PhR9kRkFnPXziNVgZVo76OS4F1qChDDHne4q1akdVLHCpQahQzRTClHsVY3RR1+Uz
         hgpF4w05ysnMq6mhe4luUThOZNBGg3zSJAgRlqiI2eFXtB7tRUVBRuTmdM86iHmRi+bn
         h+iCwBJ2+mfbkDaN/cDjhXmU4adOu1/qREw3AnoOnrRCUo6U/pxRd9d0l1/TTs7INDN4
         AVdQ==
X-Gm-Message-State: AOAM531QyKKGNXh9sbbAaWNBxGsXNnRF4ppTnMQwRQQ84fujrxrPtyMi
	hHGYpUeuc3Gx157jtXlWUnw=
X-Received: by 2002:a05:6402:5c2:: with SMTP id n2mr5437501edx.239.1635421721737;
        Thu, 28 Oct 2021 04:48:41 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from localhost.localdomain (host-79-56-54-101.retail.telecomitalia.it. [79.56.54.101])
        by smtp.gmail.com with ESMTPSA id i15sm1558045edk.2.2021.10.28.04.48.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Oct 2021 04:48:41 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, forest@alittletooquiet.net, linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org, Karolina Drobnik <karolinadrobnik@gmail.com>, Karolina Drobnik <karolinadrobnik@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 4/7] staging: vt6655: Introduce `data` temporary variable
Date: Thu, 28 Oct 2021 13:48:40 +0200
Message-ID: <39890856.3BBMun7449@localhost.localdomain>
In-Reply-To: <alpine.DEB.2.22.394.2110281332040.9518@hadrien>
References: <cover.1635415820.git.karolinadrobnik@gmail.com> <2039159.k92FijXA2m@localhost.localdomain> <alpine.DEB.2.22.394.2110281332040.9518@hadrien>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="US-ASCII"

On Thursday, October 28, 2021 1:32:58 PM CEST Julia Lawall wrote:
> 
> On Thu, 28 Oct 2021, Fabio M. De Francesco wrote:
> 
> > On Thursday, October 28, 2021 12:35:34 PM CEST Karolina Drobnik wrote:
> > > Add a variable to store initialization tables. Use this variable
> > > in AL2230 initialization.
> > >
> > > Signed-off-by: Karolina Drobnik <karolinadrobnik@gmail.com>
> > > ---
> > >  drivers/staging/vt6655/rf.c | 4 +++-
> > >  1 file changed, 3 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
> > > index ea74701917e5..afd202ea3356 100644
> > > --- a/drivers/staging/vt6655/rf.c
> > > +++ b/drivers/staging/vt6655/rf.c
> > > @@ -684,6 +684,7 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv,
> > unsigned char rf_type,
> > >  	unsigned short idx = MISCFIFO_SYNDATA_IDX;
> > >  	unsigned char init_count = 0;
> > >  	unsigned char sleep_count = 0;
> > > +	const unsigned long *data;
> > >
> > >  	VNSvOutPortW(iobase + MAC_REG_MISCFFNDEX, 0);
> > >  	switch (rf_type) {
> > > @@ -699,8 +700,9 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv,
> > unsigned char rf_type,
> > >  		if (init_count > (MISCFIFO_SYNDATASIZE - 
sleep_count))
> > >  			return false;
> > >
> > > +		data = al2230_init_table;
> > >  		for (i = 0; i < CB_AL2230_INIT_SEQ; i++)
> > > -			MACvSetMISCFifo(priv, idx++,
> > al2230_init_table[i]);
> > > +			MACvSetMISCFifo(priv, idx++, *(data++));
> >
> > Hi Karolina,
> >
> > I think you are using redundant parentheses in "* (data ++)" but 
understand
> > that those increments and dereferences are equivalent to "* data ++"
> > (according to the C precedence rules).
> >
> > Some time ago I suggested that you use those redundant parentheses 
because
> > Greg Kroah-Hartman had previously explained that he prefers not to see
> > "*foo++" because maintainers and reviewers are not required to remember 
the C
> > precedence rules.
> >
> > I hope my suggestion isn't based on a misunderstanding of what Greg wants
> > here and that your patch can be accepted as is.
> >
> > While we are at it, please notice that Maintainers of different 
subsystems
> > may see this topic from a different point of view and that they might 
very
> > well ask you for removing those redundant parentheses.
> >
> > I'd suggest to use grep and find out what is preferred in other 
subsystems,
> > when you want to contribute to other parts of Linux.
> 
> Would it be better as data[i] ?

In this case, yes for sure. It would be better because we are inside a 'for' 
loop where the code already as an "i" index.

I didn't notice that we are inside the loop and just looked at that increment 
and dereference for checking the proper syntax.

> 
> Could there be a better name than "data"?  Perhaps "table"?

Again, yes if we look at what "data" has been assigned with. 

Thanks,

Fabio

> 
> julia
> 
> 
> >
> > Thanks,
> >
> > Fabio
> >
> > >  		MACvSetMISCFifo(priv, idx++,
> > al2230_channel_table0[channel - 1]);
> > >  		MACvSetMISCFifo(priv, idx++,
> > al2230_channel_table1[channel - 1]);
> > > --
> > > 2.30.2
> > >
> > > --
> > > You received this message because you are subscribed to the Google 
Groups
> > "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send 
an
> > email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/
msgid/
> > outreachy-kernel/dc72a4c3539aed70569f66396ed3b51818bc2aea.
> > 1635415820.git.karolinadrobnik%40gmail.com.
> > >
> >
> >
> >
> >
> > --
> > You received this message because you are subscribed to the Google Groups 
"outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an 
email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/
msgid/outreachy-kernel/2039159.k92FijXA2m%40localhost.localdomain.
> >
> 





