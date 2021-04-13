X-GM-THRID: 6950506572644614144
X-Received: by 2002:a17:902:7682:b029:eb:2900:ed69 with SMTP id m2-20020a1709027682b02900eb2900ed69mr5505643pll.53.1618343824816;
        Tue, 13 Apr 2021 12:57:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:7102:: with SMTP id h2ls2216326pjk.0.canary-gmail;
 Tue, 13 Apr 2021 12:57:03 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzRwJ3LDwcj2gTt3Pt/nWDEz+V9EO3MwjxrY++ASnVzwiGOVic7aV1JesIgcp3cdlxz9Byo
X-Received: by 2002:a17:90a:ca83:: with SMTP id y3mr1787352pjt.191.1618343823648;
        Tue, 13 Apr 2021 12:57:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618343823; cv=none;
        d=google.com; s=arc-20160816;
        b=qgop4h50pkw2IKn2sjm2OHKNfVQ0R0wFZXFzEXq9I/bTe3RAFszlKf9ng5MTwVasDr
         Q1mckK9lU/RLXrNJBCR6w9NZQSvLIk77RCSLlIic64D4+YMJ5voTIi6ARJmGWDQ26f2a
         XCnmvidmRELT0cL0TWLJh4p6L6g/s82CWD7sgfsLCsvNibZr+PaCBtFDSn00/FJPLbgQ
         RnBRIFGMhLSf4fsQr2WFlBwvUK2v6dtVEE5DJQ36LBrtwUgJnqmLZOjcIN+yclHnUX1D
         ETN5O2nN9tMmjKdHluVwfZKugFT7uYcxbiqutTlSsAJQ4DukzZYapjuAGGHwGzEwR19c
         AK0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=pjmQnwxfPUybeCrE9NSnjQV62TPPi6ZBYSR55ZeQzdY=;
        b=aOF4M/m2EalKJYlS1mJF3Hc+ZtMeXDFuj1iOJmzrd4YBnJSDAkSU1MIFNa98/GqsoS
         1Odwu1PMXLjI22VB1gj48sGrPJycXOC2Vaq1k/suKjrI3GQQCcIihSN+lnEGZvE5I95g
         dVSNTzGSIVl7DtT7+3dZ7rn2h6LtHy2XQTaHLx7pxVkc4oT9OAPzXn5VNgYgC8xxcb2d
         SyJF5UKLD9+ld2uMJPByrQ/BsRg5g8dvkKGAO4f2chex6ps548CeUdTt89D+ys5IMNa6
         Ft8nJDMiLvxdfwOQGI+HkmBRFCa81jmcPKWBfDWE5pSw+W3T47ngVdGdmE55t1ilP4zZ
         xv5g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XDGIZELh;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::102b as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com. [2607:f8b0:4864:20::102b])
        by gmr-mx.google.com with ESMTPS id 131si939476pfa.2.2021.04.13.12.57.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Apr 2021 12:57:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::102b as permitted sender) client-ip=2607:f8b0:4864:20::102b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XDGIZELh;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::102b as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x102b.google.com with SMTP id u14-20020a17090a1f0eb029014e38011b09so4744172pja.5
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Apr 2021 12:57:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=pjmQnwxfPUybeCrE9NSnjQV62TPPi6ZBYSR55ZeQzdY=;
        b=XDGIZELhZ+0EIloHFZPdtwERzwXtg6kPYHwQYxP7NsOZrrps0tGe3FBm6wNhbL4L4D
         HeOF6C5yUjuBfnQgT2BlipmVf+iGqrPJQHhrHOdPEpX7FSr9cr8bWU4vbYXUpeid5kw/
         5SemG54HMUwhn9tOyJjRrZA4Xj0Reie5USxLNVOEP4K60Rm5hNetn8uHyQyC5GwdpFlU
         NTNJfCxCAgHNZ92OXtT/Bz++WzKFRhZFd3p+Mz4fPLlDXe60vep4zR8P0mmGyvqTgBk+
         /18DlAWz7bFhgwHZJsMBVz1O0WDyLYv+CpvPh2m5SAagaM2GYf3Dihly431U7QroN0nl
         72hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=pjmQnwxfPUybeCrE9NSnjQV62TPPi6ZBYSR55ZeQzdY=;
        b=PlFcimBExsvibyZSS4wt8/S0rc0bSpwdss9hN08lSkvsSMtUztXCLsDe/CrjHYS9Lk
         OhvAjodkRMthpAoqMyiy+mujLESNiIup1InpX3TdaAu98yRSydaxsPvFCt930sCugpXB
         0ngRNWzA6MMyJJbaYDzYXDJFAndGy0vsb8mCnrkInkEUuCRDI82qETdyQZQWsXafoUpa
         GO395DnmkjWRZLBTyPxqKGRQggW5dYcUJ+k2ON13opEmYn3lwyITGfdwDK3GcBLSKob5
         wDqtQhQ2vKd5HqN+qsTASzVlATr7arAfFLwobZZfc47tJAz3aEjy/3ARGMnXV9za8C2A
         IWwA==
X-Gm-Message-State: AOAM5311JLJwfk/oH8bKHvtYALRXVkBvlxu6gqIDp5utDvXDbctT12DY
	c7LaRFprSs3MYwkKUUvK9tc=
X-Received: by 2002:a17:90a:c501:: with SMTP id k1mr1707108pjt.101.1618343823356;
        Tue, 13 Apr 2021 12:57:03 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.254])
        by smtp.gmail.com with ESMTPSA id x69sm13078153pfd.161.2021.04.13.12.56.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Apr 2021 12:57:03 -0700 (PDT)
Date: Wed, 14 Apr 2021 01:26:57 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Cc: sakari.ailus@linux.intel.com, bingbu.cao@intel.com,
	tian.shu.qiu@intel.com, mchehab@kernel.org,
	gregkh@linuxfoundation.org, linux-media@vger.kernel.org,
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: Re: [PATCH v3 4/4] staging: media: intel-ipu3: remove space before
 tabs
Message-ID: <YHX3iVCNXJlOsmuQ@kali>
References: <cover.1618326535.git.mitaliborkar810@gmail.com>
 <01ad7ff353f805dfc48e7bcc26ed974e7bb5ef9f.1618326535.git.mitaliborkar810@gmail.com>
 <20210413181712.GI6021@kadam>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210413181712.GI6021@kadam>

On Tue, Apr 13, 2021 at 09:17:12PM +0300, Dan Carpenter wrote:
> On Tue, Apr 13, 2021 at 08:59:34PM +0530, Mitali Borkar wrote:
> > Removed unnecessary space before tabs to adhere to linux kernel coding
> > style.
> > Reported by checkpatch.
> > 
> > Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
> > ---
> >  
> > Changes from v2:- No changes.
> > Changes from v1:- No changes.
> > 
> >  drivers/staging/media/ipu3/include/intel-ipu3.h | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/staging/media/ipu3/include/intel-ipu3.h b/drivers/staging/media/ipu3/include/intel-ipu3.h
> > index 47e98979683c..42edac5ee4e4 100644
> > --- a/drivers/staging/media/ipu3/include/intel-ipu3.h
> > +++ b/drivers/staging/media/ipu3/include/intel-ipu3.h
> > @@ -633,7 +633,7 @@ struct ipu3_uapi_bnr_static_config_wb_gains_thr_config {
> >   * @cg:	Gain coefficient for threshold calculation, [0, 31], default 8.
> >   * @ci:	Intensity coefficient for threshold calculation. range [0, 0x1f]
> >   *	default 6.
> > - * 	format: u3.2 (3 most significant bits represent whole number,
> > + *format: u3.2 (3 most significant bits represent whole number,
> >   *	2 least significant bits represent the fractional part
> 
> Just remove the spaces, don't remove the tab.  It's looks silly now.
>
Okay Sir, do I have to send a v4 patch on this now?

> regards,
> dan carpenter
> 

