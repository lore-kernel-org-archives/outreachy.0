X-GM-THRID: 6402257939123404800
X-Received: by 10.157.35.69 with SMTP id k5mr3893044otd.32.1490642163494;
        Mon, 27 Mar 2017 12:16:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.38.42 with SMTP id a39ls886751otb.38.gmail; Mon, 27 Mar
 2017 12:16:03 -0700 (PDT)
X-Received: by 10.157.18.171 with SMTP id g40mr3209002otg.9.1490642163046;
        Mon, 27 Mar 2017 12:16:03 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-it0-x241.google.com (mail-it0-x241.google.com. [2607:f8b0:4001:c0b::241])
        by gmr-mx.google.com with ESMTPS id n127si71471ita.3.2017.03.27.12.16.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Mar 2017 12:16:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c0b::241 as permitted sender) client-ip=2607:f8b0:4001:c0b::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c0b::241 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x241.google.com with SMTP id e75so6436601itd.1
        for <outreachy-kernel@googlegroups.com>; Mon, 27 Mar 2017 12:16:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=ZCaReg2x3bJAXkaccv3HS3KrlS1g6nR8hrcWbBsbPcI=;
        b=hc9vkv/jCAJCgK4eFMTTDxEuPS3RgYjoPy3IJsXASr7BwuyzbeMR11TwyAkIFg37hg
         fvpj7JnWVW0p13dKgqIYcAA/LWzyVG/YdpL+mR7oqKlyvtkGO6g6jusD2CU4Zvu1XJqZ
         b8vqFT6QP2hJUvwYQnswWKP/Ee41QBf6dGxqNcwAnwxWUDbp7jOiytloJytfhK36xbUD
         dl+MoYWu4YEt/3yaZXv9HXxto/X0mOBHCH8St3CYXVTHV0ajXsQgNdeSf81OugLW+CNM
         ZkA17LAdk6RTNAbGP0M06a2U1ZXZSYRMeIwE0AOqVmLfxSSiEhy/tntHznKPySdfCY0o
         5bfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=ZCaReg2x3bJAXkaccv3HS3KrlS1g6nR8hrcWbBsbPcI=;
        b=lL5+hY9QQsD/YGv/ajil5QOoeez1D7AHb8FU9pZ4OdlR2c2Oty5Dgstfw7Le2zMN03
         wuDhBX5zoyoxiDPETs5bcatLDp8qPpDT8++Ug83i5HXN0InAevHDagOQCsPNXOdv5BfG
         lc30FtJr442jtKoQrN52wRSCqbf8y1OOsYv/YHCKztH6hnHcGrx92H3pabg8A7tw64gR
         APhclJzERHUUSzF1MlNe0mL5B1tMB4t/yNMzVrLIP0glZK2KuIiKaNccmTv76xNIpK+n
         DyZl4oogJyxmgTXVhMPvfPyBXEpyigjQxXLuMRR0g3uCzkToUAxZwbJSPfD0T7Pnr0SP
         TQvw==
X-Gm-Message-State: AFeK/H2NZZdxJNa//OLVhHjyk7SxcXhdsPOpRKALuXSZUaYxJPsz4SiSv9AR/6ijZZolnwmRP1deT2Pi9t4N7A==
X-Received: by 10.107.137.226 with SMTP id t95mr22897357ioi.79.1490642162731;
 Mon, 27 Mar 2017 12:16:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.36.103.141 with HTTP; Mon, 27 Mar 2017 12:15:32 -0700 (PDT)
In-Reply-To: <20170327191239.GA18080@salvia>
References: <1490641815-12741-1-git-send-email-gs051095@gmail.com> <20170327191239.GA18080@salvia>
From: Gargi Sharma <gs051095@gmail.com>
Date: Tue, 28 Mar 2017 00:45:32 +0530
Message-ID: <CAOCi2DFt9kYKDE8Cn47Pbh=B4-E_PLSKLxXLmsdjfdyNWwcm7Q@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: [PATCH] iptables: Constify option struct
To: Pablo Neira Ayuso <pablo@netfilter.org>
Cc: netfilter-devel@vger.kernel.org, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Tue, Mar 28, 2017 at 12:42 AM, Pablo Neira Ayuso <pablo@netfilter.org> wrote:
>
> On Tue, Mar 28, 2017 at 12:40:15AM +0530, Gargi Sharma wrote:
> > The struct  of the type option is only used to initialise a field
> > inside the xtables_match struct and is not modified anywhere.
> > Done using Coccinelle:
> >
> > @r1 disable optional_qualifier@
> > identifier s,i;
> > position p;
> > @@
> >
> > static struct option i@p[] ={...};
> >
> > @ok1@
> > identifier r1.i;
> > expression e;
> > position p;
> > @@
> > e = i@p
> >
> > @bad@
> > position p != {r1.p,ok1.p};
> > identifier r1.i;
> > @@
> > e@i@p
> >
> > @depends on !bad disable optional_qualifier@
> > identifier r1.i;
> > @@
> > static
> > +const
> > struct option i[] = { ... };
>
> Applied, thanks.
>
> You can probably have a look at ebtables.git, probably there are more
> things to constify there.
>
Okay, I will. :)

Thanks!
Gargi
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170327191239.GA18080%40salvia.
> For more options, visit https://groups.google.com/d/optout.

