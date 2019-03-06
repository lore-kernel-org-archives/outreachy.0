X-GM-THRID: 6664742734726692864
X-Received: by 2002:a50:aa70:: with SMTP id p45mr3900166edc.6.1551856290980;
        Tue, 05 Mar 2019 23:11:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:2a9b:: with SMTP id l27ls268366eje.10.gmail; Tue, 05
 Mar 2019 23:11:30 -0800 (PST)
X-Google-Smtp-Source: APXvYqzaYFv+Tj2qQ/c2LFDAUTejsotXOENFZMPYtYLlzm44Dq1TNGciBdm6KY3VRyhX72bb7xoJ
X-Received: by 2002:a17:906:350e:: with SMTP id r14mr596410eja.10.1551856290279;
        Tue, 05 Mar 2019 23:11:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551856290; cv=none;
        d=google.com; s=arc-20160816;
        b=tZSTGBMSUYjCeZROF3bEvIi8kOKh50OyI66xBUlB48PkPswXpP8X62gLah5i2RYzah
         jeLkriCY+qGJ+krL+1qUFpvyM7rngh73P/YJAWpflFewP5RY8REvie8lwB78NZ5khUqv
         BmQ63MYh3VdLGZymAKiFdLYR9ET4YiEBdz6MSw90pFh3J7XNUiquFX4TghU4jXXFSHNh
         F07ErAlLW3kwU85+7rpbt/koPcCe86gEhJbfcT0A2Jfcg7d3+DBAVsGOD2+nfQ44JmLy
         /xKfysTH7LVp50Si9F293p4ZGeoTmE0z3Z243Pai3N8nOgAB4ikQcbU0rD6h93vYkRuO
         qDSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=K7055JjObI17Nsk//TmpKnPcBhtWRizj0ATMKFL2S60=;
        b=jfHRsXLk57KJ/RSsCE4QpTMRTW4S3F0DhdyPdcW9yPMmGLQ/7bPSDlkBj2HBj4+rz2
         mRUTo7oHK9XqNE1pPZ9gqOVvt2M/DdhuRepMmzUnXfxh1oODAmxiLomSztlMgo9hSlTW
         tLkdYGl6jniW4pxKkL/6SZFw1RozzOAYTDSPbPB6lvEi2Fi8UaoINlXcq+NbyjFZLJCT
         OjuTJlS8UAKAwKp2dWToxeLjRyxqZVn32ZM4G0o4GeMsgkCFGg1OQRTWQPv9KnAPqoxy
         KTOYhblB99a0KDPByJk45CtKl3S+NFG5hMRipEkyw8bLZ7TrGgRhEW0YUOjDg3gwmQ9T
         zpIQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id c7si29237ejx.1.2019.03.05.23.11.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 23:11:30 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,446,1544482800"; 
   d="scan'208";a="298262347"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 06 Mar 2019 08:11:29 +0100
Date: Wed, 6 Mar 2019 08:11:29 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: etsai042@gmail.com
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: r8712u: Replace '--help--'
 with 'help'
In-Reply-To: <5669cebf-38b9-43a2-8175-6584a0603adf@googlegroups.com>
Message-ID: <alpine.DEB.2.21.1903060811080.2706@hadrien>
References: <20190305032535.osg6wtrk2v4x6nfo@debian.etsai.site> <alpine.DEB.2.21.1903050832240.2551@hadrien> <5669cebf-38b9-43a2-8175-6584a0603adf@googlegroups.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1845688191-1551856289=:2706"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1845688191-1551856289=:2706
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Tue, 5 Mar 2019, etsai042@gmail.com wrote:

> Hi Julia, thanks for the advice! Is it better that I resubmit this patch to specify indentation change?

Yes, please make a v2 with a more complete log message.

julia

> Wentao
>
> 在 2019年3月4日星期一 UTC-8下午11:33:33，Julia Lawall写道：
>
>
>       On Mon, 4 Mar 2019, Wentao Cai wrote:
>
>       > This patch replace '--help--' in Kconfig to silence checkpatch.pl
>       > warning:
>       > WARNING: prefer 'help' over '---help---' for new help texts
>
>       Actually, you also indented the subsequent text.  That is what hits the
>       eye first whenone looks at the patch, so it could be good to mention it.
>       I didn't see the help change in the first hunk at first glance, so I
>       thought you had included some extraneous change in the patch.
>
>       julia
>
>       >
>       > Signed-off-by: Wentao Cai <etsa...@gmail.com>
>       > ---
>       >  drivers/staging/rtl8712/Kconfig | 10 +++++-----
>       >  1 file changed, 5 insertions(+), 5 deletions(-)
>       >
>       > diff --git a/drivers/staging/rtl8712/Kconfig b/drivers/staging/rtl8712/Kconfig
>       > index f160eee52f09..622ad14f232c 100644
>       > --- a/drivers/staging/rtl8712/Kconfig
>       > +++ b/drivers/staging/rtl8712/Kconfig
>       > @@ -4,14 +4,14 @@ config R8712U
>       >          select WIRELESS_EXT
>       >          select WEXT_PRIV
>       >          select FW_LOADER
>       > -        ---help---
>       > -        This option adds the Realtek RTL8712 USB device such as the D-Link DWA-130.
>       > -        If built as a module, it will be called r8712u.
>       > +        help
>       > +            This option adds the Realtek RTL8712 USB device such as the D-Link DWA-130.
>       > +            If built as a module, it will be called r8712u.
>       >
>       >  config R8712_TX_AGGR
>       >          bool "Realtek RTL8712U Transmit Aggregation code"
>       >          depends on R8712U && BROKEN
>       > -        ---help---
>       > -        This option provides transmit aggregation for the Realtek RTL8712 USB device.
>       > +        help
>       > +            This option provides transmit aggregation for the Realtek RTL8712 USB device.
>       >
>       >
>       > --
>       > 2.11.0
>       >
>       > --
>       > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>       > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kern...@googlegroups.com.
>       > To post to this group, send email to outreach...@googlegroups.com.
>       > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190305032535.osg6wtrk2v4x6nfo%40debian.etsai.site.
>       > For more options, visit https://groups.google.com/d/optout.
>       >
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/5669cebf-38b9-43a2-8175-6584a0603adf%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-1845688191-1551856289=:2706--

