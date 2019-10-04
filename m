X-GM-THRID: 6743638980640636928
X-Received: by 2002:ac2:54b4:: with SMTP id w20mr8470146lfk.3.1570181778262;
        Fri, 04 Oct 2019 02:36:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:5f55:: with SMTP id a21ls884201lfj.0.gmail; Fri, 04 Oct
 2019 02:36:16 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw3hQgcNnPTO+l6ozz/5b3v7aHWpW+jHrwUonSto0FEVlGz94hrJ3ltrzanFSi0dMxAFjfE
X-Received: by 2002:a19:f247:: with SMTP id d7mr8153609lfk.191.1570181776133;
        Fri, 04 Oct 2019 02:36:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570181776; cv=none;
        d=google.com; s=arc-20160816;
        b=sFiJdS/edjbW1JAiw0WyMcPXGabGbiKp9lag6o416gYKcY6waLSgQsYbzEfxuDQGRB
         r6o/hEymSUJaaWF6cxwzVghAlaQZMhGTkt0hUkWi/NF7n8gO20zvC24uJbQLqO1tc7Jr
         6+jZMOCsxvNQxlwaDcHayEqQ4utxAZYLqBn7WNwUxW73/9SQzF+fH230ljBuJB85JACM
         oltMvvFKUwHCAXOPoXQdA65ATAjj8tw1nW1DbdngdpOa4ftKI0oufgS2q1XeFMb7Yhwx
         mkF6cQlTsXSXTy7c4QYQE3TXWtrnHnB0B/jF+IfbbOyK4rm6hG2P+tkCiAWxYLZwXZ0d
         xNkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=20VajyVjil3tDJgZlA0g2wRtoxHLAzaI3TJa8Yi+9ZQ=;
        b=GLJ9Tp48NehEUo4XJXaWNPnK0nqvqDLaDscBeqeiABaX9cwZeMW7ehRVISYcBy9Sf9
         TEXncE/Qlp/vUqAnCBu91rOjsS6p/vfUEECmTt9+EEmCUURGMyZBlELo7FPnaA6KdIoZ
         5ZzKdjODt+aYIOq7vOV2cDrCFrYTgTM4QCsnAojGrSoJvSRHwyxcwjbX/Br4yD/diHbH
         YCfyagFve3ndGaQqxOiRigMYgHRdDS7afV1Bswu1+HkAs0YeqXcTuo0QDF2vBu2FKazh
         agLdugbnZBUIHWmvS+8hcLYEGgy2DIdcSzFneRKNTrAbwOLo1C6TLC1ESJntATNioN7P
         WR2g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Zck6aKY2;
       spf=pass (google.com: domain of nachukannan@gmail.com designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=nachukannan@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <nachukannan@gmail.com>
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com. [2a00:1450:4864:20::244])
        by gmr-mx.google.com with ESMTPS id z4si108943lfe.4.2019.10.04.02.36.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Oct 2019 02:36:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of nachukannan@gmail.com designates 2a00:1450:4864:20::244 as permitted sender) client-ip=2a00:1450:4864:20::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Zck6aKY2;
       spf=pass (google.com: domain of nachukannan@gmail.com designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=nachukannan@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x244.google.com with SMTP id d1so5770543ljl.13
        for <outreachy-kernel@googlegroups.com>; Fri, 04 Oct 2019 02:36:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=20VajyVjil3tDJgZlA0g2wRtoxHLAzaI3TJa8Yi+9ZQ=;
        b=Zck6aKY2ESznt61Rw+q8Vi7LbbZ5qGkrolU4N8qRT5TWoRuapSEV6VcYlD9yU7J+W4
         qlc6jD/DRf+DZNyQW44QR5BqOnQ9vs/FR0Y58qu4EYC1rVhYmoYuJ4k4qjyuGn4ADaCO
         goOI2F8dK4Pk5JrN4g1UZuo1VpxHWY+DSUkTFY9tfMlzHX9feDWI1826tJLjHs+RQo3e
         JuUwXGxX6GSDd1ty5N/8aRE+tu8sFyrXeD/OAjllSWaLTjWbAs4T5PHm9lptvpXNaZut
         h6Z/yog57X9O2FdHZsA/O36kV40KUW5B4kKgTxvVETns8z7oe1/O3xI3oz7vkMUgcLFx
         MdPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=20VajyVjil3tDJgZlA0g2wRtoxHLAzaI3TJa8Yi+9ZQ=;
        b=kxYqQaCjI9pVc61v5sx+rK0n/TcxDKOH45w1XiUDS21UvRCW8ZN3b+5KnmcD3cGZ0+
         5oi8DuWzSdQeu7ATR6oylOL0Yq7qD6w3krdSR6H42U+F2tyP98Bmm2uZc9lQKH4yaOgn
         rSz2mIy4Yak2tx3mea6TVS04l3gSbQpC27CNJYerra2GWvvFQaguHlzydtmbNG34b6TE
         v4nzlQt8BoDJY0IxtfthgkCpD8YquwblTeyp7H/At8KUfQjzqKsCmoynD2gIAQXsAixV
         /7Ly9jDDAMIMD9bK3agJmu5sdgTuULVDqw7Tn/6soc3DjX0pCDMt1oJ7OQXD0DGjLJsI
         ocJQ==
X-Gm-Message-State: APjAAAWsk8ahK69oZsj6rbvD55iK4CAVMXWCk2sOEDDklGe+FSOQ9h1m
	UU+Kd22lP5dEmxnZEZ1rhuRXF9lahEfkEAiqppg=
X-Received: by 2002:a2e:5dc6:: with SMTP id v67mr6104934lje.247.1570181775746;
 Fri, 04 Oct 2019 02:36:15 -0700 (PDT)
MIME-Version: 1.0
References: <1570125797-24410-1-git-send-email-nachukannan@gmail.com> <alpine.DEB.2.21.1910032253270.3451@hadrien>
In-Reply-To: <alpine.DEB.2.21.1910032253270.3451@hadrien>
From: Nachammai Karuppiah <nachukannan@gmail.com>
Date: Fri, 4 Oct 2019 05:36:02 -0400
Message-ID: <CAMOCsdugFu1vT8qD27wK2xcw-ROQcyr8_QVxWB-qEOsb7su7sQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: vc04_services: Avoid typedef
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Eric Anholt <eric@anholt.net>, Stefan Wahren <wahrenst@gmx.net>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org, 
	outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="UTF-8"

On Thu, Oct 3, 2019 at 5:04 PM Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
>
> On Thu, 3 Oct 2019, Nachammai Karuppiah wrote:
>
> > Avoid typedefs to maintain kernel coding style. Issue found by
> > checkpatch.pl
> >
> > Replace the enum typedef VCHIQ_REASON_T with vchiq_reason.
>
> Would it be possible to get rid of them all?  They seem to all go
> together, since they start with the same prefix, and they all don't look
> nice at all.
>
> The changes so far seem to be going in the right direction.
>

Sure. I will work on removing all other typedefs.

Thanks,
Nachammai

> julia
>
> >
> > Signed-off-by: Nachammai Karuppiah <nachukannan@gmail.com>
> > ---
> >  drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c   | 8 ++++----
> >  drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c  | 4 ++--
> >  drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h    | 6 +++---
> >  drivers/staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h | 2 +-
> >  drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c  | 2 +-
> >  5 files changed, 11 insertions(+), 11 deletions(-)
> >
> > diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> > index b1595b1..280e237 100644
> > --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> > +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> > @@ -516,7 +516,7 @@ vchiq_blocking_bulk_transfer(VCHIQ_SERVICE_HANDLE_T handle, void *data,
> >  ***************************************************************************/
> >
> >  static VCHIQ_STATUS_T
> > -add_completion(VCHIQ_INSTANCE_T instance, VCHIQ_REASON_T reason,
> > +add_completion(VCHIQ_INSTANCE_T instance, enum vchiq_reason reason,
> >              struct vchiq_header *header, struct user_service *user_service,
> >              void *bulk_userdata)
> >  {
> > @@ -583,7 +583,7 @@ add_completion(VCHIQ_INSTANCE_T instance, VCHIQ_REASON_T reason,
> >  ***************************************************************************/
> >
> >  static VCHIQ_STATUS_T
> > -service_callback(VCHIQ_REASON_T reason, struct vchiq_header *header,
> > +service_callback(enum vchiq_reason reason, struct vchiq_header *header,
> >                VCHIQ_SERVICE_HANDLE_T handle, void *bulk_userdata)
> >  {
> >       /* How do we ensure the callback goes to the right client?
> > @@ -1666,7 +1666,7 @@ vchiq_compat_ioctl_queue_bulk(struct file *file,
> >  }
> >
> >  struct vchiq_completion_data32 {
> > -     VCHIQ_REASON_T reason;
> > +     enum vchiq_reason reason;
> >       compat_uptr_t header;
> >       compat_uptr_t service_userdata;
> >       compat_uptr_t bulk_userdata;
> > @@ -2271,7 +2271,7 @@ vchiq_videocore_wanted(struct vchiq_state *state)
> >  }
> >
> >  static VCHIQ_STATUS_T
> > -vchiq_keepalive_vchiq_callback(VCHIQ_REASON_T reason,
> > +vchiq_keepalive_vchiq_callback(enum vchiq_reason reason,
> >       struct vchiq_header *header,
> >       VCHIQ_SERVICE_HANDLE_T service_user,
> >       void *bulk_user)
> > diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
> > index 56a23a2..b0e0653 100644
> > --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
> > +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
> > @@ -355,7 +355,7 @@ mark_service_closing(struct vchiq_service *service)
> >  }
> >
> >  static inline VCHIQ_STATUS_T
> > -make_service_callback(struct vchiq_service *service, VCHIQ_REASON_T reason,
> > +make_service_callback(struct vchiq_service *service, enum vchiq_reason reason,
> >                     struct vchiq_header *header, void *bulk_userdata)
> >  {
> >       VCHIQ_STATUS_T status;
> > @@ -1230,7 +1230,7 @@ notify_bulks(struct vchiq_service *service, struct vchiq_bulk_queue *queue,
> >                                       spin_unlock(&bulk_waiter_spinlock);
> >                               } else if (bulk->mode ==
> >                                       VCHIQ_BULK_MODE_CALLBACK) {
> > -                                     VCHIQ_REASON_T reason = (bulk->dir ==
> > +                                     enum vchiq_reason reason = (bulk->dir ==
> >                                               VCHIQ_BULK_TRANSMIT) ?
> >                                               ((bulk->actual ==
> >                                               VCHIQ_BULK_ACTUAL_ABORTED) ?
> > diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
> > index c23bd10..f911612 100644
> > --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
> > +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
> > @@ -15,7 +15,7 @@
> >  #define VCHIQ_GET_SERVICE_USERDATA(service) vchiq_get_service_userdata(service)
> >  #define VCHIQ_GET_SERVICE_FOURCC(service)   vchiq_get_service_fourcc(service)
> >
> > -typedef enum {
> > +enum vchiq_reason {
> >       VCHIQ_SERVICE_OPENED,         /* service, -, -             */
> >       VCHIQ_SERVICE_CLOSED,         /* service, -, -             */
> >       VCHIQ_MESSAGE_AVAILABLE,      /* service, header, -        */
> > @@ -23,7 +23,7 @@ typedef enum {
> >       VCHIQ_BULK_RECEIVE_DONE,      /* service, -, bulk_userdata */
> >       VCHIQ_BULK_TRANSMIT_ABORTED,  /* service, -, bulk_userdata */
> >       VCHIQ_BULK_RECEIVE_ABORTED    /* service, -, bulk_userdata */
> > -} VCHIQ_REASON_T;
> > +};
> >
> >  typedef enum {
> >       VCHIQ_ERROR   = -1,
> > @@ -63,7 +63,7 @@ struct vchiq_element {
> >
> >  typedef unsigned int VCHIQ_SERVICE_HANDLE_T;
> >
> > -typedef VCHIQ_STATUS_T (*VCHIQ_CALLBACK_T)(VCHIQ_REASON_T,
> > +typedef VCHIQ_STATUS_T (*VCHIQ_CALLBACK_T)(enum vchiq_reason,
> >                                          struct vchiq_header *,
> >                                          VCHIQ_SERVICE_HANDLE_T, void *);
> >
> > diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h
> > index 460ccea..c2343a1 100644
> > --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h
> > +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h
> > @@ -32,7 +32,7 @@ struct vchiq_queue_bulk_transfer {
> >  };
> >
> >  struct vchiq_completion_data {
> > -     VCHIQ_REASON_T reason;
> > +     enum vchiq_reason reason;
> >       struct vchiq_header *header;
> >       void *service_userdata;
> >       void *bulk_userdata;
> > diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
> > index a2268d5..e02518d 100644
> > --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
> > +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
> > @@ -509,7 +509,7 @@ EXPORT_SYMBOL(vchi_disconnect);
> >   *
> >   ***********************************************************/
> >
> > -static VCHIQ_STATUS_T shim_callback(VCHIQ_REASON_T reason,
> > +static VCHIQ_STATUS_T shim_callback(enum vchiq_reason reason,
> >                                   struct vchiq_header *header,
> >                                   VCHIQ_SERVICE_HANDLE_T handle,
> >                                   void *bulk_user)
> > --
> > 2.7.4
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1570125797-24410-1-git-send-email-nachukannan%40gmail.com.
> >

