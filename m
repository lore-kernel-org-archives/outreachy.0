X-GM-THRID: 6950041041271521280
X-Received: by 2002:a05:6512:10c9:: with SMTP id k9mr1818694lfg.416.1618222633306;
        Mon, 12 Apr 2021 03:17:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:48c6:: with SMTP id v189ls790070lfa.0.gmail; Mon, 12 Apr
 2021 03:17:11 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy08EWFS5mOgNvhciPBcvPUpJYT/znNiMJA1vFOjJgLhi5TlYMY7oSMNKh+MtMFBrCVkQVO
X-Received: by 2002:a05:6512:304e:: with SMTP id b14mr18697693lfb.274.1618222631266;
        Mon, 12 Apr 2021 03:17:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618222631; cv=none;
        d=google.com; s=arc-20160816;
        b=NJFh+uWdNV3U1sUxaTEOw4HGMsv8UBxNP1S+4R0y7aAEdzVujdA4niALouIxwTTWvD
         7dfbb8fOExpV/BskWCM6+RPVG+oZT1MAfARBeCVLSXGTaWgOwGgRs4w/H9YjgCpSJiR0
         yEN8sK47RceyjozaPo8qG6V29vs/DTbsUvElHXKPrO7YjLWAHXItYecuIwuqaMd5G5T8
         9sB1tuBAlebnA+GA2hV9zCDW49nsR5qV4Qxwi0ZyUcqoJVr1j7E9yUfPAaT31Afnblgu
         azgmhppVd/KE9z9mFWgYOfhXDTeSMfK/tYrA3Z4mPLjvkV7lNTHDVSY1Q6UFknbwOoE5
         CsAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=c/yjdmyey+86S+Bn3Snpdbs4gqlR0rOUk23xb4wIe4s=;
        b=MW+qdwlrPsjOSXft3YErYYO8wJv1LNAmPv7/f8yGnJKxLdMXTpaVBjg/Mp9yWA1fT0
         HE2dUQiFAumyATWXrz2UBPMFEuF1fFdiiYkQR/QROH5VQnw2YI7UegSnSErcWkFKzxiy
         xjtiTk7NYQG47ubGd2UWmDA+L1DyV3zBa4vR24rDWNsWQnRAy/8PjQu8yA6QxxM4gERt
         AVOLjvdqk37mVdWo7r+pxX/Fq8RVETST0LiJ5yGOSm9sU2ihTgbqQ7gMPeXzKX6zgXTC
         ikPa2z9bWp/WhcLotSHQnF9VIoDv3dva5p50WVe/Ffynhy5C56lywREmyitoyUSTrU7j
         eLwQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id q9si618138ljm.3.2021.04.12.03.17.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Apr 2021 03:17:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3AGbDAia04DzLbot04H/gwLgqjBGUkLtp033Aq?=
 =?us-ascii?q?2lEZdDV+dMuEm8ey2MkB3RjvhzoLHF0mk9aMOK6PKEm9ybde544NMbC+GDT3oW?=
 =?us-ascii?q?fAFuBfxKbr3jGIIUfD38FH06MIScRDIfnRKXQ/ssrg+gm/FL8bruWv1Kyzn+/R?=
 =?us-ascii?q?wzNMYGhRAJ1I1AtyBgaFHkAefmAvObMCCJGe6sBbzgDMRV0raK2AaUU4Yw=3D?=
 =?us-ascii?q?=3D?=
X-IronPort-AV: E=Sophos;i="5.82,216,1613430000"; 
   d="scan'208";a="502751049"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 12 Apr 2021 12:17:10 +0200
Date: Mon, 12 Apr 2021 12:17:10 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Greg KH <gregkh@linuxfoundation.org>
cc: Sakari Ailus <sakari.ailus@linux.intel.com>, 
    Mitali Borkar <mitaliborkar810@gmail.com>, bingbu.cao@intel.com, 
    tian.shu.qiu@intel.com, mchehab@kernel.org, linux-media@vger.kernel.org, 
    linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org, 
    outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: Re: [Outreachy kernel] Re: [PATCH 1/6] staging: media: intel-ipu3:
 replace bit shifts with BIT() macro
In-Reply-To: <YHQXty07oAP1L0W9@kroah.com>
Message-ID: <alpine.DEB.2.22.394.2104121216140.6734@hadrien>
References: <cover.1618180659.git.mitaliborkar810@gmail.com> <cc7b827a3264f08cedb76adddd16a34df48f935f.1618180659.git.mitaliborkar810@gmail.com> <20210412094230.GI3@paasikivi.fi.intel.com> <YHQXty07oAP1L0W9@kroah.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 12 Apr 2021, Greg KH wrote:

> On Mon, Apr 12, 2021 at 12:42:30PM +0300, Sakari Ailus wrote:
> > Hi Mitali,
> >
> > On Mon, Apr 12, 2021 at 04:38:39AM +0530, Mitali Borkar wrote:
> > > Added #include <linux/bitops.h> and replaced bit shifts by BIT() macro.
> > > This BIT() macro from linux/bitops.h is used to define IPU3_UAPI_GRID_Y_START_EN
> > > and IPU3_UAPI_AWB_RGBS_THR_B_* bitmask.
> > > Use of macro is better and neater. It maintains consistency.
> > > Reported by checkpatch.
> > >
> > > Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
> > > ---
> > >  drivers/staging/media/ipu3/include/intel-ipu3.h | 7 ++++---
> > >  1 file changed, 4 insertions(+), 3 deletions(-)
> > >
> > > diff --git a/drivers/staging/media/ipu3/include/intel-ipu3.h b/drivers/staging/media/ipu3/include/intel-ipu3.h
> > > index edd8edda0647..589d5ccee3a7 100644
> > > --- a/drivers/staging/media/ipu3/include/intel-ipu3.h
> > > +++ b/drivers/staging/media/ipu3/include/intel-ipu3.h
> > > @@ -5,6 +5,7 @@
> > >  #define __IPU3_UAPI_H
> > >
> > >  #include <linux/types.h>
> > > +#include <linux/bitops.h>
> > >
> > >  /* from /drivers/staging/media/ipu3/include/videodev2.h */
> > >
> > > @@ -22,11 +23,11 @@
> > >  #define IPU3_UAPI_MAX_BUBBLE_SIZE			10
> > >
> > >  #define IPU3_UAPI_GRID_START_MASK			((1 << 12) - 1)

Mitali,

It's not very relevant given the use of this header, but if the 1 << 15
translation was correct, you could have changed the 1 << 12 computation as
well.

julia

> > > -#define IPU3_UAPI_GRID_Y_START_EN			(1 << 15)
> > > +#define IPU3_UAPI_GRID_Y_START_EN			BIT(15)
> >
> > This header is used in user space where you don't have the BIT() macro.
>
> If that is true, why is it not in a "uapi" subdir within this driver?
>
> Otherwise it is not obvious at all that this is the case :(
>
> thanks,
>
> greg k-h
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/YHQXty07oAP1L0W9%40kroah.com.
>

