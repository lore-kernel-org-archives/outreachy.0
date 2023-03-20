Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 190FF1850
	for <outreachy@lists.linux.dev>; Mon, 20 Mar 2023 10:02:22 +0000 (UTC)
Received: by mail-pl1-f173.google.com with SMTP id ix20so11851781plb.3
        for <outreachy@lists.linux.dev>; Mon, 20 Mar 2023 03:02:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679306541;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=fm3Rgspjp7iidIGpGufBUf5RfpQoGxneODWCVi+Zy7Y=;
        b=ePwslZ6/Y7upZgbE3WQlymUUnBN7PdqttQ+ew5JAqT5pdyG3UW1Ubcj6KZ8QeqE5uX
         h+GwSr2SYB9Usq8g096vEcR5xsyBzl40EAdauJtVjfvu925B5TMe1T8RNypV9XTRBB53
         bBFNbp9aXwvhqnpOMAuuLK+2cPUrmHvaVbIf8m4t/+FDtwHxeJyl4iZYjtS2ubvzcwZc
         +VPyHUB6350f9W4bSHwaBBJNltYQQGqTxLKBHy0AU5A/JKNWJCmY+F98tDRhIJhdFtkP
         OEVFJiFIWwbLBflOCZ/2+ojChgwDiNQryOOTjpvavWnmicKmEDW0Y6aZlttYhk5tOxqD
         piSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679306541;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fm3Rgspjp7iidIGpGufBUf5RfpQoGxneODWCVi+Zy7Y=;
        b=lA2wO15IwcLw1261Yl27xa1ofVhU6RaofNwhoA5JZaniPGvfG5IOAMCPoVHJ2FjpRM
         D0FwkgmMNb9+JA2mb8NBmEK1HicWj0RfKaD+eeFhHtHQxctxBLtRsfP15lhOWbfg+T41
         Cg6lqAnP3TzjcdXQzU3SWEzm2PzgNiGGwq1cFrIptx0LICVreg59FU+10v00bemCribq
         p0hv7ChqIx2wsgFaV7O5vFw6DLFA2MOkKneS+oxJrd4XFJGh4cHyKmJdNeg4HXgpVvRy
         Y9lX67Yq1N1BPR5XwfqRRQ/SYk1CFZfuGEuY5Ui7hkfEjw0JnXbZgSWQGwXlkhq0V3jL
         uUQA==
X-Gm-Message-State: AO0yUKWKI9e0N5mVMh0jkUcE0jxaiwv9vz4IqPAF/CjBbDjvnG03PR0s
	DlQ7peHIDTlDbdhA6GrsgVeemwgIeSKD3A==
X-Google-Smtp-Source: AK7set+WIwFUzd1hAmQlZExxQYvEXaxcnkgiGc9ZRR7WUA0nCHVdAGz6hc52SELL7ZteAQtOJ1m/aA==
X-Received: by 2002:a17:902:d505:b0:19d:16e4:ac0f with SMTP id b5-20020a170902d50500b0019d16e4ac0fmr21658674plg.5.1679306541430;
        Mon, 20 Mar 2023 03:02:21 -0700 (PDT)
Received: from sumitra.com ([210.212.97.176])
        by smtp.gmail.com with ESMTPSA id k20-20020a170902ba9400b00198fb25d09bsm6283366pls.237.2023.03.20.03.02.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Mar 2023 03:02:20 -0700 (PDT)
Date: Mon, 20 Mar 2023 03:02:16 -0700
From: Sumitra Sharma <sumitraartsy@gmail.com>
To: Deepak R Varma <drv@mailo.com>
Cc: Julia Lawall <julia.lawall@inria.fr>, outreachy@lists.linux.dev
Subject: Re: Unable to find module location
Message-ID: <20230320100216.GD126429@sumitra.com>
References: <20230318084048.GC4434@sumitra.com>
 <ZBWAsdC5UOEkbedF@ubun2204.myguest.virtualbox.org>
 <20230318130211.GB39892@sumitra.com>
 <ZBXh98I11pj38Jy2@ubun2204.myguest.virtualbox.org>
 <20230319084520.GC50179@sumitra.com>
 <ZBglD5yEm2Qb40qf@ubun2204.myguest.virtualbox.org>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZBglD5yEm2Qb40qf@ubun2204.myguest.virtualbox.org>

On Mon, Mar 20, 2023 at 02:49:11PM +0530, Deepak R Varma wrote:
> On Sun, Mar 19, 2023 at 01:45:20AM -0700, Sumitra Sharma wrote:
> > On Sat, Mar 18, 2023 at 09:38:23PM +0530, Deepak R Varma wrote:
> > > On Sat, Mar 18, 2023 at 06:02:11AM -0700, Sumitra Sharma wrote:
> > > > On Sat, Mar 18, 2023 at 02:43:21PM +0530, Deepak R Varma wrote:
> > > > > On Sat, Mar 18, 2023 at 01:40:48AM -0700, Sumitra Sharma wrote:
> > > > > You will need to use a arch specific config file and cross compile to configure
> > > > > and build this driver module.
> > > > > I just tried it with arch/arm64/configs/defconfig file and the
> > > > > aarch64-linux-gnu- compiler for my host system and was able to configure the
> > > > > driver for build.
> > > > >
> > > > 
> > > > Hi deepak,
> > > > 
> > > > Can you tell me command you are using because when adding the
> > > > arch/arm64/configs/defconfig file. I am receiving the invalid options
> > > > error.
> > > 
> > > Did you follow Sanjaya's instruction on cleaning your source directory? Once
> > > that is done, I suggest enabling necessary configurations using the arch
> > > specific config file and then run a full build. Make sure the build is all
> > > successful and the module's .ko file is generated.
> > >
> > 
> > Hi deepak,
> > 
> > Yes I did the cleanup. But I am unable to enable the below driver as
> > module 'M' when running the command 'make menuconfig' or 'make
> > menuconfig ~/git/kernels/staging/arch/arm64/configs/defconfig'. It is
> > because I am not able to locate it under staging drivers.
> 
> what is your Linux distro and host architecture?
>

VM linux distro = Ubuntu 20.04 64-bit version
Host architecture = windows 11 x64

REgards,
SUmitra

> > 
> >   │                                                                                                                  │
> >   │ Symbol: NVEC_PAZ00 [=n]                                                                                          │
> >   │ Type  : tristate                                                                                                 │
> >   │ Defined at drivers/staging/nvec/Kconfig:45                                                                       │
> >   │   Prompt: Support for OEM specific functions on Compal PAZ00 based devices                                       │
> >   │   Depends on: STAGING [=y] && MFD_NVEC [=n] && LEDS_CLASS [=y]                                                   │
> >   │   Location:                                                                                                      │
> >   │     -> Device Drivers                                                                                            │
> >   │ (3)   -> Staging drivers (STAGING [=y])                                                                          │
> >   │         -> NV Tegra Embedded Controller SMBus Interface (MFD_NVEC [=n])                                          │
> >   │           -> Support for OEM specific functions on Compal PAZ00 based devices (NVEC_PAZ00 [=n])
> > 
> > > Deepak.
> > > 
> > > > 
> > > > It will be of much help. Thank you.
> > > > 
> > > > Regards,
> > > > 
> > > > Sumitra
> > > > 
> > > > > Deepak.
> > > > > 
> > > > > 
> > > > > 
> > > > > > 
> > > > > >   Regards,
> > > > > >   
> > > > > >   Sumitra
> > > > > > 
> > > > > > 
> > > > > 
> > > > > 
> > > > 
> > > 
> > > 
> > 
> 
> 
