X-GM-THRID: 6206327457482539008
X-Received: by 10.66.62.195 with SMTP id a3mr15975794pas.22.1445078601076;
        Sat, 17 Oct 2015 03:43:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.91.138 with SMTP id z10ls1874775qgd.17.gmail; Sat, 17 Oct
 2015 03:43:20 -0700 (PDT)
X-Received: by 10.129.104.9 with SMTP id d9mr5889175ywc.54.1445078600229;
        Sat, 17 Oct 2015 03:43:20 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-ig0-x22e.google.com (mail-ig0-x22e.google.com. [2607:f8b0:4001:c05::22e])
        by gmr-mx.google.com with ESMTPS id rr9si503435igb.1.2015.10.17.03.43.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Oct 2015 03:43:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:4001:c05::22e as permitted sender) client-ip=2607:f8b0:4001:c05::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:4001:c05::22e as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-ig0-x22e.google.com with SMTP id ni9so28701567igb.1
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Oct 2015 03:43:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=LXPt+awYIinFR1sdwLVRh7tuAHF9/mWI6sDqZhjF2Oo=;
        b=KmTRZHPUNG2NV+WBrfLvobUwxEtT6TfvlpZ8N3N3oTcXwVBPtXWjXySA1rByykeT49
         mUwGaluwi+EDtsN7EJiF4wUlKeMX+JgSveCdwoe9fnqUQ77zRks+rNvjYO8u41blBvwB
         vDceOAN9OfGzBK0+1uj7AXPvb9ynJM3fvT442OgZJPhvehGDd5yJYL/K5lesmPoEsp4G
         nJP3lzMfcnXDPS2JdnTbJwbDJGsty/W8YFFIwDcK71iGEJCA1jzqtf9H+2I5Jn9/dhXz
         qZY9j6XRReP3EjAmqk1xSkwE86Dm0ex77e5kT3wrhdAd5qz/DUvh1gnXOwVqR7ZrVIaI
         i1Bw==
MIME-Version: 1.0
X-Received: by 10.50.111.83 with SMTP id ig19mr9592932igb.82.1445078600094;
 Sat, 17 Oct 2015 03:43:20 -0700 (PDT)
Received: by 10.107.158.211 with HTTP; Sat, 17 Oct 2015 03:43:20 -0700 (PDT)
In-Reply-To: <CAEAX3JrU=56tg94bo1w6gHNBr9nEtcgRauXfa+GFxa8r477hmw@mail.gmail.com>
References: <1445033073-10154-1-git-send-email-aybuke.147@gmail.com>
	<20151017050641.GA3052@kroah.com>
	<CAEAX3JrU=56tg94bo1w6gHNBr9nEtcgRauXfa+GFxa8r477hmw@mail.gmail.com>
Date: Sat, 17 Oct 2015 12:43:20 +0200
Message-ID: <CAL7P5j+Engc1f0D+yCvjYHzqQPUzRCnWKzMAsX0yEF9TXanAKg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2 1/2] Staging: sm750fb: Include
 appropriate KERN_ facility level
From: =?UTF-8?Q?Ksenija_Stanojevi=C4=87?= <ksenija.stanojevic@gmail.com>
To: Aybuke Ozdemir <aybuke.147@gmail.com>
Cc: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

Hi Aybuke

On Sat, Oct 17, 2015 at 12:33 PM, Aybuke Ozdemir <aybuke.147@gmail.com> wrote:
> Hi Greg,
>
> I used this command "make drivers/staging/sm750fb/" before applying the

I'm not sure if that command is correct, try :
make  drivers/staging/sm750fb/ddk750_help.o

> patch.
> I sent that I faced no problems. :( command output:
>
> aybuke@kripton:~/git/kernels/staging$ make drivers/staging/sm750fb/
>   CHK     include/config/kernel.release
>   CHK     include/generated/uapi/linux/version.h
>   CHK     include/generated/utsrelease.h
>   CHK     include/generated/bounds.h
>   CHK     include/generated/timeconst.h
>   CHK     include/generated/asm-offsets.h
>   CALL    scripts/checksyscalls.sh
> aybuke@kripton:~/git/kernels/staging$
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/CAEAX3JrU%3D56tg94bo1w6gHNBr9nEtcgRauXfa%2BGFxa8r477hmw%40mail.gmail.com.
>
> For more options, visit https://groups.google.com/d/optout.

