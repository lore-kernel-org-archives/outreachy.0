X-GM-THRID: 6803014756528553984
X-Received: by 2002:adf:ecc3:: with SMTP id s3mr4913998wro.32.1584655570458;
        Thu, 19 Mar 2020 15:06:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:f803:: with SMTP id s3ls881576wrp.10.gmail; Thu, 19 Mar
 2020 15:06:09 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsZ/WeSnct37BsMAgYB2ajaBH4jUX+wERS9/RVcnYuO7x828su9k12YM83hFsWvEoWszaPX
X-Received: by 2002:adf:ab5d:: with SMTP id r29mr1515253wrc.158.1584655569006;
        Thu, 19 Mar 2020 15:06:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584655569; cv=none;
        d=google.com; s=arc-20160816;
        b=b7C5arwO+KGXfX47kfh5IeeeTbj1ezL1FoTtMe/4+hwOFLMW2Ds7JhF85+3F6lefb3
         FyWSNsLoJa6zwqM6vqOQGUnZt0OqnNGIzEVwxFI5eEw3T9f0EdLsJub4KjBqYgVYYa5v
         LnorfLrJTWZOUwMICw6IaZStffo3FFqgGyzBnrfUDDzFc4Q3YFVaJaC+T8JnpvWQTTKD
         S53InUYVJlMoLKkBzm0DUravaOCeTaUxgrJZwEYW47EB3U4uht6WNc2x5zBxbT3yc7EL
         gb94i+y+5yVPZ9B4Z4HcXZaIh914nre7uPnKBa+BVyzF8iOJRhojFX0kt2/yv0s9JPxo
         CJxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Tz2WP/S/3BUuSeHYuF9ceufuOyyqM1r821fuFSLopvA=;
        b=AanMQhMsn5zZOn5M1nG+5juaZHEljtSvE3Ne+w8k9K5wOGKmSdDW21XgMT/7866C0r
         /coVmgIwQejHCeDcskkk7AjqN6vb9nUwg3FfhQYDTB45Sn7hubVb2psEkiBGAnACV/fm
         EhUatXTEPN7d0DESVXH37RbZm/dHXD/bi53RNzgld259Mtrt8MYPOwYnAbQkINXIPa+p
         Tc17Ny/yjbHZRBv9cuqPY7Uw2+B1IdB99Vi0eamGKgi7H33qH5Vf9EzkTL050iigNRLC
         1SQK41Gf3+5APC96tDIfcvSlGqbWLHjTExaLusOr8qSmGU+JPev8+tSPd6Dkaqkd6WTn
         9Nqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=j5tD6iH2;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=lu@pplo.net
Return-Path: <lu@pplo.net>
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id n9si166777wmi.0.2020.03.19.15.06.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Mar 2020 15:06:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=j5tD6iH2;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=lu@pplo.net
Received: by mail-wr1-x442.google.com with SMTP id h6so5178787wrs.6
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Mar 2020 15:06:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pplo.net; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Tz2WP/S/3BUuSeHYuF9ceufuOyyqM1r821fuFSLopvA=;
        b=j5tD6iH2cUTaudz10Djt+gvzCUAW/7kfuRnctWLDqiZrRPSNknJSW3NMysb8mo86xL
         +sMyJeSE9dUjzA0wbLjQyBKu0Lo99r3XRCx5YPjMA3Sh1/g7WCpqUcjrE/rBgvgRL8Qj
         Ds7LMy6eAg8P9g6lJj0pK46RJ8rIFQ6v71E5I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Tz2WP/S/3BUuSeHYuF9ceufuOyyqM1r821fuFSLopvA=;
        b=d4UVwuk4aBuSSnNrzVvsJ2uYkyMtrFru3u/SWvGF35f1uR1Xo/W+YPxj23E0IFrq+J
         t+0CeyHnMNJIXvZgCTU0cZov4vOkzyCeb4o56z7eoRUf5qAiyLc8LgRSD+mgVOY+GH/F
         /bV++K4eby1V4Oes0X69wuq4r9hUQZzz4OJuOHTySlM0rsZxDFz73CWotQZ5B4P1JUMH
         MRa3tCZF06qfHxS+mMAY5YUpphC/jbJh8axOTwPc034+n9T1A6N5Q6PZkL8jcA3fq6f+
         /vAV00pDZE0pQDyFSjTQYTTy/qJEJgob75rdCtVf52p8rIWnrKQrsiyapmLmfIxlcM7A
         Le7g==
X-Gm-Message-State: ANhLgQ0hALWThSxC+b/1PKoLhvED9BNbnnzeOD0FunacIAxB9LuzpC62
	s3XI+JwSiz2WTXmR3lIuqf4dGIBlf10=
X-Received: by 2002:a5d:474c:: with SMTP id o12mr6942807wrs.156.1584655568531;
        Thu, 19 Mar 2020 15:06:08 -0700 (PDT)
Return-Path: <lu@pplo.net>
Received: from supernova (85.251.42.187.dyn.user.ono.com. [85.251.42.187])
        by smtp.gmail.com with ESMTPSA id b12sm5127354wro.66.2020.03.19.15.06.07
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 19 Mar 2020 15:06:08 -0700 (PDT)
Date: Thu, 19 Mar 2020 23:06:05 +0100
From: Lourdes Pedrajas <lu@pplo.net>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Stefano Brivio <sbrivio@redhat.com>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Trying to use Coccinelle
Message-ID: <20200319220605.GD10911@supernova>
References: <alpine.DEB.2.21.2003161543170.5216@hadrien>
 <20200316162343.36bacaa7@elisabeth>
 <alpine.DEB.2.21.2003161631270.5216@hadrien>
 <20200316164440.54fe16a8@elisabeth>
 <20200319201553.GA10911@supernova>
 <20200319214321.2060a5ef@elisabeth>
 <20200319213047.GB10911@supernova>
 <alpine.DEB.2.21.2003192236110.9011@hadrien>
 <20200319214757.GC10911@supernova>
 <alpine.DEB.2.21.2003192249420.9011@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.2003192249420.9011@hadrien>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Thu, Mar 19, 2020 at 10:50:15PM +0100, Julia Lawall wrote:
> 
> 
> On Thu, 19 Mar 2020, Lourdes Pedrajas wrote:
> 
> > On Thu, Mar 19, 2020 at 10:38:59PM +0100, Julia Lawall wrote:
> > >
> > >
> > > On Thu, 19 Mar 2020, Lourdes Pedrajas wrote:
> > >
> > > > On Thu, Mar 19, 2020 at 09:43:21PM +0100, Stefano Brivio wrote:
> > > > > On Thu, 19 Mar 2020 21:15:53 +0100
> > > > > Lourdes Pedrajas <lu@pplo.net> wrote:
> > > > >
> > > > > Can you just run this spatch command:
> > > > >
> > > > > > Running (8 in parallel): /usr/local/bin/spatch -D patch --very-quiet
> > > > > > --cocci-file ./scripts/coccinelle/api/atomic_as_refcounter.cocci
> > > > > > --include-headers --very-quiet --patch . --dir ./drivers/staging/.
> > > > > > -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include
> > > > > > -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi
> > > > > > -I ./include/uapi -I ./include/generated/uapi
> > > > > > --include ./include/linux/kconfig.h --jobs 8 --chunksize 1
> > > > > > coccicheck failed
> > > > > > Makefile:1740: recipe for target 'coccicheck' failed
> > > > > > make: *** [coccicheck] Error 255
> > > > >
> > > > > alone, from the same directory? The issue (okay, I'll send a patch) is
> > > > > that the coccicheck script suppresses stderr for it.
> > > > >
> > > > > --
> > > > > Stefano
> > > > >
> > > >
> > > > It says "274 files match" and if I suppress the "--very-quiet" part of
> > > > the command, it outputs many files preceded with the word "HANDLING:".
> > > >
> > > > After that, If I try, by example, this command:
> > > >
> > > > /usr/local/bin/spatch -D patch
> > > > --cocci-file ./scripts/coccinelle/api/alloc/alloc_cast.cocci
> > > > --no-includes --include-headers -I ./arch/x86/include
> > > > -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi
> > > > -I ./arch/x86/include/generated/uapi -I ./include/uapi
> > > > -I ./include/generated/uapi --include ./include/linux/kconfig.h --jobs 8
> > > > --chunksize 1 drivers/staging/qlge/qlge_mpi.c
> > > >
> > > > It says:
> > > >
> > > > HANDLING: drivers/staging/qlge/qlge_mpi.c
> > > >
> > > > But nothing more.
> > > >
> > > > The command Julia suggest has similar results.
> > > >
> > > > Is this correct? I thought it outputs reports or patches.
> > >
> > > Yes, that is correct.  Maybe it has nothing to do on that file.
> > >
> > > Could you try the following file:
> > >
> > > drivers/net/ethernet/qlogic/qed/qed_roce.c
> > >
> > > with the semantic patch
> > >
> > > scripts/coccinelle/api/alloc/alloc_cast.cocci
> > >
> > > julia
> >
> > Yes, now it worked! :)
> 
> Um, now what worked?  I guess you got a message for this file, but is make
> coccicheck now working too?
> 
> julia

Oh, sorry I was not clear, this command worked:

/usr/local/bin/spatch -D report
--cocci-file ./scripts/coccinelle/api/alloc/alloc_cast.cocci --no-includes
--include-headers -I ./arch/x86/include -I ./arch/x86/include/generated
-I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi
-I ./include/uapi -I ./include/generated/uapi
--include ./include/linux/kconfig.h --jobs 8
--chunksize 1 drivers/net/ethernet/qlogic/qed/qed_roce.c

You were right, it had nothing to do in the file I tried (and some others too)
but in this file worked:

drivers/net/ethernet/qlogic/qed/qed_roce.c


> but is make coccicheck now working too?

No, it is not working, sorry :(

For the record, I'm using linux mint, installed the dependencies the
official site says for ubuntu/debian, but got some compilation errors
and eventually solved them. 

Thank you for your patience,

Lourdes

