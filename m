X-GM-THRID: 6746979289302827008
X-Received: by 2002:a81:91ce:: with SMTP id i197mr5688955ywg.253.1571911233272;
        Thu, 24 Oct 2019 03:00:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:c04f:: with SMTP id c76ls853241ybf.10.gmail; Thu, 24 Oct
 2019 03:00:31 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwPwgUqe5qw7jqsMn6UyYF55/mInzpx4nWjh1ENNA1t0X8YvHh7r2DH7FGYuifNMDiUECpr
X-Received: by 2002:a25:19c5:: with SMTP id 188mr10421973ybz.253.1571911231630;
        Thu, 24 Oct 2019 03:00:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571911231; cv=none;
        d=google.com; s=arc-20160816;
        b=M75CMYXyp24vTUHF0sr+dsAFm7KsrI6kmvbsIiUG4BeM99Xn1IJJNJEJYOvuVcadCh
         8YptC2TEsRoNfO04wb3I390yeF3HYIG4HnOCTjbNeusLJX6m9/uaFnI6bYDt8qHqC/3i
         qHa0itvrpkUDQ1tNmc+zmBhWQRx8iKXsbgGgpb5Eavi5BBE4YQQrbguGGHbc3YIand8S
         7MWtSGstOOl3w+0iWhoKP5PcCTBkUJXouFjD6VGQRnh/oNaThBawDQt7mIpgYROfpfNJ
         5m0bvQ/jI3axyeZqUEXzY4ERnK0xZGquLlLvUOakuTqAc6sZ34yAVaZGoOud6BDKgr00
         hKwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=Un8dozXGi1hBwrcyMyk9H9EF84fhz0PhjEtVbAbr1g0=;
        b=frx5I9xMyghOAO60+jZdBs8QNfDuqrRPx2hGHYnD32wgUNutIUWoTWVFGeTaM3YX4h
         8l+U7zgQCjrQhM27nLeC7SnovJGl0MYWrYy6WagJg3vEKtobzErNOJzGhFGt9C3KFzlJ
         L3HnjAgMWQfGG95McQl4rtgfFr6VFHCWFBBJMudJtQfP1tLOC2C0h8q5XtLpfszueApH
         wd1FVoaD7mUIgraqztHJ6vehUNN50cx8y1iVRDaTUhj9teZ0H95/7RJzFpTaF8HdFmp5
         GU8YEaqS4GD90VJpHtXOkhaB42V6Bvd/di5mqy1lwMttt/BH9t6oxL1pCP/EjQnLUX7Z
         5Rag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kjCSSh2X;
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::52a as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <wambui.karugax@gmail.com>
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com. [2607:f8b0:4864:20::52a])
        by gmr-mx.google.com with ESMTPS id a1si1345440ywh.3.2019.10.24.03.00.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Oct 2019 03:00:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::52a as permitted sender) client-ip=2607:f8b0:4864:20::52a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kjCSSh2X;
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2607:f8b0:4864:20::52a as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x52a.google.com with SMTP id c8so9122476pgb.2
        for <outreachy-kernel@googlegroups.com>; Thu, 24 Oct 2019 03:00:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:reply-to:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Un8dozXGi1hBwrcyMyk9H9EF84fhz0PhjEtVbAbr1g0=;
        b=kjCSSh2XWmvn8CMJsbBOFPWBAaUKWR6ru7vss61PnWeUShh2WEMVYstKENB7UQIP6n
         4JwL616OEigeu3r1FY2QMKFTVlu/abv7HIrYMnVAhB+5gnMk0qg8QZq5BhYss1FnNW/Z
         r8JXUrOrH7f8PCaZ+S7Rd3+zr9NgYjoZdhLouR0mifoBLWzrE72lkPeHppSoGN04hL4k
         JHY77XrfEkw1js5feDxR5f/P2ts/V0wMspJSos5JCXiycPtJBqMIA7akXdP0MkPbLtMs
         PDeTcD69ImKjnd+k9orHMyMHRlDPzLTUV+2nwICZwbh+vCLww8YFRET5/9+4CQa0W1vw
         dpDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:reply-to
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=Un8dozXGi1hBwrcyMyk9H9EF84fhz0PhjEtVbAbr1g0=;
        b=ZrbJEHg6BlwRwVCPPqSA3scPrHd5JBSYU+NRgU4oaSbVfzDuj7Uoux2Drhw18X/51W
         +DKl25wG+aq6zoeViKCS4zIislSM9sx4a7sq/OkVvuyFHRzmE4zwFT+nUmWuX0OgQqHt
         U4JqraK4Z876IZ04KzK9pvGo2nd7kX4uI3hbSLig+dOKPCUlGN4SilcAoJPGeE9qeKjc
         gbkoD/WtHSRn/meZWcUTaiVZ+sVqQBpU6wgn/ULl+cdaDEEq6cHmDHOOkrxpScpuGVfV
         133VdWEQfyGEq9QydBjbSN2trl3BLcVglz2XJFNsJOLV6sDcD/ruHW9nMvXmHzAn3r/X
         SXpw==
X-Gm-Message-State: APjAAAV56pSYWiQZ8yqHB0M7VgVw4wZ+kGq17XbTnI6V0ONACTT/r8p3
	xkkS5oZ0uRkK6q+y0BfwfQtjsglchq858A==
X-Received: by 2002:a63:934d:: with SMTP id w13mr12839626pgm.185.1571911230923;
        Thu, 24 Oct 2019 03:00:30 -0700 (PDT)
Return-Path: <wambui.karugax@gmail.com>
Received: from wambui ([197.254.95.38])
        by smtp.gmail.com with ESMTPSA id j63sm10564453pfb.162.2019.10.24.03.00.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Oct 2019 03:00:30 -0700 (PDT)
Date: Thu, 24 Oct 2019 13:00:20 +0300
From: Wambui Karuga <wambui.karugax@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: paulburton@kernel.org, gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] Re: [PATCH v2 1/5] staging: octeon: remove
 typedef declaration for cvmx_wqe
Message-ID: <20191024100020.GA13343@wambui>
Reply-To: alpine.DEB.2.21.1910240722070.2771@hadrien
References: <cover.1570821661.git.wambui.karugax@gmail.com>
 <fa82104ea8d7ff54dc66bfbfedb6cca541701991.1570821661.git.wambui.karugax@gmail.com>
 <20191024050011.2ziewy6dkxkcxzvo@lantea.localdomain>
 <alpine.DEB.2.21.1910240722070.2771@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1910240722070.2771@hadrien>
User-Agent: Mutt/1.12.2 (2019-09-21)

On Thu, Oct 24, 2019 at 07:26:59AM +0200, Julia Lawall wrote:
> > If you're making significant changes to this driver, please test them
> > using the MIPS cavium_octeon_defconfig which is where this driver is
> > actually used.
> >
> > This driver has broken builds a few times recently which makes me very
> > tempted to ask that we stop allowing it to be built with COMPILE_TEST.
> > The whole octeon-stubs.h thing is a horrible hack anyway...
> 
> Wambui,
> 
> Please figure out what went wrong here.  Are there two sets of typedefs
> that should have been updated?
>
I managed to reproduce these build errors and finally noticed that the
"octeon-stubs.h" header is only included when CONFIG_CAVIUM_OCTEON_SOC
is not defined, therefore compiling properly for COMPILE_TEST but will
actually fail when compiled with CONFIG_CAVIUM_OCTEON_SOC is set since
the functions will try to use the definitions in
arch/mips/include/asm/octeon/ that don't have the changes.

Paul, please tell me if this is correct?

Thanks,
wambui

> Others,
> 
> Would it be reasonable to put the information about how the driver should
> be compied in the TODO file?  git grep cavium_octeon_defconfig in the
> octeon directory turns up nothing.
> 
> thanks,
> julia
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1910240722070.2771%40hadrien.

