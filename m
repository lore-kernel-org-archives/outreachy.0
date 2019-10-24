X-GM-THRID: 6751148085003419648
X-Received: by 2002:adf:9044:: with SMTP id h62mr3647007wrh.91.1571947608430;
        Thu, 24 Oct 2019 13:06:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a7b:c5c4:: with SMTP id n4ls5208915wmk.3.canary-gmail; Thu,
 24 Oct 2019 13:06:47 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxRxC4U03kGar5XBglSWuw0Jk8mjS6oz8mUzo7INP2F4YffJIYyysuG//uce0l/l9u8CNvp
X-Received: by 2002:a7b:c959:: with SMTP id i25mr151907wml.26.1571947607327;
        Thu, 24 Oct 2019 13:06:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571947607; cv=none;
        d=google.com; s=arc-20160816;
        b=h6Kqy6enM+0TyzJoJY1RFzQ/TcbGjCuHidMstZw3sxrp43eIwT3QeEajJRcXweO07q
         MfKo5uAfxqzGY+oT2cZzgAz/X4rpqAQtFq8bflF5HrgK8LfswptIeAbAIuUyrvkVMgQ9
         YTA5H7Hjtj4aD1irfhLMUNQsdU/TIrOUnFnRR2GLUdyiMndyb3VNpiDxOa1Fa9ZYNOg+
         L/gE1HH+gzgSHPy5T8+m7gOw3KK/IlWUTzAhhW/jqbs+CS/uHBHKkEQvjLTuXNJ4kEdJ
         lDOmoBh2orFzhDxvHBzIQ5jjp8mV0WTHDD8IPexOp31/Y5TPcfU9ASekVlJ97HFY0i7J
         /JLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=+F0tUJhAvZLX8XIiV0XJaDAgSGbseyvt1YQxOsGYr1s=;
        b=z1Vp6k+is71uG0yRa94ACxvIcYJwTdcN8M60pmDAvXxpwRW/p9rvmMTek0g9M5UMlp
         TBOs9+hGpzPk1Q2g/cLnmj6Ti4E2j/a5UnrH8MF87giLuD/9AQG2eFvdmbQkTq2ynHsB
         PIlr5/o43d/pOknw7ybpr/b2WEkltDt6/cwaf5xr6ee2lx8UMEgogR+/k7HAhBrYEW1N
         JChpZ3JS9LtnkLNcuioXvQz3YogaQ6mNnpbKuF3Qp6Br0MhTzJfVqsdjGpszJ/SoZ/GR
         YLaO0X8Rsb1BzEurCvYhc31H0LOhQM4Dm/yby23Iw761QZwQsfb9HZm7T3+NN0oxZHdQ
         8sQw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id s15si235974wme.2.2019.10.24.13.06.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 24 Oct 2019 13:06:47 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.68,226,1569276000"; 
   d="scan'208";a="324192097"
Received: from ip-121.net-89-2-166.rev.numericable.fr (HELO hadrien) ([89.2.166.121])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 24 Oct 2019 22:06:46 +0200
Date: Thu, 24 Oct 2019 22:06:46 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: evan chime <chime.evan.dri.devel@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH 1/7] Staging: comedi: Remove
 wrapper function declarartion
In-Reply-To: <CANR89jYskb=4rJ6r=WFS2QZRonHFs9_oiHok7SqC5iWCnc4qBg@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.1910242205330.2621@hadrien>
References: <20191023234230.GA4485@ik-ubuntu> <b4d518c4-602a-9db3-4370-e26dfb780637@mev.co.uk> <CANR89jYTpnXXZXBkmYwox-i+ZF_0bSWWCCTLOpjaYKJpXJkEZw@mail.gmail.com> <CANR89jaTcgtXzkPH-O6vTNoCjQXyHSTe-zY35y=O9p9WBQ=X7A@mail.gmail.com> <alpine.DEB.2.21.1910242021470.2621@hadrien>
 <CANR89jYskb=4rJ6r=WFS2QZRonHFs9_oiHok7SqC5iWCnc4qBg@mail.gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-683861813-1571947606=:2621"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-683861813-1571947606=:2621
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Thu, 24 Oct 2019, evan chime wrote:

> Hello Julia
>
> Please what does it mean by don’t top the post? I normally do reply all from
> my gmail 

You should type your response under the text that you are responding to.
That way the reader can understand exactly what you are talking about.

Please read through the tutorial again carefully.

julia

>
> Kind regards 
> Evan 
>
> On Thu, 24 Oct 2019 at 19:22, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
>       On Thu, 24 Oct 2019, evan chime wrote:
>
>       > So should we maybe email the names on the TODOs, next time, to
>       clarify the
>       > tasks
>
>       Please don't top post.
>
>       julia
>
>       >
>       > On Thu, 24 Oct 2019 at 10:53, evan chime
>       <chime.evan.dri.devel@gmail.com>
>       > wrote:
>       >       Hello Ian
>       >
>       > Thanks for the reply. Got it
>       >
>       > Kind Regards
>       > Evan 
>       >
>       > On Thu, 24 Oct 2019 at 10:38, Ian Abbott <abbotti@mev.co.uk>
>       wrote:
>       >       On 24/10/2019 00:42, Evan Chime wrote:
>       >       > Remove wrapper function "comedi_buf_map_get"
>       declaration
>       >       > as part of remove all wrappers in
>       >       drivers/staging/comedi/TODO
>       >       >
>       >       > Signed-off-by: Evan Chime
>       >       <chime.evan.dri.devel@gmail.com>
>       >       > ---
>       >       >   drivers/staging/comedi/comedi_internal.h | 1 -
>       >       >   1 file changed, 1 deletion(-)
>       >       >
>       >       > diff --git a/drivers/staging/comedi/comedi_internal.h
>       >       b/drivers/staging/comedi/comedi_internal.h
>       >       > index 515f293a5d26..df3b1af109f7 100644
>       >       > --- a/drivers/staging/comedi/comedi_internal.h
>       >       > +++ b/drivers/staging/comedi/comedi_internal.h
>       >       > @@ -28,7 +28,6 @@ int comedi_buf_alloc(struct
>       >       comedi_device *dev, struct comedi_subdevice *s,
>       >       >                    unsigned long new_size);
>       >       >   void comedi_buf_reset(struct comedi_subdevice *s);
>       >       >   bool comedi_buf_is_mmapped(struct comedi_subdevice
>       >       *s);
>       >       > -void comedi_buf_map_get(struct comedi_buf_map *bm);
>       >       >   int comedi_buf_map_put(struct comedi_buf_map *bm);
>       >       >   int comedi_buf_map_access(struct comedi_buf_map *bm,
>       >       unsigned long offset,
>       >       >                         void *buf, int len, int
>       write);
>       >       >
>       >
>       >       Sorry, I don't really see the point of this patch
>       series. 
>       >       For a start,
>       >       the comedi_buf_map functions were added a long time
>       after
>       >       the TODO file
>       >       was written.  I can't even remember what the "remove all
>       >       wrappers" line
>       >       in the TODO file is referring to.
>       >
>       >       Besides that, as pointed out by Julia, the patches have
>       >       been ordered in
>       >       such a way as to break the build between the patches.
>       >
>       >       --
>       >       -=( Ian Abbott <abbotti@mev.co.uk> || Web: www.mev.co.uk
>       >       )=-
>       >       -=( MEV Ltd. is a company registered in England & Wales.
>       >       )=-
>       >       -=( Registered number: 02862268.  Registered address:   
>       >       )=-
>       >       -=( 15 West Park Road, Bramhall, STOCKPORT, SK7 3JZ, UK.
>       >       )=-
>       >
>       > --
>       > You received this message because you are subscribed to the
>       Google Groups
>       > "outreachy-kernel" group.
>       > To unsubscribe from this group and stop receiving emails from
>       it, send an
>       > email to outreachy-kernel+unsubscribe@googlegroups.com.
>       > To view this discussion on the webvisithttps://groups.google.com/d/msgid/outreachy-kernel/CANR89jaTcgtXzkPH-O
>       6vTNo
>       > CjQXyHSTe-zY35y%3DO9p9WBQ%3DX7A%40mail.gmail.com.
>       >
>       >
>
>       --
>       You received this message because you are subscribed to the
>       Google Groups "outreachy-kernel" group.
>       To unsubscribe from this group and stop receiving emails from
>       it, send an email to
>       outreachy-kernel+unsubscribe@googlegroups.com.
>       To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.19102420
>       21470.2621%40hadrien.
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CANR89jYskb%3D4rJ6r%3DWF
> S2QZRonHFs9_oiHok7SqC5iWCnc4qBg%40mail.gmail.com.
>
>
--8323329-683861813-1571947606=:2621--

