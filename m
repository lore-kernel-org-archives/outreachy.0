X-GM-THRID: 6617471709084647424
X-Received: by 2002:a17:906:1806:: with SMTP id v6-v6mr919022eje.9.1540792349914;
        Sun, 28 Oct 2018 22:52:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:b4ed:: with SMTP id x42-v6ls1730259edd.0.gmail; Sun, 28
 Oct 2018 22:52:29 -0700 (PDT)
X-Google-Smtp-Source: AJdET5e7NH30xVb+i8yaSeDs0K4XN893pQokHSwkEYw5mq2d9hPKVZe+uzjwPJi4Z7xHcClMgtI2
X-Received: by 2002:aa7:dcc5:: with SMTP id w5-v6mr1563981edu.5.1540792349089;
        Sun, 28 Oct 2018 22:52:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540792349; cv=none;
        d=google.com; s=arc-20160816;
        b=DjCmJmNN/k6hCqDmBJpBcrgHWCi2eczGtWKqCE/ulX5Zp4yvNqZ6r7m7l+8bXAsXYB
         F+yNxzEVwMPrmZaDdue5r2XpxADX3Bu7FIT7srvD7u+dBXY0BT6GyRY4qPFcMIqqbWgq
         /dyR6su8gXYdt15jP/x50Wm3JnZ6miREYEIKrZWC/RiRUYzWJDDsSPzVbgN2ye72pa0P
         Q6XTCSmO/ZTTfV/jSzI9qDVJCyoEvHK6/92WWy7KykNK6aoyqAnAqgTDHosVOsrp1QVP
         zZ7KlPG+IDOpGZj3puPQr+6owbSenhv6NbS32WjSmwYKeAfTJ5LQIWmpWSwOip03nBhR
         /n3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=VX7O3fu1vvHKpDIgMMpNizGf6jg4Zp/WibR06ns0ZPQ=;
        b=o/zKbJUDnGqzlUxcbPiiiCvE9ksfhjPcBbqA9o++bCPh+A8/sOr4zd+swnLs3IOrvZ
         DUMXghPljlJWQ07ZkNG3QtW7j+ld/RaooIc+asS0ZErX5zQDge9pOg0rgPKNMmUFpaqY
         tldrozE9suEzf7C2IHb9PqwDFulD7l2LRznLSOwfhAu+DdzzU7hXZL7y1BG9MSslPqar
         L+GS7qSDANizC7rdNbWZIcNFj8Hj4hxLT/iUwo1l0UbHhVsIgtRyxNin26xItnt6IjAs
         gFaYPMYSQFHE9kKUhaVWT9wnaX6mU+mHcmqGCFXmya2FRy/o1Pfwxd5NcNzlUeiycgfs
         tEKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id l47-v6si504968edc.2.2018.10.28.22.52.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Oct 2018 22:52:29 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,438,1534802400"; 
   d="scan'208";a="283611438"
Received: from 89-157-201-244.rev.numericable.fr (HELO hadrien) ([89.157.201.244])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 29 Oct 2018 06:52:28 +0100
Date: Mon, 29 Oct 2018 06:52:28 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Kimberly Brown <kimbrownkd@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Arnaud Patard <arnaud.patard@rtp-net.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH 2/2] staging: xgifb: vb_setmode: adjust
 descendant indentation to right
In-Reply-To: <20181029022658.GA158541@ubu-Virtual-Machine>
Message-ID: <alpine.DEB.2.21.1810290648190.2479@hadrien>
References: <cover.1540749179.git.kimbrownkd@gmail.com> <a85f97b40dabc0f2a978d0928af6bba05b9724e5.1540749179.git.kimbrownkd@gmail.com> <alpine.DEB.2.21.1810281933180.2433@hadrien> <20181029022658.GA158541@ubu-Virtual-Machine>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 28 Oct 2018, Kimberly Brown wrote:

> On Sun, Oct 28, 2018 at 07:34:50PM +0100, Julia Lawall wrote:
> >
> >
> > On Sun, 28 Oct 2018, Kimberly Brown wrote:
> >
> > > Adjust descendant indentation so that it is placed substantially to the
> > > right. This change improves code readability and complies with the
> > > Linux kernel coding style.
> > >
> > > Signed-off-by: Kimberly Brown <kimbrownkd@gmail.com>
> > > ---
> > >  drivers/staging/xgifb/vb_setmode.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/staging/xgifb/vb_setmode.c b/drivers/staging/xgifb/vb_setmode.c
> > > index 62b45a30e0f1..3782f8641bf2 100644
> > > --- a/drivers/staging/xgifb/vb_setmode.c
> > > +++ b/drivers/staging/xgifb/vb_setmode.c
> > > @@ -654,7 +654,7 @@ static void XGI_UpdateXG21CRTC(unsigned short ModeNo,
> > >  	xgifb_reg_and(pVBInfo->P3d4, 0x11, 0x7F); /* Unlock CR0~7 */
> > >  	if (ModeNo == 0x2E &&
> > >  	    (XGI330_RefIndex[RefreshRateTableIndex].Ext_CRT1CRTC ==
> > > -						      RES640x480x60))
> > > +								RES640x480x60))
> >
> > The variable RefreshRateTableIndex is really long,and uses camel case,
> > which is also not the kernel style.  If there is a shorter version that
> > would be acceptable, then perhaps the value to the right of the == could
> > be on the same line, thus solving two problems at once.
>
> Julia,
>
> Good point! I propose 'ref_index' to replace 'RefreshRateTableIndex'. I
> chose this based on the 'RefreshRateTableIndex' assignment on line 5096:
>
> RefreshRateTableIndex = XGI330_EModeIDTable[ModeIdIndex].REFindex;
>
> Do you have any objections to 'ref_index'?

Intuitively, I would have suggested rate_index, but I can see your
reasoning in this case.

julia


>
> Thanks!
>
> >
> > julia
> >
> > >  		index = 12;
> > >  	else if (ModeNo == 0x2E &&
> > >  		 (XGI330_RefIndex[RefreshRateTableIndex].Ext_CRT1CRTC ==
> > > --
> > > 2.17.1
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/a85f97b40dabc0f2a978d0928af6bba05b9724e5.1540749179.git.kimbrownkd%40gmail.com.
> > > For more options, visit https://groups.google.com/d/optout.
> > >
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181029022658.GA158541%40ubu-Virtual-Machine.
> For more options, visit https://groups.google.com/d/optout.
>

