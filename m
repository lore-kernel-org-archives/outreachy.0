X-GM-THRID: 6396343645329424384
X-Received: by 10.25.203.151 with SMTP id b145mr3622405lfg.17.1489268089880;
        Sat, 11 Mar 2017 13:34:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.80.83 with SMTP id v19ls1321875ljd.25.gmail; Sat, 11 Mar
 2017 13:34:49 -0800 (PST)
X-Received: by 10.46.22.86 with SMTP id 22mr541944ljw.9.1489268089571;
        Sat, 11 Mar 2017 13:34:49 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id l138si343138wmg.0.2017.03.11.13.34.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Mar 2017 13:34:49 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,148,1486422000"; 
   d="scan'208";a="264155607"
Received: from 198.67.28.109.rev.sfr.net (HELO [192.168.1.69]) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 11 Mar 2017 22:34:48 +0100
Date: Sat, 11 Mar 2017 22:34:48 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: SIMRAN SINGHAL <singhalsimran0@gmail.com>
cc: Greg KH <gregkh@linuxfoundation.org>, arve@android.com, 
    riandrews@android.com, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: android: Replace strcpy
 with strlcpy
In-Reply-To: <CALrZqyPw8rU8RuoAT83rxjVGdckvuS7F1gqVXDcerQ0kXEM30g@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1703112231280.2270@hadrien>
References: <20170311211725.GA12884@singhal-Inspiron-5558> <alpine.DEB.2.20.1703112221270.2270@hadrien> <CALrZqyPw8rU8RuoAT83rxjVGdckvuS7F1gqVXDcerQ0kXEM30g@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 12 Mar 2017, SIMRAN SINGHAL wrote:

> On Sun, Mar 12, 2017 at 2:53 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >
> >
> > On Sun, 12 Mar 2017, simran singhal wrote:
> >
> >> Replace strcpy with strlcpy as strcpy does not check for buffer
> >> overflow.
> >> This is found using Flawfinder.
> >>
> >> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
> >> ---
> >>
> >>  v2:
> >>    -Correcting the place of the parenthesis
> >>
> >>  drivers/staging/android/ashmem.c | 3 ++-
> >>  1 file changed, 2 insertions(+), 1 deletion(-)
> >>
> >> diff --git a/drivers/staging/android/ashmem.c b/drivers/staging/android/ashmem.c
> >> index 7cbad0d..eb2f4ef 100644
> >> --- a/drivers/staging/android/ashmem.c
> >> +++ b/drivers/staging/android/ashmem.c
> >> @@ -548,7 +548,8 @@ static int set_name(struct ashmem_area *asma, void __user *name)
> >>       if (unlikely(asma->file))
> >>               ret = -EINVAL;
> >>       else
> >> -             strcpy(asma->name + ASHMEM_NAME_PREFIX_LEN, local_name);
> >> +             strlcpy(asma->name + ASHMEM_NAME_PREFIX_LEN, local_name,
> >> +                     sizeof(asma->name + ASHMEM_NAME_PREFIX_LEN));
> >
> > This appears to be the old patch.
> >
> > Actually, looking closer, I don't think this is right at all.  There seems
> > to be a goal of leaving some space at the beginning of asma->name.  So the
> > amount of space available for local_name would be computed using a
> > subtraction, not an addition.
> >
> Julia, By mistake I sent the wrong patch.
> And I am not getting you want to mention which space.

The following is the whole asma->name array.  The | in the middle is the
offset ASHMEM_NAME_PREFIX_LEN.  The xxx characters are in the
ASHMEM_NAME_PREFIX_LEN region.  The space for local_name is only the part
indicates with the ys.  This space is smaller than the size of asma->name.
In your calculation, you are allowing it to be larger.  You will
potentially overflow the buffer by 2 * ASHMEM_NAME_PREFIX_LEN.

     --------------------------
    |xxxxxxx|yyyyyyyyyyyyyyyyyy|
     --------------------------

julia

