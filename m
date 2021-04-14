X-GM-THRID: 6950980105413853184
X-Received: by 2002:aa7:c455:: with SMTP id n21mr37420286edr.48.1618414617899;
        Wed, 14 Apr 2021 08:36:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:907:397:: with SMTP id ss23ls1224575ejb.3.gmail; Wed, 14
 Apr 2021 08:36:56 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzeJgeNQHTXWTBWEBGCTKvUS26M9Cec0RkJRw/Ud3v4KruXKU8Xd+Uo3GJALl6Wy6RYAYBP
X-Received: by 2002:a17:906:32da:: with SMTP id k26mr38033342ejk.483.1618414616351;
        Wed, 14 Apr 2021 08:36:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618414616; cv=none;
        d=google.com; s=arc-20160816;
        b=ed07AmUBb01b+GS4NEkbcgYut9v39OBXv9fxHbE9vDzRKDToaZKOJvqAh9hCcXyk18
         VBKokVO04qJCHsLO3c7jWFSjWk9viUqkRb1WH5chf07NetuISeCctNe2tutz5FLYRb1L
         2hYPWJFOWkTJ1/9Lo6kqNpMGWyoV0VcKOLrB8xvI3Cavc6g3T4v5Vp84jgMZ9NJLmVTM
         EBsMrex6IpMrn2jEclvbWV54/Am7oJjyti+GiXSlCwrraPxDjFgAZwX/qcE4d7YnRSnR
         NTsNs1TfjDzc/ABwojAnFkOzRJtUVBpamxkxP5NIZshGMzBnS6oKLDCwbA0sPdTvUvjX
         Z2jw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=f1Y5+4VG6CJZgdx4UWOh8zx7QoiyJatpZDoj3QFWUTQ=;
        b=PAvXM2yB0eHhCYFjno3GCsM7gfZxry1IH+RBPEiNRCGNhJ32RpbXs4zbCGd286IVIY
         cv4juCG/gQb7vp6VKbfYwQXoMyQgNssdMrBKuFWeGQtyPqysUfPvMdPTcuZmmHyCvrm6
         AoQG7BNivfWD7FvQFDrrVeQJ8Kz57bUuds7ovmZB6a2wLW9WStyjxd4ONngynHfU1Xrh
         S9qRKKwOlOZLNOeFus3ukCDY+rCKSobmfhi7ebOXHTrSuZBBdSVlv/Kpyll5YyxsO/Ob
         PoJ8GR46JZzZOqxwIh7W0i8UWRd4/IrKQJOlZ4mAAEKi01afoZ9xDJDwF3JUBHB6w8jM
         1lOg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=piifReYe;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::636 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com. [2a00:1450:4864:20::636])
        by gmr-mx.google.com with ESMTPS id y16si1395908edq.2.2021.04.14.08.36.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Apr 2021 08:36:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::636 as permitted sender) client-ip=2a00:1450:4864:20::636;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=piifReYe;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::636 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x636.google.com with SMTP id x12so11305536ejc.1
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Apr 2021 08:36:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=f1Y5+4VG6CJZgdx4UWOh8zx7QoiyJatpZDoj3QFWUTQ=;
        b=piifReYeJ7FkLTHElIuXKecxeioDin2ZIZeegb8sFHRXjwXt1JAz67On69HayK6LXp
         WXnsqQdz0qMTdsYaz13CI4Ps5BUZMZoSo+ctENjK/Msqg3CfNLwgy1l0yGqQX0h3RXr/
         bar7RE5EEh7Om2DAWmBxCbhpHXRQQvpp0WGF7W+UiN3onvUnaYrGza5MqgJL4vQ2xwrm
         UF23oOWmUZWXUvuCSV8Vv+PwJJ6l2bHk8N/LurpMl9GqeGYxZJl+M89fltT0zEin7GUW
         7yjZkoUHPaefPgIiBu8hKc54YgcQExl6vbEdxrwHPGepZyWC7NlIXAyvR07dtK8dQaoG
         G0rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=f1Y5+4VG6CJZgdx4UWOh8zx7QoiyJatpZDoj3QFWUTQ=;
        b=nnTx1Vl7ovb12AEyJi56RTB9WTBJqdV6ha+FEqWLYgrJS2k/vWgf+ycfhAG2/BJEjK
         TlZ4DCLowwE1eUd/9sDYZvCfQEHtvL2OzejxeYCkky8atRSMDsKREhFzOO1cJ5rE6WaB
         LU1nnHt0GzhWrYV5zTrGP09fC4NGHSM7wsxCVXfXA7+zVNNR6YHuTvDw5mDK/z9TSNk+
         2n9LXADSiLDWMWKLee+A4w+eU7QAe0xuyi4dCQXQdmB2YwSXVg2dEtuElYp7iuRzmQKA
         5COUslM2gEeAgfheB4ir6lyCDKFmftGGB53fMyZoUHnM3/vqTkDrYnmiGovGRVRkdHZu
         6vbQ==
X-Gm-Message-State: AOAM532K0MoXgdfRvbzDXfPmYRzMrL+HkfI1yVyz87vSwU0P7/iP7vKm
	kmHr+Dl9ePEbbV32buUH3Nk=
X-Received: by 2002:a17:907:629e:: with SMTP id nd30mr38150830ejc.407.1618414616155;
        Wed, 14 Apr 2021 08:36:56 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-95-237-55-30.retail.telecomitalia.it. [95.237.55.30])
        by smtp.gmail.com with ESMTPSA id t1sm12190317eds.53.2021.04.14.08.36.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Apr 2021 08:36:55 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Cc: outreachy-kernel@googlegroups.com, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org, Matthew Wilcox <willy@infradead.org>, Julia Lawall <julia.lawall@inria.fr>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723bs: Remove useless led_blink_hdl()
Date: Wed, 14 Apr 2021 17:36:54 +0200
Message-ID: <4318909.BRL0aILv4p@linux.local>
In-Reply-To: <20210414132414.GE6048@kadam>
References: <20210414115243.32716-1-fmdefrancesco@gmail.com> <20210414132414.GE6048@kadam>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday, April 14, 2021 3:24:14 PM CEST Dan Carpenter wrote:
> On Wed, Apr 14, 2021 at 01:52:43PM +0200, Fabio M. De Francesco wrote:
> > Removed the led_blink_hdl() function (declaration and definition).
> > Declared dummy_function() in include/rtw_mlme_ext.h and defined it in
> > core/rtw_cmd.c. Changed the second parameter of GEN_MLME_EXT_HANDLER
> > macro to make use of dummy_function().
> > 
> > Reported-by: Julia Lawall <julia.lawall@inria.fr>
> > Suggested-by: Dan Carpenter <dan.carpenter@oracle.com>
> > Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> > ---
> > 
> >  drivers/staging/rtl8723bs/core/rtw_cmd.c         | 4 +++-
> >  drivers/staging/rtl8723bs/core/rtw_mlme_ext.c    | 9 ---------
> >  drivers/staging/rtl8723bs/include/rtw_mlme_ext.h | 3 ++-
> >  3 files changed, 5 insertions(+), 11 deletions(-)
> > 
> > diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > b/drivers/staging/rtl8723bs/core/rtw_cmd.c index
> > 0297fbad7bce..7b6102a2bb2c 100644
> > --- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > +++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > @@ -87,6 +87,8 @@ static struct _cmd_callback rtw_cmd_callback[] = {
> > 
> >  	{GEN_CMD_CODE(_RunInThreadCMD), NULL},/*64*/
> >  
> >  };
> > 
> > +u8 dummy_functioni(struct adapter *var0, u8 *var1) { return 0; }
> > +
> > 
> >  static struct cmd_hdl wlancmds[] = {
> >  
> >  	GEN_DRV_CMD_HANDLER(0, NULL) /*0*/
> >  	GEN_DRV_CMD_HANDLER(0, NULL)
> > 
> > @@ -150,7 +152,7 @@ static struct cmd_hdl wlancmds[] = {
> > 
> >  	GEN_MLME_EXT_HANDLER(0, h2c_msg_hdl) /*58*/
> >  	GEN_MLME_EXT_HANDLER(sizeof(struct SetChannelPlan_param),
> >  	set_chplan_hdl) /*59*/> 
> > -	GEN_MLME_EXT_HANDLER(sizeof(struct LedBlink_param), 
led_blink_hdl)
> > /*60*/ +	GEN_MLME_EXT_HANDLER(sizeof(struct LedBlink_param),
> > dummy_function) /*60*/
> No, no.  Don't create a dummy function. Do it like so:
> 
> 	GEN_DRV_CMD_HANDLER(0, NULL) /* 60 */
> 
> regards,
> dan carpenter
>
I'm replying late because I didn't want to blindly use that solution; I 
mean that I wanted to understand why I can simply put 0 and NULL into that 
macro. I had seen it made in other lines that initialize wlancmds[] 
elements, but I wasn't sure if it could work for the specific slot where 
the pointer to led_blinck_hdl was supposed to be placed.

Now I think that it is why, in this case, cmd_hdl would be set to NULL by 
the call to wlancmds[pcmd->cmdcode].h2cfuns and the cmd_hdl() function 
wouldn't be called because cmd_hdl is tested within an "if" statement.

Therefore a simple GEN_DRV_CMD_HANDLER(0, NULL) at slot number would be the 
simplest and most obvious solution.

Is the above argument sound?

Thanks for your kind help,

Fabio




