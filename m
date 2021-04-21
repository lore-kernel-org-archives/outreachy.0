X-GM-THRID: 6951120130932736000
X-Received: by 2002:a05:6512:2189:: with SMTP id b9mr19294852lft.640.1619013374936;
        Wed, 21 Apr 2021 06:56:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:5c07:: with SMTP id q7ls448730ljb.11.gmail; Wed, 21 Apr
 2021 06:56:13 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx9zL1trQXT/Gks98P+VoQqZDgbKMTg19RsOEdCGVZWMyT278HvpqzKx+3kIpxtneenx7mb
X-Received: by 2002:a2e:9756:: with SMTP id f22mr14884828ljj.461.1619013372967;
        Wed, 21 Apr 2021 06:56:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619013372; cv=none;
        d=google.com; s=arc-20160816;
        b=q0FrPyeW7y1mv25G0fBlmcrIhM39xUAm9VJm63B0olS5U1yyfP6SjbR3J9Evsf+nRy
         7AQe+ht3XPwPx0y3k+oeg2lZM7V41RVLZ9r1PdyT70OEr8aES16bCCap7elWvVSrbbxx
         bZUiX1bYhr97e9FqaLgGG9hHfmzlpcAOyVbAsMYU3ME38h6rpE99xGoWV/LfOl+6mEF2
         adUdhTjdVu+DaeQFMsRfcvi4er7TAYM2JPvg3gc2N5EByizcOQzrZErysVH6Pjl+9/7b
         tr15M7QPGa9nuRnKeub1KAifIwkReJRgEQyKGGb/y8TOMX9l2am6X8hqFniqxHyrb6Ce
         4ysw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=o2EaoXRC6Eg8BF3OxGV5N++E+It8Vytp+xmUl6esjCY=;
        b=obewyOGolCoLohPQNXo5qB7t+AP9TYY/rN0Oc0Ein2c/8khsIDVsgSrQhfUWyZUHll
         0xm2ihSc2bel+9HIES6LTF/U0PGlew2tjoz4YW6UFM5TUEs+apEHtt/9aeSV47hfg/Pr
         2MDWMBj/+G5pSo5DvxedDufNniesC0/kLuXa42FnPVMuSF+D4mZaIDlC37ntKyHOqyxf
         hVYLKiBkUaSREJxOT62zcIcLUo75MjoSmAB5t6CbXVfaq55Cp6U4zPobkdFd5UMiVjed
         63jV4pjLnxu4VYegmLvIyTTyGlzhXX7fC6uryB+xG2CxwTad3Wnz1nRhUO+FBpU9VK5U
         tlbQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id w18si173871lft.10.2021.04.21.06.56.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Apr 2021 06:56:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3APaOKvqlP3Pcw0E0YrRiZALaqo8/pDfLN3DAb?=
 =?us-ascii?q?vn1ZSRFFG/GwvcaogfgdyFvImC8cMUtQ/eyoFaGcTRrnnqJdzpIWOd6ZNjXOmG?=
 =?us-ascii?q?ztF4166Jun/juIIUzD38p88YslTKRkEt33CjFB/KPHyS21CcwpztXC0I3Av4fj?=
 =?us-ascii?q?5kxgRw1rdK1shj0RYjqzKUF4SBJLApA0DvOnl6l6jgC9cncaZNnTPBc4dtXEzu?=
 =?us-ascii?q?emqLvbexIcQzYo5A6S5AnYioLSIlyomi0TVD5C2t4ZnFTtmQaR3Mqej80=3D?=
X-IronPort-AV: E=Sophos;i="5.82,240,1613430000"; 
   d="scan'208";a="504336688"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 21 Apr 2021 15:56:08 +0200
Date: Wed, 21 Apr 2021 15:56:08 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>
cc: Mauro Carvalho Chehab <mchehab@kernel.org>, 
    Sakari Ailus <sakari.ailus@linux.intel.com>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    linux-media@vger.kernel.org, linux-staging@lists.linux.dev, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3] staging: media: atomisp: pci:
 Change line break to avoid an open parenthesis at the end of the line
In-Reply-To: <7aeac7041a6f6d7b3d8563f0d0bf0a4d31f379b0.camel@gmail.com>
Message-ID: <alpine.DEB.2.22.394.2104211555040.9436@hadrien>
References: <20210421123718.GA4597@focaruja>  <alpine.DEB.2.22.394.2104211507280.9436@hadrien> <7aeac7041a6f6d7b3d8563f0d0bf0a4d31f379b0.camel@gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1581330247-1619013368=:9436"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1581330247-1619013368=:9436
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Wed, 21 Apr 2021, Aline Santana Cordeiro wrote:

> Em qua, 2021-04-21 às 15:08 +0200, Julia Lawall escreveu:
> >
> >
> > On Wed, 21 Apr 2021, Aline Santana Cordeiro wrote:
> >
> > > Change line break to avoid an open parenthesis at the end of the
> > > line.
> > > It consequently removed spaces at the start of the subsequent line.
> >
> > The message is hard to understand.  There are a lot of singular
> > nouns, but
> > actually there are two changes.  Which change is being described by
> > the
> > above message?  What does "It" refer to?
> >
> > julia
>
> Checkpatch indicated two problems with this function declaration:
> 1) The line ending with an open parenthesis, and
> 2) The following line - with the function parameters - has spaces in
> its identation.
>
> When I changed the line break to put the function name and its
> parameter in the following line, both checkpath checks were eliminated.
>
> So, the main change was the line break and, also, the line break (it)
> removed the space in the following line.
>
> Is it better to change the message and explain only about the line
> break?

The message should explain about the whole patch.  So if you change two
things, it should be clear that what you are saying covers both of them.

But it seems that Matthew doesn't think that the line break is a good idea
anyway.

julia

>
> Thank you,
> Aline
> >
> >
> > > Both issues detected by checkpatch.pl.
> > >
> > > Signed-off-by: Aline Santana Cordeiro <
> > > alinesantanacordeiro@gmail.com>
> > > ---
> > >
> > > Changes since v2:
> > >  - Insert a space between the function type and pointer
> > >
> > > Changes since v1:
> > >  - Keep the pointer with the function return type
> > >    instead of left it with the function name
> > >
> > >  drivers/staging/media/atomisp/pci/atomisp_cmd.h | 10 +++++-----
> > >  1 file changed, 5 insertions(+), 5 deletions(-)
> > >
> > > diff --git a/drivers/staging/media/atomisp/pci/atomisp_cmd.h
> > > b/drivers/staging/media/atomisp/pci/atomisp_cmd.h
> > > index 1c0d464..639eca3 100644
> > > --- a/drivers/staging/media/atomisp/pci/atomisp_cmd.h
> > > +++ b/drivers/staging/media/atomisp/pci/atomisp_cmd.h
> > > @@ -75,8 +75,8 @@ void atomisp_wdt(struct timer_list *t);
> > >  void atomisp_setup_flash(struct atomisp_sub_device *asd);
> > >  irqreturn_t atomisp_isr(int irq, void *dev);
> > >  irqreturn_t atomisp_isr_thread(int irq, void *isp_ptr);
> > > -const struct atomisp_format_bridge
> > > *get_atomisp_format_bridge_from_mbus(
> > > -    u32 mbus_code);
> > > +const struct atomisp_format_bridge *
> > > +get_atomisp_format_bridge_from_mbus(u32 mbus_code);
> > >  bool atomisp_is_mbuscode_raw(uint32_t code);
> > >  int atomisp_get_frame_pgnr(struct atomisp_device *isp,
> > >                            const struct ia_css_frame *frame, u32
> > > *p_pgnr);
> > > @@ -381,9 +381,9 @@ enum mipi_port_id __get_mipi_port(struct
> > > atomisp_device *isp,
> > >
> > >  bool atomisp_is_vf_pipe(struct atomisp_video_pipe *pipe);
> > >
> > > -void atomisp_apply_css_parameters(
> > > -    struct atomisp_sub_device *asd,
> > > -    struct atomisp_css_params *css_param);
> > > +void atomisp_apply_css_parameters(struct atomisp_sub_device *asd,
> > > +                                 struct atomisp_css_params
> > > *css_param);
> > > +
> > >  void atomisp_free_css_parameters(struct atomisp_css_params
> > > *css_param);
> > >
> > >  void atomisp_handle_parameter_and_buffer(struct atomisp_video_pipe
> > > *pipe);
> > > --
> > > 2.7.4
> > >
> > > --
> > > You received this message because you are subscribed to the Google
> > > Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it,
> > > send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To view this discussion on the web visit
> > > https://groups.google.com/d/msgid/outreachy-kernel/20210421123718.GA4597%40focaruja
> > > .
> > >
>
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/7aeac7041a6f6d7b3d8563f0d0bf0a4d31f379b0.camel%40gmail.com.
>
--8323329-1581330247-1619013368=:9436--

