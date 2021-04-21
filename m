X-GM-THRID: 6951120130932736000
X-Received: by 2002:a65:47c9:: with SMTP id f9mr21873465pgs.78.1619014895561;
        Wed, 21 Apr 2021 07:21:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:fd4a:: with SMTP id m10ls984735pgj.7.gmail; Wed, 21 Apr
 2021 07:21:34 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwpZvL+TtMJBBMKFGHiFaMYHspMwjcVptAKzp7TGyz3ruRJI+P5hThuQLl15QlQIe8sah+x
X-Received: by 2002:a63:5a55:: with SMTP id k21mr21818129pgm.312.1619014894266;
        Wed, 21 Apr 2021 07:21:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619014894; cv=none;
        d=google.com; s=arc-20160816;
        b=J09RtJO2BvESe+x9s5RLGmtPLYoGa0H5NzPPJgzfsiN3RFXXYpqYDj/N56ju9W+vfh
         jsUFMzwDFvletDzAzpUULDonKgmIVXEvCMmqTsmPbMybgfVdsraAlrHFiknx9NJbQQN5
         e3a8YkFHya3XZHA7Pn0j95GdpH+JDN+s6Xo7E8+FvSFNUMeuQGUFnGb4d98W56D31Hy9
         EOin5/VQRKZN5w+O0uhUvmaWX6MbxV1J6d+z56CwbzFvimDDn1chpPn4phQzXjuchasS
         ZdWpARlgHfiyGB71nzx9hmDBZGy9YDlSos6mtpJ9I8sUAHvx942lAlz9OBTd37Fq5tT5
         277A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=T3BKxRMqJzIdOU4CdBKsrHei5q74d7jiI80D7aUMewQ=;
        b=fvyQtZreIDEte7drO7lOWhbCrv3Ws78ZQth4AOEHa9jY4uIc0+sDB8icjy0Ru9SOQG
         QNs4atCRYKhSnkoFt25T0K0GpB4IeXYXi0HVt6PytunJFOKOQ4auKrLD6WtKHK8ufDDt
         3rIITf5vueyYx8D0LghMLqbmj1oWgiqOUqlw0t0mt4Z7X1It/Md6dQy7pcmfyBN4aNKv
         lDhpqtWQP5P0bDvu2sao575sguiOMeUaC80mtHl9PzGlESxKRcJj3iGA2e5i23kzmdTP
         8/dnqzYXAfBiGySWiiDb75FEmFPdeBVWClcBiZ69kbUG47V7/83lAcgRODfQmz5cD5jO
         2Ygg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qOm98+y6;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::82c as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from mail-qt1-x82c.google.com (mail-qt1-x82c.google.com. [2607:f8b0:4864:20::82c])
        by gmr-mx.google.com with ESMTPS id r141si143081pgr.5.2021.04.21.07.21.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Apr 2021 07:21:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::82c as permitted sender) client-ip=2607:f8b0:4864:20::82c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qOm98+y6;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::82c as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x82c.google.com with SMTP id o21so3219042qtp.7
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Apr 2021 07:21:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=T3BKxRMqJzIdOU4CdBKsrHei5q74d7jiI80D7aUMewQ=;
        b=qOm98+y6a5GG6MOsYPlzs73vfKSkBtcoFn1tYwWw4GYyb0/80CrRIP2ZOlLlOoRzmh
         q1U/uF2B+QiDHi1UR13SxkaPXZegOQIK/Zqn0TEF+gojqLHwGq0YlTgpMzLBG0WrouIe
         ML/Yh8qZl1nAgaLSmCTG0mYXldmVfvVrw52aY1zDCjzObcPefk6ooWDnijlrHC21Zvol
         ec91BErgQtta8/RxlZOf51gGs6jAMuqg0KgipHP5W9lbuu79ncL6yYLyTyaQrE+lAaW7
         q39X4SDJIL7ZzixmEpCwD+H3IXxJr0YRyLOxY1hMY5XRjh+MwkBHsTJljcN0/1EiFq1r
         av1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=T3BKxRMqJzIdOU4CdBKsrHei5q74d7jiI80D7aUMewQ=;
        b=AeXboKGVdaiu40xoQ7bmahqNJO4lWO+Bk/63+MCL716I3DNAMdLgZ9LFk+/9kcBRIP
         Alm3sM70eqrAhAO/NjU4bAeTbbeiV/X6M2FojzO4W+sgHLvfydL8AnttO8gdgFQ734c/
         THSCB8ppYCoZo1YgABi9HnHynFgVXFRhKor3gZ/41vNWeUmO9PRsDodBzLO7V17SrXQz
         M+ztdBY/FnIl7fghfHv9vNyCEeQ5AUi+yK543Wgom+EyiDRsVZP43yp4LUubb+VDMkGf
         bxOzLWdh5R1ND1i3pIBkNNJ07XcfdDGbx/MO27zia6b2Q66D7gRoq18dgPWRn87JrnMt
         1GVw==
X-Gm-Message-State: AOAM533mqxZcKKM7uAtA6dZW3bouR+ekQ160mQX/G+SFDzY8aPHx6evs
	LPd3JAHf/4xWAnD27tQaMqQ=
X-Received: by 2002:a05:622a:110e:: with SMTP id e14mr22314324qty.335.1619014893891;
        Wed, 21 Apr 2021 07:21:33 -0700 (PDT)
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from [192.168.100.7] ([138.204.24.234])
        by smtp.gmail.com with ESMTPSA id j129sm2157129qkf.110.2021.04.21.07.21.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Apr 2021 07:21:33 -0700 (PDT)
Message-ID: <16dd7a16a8cc69aa0f81dd6bf47f09e878c71a6b.camel@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v3] staging: media: atomisp: pci:
 Change line break to avoid an open parenthesis at the end of the line
From: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>, Matthew Wilcox
 <willy@infradead.org>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, Sakari Ailus
 <sakari.ailus@linux.intel.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>,  linux-media@vger.kernel.org,
 linux-staging@lists.linux.dev,  linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com
Date: Wed, 21 Apr 2021 11:21:29 -0300
In-Reply-To: <alpine.DEB.2.22.394.2104211555040.9436@hadrien>
References: <20210421123718.GA4597@focaruja>
	  <alpine.DEB.2.22.394.2104211507280.9436@hadrien>
	 <7aeac7041a6f6d7b3d8563f0d0bf0a4d31f379b0.camel@gmail.com>
	 <alpine.DEB.2.22.394.2104211555040.9436@hadrien>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.0 (by Flathub.org) 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Em qua, 2021-04-21 às 15:56 +0200, Julia Lawall escreveu:
> 
> 
> On Wed, 21 Apr 2021, Aline Santana Cordeiro wrote:
> 
> > Em qua, 2021-04-21 às 15:08 +0200, Julia Lawall escreveu:
> > > 
> > > 
> > > On Wed, 21 Apr 2021, Aline Santana Cordeiro wrote:
> > > 
> > > > Change line break to avoid an open parenthesis at the end of
> > > > the
> > > > line.
> > > > It consequently removed spaces at the start of the subsequent
> > > > line.
> > > 
> > > The message is hard to understand.  There are a lot of singular
> > > nouns, but
> > > actually there are two changes.  Which change is being described
> > > by
> > > the
> > > above message?  What does "It" refer to?
> > > 
> > > julia
> > 
> > Checkpatch indicated two problems with this function declaration:
> > 1) The line ending with an open parenthesis, and
> > 2) The following line - with the function parameters - has spaces
> > in
> > its identation.
> > 
> > When I changed the line break to put the function name and its
> > parameter in the following line, both checkpath checks were
> > eliminated.
> > 
> > So, the main change was the line break and, also, the line break
> > (it)
> > removed the space in the following line.
> > 
> > Is it better to change the message and explain only about the line
> > break?
> 
> The message should explain about the whole patch.  So if you change
> two
> things, it should be clear that what you are saying covers both of
> them.

Ok, I can do that. In the commit message I described just one issue
because it is only one patch, I didn't want it to look like I was
changing different issues in just one patch.

> 
> But it seems that Matthew doesn't think that the line break is a good
> idea
> anyway.

Yes, I'm sending this email to Matthew too, because I don't know
exactly how to proceed as Hans asked me to made some corrections too. 
I've made these changes because checkpatch has indicated and with this
line break, checkpatch does not indicate any check or warning anymore.
But I can undo that too, I just don't know what I'm supposed to do with
so many opposite opinions. 


Thank you all,
Aline 
> 
> julia
> 
> > 
> > Thank you,
> > Aline
> > > 
> > > 
> > > > Both issues detected by checkpatch.pl.
> > > > 
> > > > Signed-off-by: Aline Santana Cordeiro <
> > > > alinesantanacordeiro@gmail.com>
> > > > ---
> > > > 
> > > > Changes since v2:
> > > >  - Insert a space between the function type and pointer
> > > > 
> > > > Changes since v1:
> > > >  - Keep the pointer with the function return type
> > > >    instead of left it with the function name
> > > > 
> > > >  drivers/staging/media/atomisp/pci/atomisp_cmd.h | 10 +++++----
> > > > -
> > > >  1 file changed, 5 insertions(+), 5 deletions(-)
> > > > 
> > > > diff --git a/drivers/staging/media/atomisp/pci/atomisp_cmd.h
> > > > b/drivers/staging/media/atomisp/pci/atomisp_cmd.h
> > > > index 1c0d464..639eca3 100644
> > > > --- a/drivers/staging/media/atomisp/pci/atomisp_cmd.h
> > > > +++ b/drivers/staging/media/atomisp/pci/atomisp_cmd.h
> > > > @@ -75,8 +75,8 @@ void atomisp_wdt(struct timer_list *t);
> > > >  void atomisp_setup_flash(struct atomisp_sub_device *asd);
> > > >  irqreturn_t atomisp_isr(int irq, void *dev);
> > > >  irqreturn_t atomisp_isr_thread(int irq, void *isp_ptr);
> > > > -const struct atomisp_format_bridge
> > > > *get_atomisp_format_bridge_from_mbus(
> > > > -    u32 mbus_code);
> > > > +const struct atomisp_format_bridge *
> > > > +get_atomisp_format_bridge_from_mbus(u32 mbus_code);
> > > >  bool atomisp_is_mbuscode_raw(uint32_t code);
> > > >  int atomisp_get_frame_pgnr(struct atomisp_device *isp,
> > > >                            const struct ia_css_frame *frame,
> > > > u32
> > > > *p_pgnr);
> > > > @@ -381,9 +381,9 @@ enum mipi_port_id __get_mipi_port(struct
> > > > atomisp_device *isp,
> > > > 
> > > >  bool atomisp_is_vf_pipe(struct atomisp_video_pipe *pipe);
> > > > 
> > > > -void atomisp_apply_css_parameters(
> > > > -    struct atomisp_sub_device *asd,
> > > > -    struct atomisp_css_params *css_param);
> > > > +void atomisp_apply_css_parameters(struct atomisp_sub_device
> > > > *asd,
> > > > +                                 struct atomisp_css_params
> > > > *css_param);
> > > > +
> > > >  void atomisp_free_css_parameters(struct atomisp_css_params
> > > > *css_param);
> > > > 
> > > >  void atomisp_handle_parameter_and_buffer(struct
> > > > atomisp_video_pipe
> > > > *pipe);
> > > > --
> > > > 2.7.4
> > > > 
> > > > --
> > > > You received this message because you are subscribed to the
> > > > Google
> > > > Groups "outreachy-kernel" group.
> > > > To unsubscribe from this group and stop receiving emails from
> > > > it,
> > > > send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > > To view this discussion on the web visit
> > > > https://groups.google.com/d/msgid/outreachy-kernel/20210421123718.GA4597%40focaruja
> > > > .
> > > > 
> > 
> > 
> > --
> > You received this message because you are subscribed to the Google
> > Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it,
> > send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit    
> > https://groups.google.com/d/msgid/outreachy-kernel/7aeac7041a6f6d7b3d8563f0d0bf0a4d31f379b0.camel%40gmail.com
> > .



