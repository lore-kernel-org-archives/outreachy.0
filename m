X-GM-THRID: 6951119987386875904
X-Received: by 2002:a17:90a:650c:: with SMTP id i12mr3748174pjj.204.1618489650987;
        Thu, 15 Apr 2021 05:27:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:903:31cc:: with SMTP id v12ls3146706ple.9.gmail; Thu, 15
 Apr 2021 05:27:30 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzWHnRezCNy0Xd4RAGP9OVHhIYO69Gp2nIErPr9xrPQ75/9+0YlM8tjgFpsu/gfDmYd5Uyy
X-Received: by 2002:a17:90b:1bd0:: with SMTP id oa16mr3601130pjb.49.1618489649938;
        Thu, 15 Apr 2021 05:27:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618489649; cv=none;
        d=google.com; s=arc-20160816;
        b=lQvMNYoDhpG41uqw8UFs3FNgA+eUWZX9FmAPZRpZmoMSxQ/nXvS2wxhG4+nGikkRNY
         kaNTxcvm1MXJVuNs7AWPD219P5HzIK8lBmjNLNucH4uFB/6ibMdEQw7W+qtxSyPprojW
         IrCMjnh6ftZNwuvXuBJjFyoarBVF7AnyNm6JZ13Ikhi8we4kAM+4pRqRiOotTVmNrKhF
         S19dQFc3ZHBC+I2fNUZplNCvVE6OnreBBl3tem7r4kuAQcqZ1eM40IWiojg5a1Gztp5/
         e8yRF4SFbBgdGQIs6JwD70eGWz7kKA1ledeNUaSQ5+y6s8/FFG+GUN2Tjf9gmFu339S6
         +pog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=do6UEgvEb56r/+VgD7/HgsidFuR+UH9N0ozm3NJagw0=;
        b=dpBVC08W01fs/yUaDLLiVQG9xoZa587ioAk0xxZr4IMo7t9IDIH2Ub6oqsPp2Y2IxM
         4wfD+FzIZe53pMculYblLFGbdOXoLQnvPClxjUKa0W43VeJ+QpyT9HlFIJdboTXf8cU/
         xKp3skp4Z0B1SdQdS9nbTz0aKqprl9Do8gsY6MeTeulZlRYUXZZSp4RnC9HHRBZUum8a
         QNEq8xpWDZ985DDYiHolOiiD+/cMhgJf5LntvbhI2ko2NkSfPowKGf9qQOmpwzJKwM5w
         7P4b1/dDgAjMj/7Dxojc/7vt2c88tIb02ub21L1Uq2B/ZofliUkiMuU1ihsdFPhSkmy8
         ziRg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Lyel7gM/";
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::f31 as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from mail-qv1-xf31.google.com (mail-qv1-xf31.google.com. [2607:f8b0:4864:20::f31])
        by gmr-mx.google.com with ESMTPS id b14si206565plh.1.2021.04.15.05.27.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Apr 2021 05:27:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::f31 as permitted sender) client-ip=2607:f8b0:4864:20::f31;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Lyel7gM/";
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::f31 as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qv1-xf31.google.com with SMTP id bs7so11043433qvb.12
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Apr 2021 05:27:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=do6UEgvEb56r/+VgD7/HgsidFuR+UH9N0ozm3NJagw0=;
        b=Lyel7gM/m++uSGzmmS63UAQWZsHsVGwX87FUyMfcYkVP2cjVdV6MgV7CVp8NfAmwWg
         bw74WCvnkF+0/WQqKUz1MCunjyHPdweogZ0G6B2mkGpRD64omUoC6kk+SimvYA1gBG+b
         MuBkQj92eb/fmrs93vrxzXuKeqwB3bb02MBO+XMhtWz2dtc6CFNssJVvF+5Sxi/dFqz4
         Z7zo9k7euTRv1jA/sJ+2NKWGfUyfqgLqd+ILJ5ueAib1wNKN22bYoJj26HEzbLR2BIkO
         3O66Uk0Ntjs2L1ZMWnb+wUho9vFU3abMZ9G7CmFW1am08VWUPXAWxkIHcvJ2HNpqr++e
         oTKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=do6UEgvEb56r/+VgD7/HgsidFuR+UH9N0ozm3NJagw0=;
        b=sQnmGouvS8uSVKIeJup2P6MZXKZaXD5tB+DtOGiAbbYAW5OwrQ+S3JUX1H3jWgUL+2
         +Te99REmcXFzv9N/GOrkInUVp2Wl4XJxQu3/zuxB8F2d+jhJYMgk2AIzP3fFnR1odfkG
         KVocD8JaQUmfPQGLiPnhWPeWhip2qr+/IeP1fgpkjlADRyBvBvNKoqxRKn6oq0130E0E
         jSBi3RbHg19tJHjpCVERxkHYe4GzJGYvuVkQpAw/Rz8YJaEyKeWOxE25b3QrrR4z+Gtc
         DDBiOkzbGn8xAvxbzKuF0ToAmo6YXreX/KVL83XGJOlwciUQSC5FNS2LqSvplpm2nhRZ
         Cezg==
X-Gm-Message-State: AOAM531WX1gZ6e2HGiaVXgAJrb9Yq+Qn2b/YZxdcjmWsP//e7KqxGScy
	0ZYQCWKu5DtiYUQwpNYjzS4=
X-Received: by 2002:a05:6214:18f4:: with SMTP id ep20mr2771195qvb.5.1618489649151;
        Thu, 15 Apr 2021 05:27:29 -0700 (PDT)
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from ?IPv6:2001:1284:f016:a037:fda3:4e59:60ec:90e5? ([2001:1284:f016:a037:fda3:4e59:60ec:90e5])
        by smtp.gmail.com with ESMTPSA id g3sm1674684qth.66.2021.04.15.05.27.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Apr 2021 05:27:28 -0700 (PDT)
Message-ID: <138704cf6fb32f66295b2ffd9d5c376d1b6826bc.camel@gmail.com>
Subject: Re: [PATCH v2] staging: media: atomisp: pci: Format comments
 according to coding-style in file atomisp_cmd.c
From: ascordeiro <alinesantanacordeiro@gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, Sakari Ailus
 <sakari.ailus@linux.intel.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>,  linux-media@vger.kernel.org,
 linux-staging@lists.linux.dev,  linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com
Date: Thu, 15 Apr 2021 09:27:25 -0300
In-Reply-To: <20210415054851.GA6021@kadam>
References: <20210414204244.GA8287@focaruja> <20210415054851.GA6021@kadam>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.0 (by Flathub.org) 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Em qui, 2021-04-15 às 08:48 +0300, Dan Carpenter escreveu:
> On Wed, Apr 14, 2021 at 05:42:44PM -0300, Aline Santana Cordeiro
> wrote:
> > @@ -90,18 +92,14 @@ struct camera_mipi_info
> > *atomisp_to_sensor_mipi_info(struct v4l2_subdev *sd)
> >         return (struct camera_mipi_info
> > *)v4l2_get_subdev_hostdata(sd);
> >  }
> >  
> > -/*
> > - * get struct atomisp_video_pipe from v4l2 video_device
> > - */
> > +/* get struct atomisp_video_pipe from v4l2 video_device */
> 
> This code is obvious and the comment doesn't add anything except
> noise.
> Just delete it.  Same for a lot of the other one line comments
> describing functions in this patch.
> 

No worries, I'm going to delete it all.
Can I send a v3 just with the issues detected by checkpatch?

Thank you in advance,
Aline

> >  struct atomisp_video_pipe *atomisp_to_video_pipe(struct
> > video_device *dev)
> >  {
> >         return (struct atomisp_video_pipe *)
> >                container_of(dev, struct atomisp_video_pipe, vdev);
> >  }
> >  
> > -/*
> > - * get struct atomisp_acc_pipe from v4l2 video_device
> > - */
> > +/* get struct atomisp_acc_pipe from v4l2 video_device */
> >  struct atomisp_acc_pipe *atomisp_to_acc_pipe(struct video_device
> > *dev)
> >  {
> >         return (struct atomisp_acc_pipe *)
> > @@ -269,7 +267,7 @@ int atomisp_freq_scaling(struct atomisp_device
> > *isp,
> >                             ATOMISP_RUN_MODE_CONTINUOUS_CAPTURE;
> >         }
> >  
> > -       /* search for the target frequency by looping freq rules*/
> > +       /* search for the target frequency by looping freq rules */
> >         for (i = 0; i < dfs->dfs_table_size; i++) {
> >                 if (curr_rules.width != dfs->dfs_table[i].width &&
> >                     dfs->dfs_table[i].width != ISP_FREQ_RULE_ANY)
> > @@ -307,9 +305,7 @@ int atomisp_freq_scaling(struct atomisp_device
> > *isp,
> >         return ret;
> >  }
> >  
> > -/*
> > - * reset and restore ISP
> > - */
> > +/* reset and restore ISP */
> 
> Obvious
> 
> >  int atomisp_reset(struct atomisp_device *isp)
> >  {
> >         /* Reset ISP by power-cycling it */
> > @@ -338,9 +334,7 @@ int atomisp_reset(struct atomisp_device *isp)
> >         return ret;
> >  }
> >  
> > -/*
> > - * interrupt disable functions
> > - */
> > +/* interrupt disable functions */
> 
> Obvious
> 
> >  static void disable_isp_irq(enum hrt_isp_css_irq irq)
> >  {
> >         irq_disable_channel(IRQ0_ID, irq);
> > @@ -351,9 +345,7 @@ static void disable_isp_irq(enum
> > hrt_isp_css_irq irq)
> >         cnd_sp_irq_enable(SP0_ID, false);
> >  }
> >  
> > -/*
> > - * interrupt clean function
> > - */
> > +/* interrupt clean function */
> 
> Obvious
> 
> >  static void clear_isp_irq(enum hrt_isp_css_irq irq)
> >  {
> >         irq_clear_all(IRQ0_ID);
> 
> [ snip ]
> 
> > @@ -1918,10 +1914,7 @@ irqreturn_t atomisp_isr_thread(int irq, void
> > *isp_ptr)
> >         return IRQ_HANDLED;
> >  }
> >  
> > -/*
> > - * utils for buffer allocation/free
> > - */
> > -
> > +/* utils for buffer allocation/free */
> 
> What?  This one seems actively wrong.
> 
> >  int atomisp_get_frame_pgnr(struct atomisp_device *isp,
> >                            const struct ia_css_frame *frame, u32
> > *p_pgnr)
> >  {
> 
> etc.
> 
> regards,
> dan carpenter
> 



