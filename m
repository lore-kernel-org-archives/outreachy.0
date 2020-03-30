X-GM-THRID: 6809434547497730048
X-Received: by 2002:a17:906:ce4c:: with SMTP id se12mr9530016ejb.153.1585580106114;
        Mon, 30 Mar 2020 07:55:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:68d8:: with SMTP id y24ls11898786ejr.9.gmail; Mon,
 30 Mar 2020 07:55:04 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vt8qGkEZwxlyLdmkQMQsz7oDpUiIFIl1wV29jNEkJ51zh9GOgF8Oqb1ugRn4hjRKNzXIpPz
X-Received: by 2002:a17:907:20d0:: with SMTP id qq16mr11369680ejb.139.1585580104692;
        Mon, 30 Mar 2020 07:55:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585580104; cv=none;
        d=google.com; s=arc-20160816;
        b=MHV8+qen222X6ZTCx0BhaD2WpRkbkCUcZA2gPkPZhlGZcmWvWgEeYXjbjg65GZ7jyQ
         QciYEY3nwRIQjno4RccRybRHXRYv5hZQ56nP3NUKXptXGe+dRkHJ0MOYL0JfUAMa0JD7
         XEquqEWQo9+PeqPKAA+YrNh1MZxyQeEZgyPTT7fdwRKeGms6fNrd8ZVGxuGrTNQHToZ2
         gfp8+pGzmLvGhJQFuRpJmGJcu/ZeK9uw4ICcOxRer5vIfhrveVCZX9dE4Q8PvPl+4Vqr
         9XwN/tM5uuKyIE/1CUpXEJMuAGvgEDBrYBXTvdKR09S+d6QVz23niEUMShFCN4wy+P2S
         qPIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=IC4s+6gL2vrMkKpqkvJgjpTjI3Ldft7IrkitjH7KMU4=;
        b=0Gdhhiu/ClP0Y7Bhb0nbVBgBz6SLub9d4WLTpWCyOmmKP8DHuY81Vxrss0ryDj39ba
         DJT90Mj4It+d0TI+Rqm1osogROItB7IF5bluL3RlHI7uiQemY5XLsPL8FFKALmCEV1YA
         0RMiSUWurvDzCb+gNSTyi0eE+ApzG9aVuZxgjbbvmEJZVb+V3RT70AHH8pLvxqt4r7Vh
         nEEPPbbjcpkfIqupImiFa5ctph3A3EmkLqZAA/HBZnicYpYhDbrDR1U/CutvilY4+NUQ
         nE5pP5jzZ2KJHMKCGyE2dUyZAw0iORHawTgRlw0BFa4C24mxB22j5zaWPJcZGzBeZr9+
         aWaQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id c21si670767edj.0.2020.03.30.07.55.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Mar 2020 07:55:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.72,324,1580770800"; 
   d="scan'208";a="344316072"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 30 Mar 2020 16:55:03 +0200
Date: Mon, 30 Mar 2020 16:55:03 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Stefano Brivio <sbrivio@redhat.com>
cc: Briana Oursler <briana.oursler@gmail.com>, gregkh@linuxfoundation.org, 
    forest@alittletooquiet.net, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/3] Staging: vt6655: Remove
 CARDbSoftwareReset definition.
In-Reply-To: <20200330164514.7f0c2272@elisabeth>
Message-ID: <alpine.DEB.2.21.2003301654140.2432@hadrien>
References: <cover.1585442480.git.briana.oursler@gmail.com> <99a02f7f8fe001b30d3e4839c7793922c37027e4.1585442480.git.briana.oursler@gmail.com> <20200330164514.7f0c2272@elisabeth>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 30 Mar 2020, Stefano Brivio wrote:

> On Sat, 28 Mar 2020 18:23:40 -0700
> Briana Oursler <briana.oursler@gmail.com> wrote:
>
> > Remove uncalled function CARDbSoftwareReset and comments related to it.
>
> I'm not a native English speaker, so I'm not entirely sure about this:
> would you really *call* a function "uncalled"?
>
> To me, an "uncalled" function sounds like an undesired function. Which
> is true, but that's not, strictly speaking, the reason why you're
> removing it. You're removing it because it's not called. Not because
> it's uncalled.
>
> Or... is it exactly the same?

Actually, it seems minimally ok to me.  But "Remove the function XXX that
is never called" would indeed be more clear.

julia

>
> > Signed-off-by: Briana Oursler <briana.oursler@gmail.com>
> > ---
> >  drivers/staging/vt6655/card.c | 20 --------------------
> >  drivers/staging/vt6655/card.h |  1 -
> >  2 files changed, 21 deletions(-)
> >
> > diff --git a/drivers/staging/vt6655/card.c b/drivers/staging/vt6655/card.c
> > index e65c9825ea5a..135010d2c7d3 100644
> > --- a/drivers/staging/vt6655/card.c
> > +++ b/drivers/staging/vt6655/card.c
> > @@ -12,7 +12,6 @@
> >   *      CARDbAddBasicRate - Add to BasicRateSet
> >   *      CARDbIsOFDMinBasicRate - Check if any OFDM rate is in BasicRateSet
> >   *      CARDvSetLoopbackMode - Set Loopback mode
> > - *      CARDbSoftwareReset - Sortware reset NIC
> >   *      CARDqGetTSFOffset - Calculate TSFOffset
> >   *      CARDbGetCurrentTSF - Read Current NIC TSF counter
> >   *      CARDqGetNextTBTT - Calculate Next Beacon TSF counter
> > @@ -843,25 +842,6 @@ void CARDvSetLoopbackMode(struct vnt_private *priv,
> >  	/* set Baseband loopback */
> >  }
> >
> > -/*
> > - * Description: Software Reset NIC
> > - *
> > - * Parameters:
> > - *  In:
> > - *      priv         - The adapter to be reset
> > - *  Out:
> > - *      none
> > - *
> > - * Return Value: none
> > - */
> > -bool CARDbSoftwareReset(struct vnt_private *priv)
> > -{
> > -	/* reset MAC */
> > -	if (!MACbSafeSoftwareReset(priv))
> > -		return false;
> > -
> > -	return true;
> > -}
> >
>
> This newline should be removed for consistency. I mean, either this
> one, or the one after CARDvSetLoopbackMode() -- nobody will be able
> to tell which one you chose. :)
>
> >  /*
> >   * Description: Calculate TSF offset of two TSF input
>
> --
> Stefano
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200330164514.7f0c2272%40elisabeth.
>

