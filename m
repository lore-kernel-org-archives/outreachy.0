Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB3E310EC
	for <outreachy@lists.linux.dev>; Sun, 19 Mar 2023 08:45:26 +0000 (UTC)
Received: by mail-pl1-f172.google.com with SMTP id le6so9530620plb.12
        for <outreachy@lists.linux.dev>; Sun, 19 Mar 2023 01:45:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679215526;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=3dRBtg1iTvmpAZ85iJgBB/+5QZA4X8dC8jr5u/OnVDE=;
        b=kGd/tM43lFB6DnE+laHpfcj1OTmA9v1FMauOq6ZRC9gb9uhGKG7fB+MNxOTq/98+Bk
         kNZvMhIj2UleeogM8WLRYJuT0CHHt+Gz9lZWMBdn81c5QZzb1POU0Wiib9lRJBWUyUX3
         ODelpY2w+UjdNJtBJHJDoGGtAI1olgStF2l1c/KcEnr5Gjp1X+W9v2nQjl2WnixsYuU8
         3lkmNJitFfVyyrW5vawWLSZVc/X8oNsienZVxQAOLLp3j55d/cs+bsU3LVJ47HpgPZi9
         Fse++k6fxYv8RMn0CFjl2XwZdPUEPwgWcpv2hvnGYAoxjlc/fpwCHU6p9Vh+/pW8T9I/
         xQcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679215526;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3dRBtg1iTvmpAZ85iJgBB/+5QZA4X8dC8jr5u/OnVDE=;
        b=yoCgmjmRPOLinWVYGPEIyBEMpG/ZyPOyYgNB16pjSW11flq0jvAzHYdFvjvxlUmeaL
         BqE88nEiduFf2ebFBF2sjw5O5QBdm3msptKSG7U/Rf6HAwpwdbKvAW87yzMaV7S7xLFZ
         yr+FWFG4sJcB2UzUnGQSb6EwWlMnJG62cJePAzp7Mf0wrXH4SZER8MFGpgVo3j3fA3f1
         GWIDwYhr00twA3Kf3bBCn4UNyHDHcykl6WY4vATYOSZgfemDYhnxGLIubjp7d6f7GIF3
         rFqjZLODiNp3iOGQ2qP8+5Hnf2/vHuYAILK7cEx2VhToTkfCMsQeEevHwVhSy6uEvTov
         phRA==
X-Gm-Message-State: AO0yUKVWq+GmOdIRIQsAkB0np8raKtxWCIZzhvXy0ywWsvFRqUBLsh/H
	zJxDDM+DfXWzAyi2ajr3nheAcE3OA/MwXA==
X-Google-Smtp-Source: AK7set9UN3qiQhKeS8HRPBI2vdrsfeajqDt1fDQW9O5EZ+a5XCMeW5JhkxDVct0nyqENvdKwFU7WQg==
X-Received: by 2002:a17:903:290e:b0:19c:171a:d346 with SMTP id lh14-20020a170903290e00b0019c171ad346mr10468637plb.44.1679215526077;
        Sun, 19 Mar 2023 01:45:26 -0700 (PDT)
Received: from sumitra.com ([117.212.94.33])
        by smtp.gmail.com with ESMTPSA id y11-20020a1709027c8b00b001943d58268csm4390939pll.55.2023.03.19.01.45.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Mar 2023 01:45:25 -0700 (PDT)
Date: Sun, 19 Mar 2023 01:45:20 -0700
From: Sumitra Sharma <sumitraartsy@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy@lists.linux.dev
Subject: Re: Unable to find module location
Message-ID: <20230319084520.GC50179@sumitra.com>
References: <20230318084048.GC4434@sumitra.com>
 <ZBWAsdC5UOEkbedF@ubun2204.myguest.virtualbox.org>
 <20230318130211.GB39892@sumitra.com>
 <ZBXh98I11pj38Jy2@ubun2204.myguest.virtualbox.org>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZBXh98I11pj38Jy2@ubun2204.myguest.virtualbox.org>

On Sat, Mar 18, 2023 at 09:38:23PM +0530, Deepak R Varma wrote:
> On Sat, Mar 18, 2023 at 06:02:11AM -0700, Sumitra Sharma wrote:
> > On Sat, Mar 18, 2023 at 02:43:21PM +0530, Deepak R Varma wrote:
> > > On Sat, Mar 18, 2023 at 01:40:48AM -0700, Sumitra Sharma wrote:
> > > You will need to use a arch specific config file and cross compile to configure
> > > and build this driver module.
> > > I just tried it with arch/arm64/configs/defconfig file and the
> > > aarch64-linux-gnu- compiler for my host system and was able to configure the
> > > driver for build.
> > >
> > 
> > Hi deepak,
> > 
> > Can you tell me command you are using because when adding the
> > arch/arm64/configs/defconfig file. I am receiving the invalid options
> > error.
> 
> Did you follow Sanjaya's instruction on cleaning your source directory? Once
> that is done, I suggest enabling necessary configurations using the arch
> specific config file and then run a full build. Make sure the build is all
> successful and the module's .ko file is generated.
>

Hi deepak,

Yes I did the cleanup. But I am unable to enable the below driver as
module 'M' when running the command 'make menuconfig' or 'make
menuconfig ~/git/kernels/staging/arch/arm64/configs/defconfig'. It is
because I am not able to locate it under staging drivers.

  │                                                                                                                  │
  │ Symbol: NVEC_PAZ00 [=n]                                                                                          │
  │ Type  : tristate                                                                                                 │
  │ Defined at drivers/staging/nvec/Kconfig:45                                                                       │
  │   Prompt: Support for OEM specific functions on Compal PAZ00 based devices                                       │
  │   Depends on: STAGING [=y] && MFD_NVEC [=n] && LEDS_CLASS [=y]                                                   │
  │   Location:                                                                                                      │
  │     -> Device Drivers                                                                                            │
  │ (3)   -> Staging drivers (STAGING [=y])                                                                          │
  │         -> NV Tegra Embedded Controller SMBus Interface (MFD_NVEC [=n])                                          │
  │           -> Support for OEM specific functions on Compal PAZ00 based devices (NVEC_PAZ00 [=n])

> Deepak.
> 
> > 
> > It will be of much help. Thank you.
> > 
> > Regards,
> > 
> > Sumitra
> > 
> > > Deepak.
> > > 
> > > 
> > > 
> > > > 
> > > >   Regards,
> > > >   
> > > >   Sumitra
> > > > 
> > > > 
> > > 
> > > 
> > 
> 
> 
