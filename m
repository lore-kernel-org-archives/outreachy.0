X-GM-THRID: 6536210357179908096
X-Received: by 10.55.170.8 with SMTP id t8mr13780704qke.11.1521875645195;
        Sat, 24 Mar 2018 00:14:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.55.177.1 with SMTP id a1ls4662327qkf.4.gmail; Sat, 24 Mar 2018
 00:14:04 -0700 (PDT)
X-Google-Smtp-Source: AG47ELu+AL78J+V9tX1weuGTYbeGD5NPSbDmsyHQ5nJC9j1G6twXFHIWTSwIJNKdbR/bIwD7IHLs
X-Received: by 10.55.120.199 with SMTP id t190mr20426061qkc.36.1521875644284;
        Sat, 24 Mar 2018 00:14:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521875644; cv=none;
        d=google.com; s=arc-20160816;
        b=fCKwR2bp0jIDdSXMHBE6ZcWbt4PVhZzpK8c8xvL75PYewKNqhiZEY0MHVQDpTGdE0D
         36N53Oe9ozpfhgawwxYGq8VXD78ph5DKoyk7kIKV7+e3CzG4YayD/YtxwodPrL6hHAkA
         Olk28f/myphZkmdC+6IJkgx385HFosdWterV4JYPXnMzruxAN55WJK2KsIYo4RWtS9qC
         92pSX4odnhDO7Q09qu6N/sR0YQTZgP6pkB2JBJZMc8jPSDrm7rMp3TjIY+0ekzCtDN15
         k/F97TtOd1VrP3gMkDVk904wpOWUrXnpePbijCrJSiyJdIiD6tNeTwCbXBbCTaWChj38
         iEgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=9o9rrgBkVxM2ozsC7oe0RgysibsFWoIaY91406PAPhk=;
        b=KqOrPkvM0mPavXafvhFWpaeKfFJAU/14Ho71VO5m9z7P4llmjj3XkFse4ZYAmIFMU3
         aZS1Ylm5WFVhECmp18recoWQ2aXjXxoX+SrDhBuOTMjQTIvIDlbF3C3ErX+pU4q3LJMu
         Y14Izr2zFi5BBSdGHfe28w2aqxOk0XfhHNdETLBYmvSpSXvvej1NEp8TyDAuPQeMIVVf
         jx2oE5bjM3awiK3+lAnjS6Gu9BFfzcHPDAckudjpMW/5CoNyPzvEHTJUmJ+06DBX8xYL
         38H7ns14D4PdWm68dBQ2SKZE8eRDkbXJ0uSCx+qpQXb5Rw0r/fhew1+9yhzVleTnuYxI
         2fPA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=EBcw7tr8;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:4001:c06::241 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-io0-x241.google.com (mail-io0-x241.google.com. [2607:f8b0:4001:c06::241])
        by gmr-mx.google.com with ESMTPS id q128si721756qkb.1.2018.03.24.00.14.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Mar 2018 00:14:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:4001:c06::241 as permitted sender) client-ip=2607:f8b0:4001:c06::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=EBcw7tr8;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:4001:c06::241 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-io0-x241.google.com with SMTP id m83so17661490ioi.8
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Mar 2018 00:14:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=9o9rrgBkVxM2ozsC7oe0RgysibsFWoIaY91406PAPhk=;
        b=EBcw7tr8p57ayw5sWW+VLIpBB4qIKgzrheCTKTxyDTu9Cp1Sx+5l8IvNxjmqKofgLJ
         2YTIhHtpbXGXiUZslw7vx41tAimPSSuIeAanEMR+Uis7XOdDgJHlPrtTfSgcv9hSU4Sm
         tw++zOZ08MjY4If+4OlRMPbFnEcdAYxQuawSk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=9o9rrgBkVxM2ozsC7oe0RgysibsFWoIaY91406PAPhk=;
        b=gVtGSEPszknEhWpELYumhB6MYAsWiMcYR3HFfHkQWsqrCkepJfPzCOn3CqxCttQyNY
         oGY4IuXgSdRQiAFTbDk+8xDoQczlGwNbkZlsC/J0mmhiXMDVUnW8Bil2nD+m8Lob4/Bu
         bW7Mbu1V8D/dkAaUedlQXNbhV3PRjwMnYN3oS3EakafYnEKUg5HzvWK+N98XIMoVUjVp
         VOmyBleBbG8V4kFiG4yJeaDgN0KPI225e8JaSBiNozESOAdAZh9uFKMPYuAb+SDR0I+h
         Ib+9phgPrebI9jlFcASstOIsUZ5S6bTOhP98X9hXhQvHBkmoADuVSyTbiRbSWCP9RzBv
         S+/g==
X-Gm-Message-State: AElRT7F6ZD8Bl5vJ7k96hMJIY2N/cSDtRu+FGcHZdjil5vO0g7ZG8rcu
	cQ64PVRkuwgwy37VxgBTwFIXJHWNT9XcDOfuU8m5dA==
X-Received: by 10.107.44.199 with SMTP id s190mr34307266ios.123.1521875643406;
 Sat, 24 Mar 2018 00:14:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.128.23 with HTTP; Sat, 24 Mar 2018 00:14:02 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.20.1803231829090.2369@hadrien>
References: <1521830040-7138-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
 <alpine.DEB.2.20.1803231435550.2450@hadrien> <CAC4++KDR0oqq6HVRU5NEJx5U_GUZ1-mb8PRP2nXTn1KpTEXkMA@mail.gmail.com>
 <alpine.DEB.2.20.1803231829090.2369@hadrien>
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Date: Sat, 24 Mar 2018 12:44:02 +0530
Message-ID: <CAC4++KDj9SQiF5Cyxyads8q0XZd7fdDa1eWhH9_WfvnQPA=0mg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2 1/5] staging: vt6655: Change
 CARD_PKT_TYPE from typedef to enum
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: forest@alittletooquiet.net, Greg KH <gregkh@linuxfoundation.org>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"

On Sat, Mar 24, 2018 at 4:01 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
>
> On Sat, 24 Mar 2018, Nishka Dasgupta wrote:
>
> > On Sat, Mar 24, 2018 at 12:06 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> > >
> > >
> > > On Fri, 23 Mar 2018, Nishka Dasgupta wrote:
> > >
> > >> Change CARD_PKT_TYPE from typedef enum to enum. Issue found with checkpatch.
> > >>
> > >> Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
> > >> ---
> > >> Changes in v2:
> > >>  - Clarify subject and commit message.
> > >>
> > >>  drivers/staging/vt6655/card.h | 4 ++--
> > >>  1 file changed, 2 insertions(+), 2 deletions(-)
> > >>
> > >> diff --git a/drivers/staging/vt6655/card.h b/drivers/staging/vt6655/card.h
> > >> index 487039a..be5254a 100644
> > >> --- a/drivers/staging/vt6655/card.h
> > >> +++ b/drivers/staging/vt6655/card.h
> > >> @@ -39,12 +39,12 @@
> > >>  #define CB_MAX_CHANNEL_5G       42
> > >>  #define CB_MAX_CHANNEL          (CB_MAX_CHANNEL_24G + CB_MAX_CHANNEL_5G)
> > >>
> > >> -typedef enum _CARD_PKT_TYPE {
> > >> +enum CARD_PKT_TYPE {
> > >>       PKT_TYPE_802_11_BCN,
> > >>       PKT_TYPE_802_11_MNG,
> > >>       PKT_TYPE_802_11_DATA,
> > >>       PKT_TYPE_802_11_ALL
> > >> -} CARD_PKT_TYPE, *PCARD_PKT_TYPE;
> > >> +};
> > >
> > > Were the typedefs never use?  If they were used, then this should result
> > > in a kernel that doesn't compile.
> >
> > This particular driver is compiling at my end; if I remember
> > correctly, all of drivers/staging/ also compiled with the changes in
> > this patchset.
> > Just to be sure, I also searched within this driver for this (and
> > other) typedefs being used after the definition, and I couldn't find
> > any occurrences, which confused me a little. Am I doing something
> > wrong?
>
> For an enum, it could be useful even if the type name is never used,
> because the enum serves to define some constants, eg PKT_TYPE_802_11_BCN.
> But even the constants don't seem to be used in this case.  So it seems
> that the whole thing could just be dropped.

No, I couldn't find the constants being used either. Should I delete
all of these in that case?

> julia
>
>
> >
> > > julia
> > >
> > >>
> > >>  typedef enum _CARD_STATUS_TYPE {
> > >>       CARD_STATUS_MEDIA_CONNECT,
> > >> --
> > >> 2.7.4
> > >>
> > >> --
> > >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > >> To post to this group, send email to outreachy-kernel@googlegroups.com.
> > >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1521830040-7138-1-git-send-email-nishka.dasgupta_ug18%40ashoka.edu.in.
> > >> For more options, visit https://groups.google.com/d/optout.
> > >>
> >
> > Thanking you,
> > Nishka Dasgupta
> >

Thanking you,
Nishka Dasgupta

