X-GM-THRID: 6955401561206947840
X-Received: by 2002:a19:f611:: with SMTP id x17mr13343139lfe.197.1619445010568;
        Mon, 26 Apr 2021 06:50:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:9f57:: with SMTP id v23ls2748399ljk.4.gmail; Mon, 26 Apr
 2021 06:50:08 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzzqujUH24RLzILmxbF66Za1kAtEoKfdYwuJFKhJ1OdnhBP4vabexYpfs2sZBrPtE7ctdmB
X-Received: by 2002:a05:651c:1102:: with SMTP id d2mr12231293ljo.490.1619445008872;
        Mon, 26 Apr 2021 06:50:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619445008; cv=none;
        d=google.com; s=arc-20160816;
        b=02g/6CEug27Q0M3J3D1qHhta/LZmJ2SQ6Fcn2kdvxJDDgrfwEoM0CxmliYUafz8GKA
         iQiJO96cfLSObF15kslDzt450FSlLeJ47Jhjv166VXb4ABT1pehRI1YA5M9NdHbZCFKt
         YYVIy5EUvFTRK6FkmdW/XBozq9iQSHwRlHl4bZpmrqb1M+cy1tb2U5JJCr5cg1orS2nW
         B/DwtIZPfZPLwIP1767gAr16ZapYBooFkruNG0H/phPhxOoHqeMUROgZDg14Jsq22UVt
         JL8uR7au53DV4i8ImQjEgS4wFrpak37PX+5zTieknpUcwJNSya/HXTzb8Cz24w0bZ1SW
         biCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=WNnvA9/2jBDYMEDC1w1C/VHcqT7vK38Vp7qzF/BVp38=;
        b=scyZUqZyNaIeMAENR6Z8xj96ciLt5ZD+NuICr+zpQBzhWWFWm9BJVpv08WVOisfNwI
         oQmi5f4QNXdspZFAZ3hL7Y839DPUavTot2d+WYAme8v34wabNQnOL6M8bpinKoe2xWda
         zTxfGh3llxctJB3N1N2dXxy2V3REvBTtZBKAndoNoR8TQecD7zSXsPxJg30oNgEixY26
         L4huNl9eoNA4Qm9hNw+bgbikeU5wpyXQapGLuaT7eujB1hag83L578tFfykR0xA564kd
         I32q3d9fWYYskYMtVdV/RWDm9eJCK3T5v3RkZP+ThLPgEyRE6YDgsZ5SlrB3j5kCmyr9
         h3aQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EfOYkhre;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::634 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com. [2a00:1450:4864:20::634])
        by gmr-mx.google.com with ESMTPS id d25si925268lja.2.2021.04.26.06.50.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Apr 2021 06:50:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::634 as permitted sender) client-ip=2a00:1450:4864:20::634;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EfOYkhre;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::634 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x634.google.com with SMTP id r9so84550298ejj.3
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Apr 2021 06:50:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=WNnvA9/2jBDYMEDC1w1C/VHcqT7vK38Vp7qzF/BVp38=;
        b=EfOYkhreFsfsXRF64hm7fSGQAbrmc4om/PWG9R/5+Op3S+UGlQiANlGfBAznabRs0h
         0iuWynP9DmNFyzIcz7lzfH6FLdVYt3zZdh09AWJkp0Ygl6h9Vd22yBSO2NbFBEEpGlf3
         uDJAFpUp7ru4xrmtdvUOLq8BlZJWq+IMmpDybw9PP0lX18oDECML2VQUjdd6DDvSoRGs
         QGBiYJ+4YLL1vFUaFFI8iNtmdgPe3eIOQAd2RZI7iRsQIMf6NIjAO+UqHMz5gqQEAvmH
         HIs2JH5L9xAPb3+BQXkEY6y7XXmFjMUs3YtLFOe732bU8q1vCpyBmGw/D5Y9aHRlt7kW
         w7TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=WNnvA9/2jBDYMEDC1w1C/VHcqT7vK38Vp7qzF/BVp38=;
        b=Wbi+lLnJK4oS2WY2pVL3VsZ5oE+l1BxtkrylwvAU6fxFSBoCOBvgjPnigUIx78nuuz
         hESFHm/XW6Cw7eg7fj6Xnk1WGNgc8kBjoQBC65k40jKoIzJzWmIIps42jmDCpi2HTPkQ
         UL6GYLP1HNuOyZiKuZvjePKu4GPIxMYQ8pPpUf0YsjQnnyw2F57Zng4fGisD59IE8jlS
         iVj+fHWQ0t/yyB5rZboo6Oy8vdcEjRf38Oecy2TRBgIfhLRWDAIsVikf5r2WtivXlfVe
         yGqxBiIe9/ILz11Q1V4e3wm0usR3oUpqlNejRPB1iNtu1mCe85oRoHnUZh1mQyr+Tfkn
         y96g==
X-Gm-Message-State: AOAM533+IGrOcFP5WWbJoCsO3r3q6Ew1p8JLaPQ6on+UfQ5Hh6IzCv6q
	wQVcDrHremVlUIobB1hVC/k=
X-Received: by 2002:a17:907:9811:: with SMTP id ji17mr19196220ejc.188.1619445008593;
        Mon, 26 Apr 2021 06:50:08 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-79-52-107-152.retail.telecomitalia.it. [79.52.107.152])
        by smtp.gmail.com with ESMTPSA id s8sm14988990edj.25.2021.04.26.06.50.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Apr 2021 06:50:07 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Matthew Wilcox <willy@infradead.org>
Cc: outreachy-kernel@googlegroups.com, linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org, David Kershner <david.kershner@unisys.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Daniel Vetter <daniel@ffwll.ch>
Subject: Re: [Outreachy kernel] [RFC PATCH] staging: unisys: visorhba: Convert module from IDR to XArray
Date: Mon, 26 Apr 2021 15:50:06 +0200
Message-ID: <2352794.1zacegZ1vs@linux.local>
In-Reply-To: <20210426132928.GL235567@casper.infradead.org>
References: <20210426095015.18556-1-fmdefrancesco@gmail.com> <2833559.jtDpNxbUmt@linux.local> <20210426132928.GL235567@casper.infradead.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday, April 26, 2021 3:29:28 PM CEST Matthew Wilcox wrote:
> On Mon, Apr 26, 2021 at 03:14:42PM +0200, Fabio M. De Francesco wrote:
> > > > -	int id;
> > > > -	unsigned long flags;
> > > > 
> > > > -	idr_preload(GFP_KERNEL);
> > > > -	spin_lock_irqsave(lock, flags);
> > > > -	id = idr_alloc(idrtable, p, 1, INT_MAX, GFP_NOWAIT);
> > > > -	spin_unlock_irqrestore(lock, flags);
> > > > -	idr_preload_end();
> > > > -	/* failure */
> > > > -	if (id < 0)
> > > > -		return 0;
> > > > -	/* idr_alloc() guarantees > 0 */
> > > > -	return (unsigned int)(id);
> > > 
> > > And it shouldn't be using GFP_NOWAIT, but GFP_KERNEL, like the IDR code
> > > used to do.
> > 
> > I'm not sure to understand why idr_preload() uses GFP_KERNEL and instead
> > idr_alloc() uses GFP_NOWAIT. I'd better read anew the documentation of the
> > above-mentioned functions
> 
> If you're holding a spinlock, you can't do a GFP_KERNEL allocation,
> because it can sleep, and sleeping while holding a spinlock isn't allowed.
>
I know that since a long time... that is last week, day more day less  :) 

I've just started to read R.Love's LKD 3rd ed. I don't have enough time to 
read it at the moment, however I skipped a few chapters and read "Kernel 
synchronization methods" and "Memory management".
> 
> The IDR and radix tree have an approach where you first preallocate
> memory using GFP_KERNEL and then use GFP_NOWAIT or GFP_ATOMIC after
> you've taken the spinlock.  XArray doesn't do that; it takes the spinlock
> and does a GFP_NOWAIT allocation.  If it fails, it drops the spinlock,
> allocates the memory using GFP_KERNEL, and retries.
>
This is something one cannot find in Love's book, unless I overlooked that.
> 
> > This will not be anymore a problem when I'll restore the use of one 
namespace
> > per HBA. It's correct?
> 
> true ...
> 
> > > More generally, the IDR required you call idr_destroy() to avoid leaking
> > > preallocated memory.  I changed that, but there are still many drivers
> > > that have unnecessary calls to idr_destroy().  It's good form to just
> > > delete them and not turn them into calls to xa_destroy().
> > 
> > This one is a bit obscure to me. I have to look into it more carefully. 
Maybe
> > I'll ask for some further help.
> 
> The IDR used to have a per-idr preallocation, so you had to destroy it
> in order to make sure they were freed.  I got rid of that about five
> years ago because most IDR users weren't calling idr_destroy().
>
OK, I think I got it.
>
Thanks again,

Fabio





