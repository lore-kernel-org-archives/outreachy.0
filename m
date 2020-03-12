X-GM-THRID: 6803294176512311296
X-Received: by 2002:a5d:4acc:: with SMTP id y12mr12122172wrs.385.1584042213682;
        Thu, 12 Mar 2020 12:43:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:5233:: with SMTP id i19ls3561202wra.6.gmail; Thu, 12 Mar
 2020 12:43:32 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtSUijPRswPl9CxBI1wE+55jQtxgSB7pC80GhwTQ/WXwUU0+6t8XuJUU08LmXnpwWH9pYhk
X-Received: by 2002:adf:9204:: with SMTP id 4mr12960422wrj.143.1584042212441;
        Thu, 12 Mar 2020 12:43:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584042212; cv=none;
        d=google.com; s=arc-20160816;
        b=LVowJT9hxpbv2X6untuUClLMNiNFEZcETgVPY5lJ6g8vb+Rh8jWhJWkey160m6+IUh
         3CZmeQdYz+gpg8xcs3hSf+jHF4nC8vh2Y0vwI1uzjB5xVNnvXj5fhaoDvRv/RKFjtK9d
         kLMdqw71vYfgEhx6QYbTmMxYk/Si1OJxDN1amYuJiwU9nP+8XF1fa6R1fftflIb1ItO8
         DtLtNa6eHw9mGNLvsPArPIqHfnpfGZuIYHVAV+Eqf6OrNqrOMaZhoelyG316TsVKRYsU
         V9jfW/RMiGjzeAmHYADSdqvEocCh5PHPZgvakXVu1btIo2vt/+xnrUmjtvesa8mYYhj6
         +f2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=foS3Lq7Xw2BYEFHILo8RRTKqB5yF1mJmAuBZT0Mvad4=;
        b=JkgVgXzKZa71N9wfWxJ7Vo4nG4mRCLychBFJaSCwSTu6POy8+8vxNYycGF9RdevB5J
         Wh0cZVL/vtljrq3FLcC2g33n5w2lGvicEEA7UA6Yb4zv8X10O4Zhs8b4Q/854ieeyBrt
         C4nZdrlgRlRzojWCWUVrqUJsxizwtN8PbDnMuYiYHei3dVGRkwFW2qTux+3zqO3IC/G8
         N5RuDO4Ct1pRPWCI11LaT9ArBwtXJ1JvjpHlL2QKKSa9viETi6y+z0dj3Vy30/owHMHV
         /bNSAzGKMzdTbTNiiXNcyPKLkmt870oa+/YpPK7CJ9gsPFbIuOpqsOuufnx1i+PpgeAh
         7ocA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=gEkTwFXj;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=lu@pplo.net
Return-Path: <lu@pplo.net>
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id y201si88644wmc.0.2020.03.12.12.43.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Mar 2020 12:43:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=gEkTwFXj;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=lu@pplo.net
Received: by mail-wm1-x342.google.com with SMTP id a5so7448419wmb.0
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Mar 2020 12:43:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pplo.net; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=foS3Lq7Xw2BYEFHILo8RRTKqB5yF1mJmAuBZT0Mvad4=;
        b=gEkTwFXjaElZKP9UcUo9AFoXZuwqbRuAtjhlUck+tE6dt+g5iltlk80KMPqLOfQaIA
         M9/u3NItoACTiQkvXfU6bfxqxzZa46BSPlGAlMgSAos3hGrcxFbAg/2LmFV92Kyc6sw9
         gZsBLyAsCH0c1n00x91Wy5EUeLC5kqjjUvDE0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=foS3Lq7Xw2BYEFHILo8RRTKqB5yF1mJmAuBZT0Mvad4=;
        b=r6KYYiYH7eq9DGjEPaPZKidzQa49aSLxigrqCW6/axC7YmEbD9KE6m+jLRp+IX6T0z
         rEsb3lCj6BQ/98HMjS6VyuLookEFkk4nMQeVWHPhhfVUnW+y4lQ+7L3MnfFYN8qkgIb8
         hcjvrQQTJXpwoMUkgT3/Ki6dxyzTmjNdv/d3vKecDhksm6UmM7mzr1vpEGLRS5kh0c3p
         lFBrotZHAMifLkSrN5uDaOyiQtmlLBPaMpR6YnqCn6shqnND+EAA0pyIGgmeQlXplVWr
         42S1BE5FJzaBWvfGtvtA4aZMO76+XQbeepazf8ToFFOIQ7ccnOXPVSBb4lggCNLUAF5s
         VTKA==
X-Gm-Message-State: ANhLgQ0AyAJPSczJO10AERlDtqEmE6wrah6tohwZ1/qKf/3z6Ztsr65W
	EIETe0gtN+eY4SEMRrfLR6pf4w==
X-Received: by 2002:a1c:bcd4:: with SMTP id m203mr6208758wmf.35.1584042212020;
        Thu, 12 Mar 2020 12:43:32 -0700 (PDT)
Return-Path: <lu@pplo.net>
Received: from supernova (85.251.42.187.dyn.user.ono.com. [85.251.42.187])
        by smtp.gmail.com with ESMTPSA id p4sm1538978wma.21.2020.03.12.12.43.30
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 12 Mar 2020 12:43:31 -0700 (PDT)
Date: Thu, 12 Mar 2020 20:43:29 +0100
From: Lourdes Pedrajas <lu@pplo.net>
To: Stefano Brivio <sbrivio@redhat.com>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
	matthias.bgg@gmail.com
Subject: Re: [Outreachy kernel] [PATCH] staging: mt7621-dma: mtk-hsdma: make
 a variable non-volatile
Message-ID: <20200312194329.GC6485@supernova>
References: <20200312121548.6719-1-lu@pplo.net>
 <20200312133112.4f61c60b@elisabeth>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200312133112.4f61c60b@elisabeth>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Thu, Mar 12, 2020 at 01:29:52PM +0100, Greg KH wrote:
> On Thu, Mar 12, 2020 at 01:15:48PM +0100, Lourdes Pedrajas wrote:
> > Change variable declaration volatile unsigned long chan_issued to
> > unsigned long chan_issued
>
> Are you sure this is correct?  Usually a change like this also requires
> some kind of lock somewhere to ensure things work properly (not that it
> is not working properly today...)
>
> But it's not always as simple as just removing 'volatile', otherwise
> that would have been done already.
>
> Please do more work to determine if this is a safe change or not and
> write it all up in the changelog.
>
> thanks,
>
> greg k-h

On Thu, Mar 12, 2020 at 01:31:12PM +0100, Stefano Brivio wrote:
> On Thu, 12 Mar 2020 13:15:48 +0100
> Lourdes Pedrajas <lu@pplo.net> wrote:
> 
> > Change variable declaration volatile unsigned long chan_issued to
> > unsigned long chan_issued
> > 
> > Use of volatile is usually wrong: see Documentation/process/volatile-considered-harmful.rst
> 
> This needs some more details. From that same guide:
> 
>   Patches to remove volatile variables are generally welcome - as
>   long as they come with a justification which shows that the
>   concurrency issues have been properly thought through.
> 
> so, here you need to investigate what that "volatile" was supposed to
> achieve, if it is achieved by other means, if some form of locking is
> needed instead, if we end up in one of the "exception" cases also
> listed in that guide.
> 
> -- 
> Stefano
> 

Indeed, both of you are right. Thank you for pointing me in the right
direction! However, as someone who is new in programming, I find I lack the
knowledge needed to tackle concurrency and locks. Nevertheless, I will do some
research to learn a bit to see if it can be done in a reasonable amount of
time. Sorry :(

Lourdes


