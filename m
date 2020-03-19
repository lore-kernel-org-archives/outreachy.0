X-GM-THRID: 6803014756528553984
X-Received: by 2002:a5d:56ca:: with SMTP id m10mr6943279wrw.313.1584654482319;
        Thu, 19 Mar 2020 14:48:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:56d2:: with SMTP id m18ls614673wrw.3.gmail; Thu, 19 Mar
 2020 14:48:01 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuwuuePur1U1xknU7SUJYJTidA5qaGkAKU8M2aOX+Werx7obeCDK0GR4FPjay+SvTRf560S
X-Received: by 2002:a05:6000:1203:: with SMTP id e3mr7091661wrx.166.1584654481031;
        Thu, 19 Mar 2020 14:48:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584654481; cv=none;
        d=google.com; s=arc-20160816;
        b=J/Vh4JNnBVV+plNZ3XJaEf1Wq3D6Zt3DxS4ETbOvOevoWgvKd1gbh6FEBKRABPHe9D
         cNx1LKLKH88a9LjDlnk0Jazz/lEyodFzuPawDe5NQsiKfTyJVGjY8EjCBsYch5GpeWtC
         dlUg+83W4H7LBCVN1d+bqEeGDwyR9JERPWMt+OuEVTReE5btaDZ7MPG2C+9bPggf08Cd
         GWtFKWzddvovNrjOuIjGifoFI+GH49QqjKrYw/Jq77GNyrgsBfrH0gvJdZDdlMNiJLhy
         ojYPSFLp9FifXkvIdcVZXPxEY1+M68anYxcUSTlg1yXqIIzZNWrYruVLc23ot4tN1KDD
         RVjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=75pu82JmgKCrZj3DVuDn85wyqF1VsXJtZ3qN7yKl4/M=;
        b=f0eZFIcyKIDWOuFRVwtrfxrqkATmVGuLGVttt3GUQfSmlyWZAHmxCjnjL6nzWUL8oS
         wAOUKZ8oxYDfbBk1q8gWgNxOXpG4VaPUVDlKa7Q4TN0CNxNQqIfgKraW5bRdt74u9qYY
         bukcQ0p/CZkBYi+rRLu7goyt4qppODGe8wgnnHbGzQay1rpenPhjlxzDhNDtpvZXD8qJ
         IL11drVL0HfLctXuOtqz8UFAZOvnvEV8waoBL9hADekziQBT+2icS2KDeF4f8svwS0AV
         iY0l2n+H45UTDzs2FDU07gzWjqco2a1sFE97EzvuSwn1kGwOeoBUPYiGsN114Qt/bPbD
         074A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b="EZF/lgJk";
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=lu@pplo.net
Return-Path: <lu@pplo.net>
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id x12si233948wmk.1.2020.03.19.14.48.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Mar 2020 14:48:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b="EZF/lgJk";
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=lu@pplo.net
Received: by mail-wm1-x344.google.com with SMTP id a9so1155612wmj.4
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Mar 2020 14:48:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pplo.net; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=75pu82JmgKCrZj3DVuDn85wyqF1VsXJtZ3qN7yKl4/M=;
        b=EZF/lgJkVtbZ+9Uts2EJNMgFqZ3e8qCauEabX6n3BLVY3gNUu4QEZcrSa76aENGdBA
         t5HoZ4hJcwd0ygR/dG8hYQH09HBsHcUx5yxAwFaUWpNSKurMKQ00N5uNAJqQR613Fxwm
         AUrxHPwBBqyV0wWUy46l9iDRhmhStC7u5gFxY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=75pu82JmgKCrZj3DVuDn85wyqF1VsXJtZ3qN7yKl4/M=;
        b=P8gAmqo6OzNLFCA02HEowpim8YhLSb+wSzSdNDX+XOpbzUe8/UTiI7ry7jYgMreLNd
         l7GVYZph7YA1xi/m2wbzb9iUw887RcJFWVzkw/NVzOjptkg/uc20UcNYLtZqI0bBH12R
         YLfY++mARrxfoL6YrQ9FSiS2o3WqcoEzvcTGmogVNFxXPveAybYCnrLsmsT0noa9WjqM
         IV9tyzUQm4LKMPOb64oFsLztBslS1a7zM55skWj2SVk9OWsxkA4EjB5yVxy6F08I6oF0
         kf+JrTJBAnAE0y+0WW9idBxXKhSnKo6NGWoXW2dWvy5nR5bVPypDJLf+2K757k11ZFvO
         2+yg==
X-Gm-Message-State: ANhLgQ1N6NLMW9LmPZzQkPkGe8y3MM68GmN93+1J5bcLxosJiXGRNVxB
	SmnjgFlPQRD14UjKHk7UWO5M+A==
X-Received: by 2002:a7b:c354:: with SMTP id l20mr5907717wmj.40.1584654480654;
        Thu, 19 Mar 2020 14:48:00 -0700 (PDT)
Return-Path: <lu@pplo.net>
Received: from supernova (85.251.42.187.dyn.user.ono.com. [85.251.42.187])
        by smtp.gmail.com with ESMTPSA id c124sm5004539wma.10.2020.03.19.14.47.59
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 19 Mar 2020 14:48:00 -0700 (PDT)
Date: Thu, 19 Mar 2020 22:47:57 +0100
From: Lourdes Pedrajas <lu@pplo.net>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Stefano Brivio <sbrivio@redhat.com>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Trying to use Coccinelle
Message-ID: <20200319214757.GC10911@supernova>
References: <alpine.DEB.2.21.2003161527020.5216@hadrien>
 <20200316153629.0fde04f8@elisabeth>
 <alpine.DEB.2.21.2003161543170.5216@hadrien>
 <20200316162343.36bacaa7@elisabeth>
 <alpine.DEB.2.21.2003161631270.5216@hadrien>
 <20200316164440.54fe16a8@elisabeth>
 <20200319201553.GA10911@supernova>
 <20200319214321.2060a5ef@elisabeth>
 <20200319213047.GB10911@supernova>
 <alpine.DEB.2.21.2003192236110.9011@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.2003192236110.9011@hadrien>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Thu, Mar 19, 2020 at 10:38:59PM +0100, Julia Lawall wrote:
> 
> 
> On Thu, 19 Mar 2020, Lourdes Pedrajas wrote:
> 
> > On Thu, Mar 19, 2020 at 09:43:21PM +0100, Stefano Brivio wrote:
> > > On Thu, 19 Mar 2020 21:15:53 +0100
> > > Lourdes Pedrajas <lu@pplo.net> wrote:
> > >
> > > Can you just run this spatch command:
> > >
> > > > Running (8 in parallel): /usr/local/bin/spatch -D patch --very-quiet
> > > > --cocci-file ./scripts/coccinelle/api/atomic_as_refcounter.cocci
> > > > --include-headers --very-quiet --patch . --dir ./drivers/staging/.
> > > > -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include
> > > > -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi
> > > > -I ./include/uapi -I ./include/generated/uapi
> > > > --include ./include/linux/kconfig.h --jobs 8 --chunksize 1
> > > > coccicheck failed
> > > > Makefile:1740: recipe for target 'coccicheck' failed
> > > > make: *** [coccicheck] Error 255
> > >
> > > alone, from the same directory? The issue (okay, I'll send a patch) is
> > > that the coccicheck script suppresses stderr for it.
> > >
> > > --
> > > Stefano
> > >
> >
> > It says "274 files match" and if I suppress the "--very-quiet" part of
> > the command, it outputs many files preceded with the word "HANDLING:".
> >
> > After that, If I try, by example, this command:
> >
> > /usr/local/bin/spatch -D patch
> > --cocci-file ./scripts/coccinelle/api/alloc/alloc_cast.cocci
> > --no-includes --include-headers -I ./arch/x86/include
> > -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi
> > -I ./arch/x86/include/generated/uapi -I ./include/uapi
> > -I ./include/generated/uapi --include ./include/linux/kconfig.h --jobs 8
> > --chunksize 1 drivers/staging/qlge/qlge_mpi.c
> >
> > It says:
> >
> > HANDLING: drivers/staging/qlge/qlge_mpi.c
> >
> > But nothing more.
> >
> > The command Julia suggest has similar results.
> >
> > Is this correct? I thought it outputs reports or patches.
> 
> Yes, that is correct.  Maybe it has nothing to do on that file.
> 
> Could you try the following file:
> 
> drivers/net/ethernet/qlogic/qed/qed_roce.c
> 
> with the semantic patch
> 
> scripts/coccinelle/api/alloc/alloc_cast.cocci
> 
> julia

Yes, now it worked! :) 

Thank you Julia,

Lourdes

