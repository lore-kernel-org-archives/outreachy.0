Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com [209.85.215.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD21F1FBB
	for <outreachy@lists.linux.dev>; Sat, 18 Mar 2023 12:15:15 +0000 (UTC)
Received: by mail-pg1-f181.google.com with SMTP id z10so4268936pgr.8
        for <outreachy@lists.linux.dev>; Sat, 18 Mar 2023 05:15:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679141715;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=mCaU990LWokdE57jX1tBRL/o3f1FcMOgqm1HXPvoCA0=;
        b=mcyrf8Zrb6rcaLOdI9ksjANgqJFU8gSBjCj6aeEcItGVWwHpwTcLXVGWm5l1NIZ5RK
         2fNmatcf/WZ4QeCd+6S9mvqAESEN7FFWz10jTF/gUIuMoqpxS+XVgOaVWzRnu9UOJDyq
         Q30QbglGUIs3aGp5TGAj28M6WATaNDxhDuEKwS/8Qfeksx8zaKS545qYX9iYe2xqUJII
         Y+ZwW/ao83xFE5E9q9XrmDf7H1eOpE5rbUCTbpIy5RpXhlCRRMEO9OVp47OsvXAwHvtv
         /cltiLZPz1KLYkG9Wddqrz9AISqao4zwII7ZGCP1atlGmTty2AA3fRTHFQu2ImCQQzK5
         tEXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679141715;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mCaU990LWokdE57jX1tBRL/o3f1FcMOgqm1HXPvoCA0=;
        b=AYWB0py+e/QJoHCcmFsFoX6mKh0IYR+KxfM0KzfcLLziTmXitvJCDBjaBtUhmAYcAJ
         HexQMq7gzLdSYr054kIX46NIPHeLUm7YOxVD7eL8pHfGExv9E+PoEp4NDt2fG0NmCT1f
         Ttz3HoVupmiK8EDUL1gZrc9vyCDcQ6DRoyHLTzG9cz5Uzyk1cv0N9KUMSOqkxccx3WD7
         Agn/7/9z1X0gI9IuOqn4U7jw466nOMYR7qF8RadYvLLjz2oJlM6glpRQwtal2Mcv8PWr
         YnRsFYxm9iNYgOjbTbk6Jb/7MZFbVKHD2rmsRZPvZ8rPIDvYVH/WO/SID2mzGoHVc2Zk
         wF9g==
X-Gm-Message-State: AO0yUKXH6+FppIKAYSFSmgDCwjqbfyAnPxj8bCgPaNzu0KaKpJmQs0hh
	0z7IGYjPV30Ib3BbJ71u6w7OITRew9w=
X-Google-Smtp-Source: AK7set95dpyotILYZZGPmo4o2zZ18ue0yIQ+bmvJYwpo/S+gF9bHeKpMG/VQKu0QL5fo0ePB62aRvg==
X-Received: by 2002:a62:6443:0:b0:625:f983:3ddd with SMTP id y64-20020a626443000000b00625f9833dddmr8021862pfb.13.1679141714912;
        Sat, 18 Mar 2023 05:15:14 -0700 (PDT)
Received: from sumitra.com ([117.199.163.158])
        by smtp.gmail.com with ESMTPSA id 23-20020aa79117000000b005a8173829d5sm1141628pfh.66.2023.03.18.05.15.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Mar 2023 05:15:13 -0700 (PDT)
Date: Sat, 18 Mar 2023 05:15:08 -0700
From: Sumitra Sharma <sumitraartsy@gmail.com>
To: Bagas Sanjaya <bagasdotme@gmail.com>
Cc: outreachy@lists.linux.dev
Subject: Re: Unable to find module location
Message-ID: <20230318121508.GA37278@sumitra.com>
References: <20230318084048.GC4434@sumitra.com>
 <ZBWA3rb9nVP8ho05@debian.me>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZBWA3rb9nVP8ho05@debian.me>

On Sat, Mar 18, 2023 at 04:14:06PM +0700, Bagas Sanjaya wrote:
> On Sat, Mar 18, 2023 at 01:40:48AM -0700, Sumitra Sharma wrote:
> >   │ Symbol: NVEC_PAZ00 [=n]                                                                                          │
> >   │ Type  : tristate                                                                                                 │
> >   │ Defined at drivers/staging/nvec/Kconfig:45                                                                       │
> >   │   Prompt: Support for OEM specific functions on Compal PAZ00 based devices                                       │
> >   │   Depends on: STAGING [=y] && MFD_NVEC [=n] && LEDS_CLASS [=y]                                                   │
> 
> Hi,
> 
> MFD_NVEC depends on ARCH_TEGRA, which requires arm64
> (aarch64-*-linux-gnu) cross-compiler. If don't have it yet, you can
> build one with crosstool-NG. When the cross-compiler have been successfully
> built and installed, add <cross-compiler prefix>/bin to PATH.
> 
> Now in order to cross-compile the kernel (to arm64 in this case),
> you need to pass `ARCH=arm64 and CROSS_COMPILE=aarch64-<vendor>-linux-gnu-`
> to each invocation of `make`.
>

HI,

I tried your way. Build and Install aarch64-linux-gnu-gcc, added the
path and run the command 'make -j2 ARCH=arm
CROSS_COMPILE=aarch64-linux-gnu-'

But receiving these errors.

aarch64-linux-gnu-gcc: error: unrecognized argument in option ‘-mabi=aapcs-linux’
aarch64-linux-gnu-gcc: note: valid arguments to ‘-mabi=’ are: ilp32 lp64
  CC      scripts/mod/devicetable-offsets.s
aarch64-linux-gnu-gcc: error: unrecognized command line option ‘-mapcs’
aarch64-linux-gnu-gcc: error: unrecognized argument in option ‘-mabi=aapcs-linux’
aarch64-linux-gnu-gcc: note: valid arguments to ‘-mabi=’ are: ilp32 lp64
aarch64-linux-gnu-gcc: error: unrecognized command line option ‘-mno-sched-prolog’
aarch64-linux-gnu-gcc: error: unrecognized command line option ‘-mtp=cp15’
aarch64-linux-gnu-gcc: error: unrecognized command line option ‘-mfpu=vfp’
aarch64-linux-gnu-gcc: error: unrecognized command line option ‘-msoft-float’
make[1]: *** [scripts/Makefile.build:252: scripts/mod/empty.o] Error 1
make[1]: *** Waiting for unfinished jobs....
aarch64-linux-gnu-gcc: error: unrecognized command line option ‘-mapcs’
aarch64-linux-gnu-gcc: error: unrecognized command line option ‘-mno-sched-prolog’
aarch64-linux-gnu-gcc: error: unrecognized command line option ‘-mtp=cp15’
aarch64-linux-gnu-gcc: error: unrecognized command line option ‘-mfpu=vfp’
aarch64-linux-gnu-gcc: error: unrecognized command line option ‘-msoft-float’
make[1]: *** [scripts/Makefile.build:114: scripts/mod/devicetable-offsets.s] Error 1
make: *** [Makefile:1286: prepare0] Error 2


Regards,

Sumitra


> Thanks.
> 
> -- 
> An old man doll... just what I always wanted! - Clara


