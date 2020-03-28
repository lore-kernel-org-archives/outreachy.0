X-GM-THRID: 6807107593039773696
X-Received: by 2002:a37:b446:: with SMTP id d67mr5368259qkf.162.1585427554365;
        Sat, 28 Mar 2020 13:32:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:aa0c:: with SMTP id t12ls6180956qke.11.gmail; Sat, 28
 Mar 2020 13:32:33 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuAftnsb0TJRyvH22pEDBdlh/aGiWqMf+7InFdh3gVyfIRtexVqXrZmWZKkD5Y+PJ5uqXOz
X-Received: by 2002:ae9:ebd3:: with SMTP id b202mr5407392qkg.476.1585427553072;
        Sat, 28 Mar 2020 13:32:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585427553; cv=none;
        d=google.com; s=arc-20160816;
        b=lXDxce66v5/MJBQtt0YGzRoJHFkuS0ybyJc/sSRZ6yKkRmfYnYY8nOv3Nc73aOGDZN
         /l1aewvCMmNtR7BBMUlNe8KZZowpjx+xh0vq/BSIraHYPLSPoVjDCqIOrD+lXqUXXBZm
         W+ew0wILzW30WU6VKUg7+WKeMSZ0wQr67rmGQuYaJujrP3ijGA/D9Pc1JC7YEBANj7M3
         h270QDnUAWHcL6zVWkaRL/aOfq0gvDCMNYjf221MEA0rR3t0F8MSoMTZx0lr0WV14KtA
         gtjMD6ALfhhDft8F3ig4u3A+yEuRiUN+pe+5C1VFiVbQEcsGYISLQNSopPPRqqrqYsFQ
         ELkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=0Pz666Z068HBNAYfmWNURylK37oZ3EMYedhsxgmH/Q0=;
        b=U0WpQsHhnI9r08g1+va47KZoOrha0e+lSWnFdAP/LqCme55MVjFPqBE/lDIG1xmEgX
         +zjfTnIIeNmR6FY9uQ7WPb0w27QUqt8EKmxHVlwT8V2Afbvznx9eUXdv1X2xRZcV1tz2
         evUSr8z72pOLTHCw6cZ5p79y4/NHxL9xYyu4ig60bEooSccP9wDZsWRfqVOZN6LygTR6
         +jUrg4dv85d+Sihys+eCXi+UlQ6lAWDuE5r7/b0cjPBieJ0gsyRu65tgOTSeBhkZDBVd
         V0X8UxnRyVA9EgEnI6F79qEqT+awkhyxWRn064e2KoIuJYLOmJshG1eT2OJ6/CyEbze+
         KbEw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qiy1exW8;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id 198si503201qkh.7.2020.03.28.13.32.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 28 Mar 2020 13:32:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qiy1exW8;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1044.google.com with SMTP id ng8so5620527pjb.2
        for <outreachy-kernel@googlegroups.com>; Sat, 28 Mar 2020 13:32:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=0Pz666Z068HBNAYfmWNURylK37oZ3EMYedhsxgmH/Q0=;
        b=qiy1exW8xvgZKQ9pxteTBbhZv3c8XPoin809bUE13Ku39mK4AOBsD0mvDAzTekbi1L
         JT7skFfglWEOtbr938fwbR52KWThu5uUUOKOCKVkRxplJ3BjxOQ0RzC4ylyRTcdAOiAc
         6hHPFO4BTZFeWm6MG97zn35grwRnU6wlhmYz9iA8lI3KCxdAJpMAC0S8Td5syfF97DN+
         0vlB1+ptT8uw+KOZlayFOwdlalpAFXlUtXyFJXlDL8TopsTsWOW2vVgs9oW1Bfkh2R5D
         fI7DTPi8dS5nff4kWqyytZmbl8n2nc8WoYtXdM3wbH4T5/kZWlr5SpBm7lUWx5xbBPC9
         nCsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=0Pz666Z068HBNAYfmWNURylK37oZ3EMYedhsxgmH/Q0=;
        b=ZJLYv/yzsda0wErgtInCpZb0fMqdBT3xMoc/2J+1wIGzl1IEKbUTkjv6sbPGKLvcvo
         +dJCLamjnyvoRqgWViGQ07JOF6igbmYkzKeUwaorqQ/JTl8fHZhqY/OqU/ZHpa5flAq9
         g2LVEVp/+hs3OrruA5iVz+D8IytEO7I0BGIO1vXQfXekLJbH0sZpmj0dG6sY6ZZeNWzP
         qpRhPrDX1Gm8946bfgZPQno6THOvDeCCYXu929mlNx/MVACQmxHidMz9ULn4zLTy0xXT
         hjL2fXgAm6U2+02nbDhXUkK0fILQfAb4q8HFgOMZt/UU/Fc6VNgQFwI/7ZFw6Sg2JcRn
         h09g==
X-Gm-Message-State: ANhLgQ2l2TkoHlvZXdcXXUmsS8AVi0YWTonlOXA39wd9Sz7pbzW8MGbv
	DEc3MmPllWXmJe6yfvdqI5B1h/Ys
X-Received: by 2002:a17:902:8e8b:: with SMTP id bg11mr5396859plb.138.1585427552540;
        Sat, 28 Mar 2020 13:32:32 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from deeLinux ([103.241.225.97])
        by smtp.gmail.com with ESMTPSA id go9sm6607841pjb.27.2020.03.28.13.32.30
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 28 Mar 2020 13:32:32 -0700 (PDT)
Date: Sun, 29 Mar 2020 02:02:27 +0530
From: DEEPAK VARMA <mh12gx2825@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [PATCH v2] media: staging/intel-ipu3: Reformat pointer
 initialization
Message-ID: <20200328203226.GA1893@deeLinux>
References: <20200322185350.GA12377@deeUbuntu>
 <20200328132412.6f6368f2@archlinux>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200328132412.6f6368f2@archlinux>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Sat, Mar 28, 2020 at 01:24:12PM +0000, Jonathan Cameron wrote:
> On Mon, 23 Mar 2020 00:23:54 +0530
> Deepak R Varma <mh12gx2825@gmail.com> wrote:
> 
> > Reformat pointer initialization to make it more readable as per the
> > coding standards. Problem detected by checkpatch.
> > 
> > Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> 
> Check your cc list before sending and make sure it makes sense.
> Driver has nothing to do with IIO and half your list are from
> IIO MAINTAINERS entry.

Hi Jonathan,
My bad. Must be a copy paste error as I did a git rebase and must have gotten
the wrong maintainers list from a different patch. I will correct and resend.

Thank you for pointing out,
Deepak.

> 
> > ---
> > 
> > Changes since v1:
> >     - Correct commit message and description as advised vy Stefano. Its
> >       pointer initialization and not declaration as mentioned earlier.
> >     
> >  drivers/staging/media/ipu3/ipu3-v4l2.c | 6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/staging/media/ipu3/ipu3-v4l2.c b/drivers/staging/media/ipu3/ipu3-v4l2.c
> > index 569e27b824c8..52826fad6f42 100644
> > --- a/drivers/staging/media/ipu3/ipu3-v4l2.c
> > +++ b/drivers/staging/media/ipu3/ipu3-v4l2.c
> > @@ -485,7 +485,6 @@ static int imgu_vb2_start_streaming(struct vb2_queue *vq, unsigned int count)
> >  	if (r < 0)
> >  		goto fail_return_bufs;
> >  
> > -
> >  	if (!imgu_all_nodes_streaming(imgu, node))
> >  		return 0;
> >  
> > @@ -1013,8 +1012,9 @@ static const struct v4l2_ioctl_ops imgu_v4l2_meta_ioctl_ops = {
> >  
> >  static int imgu_sd_s_ctrl(struct v4l2_ctrl *ctrl)
> >  {
> > -	struct imgu_v4l2_subdev *imgu_sd =
> > -		container_of(ctrl->handler, struct imgu_v4l2_subdev, ctrl_handler);
> > +	struct imgu_v4l2_subdev *imgu_sd = container_of(ctrl->handler,
> > +							struct imgu_v4l2_subdev,
> > +							ctrl_handler);
> >  	struct imgu_device *imgu = v4l2_get_subdevdata(&imgu_sd->subdev);
> >  	struct device *dev = &imgu->pci_dev->dev;
> >  
> 

