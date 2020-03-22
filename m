X-GM-THRID: 6807040455722663936
X-Received: by 2002:a05:600c:2048:: with SMTP id p8mr20619606wmg.58.1584888894766;
        Sun, 22 Mar 2020 07:54:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:548b:: with SMTP id h11ls1058235wrv.9.gmail; Sun, 22 Mar
 2020 07:54:53 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vustonXwdBJhIm8LjzBHRjuwdewNv6sLhMIjkQa8onN2fyUN7bTAFyubhgEMD763zInxF60
X-Received: by 2002:adf:90e1:: with SMTP id i88mr24761536wri.95.1584888893456;
        Sun, 22 Mar 2020 07:54:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584888893; cv=none;
        d=google.com; s=arc-20160816;
        b=dUUPVlDIKZiNgQ94fi4qZEZqJQeRkVXowe+xR0V3vu/TJbYVRPllGe7krPurKPJBLZ
         5iH/jz35rvKZtcVDom6Fs/yCO7Df24i91EZCEwOr0Pobwx0xlqMRP9mXKLGksxrA+sXM
         DrsgLC8BGD0ysq0cmW+TEvjOtlXH+THQNnwGIolaqdThWdg3S882+6DK1wcrXVfm+nx9
         IrwZib7tVv5MIrptRlp5cPB0ok5vXBT2m/zpyPpzelYTDqe0XZoGvLmtLmqdomMFknIH
         Ssq/W9fzSUmNVr1DadxDV3umHzFcLByniI2sMiu5m+NjnEcZmOsPCCm8vfvdfqQwJeRN
         NlCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=TDye0u/ABL6RwTn3AS2/ov1iSyvTF3YMC6NH4VMO+wQ=;
        b=s8BcmWpO52ic+HrYcOK1j8lt0u10ZEs/LmgZwwmnf0yrRMOg+VUVPlgN/35z7AR4dn
         7caEHmrXU6PdrQSclYG5n2lGQYlqeUdpIeIddzjYghbb/CwjPLELKmhdZQWnRHHzRlLf
         qziQA+VLfNHQM/vp2/d9zhqMBmIKJOV1vuya15nOS2/x6Imu2QYCv+HPKhb5duRmYVM1
         kcytTWQIR9OEN7ML+vruoTDaPKRwJ9AOYuo/nQzTxm1XM620FQgthDn4E9vFb9tyK0jp
         ct30jmeEhX3v9YFFf5PlTmR4LsI6LjV3bNXByVLk9/G0zDqgMsDYHQY3td1vt2REsoMU
         tMbw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id a18si566995wra.0.2020.03.22.07.54.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Mar 2020 07:54:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.72,292,1580770800"; 
   d="scan'208";a="343201772"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 22 Mar 2020 15:54:52 +0100
Date: Sun, 22 Mar 2020 15:54:52 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Sam Muhammed <jane.pnx9@gmail.com>
cc: Samuel Thibault <samuel.thibault@ens-lyon.org>, 
    outreachy-kernel@googlegroups.com, William Hubbs <w.d.hubbs@gmail.com>, 
    Chris Brannon <chris@the-brannons.com>, Kirk Reiser <kirk@reisers.ca>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] Re: [PATCH] Staging: speakup: Use pr_warn()
 defined in <linux/printk.h>.
In-Reply-To: <35ae3f18d6f774d19119d0fed29773f14f99da94.camel@gmail.com>
Message-ID: <alpine.DEB.2.21.2003221553440.2325@hadrien>
References: <20200322143322.29098-1-jane.pnx9@gmail.com>  <20200322143516.wsekmcsreziw5tvo@function> <35ae3f18d6f774d19119d0fed29773f14f99da94.camel@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 22 Mar 2020, Sam Muhammed wrote:

> On Sun, 2020-03-22 at 15:35 +0100, Samuel Thibault wrote:
> > Sam Muhammed, le dim. 22 mars 2020 10:33:22 -0400, a ecrit:
> > > Dropping a user-defined pr_warn() and using the kernel
> > > message printing functions implemented in <linux/printk.h>.
> > >
> > > Since both have the same functionality, using the standard
> > > kernel functions is better.
> > >
> > > Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
> >
> > Reviewed-by: Samuel Thibault <samuel.thibault@ens-lyon.org>
> >
>
> Thank you!
> I have a question though, some drivers define pr_fmt() to include the
> driver's KBUILD_MODNAME
>
> #define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
>
> I added it, it builds fine but prompts me about a warning that its
> redefined over the original pr_fmt() in <linux/printk.h>
>
> is this warning usually ignored? because there are lots of drivers
> redefined their own pr_fmt()
>
> if so should i add it?

I don't know the details of this issue, but you shouldn't add warnings.
If you do make make path/file.i you will see the result of preprocessing
the file.  Then maybe you can see why there is a warning in your case, but
not in the other cases.

julia

>
> Sam
>
> > Thanks!
> >
> > > ---
> > >  drivers/staging/speakup/spk_priv.h | 6 ++----
> > >  1 file changed, 2 insertions(+), 4 deletions(-)
> > >
> > > diff --git a/drivers/staging/speakup/spk_priv.h b/drivers/staging/speakup/spk_priv.h
> > > index ac6a74883af4..c75b40838794 100644
> > > --- a/drivers/staging/speakup/spk_priv.h
> > > +++ b/drivers/staging/speakup/spk_priv.h
> > > @@ -11,13 +11,11 @@
> > >  #ifndef _SPEAKUP_PRIVATE_H
> > >  #define _SPEAKUP_PRIVATE_H
> > >
> > > +#include <linux/printk.h>
> > > +
> > >  #include "spk_types.h"
> > >  #include "spk_priv_keyinfo.h"
> > >
> > > -#ifndef pr_warn
> > > -#define pr_warn(fmt, arg...) printk(KERN_WARNING fmt, ##arg)
> > > -#endif
> > > -
> > >  #define V_LAST_VAR { MAXVARS }
> > >  #define SPACE 0x20
> > >  #define SYNTH_CHECK 20030716 /* today's date ought to do for check value */
> > > ---
> > > 2.20.1
> > >
> >
>
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/35ae3f18d6f774d19119d0fed29773f14f99da94.camel%40gmail.com.
>

