X-GM-THRID: 6672001868710805504
X-Received: by 2002:a5d:4a4f:: with SMTP id v15mr12163947wrs.5.1553450269439;
        Sun, 24 Mar 2019 10:57:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:e142:: with SMTP id y63ls1774890wmg.7.canary-gmail; Sun,
 24 Mar 2019 10:57:48 -0700 (PDT)
X-Google-Smtp-Source: APXvYqy5DZ9fyRIruO3mDcFfIeLEjkMoLwbU4fLYXkAoo/kHbg3tJRWruczxGvRWHDASi1bYoyYF
X-Received: by 2002:a1c:c647:: with SMTP id w68mr9383480wmf.8.1553450268493;
        Sun, 24 Mar 2019 10:57:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553450268; cv=none;
        d=google.com; s=arc-20160816;
        b=xAII+ZIhc5paYOLvZM9FmoKmQmoGJPSZmVH51hSyJ/jB0HdeCbUQetAVxJ9s5HaVSW
         PBqRruYUqwObrPzwMfGWXrLq4CAYXlF9iA8izLASNMdJysNnYQG6oxD8FLxhbIKPbjPS
         eJZrvlUqtkXda415Cp9m/KqO7Kt+4wErPBQmweibmv+jB3L8pgnKzlo9BP4Y51ZNPj0a
         jcCvc7OxQBVod1W9xufGyq91nchwVkFA+VosM58a8nPJiX1dvHgSw4EER65VlOQ1PDwl
         1S3dQVWdGD1++j8UxmPF51yCJ5ZGmV54zXcm/vs8fgR5rlku51pZ87G7CbgaMv+4OUte
         DQOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=2pWiXiNpFs0O4mFbHCdc8AycrhwrZYLsKzKFUlsJXgc=;
        b=DQPHT8rWKMm1I2MrydurhQti8mpqljRjzAdQIlOAboEbsSAb65thDNWLHAcXuPSKSk
         GOiLR8x2AWA8Bq1ectVf+mOzL/pkV8tstvx5YtM4iuldgYofE3KdbRjGKWn9Ta/yeXcR
         NOLcVeNHulubaLUPnjIRpOgPow9TX6Fz3zsKiSMMyngZLFTQ1866LrLhrXLQ0ben+wV3
         FeJykeuJ/1/ZKM7YFLcg7W+2GXw2YrnL/DuELH9XZ5FXz4U/0NBgOrWk3WdwDC8qQ+0s
         1BJkqLjLrHY3xWAbyI83w4QDohm21/wRu/65cEnTKlLbGU0rcyg/Fsjrh2vfPmEY0+ij
         TRGw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id y192si512769wmd.1.2019.03.24.10.57.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 24 Mar 2019 10:57:48 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,256,1549926000"; 
   d="scan'208";a="375499983"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 24 Mar 2019 18:57:48 +0100
Date: Sun, 24 Mar 2019 18:57:47 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Himadri Pandya <himadri18.07@gmail.com>
cc: laurent.pinchart@ideasonboard.com, mchehab@kernel.org, 
    Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: media: omap4iss: Use list_entry
 instead of container_of
In-Reply-To: <CAPnhUpYSAaY0J6dRsQf2hMvMfUhvaSXqu+Vgt3aQ7g_mjGX8Hw@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.1903241856530.2526@hadrien>
References: <20190324165433.95833-1-himadri18.07@gmail.com> <alpine.DEB.2.21.1903241812520.2526@hadrien> <CAPnhUpYSAaY0J6dRsQf2hMvMfUhvaSXqu+Vgt3aQ7g_mjGX8Hw@mail.gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-542459923-1553450268=:2526"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-542459923-1553450268=:2526
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Sun, 24 Mar 2019, Himadri Pandya wrote:

>
>
> On Sun, Mar 24, 2019 at 10:48 PM Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
>       On Sun, 24 Mar 2019, Himadri Pandya wrote:
>
>       > Use list_entry instead of container_of for lists iss_buffer
>       and
>       > iss_video.
>       >
>       > Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
>       > ---
>       >  drivers/staging/media/omap4iss/iss_video.h | 4 ++--
>       >  1 file changed, 2 insertions(+), 2 deletions(-)
>       >
>       > diff --git a/drivers/staging/media/omap4iss/iss_video.h
>       b/drivers/staging/media/omap4iss/iss_video.h
>       > index f22489edb562..e8d27b7ac329 100644
>       > --- a/drivers/staging/media/omap4iss/iss_video.h
>       > +++ b/drivers/staging/media/omap4iss/iss_video.h
>       > @@ -118,7 +118,7 @@ struct iss_buffer {
>       >       dma_addr_t iss_addr;
>       >  };
>       >
>       > -#define to_iss_buffer(buf)   container_of(buf, struct
>       iss_buffer, vb)
>       > +#define to_iss_buffer(buf)   list_entry(buf, struct
>       iss_buffer, vb)
>
>       Actually, this macro is no longer used.  Perhaps someone else
>       converted
>       the uses to use the proper list operations and forgot to drop
>       the macro
>       definition.
>
>
> Then should I send a patch to drop these macros?

One of the macros is used and one is not.  You can send a patch to drop
the one that is not used.  The other one is used only once.  Still it
looks more readable than a call to container_of.

julia

>  
>
>       >
>       >  enum iss_video_dmaqueue_flags {
>       >       /* Set if DMA queue becomes empty when
>       ISS_PIPELINE_STREAM_CONTINUOUS */
>       > @@ -170,7 +170,7 @@ struct iss_video {
>       >       const struct iss_video_operations *ops;
>       >  };
>       >
>       > -#define to_iss_video(vdev)   container_of(vdev, struct
>       iss_video, video)
>       > +#define to_iss_video(vdev)   list_entry(vdev, struct
>       iss_video, video)
>
>       This doesn't involve a list.  Nor does the previous one.  To use
>       list_entry, the third argument should be the name of a field
>       that has type
>       list_head.
>
>
> Understood. Thank you.
>
> - Himadri 
>  
>
>       julia
>
>       >  struct iss_video_fh {
>       >       struct v4l2_fh vfh;
>       > --
>       > 2.17.1
>       >
>       > --
>       > You received this message because you are subscribed to the
>       Google Groups "outreachy-kernel" group.
>       > To unsubscribe from this group and stop receiving emails from
>       it, send an email to
>       outreachy-kernel+unsubscribe@googlegroups.com.
>       > To post to this group, send email to
>       outreachy-kernel@googlegroups.com.
>       > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/20190324165433.95833-1-h
>       imadri18.07%40gmail.com.
>       > For more options, visit https://groups.google.com/d/optout.
>       >
>
>       --
>       You received this message because you are subscribed to the
>       Google Groups "outreachy-kernel" group.
>       To unsubscribe from this group and stop receiving emails from
>       it, send an email to
>       outreachy-kernel+unsubscribe@googlegroups.com.
>       To post to this group, send email to
>       outreachy-kernel@googlegroups.com.
>       To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.19032418
>       12520.2526%40hadrien.
>       For more options, visit https://groups.google.com/d/optout.
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CAPnhUpYSAaY0J6dRsQf2hMv
> MfUhvaSXqu%2BVgt3aQ7g_mjGX8Hw%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-542459923-1553450268=:2526--

