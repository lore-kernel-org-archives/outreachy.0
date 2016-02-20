X-GM-THRID: 6252763365254365184
X-Received: by 10.28.226.132 with SMTP id z126mr38943wmg.2.1455942040747;
        Fri, 19 Feb 2016 20:20:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.144.77 with SMTP id s74ls140178lfd.91.gmail; Fri, 19 Feb
 2016 20:20:40 -0800 (PST)
X-Received: by 10.112.150.105 with SMTP id uh9mr685376lbb.17.1455942040137;
        Fri, 19 Feb 2016 20:20:40 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id s141si648258wmd.1.2016.02.19.20.20.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Feb 2016 20:20:40 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,473,1449529200"; 
   d="scan'208";a="165349229"
Received: from unknown (HELO hadrien.lan) ([162.212.89.130])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 20 Feb 2016 05:20:38 +0100
Date: Fri, 19 Feb 2016 23:20:35 -0500 (EST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: =?ISO-8859-15?Q?Tha=EDssa_Falbo?= <thaissa.falbo@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/2] staging: media: davinci_vpfe:
 remove unnecessary case and enum
In-Reply-To: <CAKqL7ZVnFHPjQJ53uuHFWrYZEg6oKgNN9Rg1hiex3SEhu6ms+A@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1602192315350.2806@hadrien>
References: <cover.1455834014.git.thaissa.falbo@gmail.com> <a97c778a2c814868c68a81dc18bfe25466422853.1455834014.git.thaissa.falbo@gmail.com> <alpine.DEB.2.10.1602182213230.2821@hadrien> <CAKqL7ZVnFHPjQJ53uuHFWrYZEg6oKgNN9Rg1hiex3SEhu6ms+A@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-1718680153-1455942038=:2806"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1718680153-1455942038=:2806
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Fri, 19 Feb 2016, Thaíssa Falbo wrote:

> Thaíssa Falbo
>
>
>
> 2016-02-19 1:13 GMT-02:00 Julia Lawall <julia.lawall@lip6.fr>:
> > Why is it unnecessary?  There should probably be more information in the
> > commit message.

You should answer the question here, instead of at the end of the message.
Also, it would be better to put your name after the answer, rather than at
the top of the message.


> >
> > julia
> >
> > On Thu, 18 Feb 2016, Thaissa Falbo wrote:
> >
> >> Signed-off-by: Thaissa Falbo <thaissa.falbo@gmail.com>
> >> ---
> >>  drivers/staging/media/davinci_vpfe/dm365_isif.c | 6 ------
> >>  1 file changed, 6 deletions(-)
> >>
> >> diff --git a/drivers/staging/media/davinci_vpfe/dm365_isif.c b/drivers/staging/media/davinci_vpfe/dm365_isif.c
> >> index 747d29f..b1e6fd0 100644
> >> --- a/drivers/staging/media/davinci_vpfe/dm365_isif.c
> >> +++ b/drivers/staging/media/davinci_vpfe/dm365_isif.c
> >> @@ -227,7 +227,6 @@ static int
> >>  isif_config_format(struct vpfe_device *vpfe_dev, unsigned int pad)
> >>  {
> >>       struct vpfe_isif_device *vpfe_isif = &vpfe_dev->vpfe_isif;
>
> Here, the variable was set to a constant
>
> >> -     enum isif_frmfmt frm_fmt = ISIF_FRMFMT_INTERLACED;
> >>       struct v4l2_pix_format format;
> >>
> >>       v4l2_fill_pix_format(&format, &vpfe_dev->vpfe_isif.formats[pad]);
> >> @@ -254,11 +253,6 @@ isif_config_format(struct vpfe_device *vpfe_dev, unsigned int pad)
> >>               return isif_set_buftype(vpfe_isif,
> >>                               ISIF_BUFTYPE_FLD_INTERLEAVED);
> >>
>
> And then used into one of the cases.
>
> >> -     case V4L2_FIELD_NONE:
> >> -             frm_fmt = ISIF_FRMFMT_PROGRESSIVE;
> >> -             /* buffer type only applicable for interlaced scan */
> >> -             break;
> >> -

After the switch, frm_fmt is used in the call to isif_set_frame_format.
I'm not sure why this call can be discarded.  Also, removing the case and
the break will cause the result to be return -EINVAL;, but that doesn't
seem correct.

julia

> >>       case V4L2_FIELD_SEQ_TB:
> >>               return isif_set_buftype(vpfe_isif, ISIF_BUFTYPE_FLD_SEPARATED);
> >>
>
> After the switch, if was never used. There is only the return of the function.
>
> >> --
> >> 2.1.4
> >>
> >> --
> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/a97c778a2c814868c68a81dc18bfe25466422853.1455834014.git.thaissa.falbo%40gmail.com.
> >> For more options, visit https://groups.google.com/d/optout.
> >>
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAKqL7ZVnFHPjQJ53uuHFWrYZEg6oKgNN9Rg1hiex3SEhu6ms%2BA%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
--8323329-1718680153-1455942038=:2806--

