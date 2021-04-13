X-GM-THRID: 6950506572644614144
X-Received: by 2002:ac2:4f84:: with SMTP id z4mr25187165lfs.608.1618351507533;
        Tue, 13 Apr 2021 15:05:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:48c6:: with SMTP id v189ls374343lfa.0.gmail; Tue, 13 Apr
 2021 15:05:05 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwWcNdeW6Dz7sSxo9lXkQpyKDrXPl233ZUPgB8qVyrpcckYVMKtpLRhqNI12xwTAs+MpnhP
X-Received: by 2002:a05:6512:3a91:: with SMTP id q17mr22513029lfu.364.1618351505335;
        Tue, 13 Apr 2021 15:05:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618351505; cv=none;
        d=google.com; s=arc-20160816;
        b=oljba0SnsOFYBgYXFTDsQjsmMVh0gx4ftblQYPRl2y9c5V+Yy4GiYDhnpweWb9YNmY
         r3jcb7G1oemtky5Zx2+inSsZT+snnnjBRoHm6kcnQ85huQmOF4gq2b8NMqzBWR0gW9uT
         b3UedYiDCLTlHRc8ybR0o6ZqSHSxvg+EFQVs2w1h8QbxYaXrdOWhTst6CdCvx8tyU3Q8
         B0lB8ByknR3wmGkSJcHLpJx1jz6V+fMDxVZvMxmoFmoqV0W/2aqjXvEfT5rMzd/XmVE2
         Lr9IJmo2RM2/KC14y5QZFCtPdgYlIffY5Cudb9We1b/ibA39pxtvQtBOSzWAYiNrPKCh
         EJHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=UaxGyIpq5Nucm8Y+7FobDCrrLXIYmPFrxAoaj2HK+RA=;
        b=0EBXwMH6zlMsIxecnXQEb+t3OaDrlmFqED9CcyGqamN8POeriu29rWRjYUuO7lKOnS
         rdZjv7ZdIYzO9h+Yy5yEq7GFq2/mej6yIIXo2xn8ekDz3cm8fwcd4RKiCRO1bP1klMtE
         sRDQz91DUQB8ZvekUxKV8pFBt+bKKpdk7biI+SDdANqGU94/nrSZi7rU4cc7LcXlONjU
         d0h6ZThgjqx4AZ431PuPpnTB9O/CUtBRXs+dn693pG/3pY2hoATUpt6gXit+Rx8G9+mi
         sNkAKfB8atZSTToNFn+GkBfCyJTe2z+iof1aYg/JwTRVc8Cm4Gr0VJNy/Z5fuvq/Vfjp
         6yPw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 81si928285lfj.2.2021.04.13.15.05.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Apr 2021 15:05:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3AY7xOsa++Egb+yZHqqOduk+FTdr1zdoIgy1kn?=
 =?us-ascii?q?xilNYDZSddGVkN3roeQD2XbP5go5dXk8lbm7VZWobmjb8fdOirU5GbenUE3YtH?=
 =?us-ascii?q?CzLIdkhLGM/xTaFyfz9vFQ2M5bGsBDIeftBlt3h9uS2mWFOusnqePszImYwcPX?=
 =?us-ascii?q?z3JgVmhRCp1I3kNfBhuSC1QzTBNbHN4wEpfZ5s1GujqpZHgbB/7Lc0Utbqzlq8?=
 =?us-ascii?q?DCjYujaQQbHlos7RWVkD+y5LOSKWno4j4uFxRC3L866CzMiRDhoq+ktP7+wB7R?=
 =?us-ascii?q?3W3I85A+oqqf9vJzQOuBl8ANM3HlkBqwII5mXLLHozwvuuGo7z8R4aXxiiZlGM?=
 =?us-ascii?q?hv42rJOmmuvQKo0Q/m3zYi53j+yVecgWbyyPaYeBsKT+1MmIpBa1/Q8VY4+Nt7?=
 =?us-ascii?q?179G2H/xjes0MTrw2APw+tDQTlVjjFas5XU4l+p7tQ0gbaIuLJhcsIQH5QdcCo?=
 =?us-ascii?q?sYWCz374w9GPRjAYXb459tACqnRkGcmWVzyMW0GnwoAg7DQ04Zp8uc1zQ+pgEe?=
 =?us-ascii?q?82IogOsSg38Y7dY0UYVco+DDP6hs0LZHSsN+V9MBOM4xBey6F2TVWFbFKn6KZV?=
 =?us-ascii?q?L8UL4KIGjMrZmf2sRT2MiaPLsF0ZMqgdDISk9A8Xc7YF/oBdbL3ZtQ7xfERGnV?=
 =?us-ascii?q?Z0WW9uhuo790p7XkXf7iKzGbDEkniNamr+5aGN3ARvq2fJJaasWTVlfGKMJv0x?=
 =?us-ascii?q?D3QoAXIWMDSYkNssY/XVqC5sjLJofprPDeGcyjV4bFIHICVn72G2JGVCLuPYFa?=
 =?us-ascii?q?4l2xUnjjhBjNMkmdCHDXzNZWHLXT5vFWwJIQL8lXvhAIhVOy6qiwWE1/m51zW0?=
 =?us-ascii?q?diKKr/1quguXDz52rS721tfh1ACi9ukc3dekIPggMWO1rsNb4Yp8zaY3xY33eM?=
 =?us-ascii?q?O3ZEPqbrOT8agFhr8buva5SL2TlnEcK8L26fy3sfzUj6K6s0q+ml6drsY4p9Bo?=
 =?us-ascii?q?w7QehvGR7QFxpz8Dway1t+VA=3D=3D?=
X-IronPort-AV: E=Sophos;i="5.82,220,1613430000"; 
   d="scan'208";a="503083602"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 14 Apr 2021 00:05:04 +0200
Date: Wed, 14 Apr 2021 00:05:04 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Mitali Borkar <mitaliborkar810@gmail.com>
cc: Dan Carpenter <dan.carpenter@oracle.com>, sakari.ailus@linux.intel.com, 
    bingbu.cao@intel.com, tian.shu.qiu@intel.com, mchehab@kernel.org, 
    gregkh@linuxfoundation.org, linux-media@vger.kernel.org, 
    linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org, 
    outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: Re: [Outreachy kernel] Re: [PATCH v3 4/4] staging: media: intel-ipu3:
 remove space before tabs
In-Reply-To: <YHX3iVCNXJlOsmuQ@kali>
Message-ID: <alpine.DEB.2.22.394.2104140004430.14108@hadrien>
References: <cover.1618326535.git.mitaliborkar810@gmail.com> <01ad7ff353f805dfc48e7bcc26ed974e7bb5ef9f.1618326535.git.mitaliborkar810@gmail.com> <20210413181712.GI6021@kadam> <YHX3iVCNXJlOsmuQ@kali>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 14 Apr 2021, Mitali Borkar wrote:

> On Tue, Apr 13, 2021 at 09:17:12PM +0300, Dan Carpenter wrote:
> > On Tue, Apr 13, 2021 at 08:59:34PM +0530, Mitali Borkar wrote:
> > > Removed unnecessary space before tabs to adhere to linux kernel coding
> > > style.
> > > Reported by checkpatch.
> > >
> > > Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
> > > ---
> > >
> > > Changes from v2:- No changes.
> > > Changes from v1:- No changes.
> > >
> > >  drivers/staging/media/ipu3/include/intel-ipu3.h | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/staging/media/ipu3/include/intel-ipu3.h b/drivers/staging/media/ipu3/include/intel-ipu3.h
> > > index 47e98979683c..42edac5ee4e4 100644
> > > --- a/drivers/staging/media/ipu3/include/intel-ipu3.h
> > > +++ b/drivers/staging/media/ipu3/include/intel-ipu3.h
> > > @@ -633,7 +633,7 @@ struct ipu3_uapi_bnr_static_config_wb_gains_thr_config {
> > >   * @cg:	Gain coefficient for threshold calculation, [0, 31], default 8.
> > >   * @ci:	Intensity coefficient for threshold calculation. range [0, 0x1f]
> > >   *	default 6.
> > > - * 	format: u3.2 (3 most significant bits represent whole number,
> > > + *format: u3.2 (3 most significant bits represent whole number,
> > >   *	2 least significant bits represent the fractional part
> >
> > Just remove the spaces, don't remove the tab.  It's looks silly now.
> >
> Okay Sir, do I have to send a v4 patch on this now?

Yes.  If you get feedback on a patch, you should send a new version.

julia

>
> > regards,
> > dan carpenter
> >
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/YHX3iVCNXJlOsmuQ%40kali.
>

