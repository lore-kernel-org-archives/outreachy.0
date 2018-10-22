X-GM-THRID: 6612482196656619520
X-Received: by 2002:a6b:d609:: with SMTP id w9-v6mr10925027ioa.2.1540184753137;
        Sun, 21 Oct 2018 22:05:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5e:8515:: with SMTP id i21-v6ls8108625ioj.3.gmail; Sun, 21
 Oct 2018 22:05:52 -0700 (PDT)
X-Google-Smtp-Source: AJdET5eIKezUMPpVZQUkGjdlSZgHw1/Wau+vapQ2ZmdOhxJJ5D53nRdKhBsipTRrYKrTK3mogQPq
X-Received: by 2002:a6b:d80d:: with SMTP id y13-v6mr4702664iob.23.1540184752374;
        Sun, 21 Oct 2018 22:05:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540184752; cv=none;
        d=google.com; s=arc-20160816;
        b=lGPvK/7H5/EsczLyEay4t36/mcfsqcPFkLE8dhuvoKKxc6w4m8r9jj1WOqca0MVbpX
         2bcH/cXw6dUbELijMUSwI62Cynxij/01ic6ScNHVyqnthWDbJpw6qbS+MfH5TFDw7n1k
         YE9U1J4x/9E5u/kCKgM7CC9wGoblWvjb1/ec6Q6s78/57zBF9txNREPNn+i2eZNWsIKo
         UbLPMM3rRp1I4B3lkwdiEDnnc0wz0u3/0hj8CB4ellwXIuSS0HWzfU1Jtk4sovnMYv6s
         rq6PCKbax7LfuF5Vpw+5R5XKjfIkL62jkZqH5jaqeTuXqIv2HgkS+H8L1Y0zZXePbauC
         HBag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=wVOeCeCh4hAno5EF8Ackcs64HAWWel/0DvJsH5rr6SY=;
        b=OA7nAHuIHDdXi1fntLiwycP2Mbtjap0QvjtNZv00qYDfO7BIPTON3eq49eNQwsPS1M
         TbF0ibQDXk6RQCE3Rs9ehMBOWI3rkGaE3/lKtvCYgAi63VCB0CBNm3nSdXVzfTLkHr6Z
         TY9rk7YE9G4edl72/UindDlqbNwtTJwnENqxM/1wWJA6UisaOIAVL1CuEd+551PcZG08
         v6i5PlbSpNNouftdxZvCFzhD/PCS3BcjUqxf2hMNGzfOlerQO5C0WUx6H15GzN31L1hx
         PpEDJo7WPCUaE4q2VIGXGEc5uSWoX43Er+W6rbZVpQRoPwhUj731ImxLfJnEePTj/D56
         cguw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nZNTzkRj;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id n6-v6si275761iog.2.2018.10.21.22.05.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 21 Oct 2018 22:05:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nZNTzkRj;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x342.google.com with SMTP id o14so38750664oth.4
        for <outreachy-kernel@googlegroups.com>; Sun, 21 Oct 2018 22:05:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=wVOeCeCh4hAno5EF8Ackcs64HAWWel/0DvJsH5rr6SY=;
        b=nZNTzkRjLj2t1aEAO3cS7xo4WLbkpb/kiwAkpYxOLfRb0WKiqj7g6YirckYtV9GwTq
         4K8C5DZN4o/udaAwM/H77TOyIR0TOgkrardQyWCuJmIn7LWx49A772O2VK3JFsru5z3y
         sVK15eIVVTzUNZwKuryJqRbWkZjLkNq7zXaI30G5ueTEu961beOKPdtiuSzRvDejmU2k
         x/9ex0GdltERFXz2GZ5VrM+AUAIXgCLUUt3M/fAmAZLGyUVBAULB8hgpGQ/3bUDRijxW
         ndjmQjhLBAFQmSg877TqRmRpoHdNtMzxZ6u2aaG5BXUgdVsPueyWnSliD6J30yLkMHtr
         8ALA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=wVOeCeCh4hAno5EF8Ackcs64HAWWel/0DvJsH5rr6SY=;
        b=WoQ4IUZGnByCcg2ghjowoCN21XXAknQyP75hfpwTdpA7aWKpVRzQg5lRtT+w+L/Rkt
         JdzvfZsYPavSHDba52ElFbMhJXXnWSI5ERJMcZsL18u6rkiP/PL8XCEmyGlbb6FFaNIE
         M4iikeqJGqpuTG8jO5UTF2FQTlzPiVXaTbQECx1tdRaSQ3yYBFUeThJ1SkzJOPbEbtVH
         CW3Cta6CKbhsrVwAvZBtuZZ2nEC8s8iO/m5xtOnWWtSzmncaicSEwHKqmFsWfRPIpV3W
         RjK4SEEkqAl583EItIYMYaEb0QSYhMzwTCmAnf0LhfA1ilNqeff8DzyzRq2jbN9sl1fm
         3jsg==
X-Gm-Message-State: ABuFfoiE19TgXxfpld7/7p0mwezu+rEaHKJJsa5N86ltK20p7j66E2ry
	LrTrYubtmEah2hg4V1lUMKbZVYSFPUr2rGFJ6HUeWw==
X-Received: by 2002:a9d:ec:: with SMTP id 41mr26910847otk.322.1540184751833;
 Sun, 21 Oct 2018 22:05:51 -0700 (PDT)
MIME-Version: 1.0
References: <20181015091720.GA16418@aakashd-VirtualBox> <CAB0Mk-NUUH-TchghtK5qNG0qgY7HP7hAoavv7Uex6ah-COOh8g@mail.gmail.com>
 <CAB0Mk-NQHNrWdxOGoQd+DZVH0oYWXq33aeApvAL1Zrc5DRZwZg@mail.gmail.com>
In-Reply-To: <CAB0Mk-NQHNrWdxOGoQd+DZVH0oYWXq33aeApvAL1Zrc5DRZwZg@mail.gmail.com>
From: Bhanusree Mahesh <bhanusreemahesh@gmail.com>
Date: Mon, 22 Oct 2018 10:34:33 +0530
Message-ID: <CAB0Mk-ONSTZtrkKax+mgw23=LXPu7sgax7yf88=v7NAXxGOV9g@mail.gmail.com>
Subject: Re: [Outreachy kernel][PATCH v3] staging: bcm2835-camera: Remove
 'ret' variable
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"

On Mon, 22 Oct 2018 at 10:31, Bhanusree Mahesh
<bhanusreemahesh@gmail.com> wrote:
>
> On Mon, 22 Oct 2018 at 10:26, Bhanusree Mahesh
> <bhanusreemahesh@gmail.com> wrote:
> >
> > On Mon, 15 Oct 2018 at 14:48, Bhanusree Pola <bhanusreemahesh@gmail.com> wrote:
> > >
> > > Return value to be returned without using extra variable 'ret'.
> > > Removed the useless variable 'ret' by hand using coccinelle semantic patch ret.cocci
> > > The following is the ret.cocci semantic patch used:
> > >
> > > @@
> > > local idexpression ret;
> > > expression e;
> > > @@
> > >
> > > -ret =
> > > +return
> > >      e;
> > > -return ret;
> > >
> > > Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
> > > ---
> > >
> > > changelog:
> > >
> > > v2: Include semantic patch used in the commit message
> > > v3: Modified Commit message
> > >
> > >  drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c | 4 +---
> > >  1 file changed, 1 insertion(+), 3 deletions(-)
> > >
> > > diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
> > > index c04bdf0..a124f51 100644
> > > --- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
> > > +++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
> > > @@ -1510,7 +1510,6 @@ static int set_camera_parameters(struct vchiq_mmal_instance *instance,
> > >                                  struct vchiq_mmal_component *camera,
> > >                                  struct bm2835_mmal_dev *dev)
> > >  {
> > > -       int ret;
> > >         struct mmal_parameter_camera_config cam_config = {
> > >                 .max_stills_w = dev->max_width,
> > >                 .max_stills_h = dev->max_height,
> > > @@ -1526,10 +1525,9 @@ static int set_camera_parameters(struct vchiq_mmal_instance *instance,
> > >                 .use_stc_timestamp = MMAL_PARAM_TIMESTAMP_MODE_RAW_STC
> > >         };
> > >
> > > -       ret = vchiq_mmal_port_parameter_set(instance, &camera->control,
> > > +       return vchiq_mmal_port_parameter_set(instance, &camera->control,
> > >                                             MMAL_PARAMETER_CAMERA_CONFIG,
> > >                                             &cam_config, sizeof(cam_config));
> > > -       return ret;
> > >  }
> > >
> > >  #define MAX_SUPPORTED_ENCODINGS 20
> > > --
> > > 2.7.4
> > >
Any modifications required for this to be accepted?


 Bhanusree

