X-GM-THRID: 6527357137219223552
X-Received: by 10.28.216.16 with SMTP id p16mr103849wmg.0.1519886660790;
        Wed, 28 Feb 2018 22:44:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.152.137 with SMTP id a131ls1235964wme.2.gmail; Wed, 28 Feb
 2018 22:44:18 -0800 (PST)
X-Google-Smtp-Source: AG47ELvXyPgpzruXOLzi4Y1NujjOSdXjUuVJSh0gb/N5W46LvDs+1TfbHnExY5OCMumE9yL9vWvK
X-Received: by 10.28.239.16 with SMTP id n16mr84449wmh.23.1519886658571;
        Wed, 28 Feb 2018 22:44:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519886658; cv=none;
        d=google.com; s=arc-20160816;
        b=r7gAynwD4HPZKgOxPvDsPnSxUrSA2e8jR6mMMExX/eZMLxZlotE3vkBxZ1PhRaPGII
         olB4QUTCCHnu80RP5LyPc/TGV8wUxffAj+Q6fQyTlpBgkXDY9gsE1hAdelgHwz47cpuZ
         yEWKAYsqG4maG4Ailk1jR8EfB/v51QKT0sBVMz/hGR+mXM+TF4ZPR/Zj1xsK0YOKuK4u
         xjFKfnZgpx4k70iqQCHCL6Lz+e1Ms3oYIqqnAzFkNsHH4Imf1mcmcE0ntKBazoJIhp6H
         F9Dlr14y7CpFNn4pLwTdw87xGlCp3LvLg95T9Ms7PJtPDaezAiJ/IRv2+/MP0qubQhxK
         4XFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=nOA0bL4/lpzIV2o/spKy62rDnv+utV3ndArLTITopJo=;
        b=mW4WUQxkNPX+Yk4hyzOUKVAIeFdOZuHGjUcvAAdzGXAQ3nKaXZrJYMFPhCpYcaf2Ph
         E9phainYYrmiGSLoj5WozCdyUt2E7r1NcHWDvBzBRgOMMWP/YNlIy5ZKbN0EVYF/IFaA
         4R251U1n2lnf6zlq/Iu2HtDG2yzTdzxZ17zotx164Vx3DFNvmqNswE2xuKHu/5vgaTk5
         753YrzZeBDL9aOkECLB1jct0899nq4OboStFiq3HGVZV6q1F7w5hUaWoZzsBt13XsJgC
         pdUq6eWiuUTPgOy/MFKIBIWksSFZddP0VWNLodUzirGUUQcPtCY0FFmo5AKqvjCE49xE
         nA/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id f137si196807wme.0.2018.02.28.22.44.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Feb 2018 22:44:18 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.47,407,1515452400"; 
   d="scan'208";a="256523778"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 01 Mar 2018 07:44:17 +0100
Date: Thu, 1 Mar 2018 07:44:17 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: yamada.masahiro@socionext.com
cc: dafna3@gmail.com, Gilles Muller <Gilles.Muller@lip6.fr>, 
    nicolas.palix@imag.fr, michal.lkml@markovi.net, 
    outreachy-kernel@googlegroups.com
Subject: RE: [PATCH] Coccinelle: memdup: Fix typo in warning messages
In-Reply-To: <91174f7725154a88a850ab6ce573b8d8@SOC-EX01V.e01.socionext.com>
Message-ID: <alpine.DEB.2.20.1803010743510.2975@hadrien>
References: <20180227215914.GA4522@gmail.com> <alpine.DEB.2.20.1802280856280.2657@hadrien> <91174f7725154a88a850ab6ce573b8d8@SOC-EX01V.e01.socionext.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-2127391652-1519886657=:2975"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-2127391652-1519886657=:2975
Content-Type: text/plain; charset=iso-2022-jp



On Thu, 1 Mar 2018, yamada.masahiro@socionext.com wrote:

> Hi Dafna
>
> > -----Original Message-----
> > From: Julia Lawall [mailto:julia.lawall@lip6.fr]
> > Sent: Wednesday, February 28, 2018 4:58 PM
> > To: Dafna Hirschfeld <dafna3@gmail.com>
> > Cc: Gilles Muller <Gilles.Muller@lip6.fr>; nicolas.palix@imag.fr;
> > michal.lkml@markovi.net; Yamada, Masahiro/山田 真弘
> > <yamada.masahiro@socionext.com>; outreachy-kernel@googlegroups.com
> > Subject: Re: [PATCH] Coccinelle: memdup: Fix typo in warning messages
> >
> >
> >
> > On Tue, 27 Feb 2018, Dafna Hirschfeld wrote:
> >
> > > Replace 'kmemdep' with 'kmemdup' in warning messages.
> >
> > Thanks for the detailed commit log.  Because I stared and stared at it and
> > couldn't see the difference :)
>
>
> I could not find this patch in ML.
>
> Please repost it with the following ML in To or CC.

Dafna,

When you repost, please add my ack.

thanks,
julia

>
> linux-kernel@vger.kernel.org
> linux-kbuild@vger.kernel.org
>
>
> That will be helpful because I usually pick up patches
> from patchwork.
>
> Thanks!
>
>
>
>
>
> > >
> > > Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>
> >
> > Acked-by: Julia Lawall <julia.lawall@lip6.fr>
> >
> > > ---
> > >  scripts/coccinelle/api/memdup.cocci | 4 ++--
> > >  1 file changed, 2 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/scripts/coccinelle/api/memdup.cocci
> > b/scripts/coccinelle/api/memdup.cocci
> > > index 1249b72..8fd6437 100644
> > > --- a/scripts/coccinelle/api/memdup.cocci
> > > +++ b/scripts/coccinelle/api/memdup.cocci
> > > @@ -56,10 +56,10 @@ statement S;
> > >  p << r.p;
> > >  @@
> > >
> > > -coccilib.org.print_todo(p[0], "WARNING opportunity for kmemdep")
> > > +coccilib.org.print_todo(p[0], "WARNING opportunity for kmemdup")
> > >
> > >  @script:python depends on report@
> > >  p << r.p;
> > >  @@
> > >
> > > -coccilib.report.print_report(p[0], "WARNING opportunity for kmemdep")
> > > +coccilib.report.print_report(p[0], "WARNING opportunity for kmemdup")
> > > --
> > > 2.7.4
> > >
> > >
>
--8323329-2127391652-1519886657=:2975--

