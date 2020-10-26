X-GM-THRID: 6885936091088551936
X-Received: by 2002:a05:6102:22ca:: with SMTP id a10mr19595990vsh.54.1603735180472;
        Mon, 26 Oct 2020 10:59:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:cfc3:: with SMTP id h3ls1065162vsm.5.gmail; Mon, 26 Oct
 2020 10:59:39 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwWj1gUmRXBQWnA1prHDXJvNblfCXEKGcEVfnpFVMs272kUVOjNjLXbaEdZW4oEKO0lwLpD
X-Received: by 2002:a67:c106:: with SMTP id d6mr20628665vsj.3.1603735179155;
        Mon, 26 Oct 2020 10:59:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603735179; cv=none;
        d=google.com; s=arc-20160816;
        b=pwW8nth9+CrJTZm183zjW7i7BIv6N+oXlXCkYvH5MQj9AcBis7V4benk1ujDjZHPBA
         +uJCb5+3FrI2+I8vkWjuZJ+bZBzb1R2dorM9QM6bjiPa/eHLavQcY3QqX1M6YsDBIAu/
         r84X0SomB2RIuKDJiIBHzgKYto9YM4dDCf/3CFK25IePJjbkSy+qHKflz78BJiDWgdl2
         IZ7Dva/AEoqgTDGOqT/M/S+887qPqnchuVJ6DViJUZmwwnTYLjo5WPAdTyAeJbHiAT07
         77tW7lYr9RKa1m73Qx4dVpu2BokSxrau68NvaakIDkTUrL2ORDkecnbaESD6UsCyGqg9
         bdEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ciNA78jzPLJaDoJ3trn3a2BcwF+MJZVxp8NiADrUvu8=;
        b=uimqa1+/Swtkcsr+XvjyTFYgRgKIBnjfrbF2dKJZ0nJnGu8LPwAUicfMKtp+2sp/ni
         KHgORPzO1PYjE/jIiSULnXGpk3PPLiPzwAphX/aBPh3Lrjy76GUhv9YzGzC/ImHy3fsV
         R2KCR/J5CnEgjGE2EzQJdItdGWnVbEn+vr3CoIVqIlfDyuUJYrxzK9641f87ttOYWuAC
         C1QVWAPq0fHwZ5tyPv2WbtG59RC3K569YFBIGNvoJOvgdy1OfjenP/6oVc2y63r9jeYe
         wtCmpnxuYCKFp/QimuHrvA+XRXsK+6VYaepRjruiyRN3EPUR2kDBb8Na01vtbYmDtA0E
         F/2g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AhjPLiaO;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id e7si598849vko.4.2020.10.26.10.59.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Oct 2020 10:59:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AhjPLiaO;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x644.google.com with SMTP id b12so2743910plr.4
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Oct 2020 10:59:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=ciNA78jzPLJaDoJ3trn3a2BcwF+MJZVxp8NiADrUvu8=;
        b=AhjPLiaOP9FdG5ogodkGPDSJtyKWyL7b/s1SKCdqVPPTsgICf4Fy7jfAQn41u+ImD4
         WRD7ce7iFAuH61uOEWZ5AZmeqK3cVAecUEaIhOoP+QmP0xhuYct+f2vOBtx/aQj0a/F+
         OHqk7XsCCaIHPuv9SehGqmheXX1xEHu/3t46YL+QO2tcge86TA07ZOFEdyDQG8dlmHRg
         vGYDuY5xm0DXigDmluuFlNarkYwaKfjqYMijnvzAohJ+i9QkXSPYJx8j+Ov5nI3m7yma
         74FrfWG4ALR/l7DOm/BNI1hnFIhm5iseT360AVuoqFcpdBF1fGEbL9oMupuivlVjg3f5
         RqFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=ciNA78jzPLJaDoJ3trn3a2BcwF+MJZVxp8NiADrUvu8=;
        b=gjO3X0LpBmAhVcHDFjnaUWh75LXckJYglDjwwUCta5DfCxbTbND+klecjYgmjyrJhN
         6c0b8Fv9PHOPJb31vYbkIlDyzjOHVesDpgsgD6wOgqvF+gCVEDA9Rqon8zQj8fS5HTfJ
         RJwZmaDLtm8KCf6/dEFuV8o4owWq99MSqnnKEYsCirnc3sH7A8C+Jjd6V+f+K0R6GvVZ
         cRymHQweuAsDsBgwAww9lU/6O4ePLyLpc1OqNRqh4y/DVDPDNe1pW2r6oZYuqS/uZkg9
         0WDEDNIgI5wdn9rmAFWJwRfI7PB+HHsGjD54L5rp7JOchxxJSvin7ShRq4fKBUuz9vVh
         qOFA==
X-Gm-Message-State: AOAM533wl52YWazI01MbDFSjV5LVJ+m0sg6CT47WX1f17nFG01Yjdi1T
	ke+tMz2MoW0gGAteunxQpfw=
X-Received: by 2002:a17:90a:9ab:: with SMTP id 40mr16992083pjo.26.1603735178409;
        Mon, 26 Oct 2020 10:59:38 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from my--box ([103.108.75.206])
        by smtp.gmail.com with ESMTPSA id j6sm1465648pgt.77.2020.10.26.10.59.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Oct 2020 10:59:38 -0700 (PDT)
Date: Mon, 26 Oct 2020 23:29:33 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2 1/2] staging: kpc2000: kpc_dma: rearrange lines
 exceeding 100 columns
Message-ID: <20201026175933.GA6047@my--box>
References: <c61a3c244bea516528e9ca4e909c30f16959c3aa.1603264617.git.mh12gx2825@gmail.com>
 <20201026040453.GC5074@my--box>
 <20201026055717.GB779791@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201026055717.GB779791@kroah.com>

On Mon, Oct 26, 2020 at 06:57:17AM +0100, Greg Kroah-Hartman wrote:
> On Mon, Oct 26, 2020 at 09:34:53AM +0530, Deepak R Varma wrote:
> > On Wed, Oct 21, 2020 at 01:01:07PM +0530, Deepak R Varma wrote:
> > 
> > Hello,
> > Requesting a review / ack of this patch.
> 
> As I said in my previous email, to the outreachy list, if I have not
> applied something, it needs to be resent, if you still think it is
> needed.

Thank you Greg. I have just resent the patch set with changes suggested by Matthew.

Deepak.

> 
> thanks,
> 
> greg k-h

