X-GM-THRID: 6951120130932736000
X-Received: by 2002:a25:6911:: with SMTP id e17mr32652374ybc.223.1619012750494;
        Wed, 21 Apr 2021 06:45:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:7bc7:: with SMTP id w190ls1063479ybc.2.gmail; Wed, 21
 Apr 2021 06:45:49 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxzKxd4qw578tVUn3LtMuO+BANDpohN/xMDS4l++p7S/mGQ/WGgQ2esZPtt1r1A0HDRL3cP
X-Received: by 2002:a25:ad8b:: with SMTP id z11mr32076231ybi.74.1619012749439;
        Wed, 21 Apr 2021 06:45:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619012749; cv=none;
        d=google.com; s=arc-20160816;
        b=qD6Xh5/J4W+SgQbw2QOzAKsgnziwRZKFYknRzn062JzxSdM4HzbXmAl6WGPK6vkFzd
         dUdmf9jeurnwI3sz90hnioDSSPFOyOL6OG4k4oK5xRwxQr/Fvs6957Orjy5zsDE8+GUR
         uVznReZ8/XRnHhhvB0hDKVcJ0akigVfv5fzchqJIHwfwBp8tjuPUfZq0Lca9LfsjXmUi
         KwEDtGTHbmA+rARYtQGhnALLLppAWQMx2awW/bTWG7buGt/0GlXnlVe0kJcPFs9YPX2s
         N2G6723cmo3OQUbLJkXESi3Cbo84KZo0Js57B9Sf72eaAzrDA6LU45/xYxg203f8j0Qv
         +g5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=cgojrNNZjRZwYXB5OUDjGB+Ew4bhwzHNZQha1xmd6w0=;
        b=VszRDcVHFzBC3zBgckZU0qD+ZoKxuYoNbKonmHwy3NOdMxgeo/w1TVTAhkVGtYWYce
         nDIVHl4XX+ql++3pGcW1OXVwXySy3DM9vLz0fSIf0q5OHjOmODuJ+gON8eeLBuEbMr2m
         6kjL572fHm5SeLnz8pRN4kPwmwAf7LE+XHxjalBQJb5az8Ng2xmU5aQJLp0eHfZX8h3E
         Y4HQ6sgsvg6wlHH5pOHXxuRf8ZxWR+unbJ0XaQs08M8y0w90S9FNscBW8NW136C0ayFf
         bYVET73OMGmaBLpyEk78Gd8+cCh1PQypFiUyLtbqs0aDr3wOSP69XW04svNtSL8dkDRk
         27bQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MD1WYPKT;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::f2c as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from mail-qv1-xf2c.google.com (mail-qv1-xf2c.google.com. [2607:f8b0:4864:20::f2c])
        by gmr-mx.google.com with ESMTPS id h188si141030ybh.5.2021.04.21.06.45.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Apr 2021 06:45:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::f2c as permitted sender) client-ip=2607:f8b0:4864:20::f2c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MD1WYPKT;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::f2c as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qv1-xf2c.google.com with SMTP id l2so2439507qvb.7
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Apr 2021 06:45:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=cgojrNNZjRZwYXB5OUDjGB+Ew4bhwzHNZQha1xmd6w0=;
        b=MD1WYPKTWXuOLajkl84SBgTiMpFh+CicHcq/I9+voqaGO1qtt2CWimCFdQE14LvBIg
         PXb/9Ercp6B88ys5kt4I6nzk+nsNNKUQUtScy4oL5SQf3EwDI4e5NNKXeSGcS+2Zoe1R
         dB9KgwvF/gU+7ZeXrZd42ZuBC84aX4OXLfIBncTGhsEPkbc7bnb29Kfg++u/n+xlL2S6
         4e4gQ13wVLCDS7XLSvIAp2ghs5vSRydZ8LggaRkN+mKcYmTasjVHqntAWiPAZKoq3bDc
         1OjkHcJTfoibRPB5cct6MzRzFmnE22Azxk1kFCxiu39QavdEvKAfQ3/6YGp75K/6GZMI
         4GIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=cgojrNNZjRZwYXB5OUDjGB+Ew4bhwzHNZQha1xmd6w0=;
        b=Wc80VykYxfPTlGDJzhfLeyL5g3btI9MWLdM8T4Usk/3s0dND/Yw0pXrqPWElLUiDub
         cDRE86Uj4y7qTVcLEzx1esdoEzkgrSLUZgFh1EFpqV/NRukG3pLHmjGTQJqzyni5rd0A
         9G92IYbDGDOqnO1O2f0atrThYOW9fPeEB/kmQTjS3QkrnmPetpy9rP7lsaDDSsGVrV8U
         pmjctl7CFPz6txrgsVXiYSibzhWkGuGeG8id20aOvOQOJCrvuqDT+upycQkZT1XlXWXG
         pezC2RD6F/4wDGXYHVrqhkJGuV1Dc2U5ZWuL2km8f7uU00UGOlpVTK3YAPNzppbSTLV+
         GqwA==
X-Gm-Message-State: AOAM532/Cpezmwig28hWjUGO42lClfBGx/87Atn/BZfQpawMuJRQYXU2
	L270Y4YjCgoQUCklAYebxGI=
X-Received: by 2002:a05:6214:7ed:: with SMTP id bp13mr32473406qvb.17.1619012749172;
        Wed, 21 Apr 2021 06:45:49 -0700 (PDT)
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from [192.168.100.7] ([138.204.24.234])
        by smtp.gmail.com with ESMTPSA id a30sm2050286qtn.4.2021.04.21.06.45.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Apr 2021 06:45:48 -0700 (PDT)
Message-ID: <7aeac7041a6f6d7b3d8563f0d0bf0a4d31f379b0.camel@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v3] staging: media: atomisp: pci:
 Change line break to avoid an open parenthesis at the end of the line
From: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, Sakari Ailus
 <sakari.ailus@linux.intel.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>,  linux-media@vger.kernel.org,
 linux-staging@lists.linux.dev,  linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com
Date: Wed, 21 Apr 2021 10:45:43 -0300
In-Reply-To: <alpine.DEB.2.22.394.2104211507280.9436@hadrien>
References: <20210421123718.GA4597@focaruja>
	 <alpine.DEB.2.22.394.2104211507280.9436@hadrien>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.0 (by Flathub.org) 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Em qua, 2021-04-21 às 15:08 +0200, Julia Lawall escreveu:
> 
> 
> On Wed, 21 Apr 2021, Aline Santana Cordeiro wrote:
> 
> > Change line break to avoid an open parenthesis at the end of the
> > line.
> > It consequently removed spaces at the start of the subsequent line.
> 
> The message is hard to understand.  There are a lot of singular
> nouns, but
> actually there are two changes.  Which change is being described by
> the
> above message?  What does "It" refer to?
> 
> julia

Checkpatch indicated two problems with this function declaration:
1) The line ending with an open parenthesis, and
2) The following line - with the function parameters - has spaces in
its identation.

When I changed the line break to put the function name and its
parameter in the following line, both checkpath checks were eliminated.

So, the main change was the line break and, also, the line break (it)
removed the space in the following line.

Is it better to change the message and explain only about the line
break?

Thank you,
Aline
> 
> 
> > Both issues detected by checkpatch.pl.
> > 
> > Signed-off-by: Aline Santana Cordeiro <
> > alinesantanacordeiro@gmail.com>
> > ---
> > 
> > Changes since v2:
> >  - Insert a space between the function type and pointer
> > 
> > Changes since v1:
> >  - Keep the pointer with the function return type
> >    instead of left it with the function name
> > 
> >  drivers/staging/media/atomisp/pci/atomisp_cmd.h | 10 +++++-----
> >  1 file changed, 5 insertions(+), 5 deletions(-)
> > 
> > diff --git a/drivers/staging/media/atomisp/pci/atomisp_cmd.h
> > b/drivers/staging/media/atomisp/pci/atomisp_cmd.h
> > index 1c0d464..639eca3 100644
> > --- a/drivers/staging/media/atomisp/pci/atomisp_cmd.h
> > +++ b/drivers/staging/media/atomisp/pci/atomisp_cmd.h
> > @@ -75,8 +75,8 @@ void atomisp_wdt(struct timer_list *t);
> >  void atomisp_setup_flash(struct atomisp_sub_device *asd);
> >  irqreturn_t atomisp_isr(int irq, void *dev);
> >  irqreturn_t atomisp_isr_thread(int irq, void *isp_ptr);
> > -const struct atomisp_format_bridge
> > *get_atomisp_format_bridge_from_mbus(
> > -    u32 mbus_code);
> > +const struct atomisp_format_bridge *
> > +get_atomisp_format_bridge_from_mbus(u32 mbus_code);
> >  bool atomisp_is_mbuscode_raw(uint32_t code);
> >  int atomisp_get_frame_pgnr(struct atomisp_device *isp,
> >                            const struct ia_css_frame *frame, u32
> > *p_pgnr);
> > @@ -381,9 +381,9 @@ enum mipi_port_id __get_mipi_port(struct
> > atomisp_device *isp,
> > 
> >  bool atomisp_is_vf_pipe(struct atomisp_video_pipe *pipe);
> > 
> > -void atomisp_apply_css_parameters(
> > -    struct atomisp_sub_device *asd,
> > -    struct atomisp_css_params *css_param);
> > +void atomisp_apply_css_parameters(struct atomisp_sub_device *asd,
> > +                                 struct atomisp_css_params
> > *css_param);
> > +
> >  void atomisp_free_css_parameters(struct atomisp_css_params
> > *css_param);
> > 
> >  void atomisp_handle_parameter_and_buffer(struct atomisp_video_pipe
> > *pipe);
> > --
> > 2.7.4
> > 
> > --
> > You received this message because you are subscribed to the Google
> > Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it,
> > send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit 
> > https://groups.google.com/d/msgid/outreachy-kernel/20210421123718.GA4597%40focaruja
> > .
> > 



