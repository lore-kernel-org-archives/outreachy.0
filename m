X-GM-THRID: 6951120130932736000
X-Received: by 2002:a92:d383:: with SMTP id o3mr5092890ilo.131.1619230227306;
        Fri, 23 Apr 2021 19:10:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6e02:4a3:: with SMTP id e3ls3008505ils.5.gmail; Fri, 23
 Apr 2021 19:10:26 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyjfpl1mCh027jDjmoq80TsvEFJtvALEu6PWSVNRLb20Vn/rE4ZsOMpIKr4Jr+3jX6cb5oT
X-Received: by 2002:a63:fb15:: with SMTP id o21mr6498883pgh.337.1619230215829;
        Fri, 23 Apr 2021 19:10:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619230215; cv=none;
        d=google.com; s=arc-20160816;
        b=sz4umrG9Cq9MHFfzKpgOVCiQ5VnQvrcoN4YwLd6TzUCuDwuxSJ+ycoFKTXwCB6YdhI
         b+rFLDJOFMP36UqT8J6TF4P6Xl/JBfCp/pc2kPZzHLFWHmuS9t++8QJ0+nlHbNdsNq1x
         LFWbM5rlkhnFOAXW5MnUqy4fdx/uEBfqEiRMqhhpcZcMa6gAeN5ausmyVM7tKEgFhatB
         VELsyLSlIie4mkRtQ5gKDPrwUtJfx+4XjBEKoaP3wEwmLiZ4eUJvZs8VVXmDVH441H6I
         O9PkZ/zFLZuqKGNcomyPCm4ZOH4vBWAisGxHpoPQhi5uoShdfPODN+Jcwmwzdxs/o28L
         /Rsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=kcIelX1EsGDmdwC3ocBtd0zMhNA8a0bphR97MMdWuis=;
        b=L/RARKqa85jtoHuSGxk8Nf4a0gZw796YwG2a0hoe6C6+B9jsBsILe7VhixRzOgp0pv
         fNi2OquZ2WNaxrU335Shsr3FxXPEX1Ew9yP8GoI9dnL7ZO4g8Hm1DZwgiOFZs1UYWSj4
         6lMpebJYtcJ3FT+90vwQA3yH/PaJdeQUmCpln44EOg2ieyN6GUf5sbIh/SP3XnTzou2e
         ArezNNuzwls2MMmSsy1nwVZBf+2v2ByRTTgvp7HFr2VUhbC0oDY0EAuVGOojTh+MC4jY
         3GDDx398P2AePUrl8wCrtFArhfusBlKFrwhXFW7DaSzz5Hq1TF9VbK0OUikUwaUqfXW0
         cwiQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="GtqXz/xQ";
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::f36 as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from mail-qv1-xf36.google.com (mail-qv1-xf36.google.com. [2607:f8b0:4864:20::f36])
        by gmr-mx.google.com with ESMTPS id 131si439204pfa.2.2021.04.23.19.10.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Apr 2021 19:10:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::f36 as permitted sender) client-ip=2607:f8b0:4864:20::f36;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="GtqXz/xQ";
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::f36 as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qv1-xf36.google.com with SMTP id gv2so15465210qvb.8
        for <outreachy-kernel@googlegroups.com>; Fri, 23 Apr 2021 19:10:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=kcIelX1EsGDmdwC3ocBtd0zMhNA8a0bphR97MMdWuis=;
        b=GtqXz/xQNMqRVwYlcLPVUMocoqdYzVUPJWUnA23leuh4I/iob899wcJIyWdkjD1pLT
         HzYG8pOXtESdV3CWhiLV1RQBT7XKsjIYNOrNE5sIYbsN9cgiJBFGEH/x77PIH4hx2i8V
         kUyhiunfmiGTNSu4QeBawS4JGhK+gqsANyvi2tHNvs5lxzPjAO06HwR29IcltnnombrW
         UPwqtt+5fT1hrpvYgyFSXna8oKgoWT2Xec/W01S1aW6E9KFAVcfc3T9/BLdKoCz9Tkmq
         mZ7V3UPFXEWDfbBqgwEff9i8ljBLuLmG+ozHTxzAmyh0DXkO430fwklCdE4KmMKXETSr
         /P0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=kcIelX1EsGDmdwC3ocBtd0zMhNA8a0bphR97MMdWuis=;
        b=Vru5mriqnBbd7MMs8dNxk9CAzVPVi3g4RaQ98aPKcl9mYHY1/BagVyp2GKNH1R+fln
         2NRWuEyT5KMLpJ0BQCxQW8bZkaQvp8rNDWoiwRlJ3LtFMV6f9wl7s8D0lPVzXsR7obhl
         Vrs9brwl3m4P1qsu8EmAzmaFyJfgqj6Y4A7B9l/6KAl5spRyvWMMWFHPSYP09ln36sdr
         wr8Xn6LaCFpiXWE/3taAvyLatwa7KJUhKL67rBPG4QsunV1Cu9U+3+IYBsc3Vh4P1z/a
         g5u8eUbdQZvg3rbAjvov2wBJzLgaGa33Ts01+UET13GBGpte4c/mpSYc5cKoJ9nmfilD
         Wjbg==
X-Gm-Message-State: AOAM530Vgzd6QnD1Y7fzMqou6e09WRaYfxra3ctIRM4IMQwtiQD86dsI
	0SgtbOWdvVado7iJ+UkFA7o=
X-Received: by 2002:ad4:4c86:: with SMTP id bs6mr7796941qvb.39.1619230215035;
        Fri, 23 Apr 2021 19:10:15 -0700 (PDT)
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from ?IPv6:2001:1284:f013:744e:ffa4:164a:a3e9:c671? ([2001:1284:f013:744e:ffa4:164a:a3e9:c671])
        by smtp.gmail.com with ESMTPSA id l12sm5502413qth.72.2021.04.23.19.10.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Apr 2021 19:10:13 -0700 (PDT)
Message-ID: <3ce3294c173c954381b26ab049222c186f81ddf4.camel@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v3] staging: media: atomisp: pci:
 Change line break to avoid an open parenthesis at the end of the line
From: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>
To: Hans Verkuil <hverkuil@xs4all.nl>, Julia Lawall <julia.lawall@inria.fr>,
  Matthew Wilcox <willy@infradead.org>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, Sakari Ailus
 <sakari.ailus@linux.intel.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>,  linux-media@vger.kernel.org,
 linux-staging@lists.linux.dev,  linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com
Date: Fri, 23 Apr 2021 23:10:09 -0300
In-Reply-To: <d2cfc472-d3ac-fd47-aa0c-ed6414f671fc@xs4all.nl>
References: <20210421123718.GA4597@focaruja>
	 <alpine.DEB.2.22.394.2104211507280.9436@hadrien>
	 <7aeac7041a6f6d7b3d8563f0d0bf0a4d31f379b0.camel@gmail.com>
	 <alpine.DEB.2.22.394.2104211555040.9436@hadrien>
	 <16dd7a16a8cc69aa0f81dd6bf47f09e878c71a6b.camel@gmail.com>
	 <d2cfc472-d3ac-fd47-aa0c-ed6414f671fc@xs4all.nl>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.0 (by Flathub.org) 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Em sex, 2021-04-23 às 11:21 +0200, Hans Verkuil escreveu:
> On 21/04/2021 16:21, Aline Santana Cordeiro wrote:
> > Em qua, 2021-04-21 às 15:56 +0200, Julia Lawall escreveu:
> > > 
> > > 
> > > On Wed, 21 Apr 2021, Aline Santana Cordeiro wrote:
> > > 
> > > > Em qua, 2021-04-21 às 15:08 +0200, Julia Lawall escreveu:
> > > > > 
> > > > > 
> > > > > On Wed, 21 Apr 2021, Aline Santana Cordeiro wrote:
> > > > > 
> > > > > > Change line break to avoid an open parenthesis at the end
> > > > > > of
> > > > > > the
> > > > > > line.
> > > > > > It consequently removed spaces at the start of the
> > > > > > subsequent
> > > > > > line.
> > > > > 
> > > > > The message is hard to understand.  There are a lot of
> > > > > singular
> > > > > nouns, but
> > > > > actually there are two changes.  Which change is being
> > > > > described
> > > > > by
> > > > > the
> > > > > above message?  What does "It" refer to?
> > > > > 
> > > > > julia
> > > > 
> > > > Checkpatch indicated two problems with this function
> > > > declaration:
> > > > 1) The line ending with an open parenthesis, and
> > > > 2) The following line - with the function parameters - has
> > > > spaces
> > > > in
> > > > its identation.
> > > > 
> > > > When I changed the line break to put the function name and its
> > > > parameter in the following line, both checkpath checks were
> > > > eliminated.
> > > > 
> > > > So, the main change was the line break and, also, the line
> > > > break
> > > > (it)
> > > > removed the space in the following line.
> > > > 
> > > > Is it better to change the message and explain only about the
> > > > line
> > > > break?
> > > 
> > > The message should explain about the whole patch.  So if you
> > > change
> > > two
> > > things, it should be clear that what you are saying covers both
> > > of
> > > them.
> > 
> > Ok, I can do that. In the commit message I described just one issue
> > because it is only one patch, I didn't want it to look like I was
> > changing different issues in just one patch.
> > 
> > > 
> > > But it seems that Matthew doesn't think that the line break is a
> > > good
> > > idea
> > > anyway.
> > 
> > Yes, I'm sending this email to Matthew too, because I don't know
> > exactly how to proceed as Hans asked me to made some corrections
> > too. 
> > I've made these changes because checkpatch has indicated and with
> > this
> > line break, checkpatch does not indicate any check or warning
> > anymore.
> > But I can undo that too, I just don't know what I'm supposed to do
> > with
> > so many opposite opinions. 
> 
> As one of the media maintainers I can say that in this case the
> preference
> would be to split it up in two lines. It's one of those areas where
> different maintainers have different opinions.
> 
> Just keep in mind that this is all nitpicking and normally we
> probably
> wouldn't bother with this at all, but it is a good exercise to learn
> about patches and contributing :-)
> 
> Regards,
> 
>         Hans

I really appreciate all the feedbacks I've received :)
Indeed we can learn a lot about all the contributing process.

Thank you,
Aline
> 
> > 
> > 
> > Thank you all,
> > Aline 
> > > 
> > > julia
> > > 
> > > > 
> > > > Thank you,
> > > > Aline
> > > > > 
> > > > > 
> > > > > > Both issues detected by checkpatch.pl.
> > > > > > 
> > > > > > Signed-off-by: Aline Santana Cordeiro <
> > > > > > alinesantanacordeiro@gmail.com>
> > > > > > ---
> > > > > > 
> > > > > > Changes since v2:
> > > > > >  - Insert a space between the function type and pointer
> > > > > > 
> > > > > > Changes since v1:
> > > > > >  - Keep the pointer with the function return type
> > > > > >    instead of left it with the function name
> > > > > > 
> > > > > >  drivers/staging/media/atomisp/pci/atomisp_cmd.h | 10
> > > > > > +++++----
> > > > > > -
> > > > > >  1 file changed, 5 insertions(+), 5 deletions(-)
> > > > > > 
> > > > > > diff --git
> > > > > > a/drivers/staging/media/atomisp/pci/atomisp_cmd.h
> > > > > > b/drivers/staging/media/atomisp/pci/atomisp_cmd.h
> > > > > > index 1c0d464..639eca3 100644
> > > > > > --- a/drivers/staging/media/atomisp/pci/atomisp_cmd.h
> > > > > > +++ b/drivers/staging/media/atomisp/pci/atomisp_cmd.h
> > > > > > @@ -75,8 +75,8 @@ void atomisp_wdt(struct timer_list *t);
> > > > > >  void atomisp_setup_flash(struct atomisp_sub_device *asd);
> > > > > >  irqreturn_t atomisp_isr(int irq, void *dev);
> > > > > >  irqreturn_t atomisp_isr_thread(int irq, void *isp_ptr);
> > > > > > -const struct atomisp_format_bridge
> > > > > > *get_atomisp_format_bridge_from_mbus(
> > > > > > -    u32 mbus_code);
> > > > > > +const struct atomisp_format_bridge *
> > > > > > +get_atomisp_format_bridge_from_mbus(u32 mbus_code);
> > > > > >  bool atomisp_is_mbuscode_raw(uint32_t code);
> > > > > >  int atomisp_get_frame_pgnr(struct atomisp_device *isp,
> > > > > >                            const struct ia_css_frame
> > > > > > *frame,
> > > > > > u32
> > > > > > *p_pgnr);
> > > > > > @@ -381,9 +381,9 @@ enum mipi_port_id
> > > > > > __get_mipi_port(struct
> > > > > > atomisp_device *isp,
> > > > > > 
> > > > > >  bool atomisp_is_vf_pipe(struct atomisp_video_pipe *pipe);
> > > > > > 
> > > > > > -void atomisp_apply_css_parameters(
> > > > > > -    struct atomisp_sub_device *asd,
> > > > > > -    struct atomisp_css_params *css_param);
> > > > > > +void atomisp_apply_css_parameters(struct
> > > > > > atomisp_sub_device
> > > > > > *asd,
> > > > > > +                                 struct atomisp_css_params
> > > > > > *css_param);
> > > > > > +
> > > > > >  void atomisp_free_css_parameters(struct atomisp_css_params
> > > > > > *css_param);
> > > > > > 
> > > > > >  void atomisp_handle_parameter_and_buffer(struct
> > > > > > atomisp_video_pipe
> > > > > > *pipe);
> > > > > > --
> > > > > > 2.7.4
> > > > > > 
> > > > > > --
> > > > > > You received this message because you are subscribed to the
> > > > > > Google
> > > > > > Groups "outreachy-kernel" group.
> > > > > > To unsubscribe from this group and stop receiving emails
> > > > > > from
> > > > > > it,
> > > > > > send an email to 
> > > > > > outreachy-kernel+unsubscribe@googlegroups.com.
> > > > > > To view this discussion on the web visit
> > > > > > https://groups.google.com/d/msgid/outreachy-kernel/20210421123718.GA4597%40focaruja
> > > > > > .
> > > > > > 
> > > > 
> > > > 
> > > > --
> > > > You received this message because you are subscribed to the
> > > > Google
> > > > Groups "outreachy-kernel" group.
> > > > To unsubscribe from this group and stop receiving emails from
> > > > it,
> > > > send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > > To view this discussion on the web visit    
> > > > https://groups.google.com/d/msgid/outreachy-kernel/7aeac7041a6f6d7b3d8563f0d0bf0a4d31f379b0.camel%40gmail.com
> > > > .
> > 
> > 
> 



