X-GM-THRID: 6889129421220872192
X-Received: by 2002:a2e:7a11:: with SMTP id v17mr892084ljc.291.1604061888515;
        Fri, 30 Oct 2020 05:44:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:7c15:: with SMTP id x21ls450944ljc.8.gmail; Fri, 30 Oct
 2020 05:44:46 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzbtowKFe90njvFou3fCI5poXg/spr+h7VdrCjeVAAi4gaDjtXYHGXwnHVblq8lsDPjTT1a
X-Received: by 2002:a2e:b179:: with SMTP id a25mr995892ljm.277.1604061886144;
        Fri, 30 Oct 2020 05:44:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1604061886; cv=none;
        d=google.com; s=arc-20160816;
        b=TgCRBiUMGLysVZWThbMclm2FITIE4zLHzF9GDrBmGZxjcNn1Da7qFnqIk2mAS2wMzg
         P2/8qxzc+SOCCZi7cWnesheXlUVWxBHZH7yx7gONIE2Ys4VCGBuAtaKLUoq11V+AJaFP
         m+sMtFQrWFKCOO5SunlKpDBsYFvKceUbxQbc7lilakw2/xYRHYgb8iYxT1BD3FfxTfmh
         +tntUjl7TDbVeGgHscIE+wcfYCyrZfr/VHhIxFDrG8/DTzrf7YHw6J3yum4Sg3BH5dpV
         QHbCSOr/TaO5dwA10MCz/7ahrn6YQd/26fBvffrjcbVF8/fDUSo0IvxLXHx9jet2oIm8
         gZ1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=OgLXSyIVX276ZslJN/c9fSNfxodLXP9LNRDeGwp5Sv4=;
        b=aYCYw05t3whiH2rr6pK5guhG8VCm+r5MljpCYseKYu9hFBZSgyI4Ag9tQBz8cmpFdL
         njN3x3FadaAHqLK+U6gSzqdA+Tabm+W4nMa8wEvFa9OZ1W1bsW3pFIIKJdpPBZFTiWLC
         99CEkdn7/4fTuefDxC/bC4HDnlNkrLOKBZ+akgOVwTUSXny/Ln/fzdFo6ixszgqFWSHG
         lYiWUxRXnAyDsDeV0rfwyT7LiIOPZQSVQWgOtmE0qGKmFUK+BURJMCPfD3pqy/qngzQA
         aZP7DbeipnyupI8AW9IVdxykT3eyxLhsvqMgAyz2O6vveGyn1My668h8OU5Mk6oCWsC9
         SUrw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id p1si146008ljc.0.2020.10.30.05.44.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Oct 2020 05:44:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.77,433,1596492000"; 
   d="scan'208";a="363169957"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 30 Oct 2020 13:44:45 +0100
Date: Fri, 30 Oct 2020 13:44:45 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Amarjargal Gundjalam <amarjargal16@gmail.com>
cc: Matthew Wilcox <willy@infradead.org>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/4] staging: rtl8723bs: hal: fix
 position of constant in comparison
In-Reply-To: <687cd3942fcefbd153d318bf0d7014ff01f0bce3.camel@gmail.com>
Message-ID: <alpine.DEB.2.22.394.2010301343230.2733@hadrien>
References: <20201029194029.141165-1-amarjargal16@gmail.com>  <20201029194029.141165-2-amarjargal16@gmail.com>  <20201029194643.GD27442@casper.infradead.org>  <22b1470078eb13300e7afdcede8aaff27a95b75c.camel@gmail.com>
 <687cd3942fcefbd153d318bf0d7014ff01f0bce3.camel@gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 30 Oct 2020, Amarjargal Gundjalam wrote:

> On Fri, 2020-10-30 at 20:29 +0800, Amarjargal Gundjalam wrote:
> > On Thu, 2020-10-29 at 19:46 +0000, Matthew Wilcox wrote:
> > > On Fri, Oct 30, 2020 at 03:40:26AM +0800, Amarjargal Gundjalam
> > > wrote:
> > > > @@ -1670,7 +1670,7 @@ static bool
> > > > halbtc8723b1ant_IsCommonAction(PBTC_COEXIST pBtCoexist)
> > > >
> > > >  	if (
> > > >  		!bWifiConnected &&
> > > > -		BT_8723B_1ANT_BT_STATUS_NON_CONNECTED_IDLE == pCoexDm-
> > > > > btStatus
> > > > +		pCoexDm->btStatus ==
> > > > BT_8723B_1ANT_BT_STATUS_NON_CONNECTED_IDLE
> > > >  	) {
> > >
> > > While you're touching this, please reformat as:
> > >
> > > 	if (!bWifiConnected &&
> > > 	    pCoexDm->btStatus ==
> > > BT_8723B_1ANT_BT_STATUS_NON_CONNECTED_IDLE) {
> > >
> > > ... fixing the name of that stupid constant is probably out of
> > > scope.
> > >
> >
> > Sure, I can work on it. Can I do this in a separate patch? This
> > driver
> > has lots of namings like this and I'd like to do single type of
> > changes
> > in each patch. And do you also have any suggestions on what could be
> > the best way to shorten these constants?
> >
>
> Oops, it was not about shortening the name but reformatting it. Got it.
> Should I do this in a separate patch or modify this one?

In general, each patch should do only one thing.  But adjusting
whitespace on the lines that you are already changing should be ok for
just one patch.  If there are lots of occurrences of this strange spacing
in the whole file and you want to fix all of them, that would be a
separate patch.

julia


>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/687cd3942fcefbd153d318bf0d7014ff01f0bce3.camel%40gmail.com.
>

