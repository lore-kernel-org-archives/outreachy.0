X-GM-THRID: 6664981263437266944
X-Received: by 2002:a2e:9a0e:: with SMTP id o14mr949673lji.9.1552030216903;
        Thu, 07 Mar 2019 23:30:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:558f:: with SMTP id v15ls776757lfg.5.gmail; Thu, 07 Mar
 2019 23:30:16 -0800 (PST)
X-Google-Smtp-Source: APXvYqwcH3icbF7Ouel9qTGSDWqeSWAS8KbOV7GDP0uN7/X/sswvL9PH+Tf3h7JvXroNOYIldGg1
X-Received: by 2002:a19:c502:: with SMTP id w2mr1053653lfe.15.1552030215913;
        Thu, 07 Mar 2019 23:30:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552030215; cv=none;
        d=google.com; s=arc-20160816;
        b=IXXJ2gVADsqeh/vWRpqW0p2D5DVPoAT0pCEOXVifYfQMPMnyP8+GUQAmlReM/YrKgo
         BVlwWcpNVY4GNhzzcPEvIYjGwu+/BG6bVHSrpo438/hQc1Q+/8VRRecsFcwSqqKZb6Xv
         vDkK0UuCPbw7Y2sB+U1e8/IQRZ5Z8c8dlQ6ZJZEMGcKOpDp9uUD6KR/OSCnm/SSwvv3a
         XZQwv8O8W9f2j9jzcx+Km9MxLlrFccNYVsPX2ITjDFW1BHc/4/nf8GRFMDdZYPRXIc1D
         CTefTjYFBvIlSKoeJriJjQMhO8JoTLYy5xLkWIBNT6XRxdK+abu3cCn4Vu+QEXqCrMwe
         7vZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=qLrKiRYIyGnOBH7HIDb0wHlDDQ5lQi62LLl9EYplXWA=;
        b=UuGTut86ukfJfK7vsb9Ywn/UAvzN2kCZaa+AfGmocBtOa0bqM2vAMFFpYhtFmjA/lH
         fatu+kV6hDWsfvNZ9EvGvq+oyTCPhlUMFz2r7XM7H6VzntGbBVGdTxXwa9QaaonkHsjp
         gSLOFBkD6FmNEsDKiHvAfDovV6fUiO2OuXaKXlv89hI6Yqh1wVbz4yz0y3dvZ3I1/y1t
         CDKQG5p69VGKiU6vyW8E9+TxrVspNgqX0O/FRY/HDg00UssHceC3y0M7CMqTwCvQ0DQz
         heBL7QJA/nks28P0WoA5a/nKQR1nYW7ALTpYoC83CXvJm96MauQRd9NY88N54cQkWWSb
         boNw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id m65si243383lfm.1.2019.03.07.23.30.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Mar 2019 23:30:15 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,455,1544482800"; 
   d="scan'208";a="372450390"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 08 Mar 2019 08:30:06 +0100
Date: Fri, 8 Mar 2019 08:30:06 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhagyashri Dighole <digholebhagyashri@gmail.com>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Outreachy <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: [PATCH v5] staging: fbtft: convert a
 macro to a function.
In-Reply-To: <CAOMPgjhrBxq96-We_5fHqaZZHxqxVhpuBwCYKAncOCq7XS5ksA@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.1903080829250.5073@hadrien>
References: <20190308065424.GA7942@bhagyashri-Lenovo-G570> <20190308065854.GA6875@kroah.com> <CAOMPgjhrBxq96-We_5fHqaZZHxqxVhpuBwCYKAncOCq7XS5ksA@mail.gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1605411076-1552030206=:5073"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1605411076-1552030206=:5073
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Fri, 8 Mar 2019, Bhagyashri Dighole wrote:

>
>
> On Fri, Mar 8, 2019 at 12:28 PM Greg Kroah-Hartman
> <gregkh@linuxfoundation.org> wrote:
>       On Fri, Mar 08, 2019 at 12:24:24PM +0530, Bhagyashri Dighole
>       wrote:
>       > Convert a macro to an inline function to improve type safety
>       and make
>       > the code simpler.
>       >
>       > Signed-off-by: Bhagyashri Dighole
>       <digholebhagyashri@gmail.com>
>       > ---
>       > Changes in v5:
>       >   -- Add space on both the side of operator.
>       >
>       > Changes in v4:
>       >   -- Modify log messages.
>       >
>       > Changes in v3:
>       >   -- Change the subject line according to log messages.
>       >   -- Remove extra spaces.
>       >   
>       > Changes in v2:
>       >   -- Make the converion from macro to inline function
>       >
>       >  drivers/staging/fbtft/fb_watterott.c | 15 +++++----------
>       >  1 file changed, 5 insertions(+), 10 deletions(-)
>       >
>       > diff --git a/drivers/staging/fbtft/fb_watterott.c
>       b/drivers/staging/fbtft/fb_watterott.c
>       > index 0a5206d..7ee8a83 100644
>       > --- a/drivers/staging/fbtft/fb_watterott.c
>       > +++ b/drivers/staging/fbtft/fb_watterott.c
>       > @@ -90,15 +90,10 @@ static int write_vmem(struct fbtft_par
>       *par, size_t offset, size_t len)
>       >       return 0;
>       >  }
>       > 
>       > -#define RGB565toRGB323(c) ((((c) & 0xE000) >> 8) |\
>       > -                        (((c) & 000600) >> 6) |\
>       > -                        (((c) & 0x001C) >> 2))
>       > -#define RGB565toRGB332(c) ((((c) & 0xE000) >> 8) |\
>       > -                        (((c) & 000700) >> 6) |\
>       > -                        (((c) & 0x0018) >> 3))
>       > -#define RGB565toRGB233(c) ((((c) & 0xC000) >> 8) |\
>       > -                        (((c) & 000700) >> 5) |\
>       > -                        (((c) & 0x001C) >> 2))
>       > +inline int rgb565_to_rgb332(u16 c)
>       > +{
>       > +     return ((c & 0xE000) >> 8) | ((c & 000700) >> 6) | ((c &
>       0x0018) >> 3);
>       > +}
>
>       You also deleted 2 unused macros here, making this patch do
>       multiple
>       things, and you didn't describe it in the changelog text :(
>
>       This should be 2 separate patches, one to remove the unused
>       macros, and
>       one to turn the macro that is used, into an inline function.
>
>
> Patch one : to remove the unused macros is added in staging tree.
> I thought i need to send only second patch.

You only need to send the second patch, if the first one is integrated.
But the patch that you sent removes those other macros again.  I guess you
have started from the wrong place.

julia

>
>       Oh, I also just noticed it needs to be static :)
>
>
> I will modify it with the static.
>
>       thanks,
>
>       greg k-h
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CAOMPgjhrBxq96-We_5fHqaZ
> ZHxqxVhpuBwCYKAncOCq7XS5ksA%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-1605411076-1552030206=:5073--

