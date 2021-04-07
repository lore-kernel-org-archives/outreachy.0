X-GM-THRID: 6948342597010063360
X-Received: by 2002:adf:e4ce:: with SMTP id v14mr5840618wrm.291.1617817872289;
        Wed, 07 Apr 2021 10:51:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:23c2:: with SMTP id j185ls1439296wmj.3.canary-gmail;
 Wed, 07 Apr 2021 10:51:10 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwJzNWMI0CYt4tu92btBw1i7QmIBVw69m6hrXPgx/rNcON5MFSKBV7zcgkwYGbwf/dkUIQM
X-Received: by 2002:a1c:730a:: with SMTP id d10mr4107640wmb.43.1617817870738;
        Wed, 07 Apr 2021 10:51:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617817870; cv=none;
        d=google.com; s=arc-20160816;
        b=RH+8UQAhp7ZB4QOq16xOdxtlDi14C9H7HCEZpuQzkuPPz+YrVP3Zo/EeFfAI80Lgtx
         P/MSFSJ9mQ8Na0qEVd3HZXSLm8iDZ31DU+JajdwS3nRkj2Y0x3AkRSlg+cRnIcYAwWCi
         qALTn7ABmDGcZyiz7PsCxSSKXY3i2VavdD/sTQx+YRMR3LWzJsCI3E50+xXcOIdO/MQH
         8YCc5eSU0rAJarPRXJ7ZyT7TAzIoh1Q21HCzIn2XRxOWpnl5aYtVxqae87c68DIdvQHU
         UUrbmUKqZ8yLlVGzE6EBOePvktG/OqJEmdRwiTB10kbIb030IGi4LTB3kBfeFgNGphfG
         IGrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=3Vls4/3zvc2Jbgm4jryJRtoq1uc7/NcDLPeC8cMRFac=;
        b=GkUqZ8ABdvLeTOX8mniC4kXSYZ0QQlBUKE4SS2ZCt9IhZzaUv//h581zPgQOPbKchZ
         OGKOd8h5CBAQilOe2nhW1ZjsE7B8QTgL0VvdWqJCTJ3xorDILlZJv/T0ki5wUmnrx0Qq
         +PFAxxj0TD5f6S5tZRdgOQXTZFQpTO0MxASGobjzTHE0b+e+aQJw1lodZUesbolvIO+g
         WMGi7vKlKuca/J523Ci8eL6JItTiU1cLvcehS6qXpFsO+8a78BJXrt23Wu64nC9rQqn3
         WAQp0TojOlWoc6JypF3MMT9Wusvub1EAuFl8Sb8br76A5naSUI3QVMw1msBFPq5Vgc21
         PgkA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kW7FnULX;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::633 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com. [2a00:1450:4864:20::633])
        by gmr-mx.google.com with ESMTPS id k4si1457756wrc.0.2021.04.07.10.51.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Apr 2021 10:51:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::633 as permitted sender) client-ip=2a00:1450:4864:20::633;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kW7FnULX;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::633 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x633.google.com with SMTP id a7so602458eju.1
        for <outreachy-kernel@googlegroups.com>; Wed, 07 Apr 2021 10:51:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=3Vls4/3zvc2Jbgm4jryJRtoq1uc7/NcDLPeC8cMRFac=;
        b=kW7FnULX8k4nFVFyKv57LJLG/yhCAwFlox+xyV/Dm/Vw3jprixAq59+NftEXZnSL/4
         p3Cb8MUuY4hxLpEbX4H6xNK6pVvqOkjoYiKLmrhnMRDF5jmkdzOpZM6F3yncrP83I3GU
         IwBBWcrGAfMmjG7XsLkbKaWUuyhx0ffCHaiI3mQuzCTUyDtiAEjvUpOYsiISC3NbZOYK
         5fzTai400rwvYVzEdzFC2PhtH2yzW4qVKxgYw5XzWLw9zIBtm4y+9QzZXJPjpd4brWd3
         gN4n2jHhYVcKO/4gM5SpvMySRdYlm058saMM3b2CNJX4ked0GDVRFpzlf3n5fctY+nmd
         Lrgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=3Vls4/3zvc2Jbgm4jryJRtoq1uc7/NcDLPeC8cMRFac=;
        b=Oo/pykc1SdQ33cOM0AFoAHXiYr4Pd3oF6q3bUUcI9Gr4AH0Y+J3oRRT27+tpJ1xull
         RjNKC56VGAZV/NqEgXiJ/QC88AL9nl4xtsJo/+yshSumOOYAaiCKhTy347f8CEF40qqu
         g27VF1gxUiTnjFawOe474KiBxG37rgKcC23TNFsyzdG5PwmP2H/i4LU5xkPhRt1QNJZX
         mHcUJDvu63JbZk/2z/WvUbnpUel3R30z4xWKZjEkW+04ZvtdtIqgP4SEqYVHtDGMCOVS
         kfbIc/Wjke+dnl+dKSM2UPgerZICljFlnLNEFtese6bte/exVHZfboPehvzbmudJD27u
         6GGw==
X-Gm-Message-State: AOAM531WRb9BFEbBBx4WAotT6g/4V376lpBrL0/gH+a1CIowhYi0YxrL
	G9oVb1XqQ0uciYl7fdTT/2UqDsXYo+ql7B4l
X-Received: by 2002:a17:906:3609:: with SMTP id q9mr5194541ejb.119.1617817870503;
        Wed, 07 Apr 2021 10:51:10 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from localhost.localdomain (host-79-42-91-147.retail.telecomitalia.it. [79.42.91.147])
        by smtp.gmail.com with ESMTPSA id oz1sm2952186ejb.80.2021.04.07.10.51.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Apr 2021 10:51:09 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com, linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723bs: hal: Remove camelcase
Date: Wed, 07 Apr 2021 19:51:08 +0200
Message-ID: <53939680.76uNBjAIv9@localhost.localdomain>
In-Reply-To: <YG3rihKrS2tvr1tS@kroah.com>
References: <20210407163000.27611-1-fmdefrancesco@gmail.com> <YG3rihKrS2tvr1tS@kroah.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday, April 7, 2021 7:27:38 PM CEST Greg KH wrote:
> On Wed, Apr 07, 2021 at 06:30:00PM +0200, Fabio M. De Francesco wrote:
> > Remove camelcase. Issue detected by checkpatch.pl. For now, change only
> > names of static functions in order to not break the driver's code.
> > 
> > Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> > ---
> >  drivers/staging/rtl8723bs/hal/sdio_ops.c | 44 ++++++++++++------------
> >  1 file changed, 22 insertions(+), 22 deletions(-)
> > 
> > diff --git a/drivers/staging/rtl8723bs/hal/sdio_ops.c b/drivers/staging/rtl8723bs/hal/sdio_ops.c
> > index b1f02bb9f0a9..5e28818e58e0 100644
> > --- a/drivers/staging/rtl8723bs/hal/sdio_ops.c
> > +++ b/drivers/staging/rtl8723bs/hal/sdio_ops.c
> > @@ -19,7 +19,7 @@
> >  /*  */
> >  /*  Creadted by Roger, 2011.01.31. */
> >  /*  */
> > -static void HalSdioGetCmdAddr8723BSdio(
> > +static void hal_sdio_get_cmd_addr_8723b_sdio(
> >  	struct adapter *adapter,
> >  	u8 device_id,
> >  	u32 addr,
> > @@ -97,7 +97,7 @@ static u8 get_deviceid(u32 addr)
> >  
> >  /*
> >   * Ref:
> > - *HalSdioGetCmdAddr8723BSdio()
> > + *hal_sdio_get_cmd_addr_8723b_sdio()
> 
> What does this comment even mean?

Who can tell? Maybe we should ask the author :(

> 
> I think you can delete it.
> 

Mission accomplished. I'm about to send a new patch.

> But really, that's a crazy function name length, can you make it any
> shorter?

Device drivers developers have their own "style": functions names must have 25 characters or more! 

> thanks,
> 
> greg k-h
> 





