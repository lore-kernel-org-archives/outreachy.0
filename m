X-GM-THRID: 6673132168254849024
X-Received: by 2002:a63:f252:: with SMTP id d18mr917356pgk.69.1554217093228;
        Tue, 02 Apr 2019 07:58:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:7581:: with SMTP id j1ls309479pll.9.gmail; Tue, 02
 Apr 2019 07:58:12 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyjwDAemMeIe0/AdZKPf/s+89v8/XjaivCpm+hk4SOYv3TbqUtNj9LE5l0QWffLbbVaFdgC
X-Received: by 2002:a17:902:a5cb:: with SMTP id t11mr1906654plq.115.1554217092537;
        Tue, 02 Apr 2019 07:58:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554217092; cv=none;
        d=google.com; s=arc-20160816;
        b=T3/AJhZugcaFXKiJunF7lp7zzJrqcHvQJQ1fHbz3wHa3dceVCetck9n14Kj7uJJ5Cb
         YuM8ZFnkGYpcvTh5HUeX0F9U2j4niuhr0tMQk6plLPr+fbfdid6LT6yi+AJgpLNxKM9P
         g2Q9GFtgAjWwd7XzKwnrxAWdRsUBsfHJ63qVRAaUh74052iFYTxdhaM48iohZwPbDiiF
         zJ2shtyCUVxMTRgPhhCk6lZjvWzCeC5mWuQwWB/YNwsFGyqsfc1T82+m4Ckjs7FSuUe+
         2f6xjOOe4uMLQmVmtd992zybu3gE4kEQ29ntNGvU46UxLkLxrtFH4htIQiqjbMFIOr62
         VQtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=cLUPydfaZPZxbXLGbXmToHN/MKcAfTXy/XeUcucUvmY=;
        b=i19ZRNFFVcdhMbfq+h18Sa4LPAoD4LZJfsv/H7V3mH4/OXQCafa9DuIhXNEePWD7+0
         w714B402snhlY6zfQqQv03aNuG0bCTKrb9xab/nqUnZb8NZEyKjUbyQbiwn6DVYUF4qM
         oVD46MJ5a7DWFNzmpUDQU1tKwe1hsSPmNkJ4EnXw+kxgfoqk7q/MvhnC401HFpQkardJ
         MVJ7Ai6AIircvdDSp4g4STn9e9/B8KHhQAtUWcxbDFPLvnwBW+sDeyZjNLQDjgyOdLJe
         BX/t524KUeeuWCa4IUun4K+sE6JM1/8Zpbpnd63fBSPV17+khU73T3A7NGJttZkvCHEI
         z4yQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oIRiLaUe;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::22f as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x22f.google.com (mail-oi1-x22f.google.com. [2607:f8b0:4864:20::22f])
        by gmr-mx.google.com with ESMTPS id g13si792774pfm.1.2019.04.02.07.58.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Apr 2019 07:58:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::22f as permitted sender) client-ip=2607:f8b0:4864:20::22f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oIRiLaUe;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::22f as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x22f.google.com with SMTP id y84so10692584oia.12
        for <outreachy-kernel@googlegroups.com>; Tue, 02 Apr 2019 07:58:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=cLUPydfaZPZxbXLGbXmToHN/MKcAfTXy/XeUcucUvmY=;
        b=oIRiLaUezhNa/kQ3UMnI99wDY6fjdP26e5/YU8Tlr1ldI44kY6uv6GTbhCKY8nSEoh
         yva28d1uETsj16ilQisX2jjBtJRhYs90fLvfMA7gxTebqB+f0WEIhVp7GPjTOpyxrcoz
         sEB774b47xNg1iALnYy6iZvXQc2BQKWREXbeVLPSzWDvLO1egk9UyHPN0hXjdKS/68Qg
         W6IgtTU9Qb1+pQ3LNMyQgJqawgoLoPdBH9+Gr9tqu3yksRvVZi60Zsqspahg4MYiOw1q
         PivsssI+9k+r7Hv9z/X5vlf3bfNsnrh1LuJSBg6wVhhPGdyWnLkCU3MWiwVhqfLcKHsO
         RoKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=cLUPydfaZPZxbXLGbXmToHN/MKcAfTXy/XeUcucUvmY=;
        b=W3khFwMxIU2dz1bnLM4hX/piP8coZ9a4UALWmU9CNiGTs17kgVr7NF8Rys/OeAwszl
         WPrtP+1DKjthZmOqSr10GxFVKipqHj74vZiGVH0VmmutjsL701gVbzlQU8jx0l45EPLk
         +xvYs90H9pUSLi42YXOyvyFn7dHV9w2/fUSw/1Gfc3Kel6sZZIPf6W+TnZG12CEvWi6d
         bW2SkWShxuljeQIe5Io8bcRKnkJysmrZmixtzgfy0mx9sz6vfFzYLDsc2JnYj8bZsKv9
         t8S/hxc66jEFGZGq03MijToyGs1NXiQcOCCDnaXS769YG9aNgkNfUrSZDMO/LCrW33UP
         LvCQ==
X-Gm-Message-State: APjAAAVqgkDjl6WUw42odqt43uULffEHy5CsqxSW/cmr34Y5YhSby8y7
	jPF/5kEvX693jYygDhJLB42YBgI67Q8=
X-Received: by 2002:aca:5241:: with SMTP id g62mr12122825oib.103.1554217091968;
        Tue, 02 Apr 2019 07:58:11 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:606d:35a4:8fe3:3a02:b8fd])
        by smtp.gmail.com with ESMTPSA id w187sm5579515oif.36.2019.04.02.07.58.10
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 02 Apr 2019 07:58:11 -0700 (PDT)
Date: Tue, 2 Apr 2019 09:58:09 -0500
From: Madhumthia Prabakaran <madhumithabiw@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] Staging: media: davinci_vpfe: Convert ceil macro into
 an inline function
Message-ID: <20190402145807.GA15119@madhuleo>
References: <20190327180052.30298-1-madhumithabiw@gmail.com>
 <20190329160451.GA6197@kroah.com>
 <20190401223215.GA30112@madhuleo>
 <20190402052151.GA11987@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190402052151.GA11987@kroah.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Tue, Apr 02, 2019 at 07:21:51AM +0200, Greg KH wrote:
> On Mon, Apr 01, 2019 at 05:32:16PM -0500, Madhumthia Prabakaran wrote:
> > On Fri, Mar 29, 2019 at 05:04:51PM +0100, Greg KH wrote:
> > > On Wed, Mar 27, 2019 at 01:00:52PM -0500, Madhumitha Prabakaran wrote:
> > > > Convert macro into an inline function in order to maintain Linux kernel
> > > > coding style based on which the inline function is preferable over the
> > > > macro.
> > > > 
> > > > Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> > > > 
> > > > ---
> > > > Changes in v2 -
> > > > 
> > > > - Corrected commit log spelling
> > > > - Made the subject line unique from previous commit
> > > > ---
> > > >  drivers/staging/media/davinci_vpfe/dm365_ipipe.h   | 5 ++++-
> > > >  drivers/staging/media/davinci_vpfe/dm365_resizer.c | 4 ++--
> > > >  2 files changed, 6 insertions(+), 3 deletions(-)
> > > > 
> > > > diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.h b/drivers/staging/media/davinci_vpfe/dm365_ipipe.h
> > > > index 174334b53f96..32dce3c95304 100644
> > > > --- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.h
> > > > +++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.h
> > > > @@ -27,7 +27,10 @@
> > > >  #include "davinci_vpfe_user.h"
> > > >  #include "vpfe_video.h"
> > > >  
> > > > -#define CEIL(a, b)	(((a) + (b-1)) / (b))
> > > > +inline unsigned int ceil(unsigned int a, unsigned int b)
> > > > +{
> > > > +	return ((a + (b - 1)) / b);
> > > > +}
> > > 
> > > Please just convert the caller to use the in-kernel function for this
> > > instead of having a second one in just this driver.
> > 
> > I'm not able to find in-kernel function for ceil. Though there is ceil
> > function in math.h, which has return type of double, and i'm sure that  kernel
> > cann't accept floating type. how can i resolve this issue?
> 
> The kernel does not have a math.h file, I do not think you are looking
> in the kernel include directory.
> 
> Look at DIV_ROUND_UP(), that's what you want, right?

Thanks

> 
> thanks,
> 
> greg k-h

