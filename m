X-GM-THRID: 6746031998697996288
X-Received: by 2002:adf:e40c:: with SMTP id g12mr8864948wrm.216.1570713013549;
        Thu, 10 Oct 2019 06:10:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a7b:cf01:: with SMTP id l1ls1441814wmg.0.gmail; Thu, 10 Oct
 2019 06:10:12 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyiuY8OeR4q5ZYd6MG8xbXWlEyUv/N5xuAqUECZyFl2UvF2hKdtCG3MAk+StY8++JwEw9GC
X-Received: by 2002:a7b:c947:: with SMTP id i7mr7774293wml.53.1570713012472;
        Thu, 10 Oct 2019 06:10:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570713012; cv=none;
        d=google.com; s=arc-20160816;
        b=ntKdyGefH9PjTtNX0uSv9GE/DaXl8MXP42syW2AFITmX5WVtmZvJazEI9LPWnwau1l
         smeRZQ1sOSnpzc9aT4rEOFO6ikyqLiW9MLmdnNiqhxUgXRBbli4hH1FDctRdvcrvrPhX
         vBIHFYHaWJA98KzpLhN4RJenXvuJmNReA7QV51v5bbJ5/Q2rPfV1EbBvaA9zTzajpGcG
         Z26LUNGe6ZYEGeTMju6BbwPWSZjJPzl23fQVdjjQilpZdnTXCKz6doPPqhLaXAt3HHhv
         2dNJUGqdqknx+0R0lARbMxoGdfpEFjJKgKcajwaMFeLmKvstR9VgLmgXd5u8e4+NTK4r
         dIDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=bwSvEP+zMkM1DKh014PsaNx+RK06PPmZlBzLBWd2D/s=;
        b=DB00YvNG3KqWU/7fz/5AuXWRBT9XaeSienP3njwACfU2pgJNDKoND6DR7aiHRs5s1Q
         lNy7VeKyh1NC94Y9SebfoP+5XR8TvYTF4orRRyjf7yr9bDa/NPTJxjKDhUdg8Q8LXSek
         s2NbXrbGk9ILMYSA0SXCKcd7v/b9nN46l4m9dG+033gyQXEeX+72yBs6ipB79bR1BJG2
         dxMRoc5m8oVuGmcT3AoOt7fiJcp9N+EQp/Rzx0ciRueXLyM8pa3OBB1ho4camDFXodmY
         w+tqVYrdfjh9L1atYVhm1l0EnvZHdbtvcShkq4uj/u8mse76pvjSXhlsX2CJ7ZCEjzvZ
         GKZw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GLmF1L2i;
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <wambui.karugax@gmail.com>
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id r1si231568wrn.2.2019.10.10.06.10.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Oct 2019 06:10:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of wambui.karugax@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GLmF1L2i;
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x343.google.com with SMTP id i16so6880447wmd.3
        for <outreachy-kernel@googlegroups.com>; Thu, 10 Oct 2019 06:10:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:reply-to:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=bwSvEP+zMkM1DKh014PsaNx+RK06PPmZlBzLBWd2D/s=;
        b=GLmF1L2iKr4VfJm31yyRYV+woXUh9HG/z85Dw4vL7xolhccQ9hdFIKBj1NUGt7BFLG
         ivNokAXVbHJJAhkjrFRctjIAPdwMnpzEqC7foUih9iNIecRgeYofqk7YT7HuzxgqdxLi
         +n50Kpn0iLYCi/QPrLDQMBXwlWzk0HsLGEhLOJ9mKuy8hL2Q3SrVQt9AGWmItixKtaEI
         2zpgT7xO/MaAmhbhMzvM7Fb97HNGYs4i8ZUp5FDE/dpoY6oes1vOS39TrybRoSp9fs9O
         TRc+5YiB0QDgHE5O4kRmBEN8GESNxfNMADfRB3dLUKzPQVUMkIyezYSBHbc4Mrg7EWr4
         V5bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:reply-to
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=bwSvEP+zMkM1DKh014PsaNx+RK06PPmZlBzLBWd2D/s=;
        b=EIL3WM0pceopaMe3Uy0mHUHZs5WXD3WF5IkcvJGvPdxVlp+fKtctlo7bYPaqs834Up
         Bh90GsrdMiCtsm58peufrMY/xhcSG5TOouXoMXGNr8MZTxK4DskQYGsRFswgLWeO+uuH
         TUd4M/D9yNeiw17b/R171TLBHVxvwHBYdUY9VYItZZf9n+/qdmGIj+wN2zUqoZXkhAA/
         pbbKmXG+um2DtvLpNrpNpLODy5NWS8Jjh8VYwoot/ysP0RYj0I09uUbYGwWb5CHdncVk
         7IbFXZ23gqD1OO5hfqZcRz2RpyOnGWKnL9i4FcU7tmd9e3+IGGzxZS/1pD9hyOwl/zvc
         xKfQ==
X-Gm-Message-State: APjAAAXeKSZ8pHdYG00lpaAwcn+2MebdMVPSBkMt9fuktG+OCCY8zH2q
	eXlFcyz3ueIYf6GKGhkcAykbU6fcYuT2IQ==
X-Received: by 2002:a05:600c:2319:: with SMTP id 25mr7877228wmo.141.1570713012123;
        Thu, 10 Oct 2019 06:10:12 -0700 (PDT)
Return-Path: <wambui.karugax@gmail.com>
Received: from wambui ([197.254.95.158])
        by smtp.gmail.com with ESMTPSA id y186sm9266172wmd.26.2019.10.10.06.10.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2019 06:10:11 -0700 (PDT)
Date: Thu, 10 Oct 2019 16:10:07 +0300
From: Wambui Karuga <wambui.karugax@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2 1/4] staging: rtl8723bs: Remove comparisons to NULL in
 conditionals
Message-ID: <20191010131007.GB15405@wambui>
Reply-To: 20191010085916.GA452879@kroah.com
References: <cover.1570682635.git.wambui.karugax@gmail.com>
 <da71920fa80298badcced3519f2b84afbdd28a7e.1570682635.git.wambui.karugax@gmail.com>
 <20191010085916.GA452879@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191010085916.GA452879@kroah.com>
User-Agent: Mutt/1.12.1 (2019-06-15)

On Thu, Oct 10, 2019 at 10:59:16AM +0200, Greg KH wrote:
> On Thu, Oct 10, 2019 at 07:49:05AM +0300, Wambui Karuga wrote:
> > Remove most comparisons to NULL in conditionals in
> > drivers/staging/rtl8723bs/core/rtw_mlme.c
> > Issues reported by checkpatch.pl as:
> > CHECK: Comparison to NULL could be written
> > 
> > Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
> > ---
> >  drivers/staging/rtl8723bs/core/rtw_mlme.c | 46 +++++++++++------------
> >  1 file changed, 23 insertions(+), 23 deletions(-)
> 
> Due to lots of other changes in this file recently, this patch does not
> apply, and so the rest of this series does not apply either.
> 
> Can you please rebase this against my staging-testing branch and resend?
> 
> thanks,
> 
> greg k-h

Will do! Thanks

Wambui Karuga

