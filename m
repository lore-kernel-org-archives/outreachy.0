X-GM-THRID: 6801971762574655488
X-Received: by 2002:a05:6512:d0:: with SMTP id c16mr1084695lfp.190.1583772018868;
        Mon, 09 Mar 2020 09:40:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:686:: with SMTP id t6ls1400664lfe.3.gmail; Mon, 09
 Mar 2020 09:40:17 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsKWlTXfq7Tovup6N/cCktqdUBgrkHagma5vaHfWpR/PF5d03I7PDBLDLeh6xlxI9ICKagC
X-Received: by 2002:ac2:5dd0:: with SMTP id x16mr833248lfq.184.1583772017512;
        Mon, 09 Mar 2020 09:40:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583772017; cv=none;
        d=google.com; s=arc-20160816;
        b=skIQ4+17aaFyQrcXH+dMOyCjGhDxyLzo+gYKA6sWi4nH6eJlSIxvSIFtLO86VZpA7O
         VCJGx1IxTxayHjCisHtw3U6e96ne+4SxeqZZ0cvH/WS+n2FCNsvHBk21tzCMx9OD50xX
         j/y5hARRdT6dkW6VmZVsL1OjuOdXgNlT6vzLFayl8Es8apWNSWzVevkp6wP0EmAnZC7X
         d/AO0cJxIc3i7fGj4haIjF5R7NWlrEg1dmgwIpPKpPjdfBBfCWSprcOkMMbImjSKLkRW
         uoMRB+uEVah92vSpt5gbVAzmsLLam8SyLiJPEegs8ZGhpBcgipygmKceF6fwJqHehlE2
         evHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=RdqvNPT4kEdikqQm1sf5yqD8tbQveS1K9csscNa3cgk=;
        b=anPqBP26ApcpwnIpOERgDL3+r/dBYUw+si6686T9VCTzYhWtSn+IpXWX76duKyzGu8
         dLGL+4+vB40vfVUrZutLxKYdBBuiGl1kFbIDv7Ulku9sQZuGd028lNSu/R7Isl1dcG3K
         lhWfGM9lJNRMosDkh5Pt+Q1Ibaur4vp8e9ok1b/7ebAAjq7QjTO7ysVWQts5NOX4OyR2
         hTZNISiQQsguS5+N7THrP5qoSmWynZKJ6nKVtASefaxBFDofZSqpMAaYkBcJV3/56dbi
         YQW1o0363BkVBxv6Ngw5bNU9MJEF2/co+Nxyhp8NzyXi/LJ3niQledAWfVaSgmLEIryS
         40uA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b="S/sQL2FS";
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::541 as permitted sender) smtp.mailfrom=lu@pplo.net
Return-Path: <lu@pplo.net>
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com. [2a00:1450:4864:20::541])
        by gmr-mx.google.com with ESMTPS id r20si279222ljp.5.2020.03.09.09.40.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Mar 2020 09:40:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::541 as permitted sender) client-ip=2a00:1450:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b="S/sQL2FS";
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::541 as permitted sender) smtp.mailfrom=lu@pplo.net
Received: by mail-ed1-x541.google.com with SMTP id z65so6837377ede.0
        for <outreachy-kernel@googlegroups.com>; Mon, 09 Mar 2020 09:40:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pplo.net; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=RdqvNPT4kEdikqQm1sf5yqD8tbQveS1K9csscNa3cgk=;
        b=S/sQL2FSu7MtKPioT1UL9IFMu0Yc9Vz865OBg52FVwoszRv47J+9RJ9wAcpZvKe/kB
         r+OSF6GrpGgv3v2Dh7OqKTwHNIArEYymps8h16+el/xZ1xM+sQefKzrm1zz0OwAFPALh
         FsjGHukyaSgfNsb5xNrvyaq6Eup8vESHCeMHk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=RdqvNPT4kEdikqQm1sf5yqD8tbQveS1K9csscNa3cgk=;
        b=TKIHxLSg38Ud8l4/bxVacEPoDljITaVqjNdJ64iC0GDyRf3sBVauXxlAeDNXmPGSuI
         3T6OHZw7vnLEArhOzDYfykCh/ntD/Wi9Bw+WyLW4543FI1kXrEJjBRA28QJhfVLiLc9G
         xlxozD1S0t2c/oPtZZBGDD6b9LekoEW0RZ3f9IRPtpo7I2k+92bwbGd71pEwR8CUScAF
         8p7oPXFqPJRLFYflBLRL0Q4kGQjVFGq9L3xOq42tea3m3WnD8bTKzEGvSn/EfR+k/E6/
         Hcil95Sq7yNXvFrDUl0e+xTBf7D1J2H4qI08DmaR/9FkmYrY43mALpSAsuBxXdkRLYgm
         wYcA==
X-Gm-Message-State: ANhLgQ0xnHzQ4E2vHhPE01e7Dw74TIl/okO2ob9xsxr1THo2dVNWkjPa
	KC3ur2izyf4mWFtdcevRzwk1hg==
X-Received: by 2002:a50:ec0b:: with SMTP id g11mr10641419edr.80.1583772016872;
        Mon, 09 Mar 2020 09:40:16 -0700 (PDT)
Return-Path: <lu@pplo.net>
Received: from supernova (85.251.42.187.dyn.user.ono.com. [85.251.42.187])
        by smtp.gmail.com with ESMTPSA id d2sm2473745edz.1.2020.03.09.09.40.15
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 09 Mar 2020 09:40:16 -0700 (PDT)
Date: Mon, 9 Mar 2020 17:40:14 +0100
From: Lourdes Pedrajas <lu@pplo.net>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] A question: commented out code
Message-ID: <20200309164014.GC3949@supernova>
References: <20200308224412.GA14124@supernova>
 <alpine.DEB.2.21.2003090836290.2676@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.2003090836290.2676@hadrien>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Mon, Mar 09, 2020 at 08:37:26AM +0100, Julia Lawall wrote:
> On Sun, 8 Mar 2020, Lourdes Pedrajas wrote:
> 
> > Is removing commented out, unused code, a good cleanup patch? I'm
> > wondering that maybe that code is there for a reason. I checked TODO files
> > prior to removing that code to see if they provide a reason, but for the files
> > I edited, they did not.
> 
> The general principle is that it should go.  The git history is always
> there, so the code is not lost forever.  You can use your judgement, of
> course.
> 
> julia
> 
I agree, thank you Julia!

