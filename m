X-GM-THRID: 6338591064541102080
X-Received: by 10.237.32.228 with SMTP id 91mr4174395qtb.22.1475951402795;
        Sat, 08 Oct 2016 11:30:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.135.70 with SMTP id j67ls138661iod.24.gmail; Sat, 08 Oct
 2016 11:30:02 -0700 (PDT)
X-Received: by 10.66.221.225 with SMTP id qh1mr5533880pac.140.1475951402091;
        Sat, 08 Oct 2016 11:30:02 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id 80si3151514pfw.0.2016.10.08.11.30.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Oct 2016 11:30:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=gnudevliz@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id 190so4718295pfv.1
        for <outreachy-kernel@googlegroups.com>; Sat, 08 Oct 2016 11:30:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=dcgyA+9omE/n0L0EsfZUoEoChAMZD7eIpSBCXkHximI=;
        b=ougOo4DAZhjVZ5HSjENnzmeK3MVops0YhlPNCi+e7nnP/qF+1WGBGvIY9hpVI4ieXt
         AsU9B4yljwOFPgGk6H5JUKkgmGooZtT1Cui4KHkcR38fXnXV3n7tm6IlcVCo50zE3+KF
         6IhiCxEarfmhuf9S08IWPuHr3aRPBo3nQu0YYYkm5DD7/lGYn8kDxkB4kuFfoopnkXEj
         OEaBbhUh0j866a1Mrax+tKJCD0JkWKsoac5hGD1EhoTtm171rTa9BTgeeNRSDmZt45Xt
         Kpedirgasw03IGc3bUC4r7b5R1I8fMZAk89IOGe6QHZKoNiCdq8HgTHPYE4Cp8eBivAI
         Nx9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=dcgyA+9omE/n0L0EsfZUoEoChAMZD7eIpSBCXkHximI=;
        b=I5XPGHZ1c/vOy34gTfhsFpl4VsoWayN0TOu8vg2ClfCxGEkD3rnJcoV9JS1CpkJnmH
         AR5Zr3u5Nux1wt9AZly1NMNnmDnFAjWxZ/+wXE21M0j9EhMwRNxVo4Igl9DL+FtM9eet
         kta2tWM5eFk1ZSshUaTWRp/jSgyGJpPhid9m2fJuYaIdQtXpUh788IKjml1FY078jLFt
         anna/SJwBI1pbmGp8DDUTxQS1R4MrYenFJTXABltIXdcAIZBqqFsK4nRHwIFoPekXZSZ
         1znxIiPuhbZFaO3Djy22IS+x2Y224VfAw45gSa4v4Bs1g+36da80hq2qX+Oe3G8fZ7ho
         VXUg==
X-Gm-Message-State: AA6/9Rk09TdTQr08TD/x1QnpUcpQQrsqEHzLMOGUZBP9rdZ2tXGLlFoNqU5NozQIb1RJlQ==
X-Received: by 10.98.56.147 with SMTP id f141mr38857856pfa.83.1475951401929;
        Sat, 08 Oct 2016 11:30:01 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from localhost ([2601:644:300:fd6b:4e0f:6eff:fe69:e9ea])
        by smtp.gmail.com with ESMTPSA id s1sm39904698paz.47.2016.10.08.11.30.01
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Oct 2016 11:30:01 -0700 (PDT)
Date: Sat, 8 Oct 2016 11:29:59 -0700
From: Elizabeth Ferdman <gnudevliz@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] vc04_services driver question
Message-ID: <20161008182959.GA2175@localhost>
References: <20161007053033.GA13812@localhost>
 <20161007125608.GA1317@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161007125608.GA1317@kroah.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Fri, Oct 07, 2016 at 02:56:08PM +0200, Greg KH wrote:
> On Thu, Oct 06, 2016 at 10:30:34PM -0700, Elizabeth Ferdman wrote:
> > I noticed a new driver vc04_services was just added and that the Kconfig
> > says it depends on BROKEN. The tutorial specifically says not to work on
> > drivers that have that in the depends on line. However, I also noticed
> > that patches were being accepted for rtl8712 and greybus and those
> > have BROKEN in the Kconfig as well... so is it ok to submit patches for
> > that one or even a patchset?
> 
> Yes, but make sure your patches don't make the code worse.  You might be
> able to build BROKEN code under some conditions.
> 
> And the vc04_services code will get that option removed real soon, I
> have a patchset in my queue to fix up the obvious build issues.  Feel
> free to get them out of the driverdevel mailing list archives and apply
> them locally if you wish to start working on that code.
> 

Hey Greg,

I think I figured out how to do that but I think that you did it before
me. I downloaded them off patchwork.kernel.org and did

$ git am --patch-format=mbox path/to/file

I think it failed though since it had already been done.
Anyways, I ran make on the path/to/file.o but I can't get a .o file. Is
it because there's no Makefile in that dir? How do I compile it...?

> thanks,
> 
> greg k-h

