X-GM-THRID: 6658167413174960128
X-Received: by 2002:a6b:f105:: with SMTP id e5mr4657353iog.7.1550593227811;
        Tue, 19 Feb 2019 08:20:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:1cf:: with SMTP id 198ls855184itk.2.canary-gmail; Tue,
 19 Feb 2019 08:20:26 -0800 (PST)
X-Google-Smtp-Source: AHgI3IZUwzpFkXI2Ip/ZLGIjxqA4nNwn1eRBREHlsEtYobcfko2bq4yKtTthAfYhKDWcvp7K+4LB
X-Received: by 2002:a24:5dc9:: with SMTP id w192mr2839803ita.33.1550593226889;
        Tue, 19 Feb 2019 08:20:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550593226; cv=none;
        d=google.com; s=arc-20160816;
        b=XALrn9EGGzh9tCIaG/wWDBfBmPRysB/wZa/Bc1kdWjoyAluiU940DksjV1iXzIE6Fi
         iuD0z9khY+xeK4KdFqz6RF+M0TemdQAc/ly0hh8wvuga0VJVTeJNnswn/xzxHJpv/S7g
         Wn+jBjRJv6vpjiNU2UoIfLfmrkBxSAiF96zQzAOYmZi5Ivek+LMenc7V7lI/nUaIO9Z7
         fZOshfLcwAYVXj45dONtr8vl8TCcklt0QDHlfXYkdNx/Wyqp62KzTxGqf5COF/dUJt27
         JLfbGGChJc2k5geEKXA4W0lrlz2z/JIQFqYuKE4PbkWyVJSDKY6/bsMIkTIyhhcWwxhe
         +kqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=pr9tl/JDHwdzt1+tSKVFFw3SPXQle0nQ1ylbiCPnhaE=;
        b=aGjCVphAhg6DdDhTQTqu5+DQbc13LbDP+gT2FgOoHwvCWZvZBqn78Zm1KISRCEsHbM
         NqT5zV52rQ6f1pT70+yBVVv+9EfXVwh7U/tbG3ruL1EUJ5vUKdNfeUyU3b7lYOxzz8ez
         Nj9Uoa8GAyqyOYZcGtmlNOtNpRiqQW8yt4BIIS5nT27m9JqhtLJnSUmaNzQhsD+PjkRA
         qTyTH2ErMNuYzw35cLP+IZBQ6WGJ5pXEWC+gINVvH2n9I1V3ItYr2jkK5cETj7sCXghd
         JvKZ3rgJPOqQjorOgSrrP0SH/EFbYxUKGYsJh1cn6X088rLsJmyS/QlhpSVBedPipK0G
         v+hQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Y8CMhF/a";
       spf=pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::633 as permitted sender) smtp.mailfrom=himanshujha199640@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himanshujha199640@gmail.com>
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com. [2607:f8b0:4864:20::633])
        by gmr-mx.google.com with ESMTPS id j6si98834itb.0.2019.02.19.08.20.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Feb 2019 08:20:26 -0800 (PST)
Received-SPF: pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::633 as permitted sender) client-ip=2607:f8b0:4864:20::633;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Y8CMhF/a";
       spf=pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::633 as permitted sender) smtp.mailfrom=himanshujha199640@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x633.google.com with SMTP id p8so10674434plo.2
        for <outreachy-kernel@googlegroups.com>; Tue, 19 Feb 2019 08:20:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=pr9tl/JDHwdzt1+tSKVFFw3SPXQle0nQ1ylbiCPnhaE=;
        b=Y8CMhF/apP2jGBnn6HMHhQCsqmgJf2SZgdDopz0To6OLKg8KNHY7rQ3l6N56+HkWP4
         7z8ZIyAucrgP9rXS4R9QoFPRnbFJC8cfbqP3PAbDptcEWJYwhK1jI2fcFZSh5IYOoA+n
         l413EyJowV23TtfaYhMIBDyzSNTOB+51cCHLEDIsG9HL2eXhnw9sjQMfg2fHX7dYkVf3
         C1Dbc9UplTH8SSj5Ju8W4j94knt5OZ3joNJWrO7AJPgfDt60TGfibq4g+65oYI/pMKYI
         P4XnXwoTQ9XRADK1tywrT6+M8Utr6u6kjd8ExWuaM9boKkbSO/silm3GzOFVc1yDSp7s
         wlPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=pr9tl/JDHwdzt1+tSKVFFw3SPXQle0nQ1ylbiCPnhaE=;
        b=i78aZQgEmABH6dUCZXYJ83N4WakyvkGvBb30STmKW2Do1lzRhu1H8tQq3ua/EdO8bL
         +SSkopJ+esl/u6DJKfpIQ8i4sxmcrzrzrgJ7mOi984uSBWosXoxUEeYXUs3ky+Mz1dK5
         PR5vnfRHp0stOrqr2V2t9DObgoPk3gEsaMhtYH1ltm61eJKSbJsbO8VpSSm6BWMnept/
         dxX7x+Ze33t0s91LZJ0NPHUavqzcFaM629HbH4MYS1bcNX79f1SFTICjXWiKGyDOnIlz
         PlNnVjAV4xkUQCpRH3k3i8yfZ0W697c3Wbgs+Wk8F1Yg+mvHPO6yNgRX3nIJZP98kUNL
         bE4A==
X-Gm-Message-State: AHQUAub3W+kk/PIIL8HATNJTGh1imlQ7RCWqesPz/q3JGz8vazbQx3TH
	47G4PUFN+MgkiWzojRLCd1o=
X-Received: by 2002:a17:902:6949:: with SMTP id k9mr32226712plt.188.1550593226528;
        Tue, 19 Feb 2019 08:20:26 -0800 (PST)
Return-Path: <himanshujha199640@gmail.com>
Received: from himanshu-Vostro-3559 ([103.77.40.122])
        by smtp.gmail.com with ESMTPSA id j68sm5363309pfc.64.2019.02.19.08.20.23
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 19 Feb 2019 08:20:25 -0800 (PST)
Date: Tue, 19 Feb 2019 21:50:19 +0530
From: Himanshu Jha <himanshujha199640@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: supriya supugade <supu024135@gmail.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] I didnt get message in log like "I can modify
 the Linux kernel!"
Message-ID: <20190219162019.GD18454@himanshu-Vostro-3559>
References: <8f0752e6-39e1-4047-8899-19866fdfe045@googlegroups.com>
 <20190219155942.GB18454@himanshu-Vostro-3559>
 <alpine.DEB.2.20.1902191703400.3588@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1902191703400.3588@hadrien>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Tue, Feb 19, 2019 at 05:04:53PM +0100, Julia Lawall wrote:
> 
> 
> On Tue, 19 Feb 2019, Himanshu Jha wrote:
> 
> > On Fri, Feb 15, 2019 at 02:10:04AM -0800, supriya supugade wrote:
> > >
> > > I am following the link "https://kernelnewbies.org/FirstKernelPatch"
> > >
> > > and modifying the driver in native Linux. I made a change in the
> > > e1000_main.c file i.e inserted the line
> > >
> > > "printk(KERN_DEBUG "I can modify the Linux kernel!\n");" After recompiling
> > > the kernel and rebooting it, I don't get the
> > >
> > > message "I can modify the Linux kernel!\" in the log files on typing "dmesg
> > > | less". I am getting following error during installing changes.
> > >
> > > Makefile:1281: recipe for target '_modinst_' failed
> > > make[1]: *** [_modinst_] Error 2
> > > Makefile:296: recipe for target '__build_one_by_one' failed
> > > make: *** [__build_one_by_one] Error 2
> > >
> > > How should I proceed further?
> >
> > Post your .config and full logs using pastebin.
> >
> > I saw one more fellow struggling with this on kernelnewbies.
> 
> Did you see the discussion here:
> 
> https://www.linuxquestions.org/questions/linux-software-2/kernel-building-install-error-4175608377/

I just googled "make: *** [__build_one_by_one] Error 2" and
this pops up as the very first link.

If this is the solution you guys are looking, then it very
sad :(

I didn't check this becuase I saw this question atleast posted
thrice and assumed some new issue has popped up.

> It concludes with:
> 
> I suggest you go through the building process in separate steps instead of
> "make ... install" in one go.



-- 
Himanshu Jha
Undergraduate Student
Department of Electronics & Communication
Guru Tegh Bahadur Institute of Technology

