X-GM-THRID: 6802335278632534016
X-Received: by 2002:a5d:4c4a:: with SMTP id n10mr28678856wrt.116.1583846275686;
        Tue, 10 Mar 2020 06:17:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:4b06:: with SMTP id y6ls126047wma.3.canary-gmail; Tue,
 10 Mar 2020 06:17:54 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvaF5WgXXkxbLLwn9GiKcbXsLm4NrdQ3WFtN7XFC9KEnKuWmf2cnT7K3XTbFolbGDRWTfzS
X-Received: by 2002:a1c:9dc6:: with SMTP id g189mr2233615wme.91.1583846274216;
        Tue, 10 Mar 2020 06:17:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583846274; cv=none;
        d=google.com; s=arc-20160816;
        b=jTAs7wKi5VrL/yzmDgpmeYyjszVBQt8XYLFOx5M+31DMBp8hDPpicze8KWRV+yDYeA
         lG531JEO5v86aYEdgThJ+t9dNhYxnSCvnYXJ3vxH4w/vzWhx2ZKm5TSLwS0d2Nuo/VO3
         v6hhvivepjcXJGI6MOlUFyxoFAnN2n+g0r0Ko/Ll9D8I4Rrif7KCG1UCjqNT9+cxMK36
         SDshZeMO5UTr9O6k2MfNRFl0cl87RFfxnf/UpqSW7qqUnckhvMV1MPXuJraNKMfb3zCG
         OH2oVLt5PHdHBmtdu4mKIIa88EOwo7/Jst1mBNMHFgSD2jddcU2RAsCL5h5/f/Y0n/Rk
         /rtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=WNQyOJe3Kewg8Uhwhtlx/So6sr7a1kTIeVMal73epTg=;
        b=Y6wUOwh5ooWiwN9lBXMYd101572FsWwOecR7AhZUTd3DrvElS78z6PoQ1B4wBLRalK
         rNAfWQZ3BJNehmjFB/LZB/mkwl6qrAY2LaP0H4+6ohnglraiJGUKyWs8ezGltjA2v/y4
         M2PZ7dYnjU+0AymA9c7xS7AYpSirmGTbfjwVuVKnsj5zXiu4c5sj+hPzbcFpW6tVI0Te
         sXOdjqvbgRfg4ioPGfME4dUEL/k5UGSBbkOPO/UK6QmsvyaGXcxwvuZTen3ni4A+/6K1
         aswPvwiQR1zUhC7ZYTlynJ53HIlermGtu+zjS5L09p0qrElzhfd8CCnzemIAw3k2GRD8
         Jisw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id q202si107067wme.2.2020.03.10.06.17.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2020 06:17:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,537,1574118000"; 
   d="scan'208";a="341883455"
Received: from dt-lawall.paris.inria.fr ([128.93.67.65])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Mar 2020 14:17:53 +0100
Date: Tue, 10 Mar 2020 14:17:53 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: julia@hadrien
To: Kaaira Gupta <kgupta@es.iitr.ac.in>
cc: Ian Abbott <abbotti@mev.co.uk>, 
    H Hartley Sweeten <hsweeten@visionengravers.com>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Forest Bond <forest@alittletooquiet.net>, 
    =?ISO-8859-15?Q?J=E9r=F4me_Pouiller?= <jerome.pouiller@silabs.com>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 0/7] Cover letter
In-Reply-To: <20200310121535.GC11048@kaaira-HP-Pavilion-Notebook>
Message-ID: <alpine.DEB.2.21.2003101415580.26409@hadrien>
References: <20200309221449.GA5032@kaaira-HP-Pavilion-Notebook> <alpine.DEB.2.21.2003100809240.2455@hadrien> <20200310121535.GC11048@kaaira-HP-Pavilion-Notebook>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 10 Mar 2020, Kaaira Gupta wrote:

> On Tue, Mar 10, 2020 at 08:15:51AM +0100, Julia Lawall wrote:
> > On Tue, 10 Mar 2020, Kaaira Gupta wrote:
> >
> > > This patch set aims at improving the code style in a few drivers in
> > > staging. They have been found using sparse, coccinelle, and
> > > checkpatch.pl.
> >
> > A cover letter should have a more informative subject.  It's obvious that
> > it is a cover letter from the number of the patch being 0.
> >
> > The description suggests that there is no connection between the drivers
> > or the changes being performed.  If that is the case, then there is no
> > need to make a series.
>
> What kind of patch sets should Ithen submit? Please guide me.

For one driver file perhaps you find a spelling mistake, some extra blank
lines, and a useless function definition.  These are three separate
changes, so they shoudn't be in the same patch.  But for example if the
extra blank lines are before the useless function definition, then Greg
will see the function definition being removed from the wrong place, if he
applies the patches in the wrong order.  So you need a series to indicate
the order in which the patches should be applied.

julia

>
> >
> > The cover letter should contain a complete diffstat of the changes made.
> >
> > You should be able to find some examples on lkml.org.
> >
> > julia
> >
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200309221449.GA5032%40kaaira-HP-Pavilion-Notebook.
> > >
>

