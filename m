X-GM-THRID: 6330674938515554304
X-Received: by 10.157.16.4 with SMTP id h4mr27581ote.142.1474029289196;
        Fri, 16 Sep 2016 05:34:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.61.202 with SMTP id l68ls6097720otc.1.gmail; Fri, 16 Sep
 2016 05:34:48 -0700 (PDT)
X-Received: by 10.129.41.14 with SMTP id p14mr23105ywp.91.1474029288790;
        Fri, 16 Sep 2016 05:34:48 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id um12si2516040pab.2.2016.09.16.05.34.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Sep 2016 05:34:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id n24so3600493pfb.3
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Sep 2016 05:34:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=yBXtg4dRH43XIemlvlF+xPXFdSAvX1hrEMG6gO01qAA=;
        b=EDL9QdldxcCbks5UJmwxCpuFEEcPmxa/JTGoFvTGCHDADUvrQZJs7qg7VoOopPkPUa
         Ewupm7in+h42ihfxBqc8YnLYk0iAUESszbWSLKtBwIHVdP5UZ4UHIj6OY87gLMafmO6g
         6tvzq31wp5/GGjbtimLFOzMu3kiwgPoaD56u/mqnxZE8QV5glXenKgH3+AWfF5ICfbxL
         RfM9yid7pzKqSPXFWmH/GfSZpQ1FdA6LT07LM+XGoqGZO7mu/ZfYicj4nMTpUoKfVSCp
         7ZQb78MXMogPvJw8wkCHsqBQNwjgt5YC+2pJEdB6ijtVElu0Cs7NDFts2eliXaArzpJK
         x1qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=yBXtg4dRH43XIemlvlF+xPXFdSAvX1hrEMG6gO01qAA=;
        b=PnRVSsQBwKixGb6C9yZHaZNTUgdxNRKE5ZLsaJAPVXb5vBw4PIwjnwTO6Q1VC4lg2k
         90KhXkbeYMtHzMNTq2RCNszMX7PmdiiPCZjW5SkoTJbiYAsP5L4gyuNiI/oBjdC9idFP
         rtHz9FR24GBJgW3gPbgyhzqs82u5d85U+dfI3vpY7feoHXXzKj5f9BoVFpHSMv+V6dud
         Priqao5lYZ69H8GDoEyamNs7gR9AnwILXCVaM80cwkWilWLQeK3eQ4qeZg63bHuGB3OM
         dn9Uv6CN1skfmhAXcxPSWTVCVbt2EtRqr2/K8vD8HscwhjoRVBLwUeVla2tiKn/4y9A0
         f0lg==
X-Gm-Message-State: AE9vXwO/xr84r3JUgVgVxmzyHS0wUsE3u/F2Z3W5/MQF6BgrPFR8Wf83SeXcitxDFoCCeA==
X-Received: by 10.98.135.136 with SMTP id i130mr4036524pfe.145.1474029288569;
        Fri, 16 Sep 2016 05:34:48 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id h67sm23457709pfg.32.2016.09.16.05.34.46
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Sep 2016 05:34:47 -0700 (PDT)
Date: Fri, 16 Sep 2016 18:04:39 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com,
	Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
	Teddy Wang <teddy.wang@siliconmotion.com>
Subject: Re: [PATCH 3/5] staging: sm750fb: Remove multiple assignments
Message-ID: <20160916123439.GA15179@toblerone>
References: <cover.1473975000.git.aquannie@gmail.com>
 <c17c465dbd39a511c51f53c7752b2ca87cab4da5.1473975000.git.aquannie@gmail.com>
 <20160916074859.GB20608@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160916074859.GB20608@kroah.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Fri, Sep 16, 2016 at 09:48:59AM +0200, Greg Kroah-Hartman wrote:
> On Fri, Sep 16, 2016 at 03:03:02AM +0530, Rehas Sachdeva wrote:
> > Fixes multiple assignments of the form 'x = y = k' to 'x = k; y = k;'. Issue
> > detected by checkpatch.
> > 
> > Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
> > ---
> >  drivers/staging/sm750fb/sm750.c | 12 ++++++++----
> >  1 file changed, 8 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
> > index 7d90e25..9f1b591 100644
> > --- a/drivers/staging/sm750fb/sm750.c
> > +++ b/drivers/staging/sm750fb/sm750.c
> > @@ -365,7 +365,8 @@ static int lynxfb_ops_set_par(struct fb_info *info)
> >  		ret = -EINVAL;
> >  		break;
> >  	}
> > -	var->height = var->width = -1;
> > +	var->height = -1;
> > +	var->width = -1;
> 
> that's an odd change, isn't the first version of all of these more
> readable?
> 
> thanks,
> 
> greg k-h

Hi Greg,

This is an odd change indeed, something I saw only in sm750fb, among so many
other drivers. Does that mean that for the sake of uniformity, we should go
ahead with this? Although the first version looks better somehow.

Rehas

