X-GM-THRID: 6675008112137601024
X-Received: by 2002:ac2:4856:: with SMTP id 22mr703485lfy.12.1554472370274;
        Fri, 05 Apr 2019 06:52:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:998e:: with SMTP id w14ls1090068lji.14.gmail; Fri, 05
 Apr 2019 06:52:49 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxcmF+TRcsHXxFtW5eZXxgcGISYSnIe3dv+qkA+qQsrdltlB+AXoakzkqZYlfJDRaJEzbaG
X-Received: by 2002:a2e:9659:: with SMTP id z25mr782138ljh.9.1554472368958;
        Fri, 05 Apr 2019 06:52:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554472368; cv=none;
        d=google.com; s=arc-20160816;
        b=sEnvf2YjZ1JvvYu72oKjZUq2PQeHEh99bW1E/KrRG1cmrGcm/Yhdd1/J6pNt1QV2MF
         fIJcbRCBJKoWOzFY6x4Mpsu2oDW6/sLXlUq93xwV3ipXdDzOhVLKpN61gXL40Ale7rSn
         5bY92hDy6sWwJj3KhuDOsS+BhDJNYR0iTZeGgQvAvI80Olq3VME9UL3ZvT+nsP5KCQzS
         mWIQKXOwq+m3TEYR7pPnsL5zxCAXxn9dgT/81zB7NPvUyDOycsVO59euY1L02ypUnyB0
         MMCEt8SfYT4HfcnBQZXuLlRq7jKUBSzobtyU7QbswcZJ65j+rsx546CEPpl2anXnRv1W
         kEgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=oX2rlBjsr2ysUUyQOIBVLu6M3IIu6dggJ1fL+atFHW4=;
        b=r5rIgQq3dTideiG+Tm7NzXFqGU2xZghvVJZp1TTxbbxwYjBeU2wBGFU2nCMYU3GCfg
         7yMzeyiKIvU6c+QYog+ItFKNFMHWm+4k9s/d6yMV4EBjJ1ki+q0Hc1MD3Mn0JW/s5oM7
         KjQ42WOEizVz6mJtOtxs9uuP2ckGXJeO+drB7V08ru45uz/QQyHhBl0v4G0r2qUGouND
         OAdYbBxS3+3XV5sDAD0VGyM/JqPaM8CD6Y3xwlbdXIdwPHvMu8cQtgAdJgBI8TG9AxH0
         vRE3g/kJ14eMgnUCvH1XR/4TKzGARKtVba+0pJsUV8JOmCKC3HjbTqjqcQgb83k3AlOe
         wz+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AqRB+TxE;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2a00:1450:4864:20::436 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com. [2a00:1450:4864:20::436])
        by gmr-mx.google.com with ESMTPS id h21si991773lfm.4.2019.04.05.06.52.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 05 Apr 2019 06:52:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2a00:1450:4864:20::436 as permitted sender) client-ip=2a00:1450:4864:20::436;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AqRB+TxE;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2a00:1450:4864:20::436 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x436.google.com with SMTP id p10so8160758wrq.1
        for <outreachy-kernel@googlegroups.com>; Fri, 05 Apr 2019 06:52:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=oX2rlBjsr2ysUUyQOIBVLu6M3IIu6dggJ1fL+atFHW4=;
        b=AqRB+TxEe7CqCpqAy393xaweh0lmN9VSn+C1TJZRuKiiqj3G5J9486j/NBHWpfQnJC
         yMMUk3UXoWYpWapixHZqL9IYip/IEO2AM9UUjkF9MOYWIwqQJSmcszVTXtSHur8ZPTlU
         eFcAQd7TBrfU5X7AL5QS5WGK6fToFGDl0LqopeM7hoAS7UH3FRW+FwAU4C+Mq/YT73a5
         rxZb8R+ChIJEmFfl8rXsPuydVNgnvyvPBut0gUDsbfR0lp7FCY5WjP/OZ3sWjEjW7qbV
         x8aYctoIYgww9ngTSDl5TP9Az8x3U5MajhuUs2BTzH0rYYhsNVQh/G+h1hzz5pGoFSqP
         zxAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=oX2rlBjsr2ysUUyQOIBVLu6M3IIu6dggJ1fL+atFHW4=;
        b=lI4f5/LiDQ4L3u2y8pUpdD6HkeFTGDz6bvAl0pmI1mtuRYwy+l+GdZm87qppFWcqZn
         g5Fa1UGbMa2m5qV8ZxRgBCFNEhlJ5/qyV2F+Ayi1P4oLHc2f2RM+XyHED5EQHow6176D
         26t+rjEhoN4ihXdZDdNFMQqlzC7byfRaLeEKDPrWMvYtas55psVAPLSQNtaYYPv0YtKE
         JbI5OS0tEZLN9n4+NYKaEywhD+kOwUQ45lzN8xcKNBXdnKmWfWEVLukBI3SyXF7I6mqz
         dKgb8+HDRAygrKXUWbusd7vF5eHGDXu6D60OX+Wd96r3VlYTEIZkcJ8cgOovgBMhuWSq
         vxoQ==
X-Gm-Message-State: APjAAAVg6xOdCobnkwYe5WVN8hT4toqfcKXuuC+mlgD9tkMrpo4MV6eP
	MUZWnaFFzF17wjeuyUNnrOekHLmVIioXEJLVMoE=
X-Received: by 2002:a5d:6a4f:: with SMTP id t15mr8569406wrw.156.1554472368507;
 Fri, 05 Apr 2019 06:52:48 -0700 (PDT)
MIME-Version: 1.0
References: <20190403153758.34743-1-himadri18.07@gmail.com>
In-Reply-To: <20190403153758.34743-1-himadri18.07@gmail.com>
From: Himadri Pandya <himadri18.07@gmail.com>
Date: Fri, 5 Apr 2019 19:22:36 +0530
Message-ID: <CAPnhUpbxpdCjAXbjt+SpgNUkwas_pKMYhnX4nzmLLV2s7Gvmsw@mail.gmail.com>
Subject: Re: [PATCH v2] staging: media: omap4iss: redefine to_iss_buffer()
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, mchehab@kernel.org, 
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="0000000000005690650585c8cd75"

--0000000000005690650585c8cd75
Content-Type: text/plain; charset="UTF-8"

On Wed, 3 Apr, 2019, 9:08 PM Himadri Pandya, <himadri18.07@gmail.com> wrote:

> Currently macro to_iss_buffer converts vb2_v4l2_buffer into iss_buffer.
> But the applications needs the conversion from vb2_buffer to iss_bufffer.
> So they need to convert vb2_buffer into vb2_v4l2_buffer first and then
> vb2_v4l2_buffer into iss_buffer. Redefining to_iss_buffer to convert
> from vb2_buffer into iss_buffer directly helps the situation.
>
> This patch redefines the former to_iss_buffer macro into an inline
> function to perform above task and uses it in corresponding function.
>
> Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
> ---
> Changes in V2:
>         - Merge two patches into one
>         - Optimise the new definition of to_iss_buffer
> ---
>  drivers/staging/media/omap4iss/iss_video.c | 3 +--
>  drivers/staging/media/omap4iss/iss_video.h | 5 ++++-
>  2 files changed, 5 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/media/omap4iss/iss_video.c
> b/drivers/staging/media/omap4iss/iss_video.c
> index c2c5a9cd8642..c99611deed6b 100644
> --- a/drivers/staging/media/omap4iss/iss_video.c
> +++ b/drivers/staging/media/omap4iss/iss_video.c
> @@ -318,8 +318,7 @@ static int iss_video_queue_setup(struct vb2_queue *vq,
>
>  static void iss_video_buf_cleanup(struct vb2_buffer *vb)
>  {
> -       struct vb2_v4l2_buffer *vbuf = to_vb2_v4l2_buffer(vb);
> -       struct iss_buffer *buffer = container_of(vbuf, struct iss_buffer,
> vb);
> +       struct iss_buffer *buffer = to_iss_buffer(vb);
>
>         if (buffer->iss_addr)
>                 buffer->iss_addr = 0;
> diff --git a/drivers/staging/media/omap4iss/iss_video.h
> b/drivers/staging/media/omap4iss/iss_video.h
> index f22489edb562..f5018f4742fc 100644
> --- a/drivers/staging/media/omap4iss/iss_video.h
> +++ b/drivers/staging/media/omap4iss/iss_video.h
> @@ -118,7 +118,10 @@ struct iss_buffer {
>         dma_addr_t iss_addr;
>  };
>
> -#define to_iss_buffer(buf)     container_of(buf, struct iss_buffer, vb)
> +static inline struct iss_buffer *to_iss_buffer(struct vb2_buffer *vb)
> +{
> +       return container_of(vb, struct iss_buffer, vb.vb2_buf);
> +}
>
>  enum iss_video_dmaqueue_flags {
>         /* Set if DMA queue becomes empty when
> ISS_PIPELINE_STREAM_CONTINUOUS */
> --
> 2.17.1


Please let me know if the patch needs any further improvements.

Thank you.

- Himadri


>
>

--0000000000005690650585c8cd75
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Wed, 3 Apr, 2019, 9:08 PM Himadri Pandya, &lt;<a hr=
ef=3D"mailto:himadri18.07@gmail.com">himadri18.07@gmail.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;borde=
r-left:1px #ccc solid;padding-left:1ex">Currently macro to_iss_buffer conve=
rts vb2_v4l2_buffer into iss_buffer.<br>
But the applications needs the conversion from vb2_buffer to iss_bufffer.<b=
r>
So they need to convert vb2_buffer into vb2_v4l2_buffer first and then<br>
vb2_v4l2_buffer into iss_buffer. Redefining to_iss_buffer to convert<br>
from vb2_buffer into iss_buffer directly helps the situation.<br>
<br>
This patch redefines the former to_iss_buffer macro into an inline<br>
function to perform above task and uses it in corresponding function.<br>
<br>
Signed-off-by: Himadri Pandya &lt;<a href=3D"mailto:himadri18.07@gmail.com"=
 target=3D"_blank" rel=3D"noreferrer">himadri18.07@gmail.com</a>&gt;<br>
---<br>
Changes in V2:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 - Merge two patches into one<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 - Optimise the new definition of to_iss_buffer<=
br>
---<br>
=C2=A0drivers/staging/media/omap4iss/iss_video.c | 3 +--<br>
=C2=A0drivers/staging/media/omap4iss/iss_video.h | 5 ++++-<br>
=C2=A02 files changed, 5 insertions(+), 3 deletions(-)<br>
<br>
diff --git a/drivers/staging/media/omap4iss/iss_video.c b/drivers/staging/m=
edia/omap4iss/iss_video.c<br>
index c2c5a9cd8642..c99611deed6b 100644<br>
--- a/drivers/staging/media/omap4iss/iss_video.c<br>
+++ b/drivers/staging/media/omap4iss/iss_video.c<br>
@@ -318,8 +318,7 @@ static int iss_video_queue_setup(struct vb2_queue *vq,<=
br>
<br>
=C2=A0static void iss_video_buf_cleanup(struct vb2_buffer *vb)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0struct vb2_v4l2_buffer *vbuf =3D to_vb2_v4l2_bu=
ffer(vb);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0struct iss_buffer *buffer =3D container_of(vbuf=
, struct iss_buffer, vb);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct iss_buffer *buffer =3D to_iss_buffer(vb)=
;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (buffer-&gt;iss_addr)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 buffer-&gt;iss_addr=
 =3D 0;<br>
diff --git a/drivers/staging/media/omap4iss/iss_video.h b/drivers/staging/m=
edia/omap4iss/iss_video.h<br>
index f22489edb562..f5018f4742fc 100644<br>
--- a/drivers/staging/media/omap4iss/iss_video.h<br>
+++ b/drivers/staging/media/omap4iss/iss_video.h<br>
@@ -118,7 +118,10 @@ struct iss_buffer {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 dma_addr_t iss_addr;<br>
=C2=A0};<br>
<br>
-#define to_iss_buffer(buf)=C2=A0 =C2=A0 =C2=A0container_of(buf, struct iss=
_buffer, vb)<br>
+static inline struct iss_buffer *to_iss_buffer(struct vb2_buffer *vb)<br>
+{<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0return container_of(vb, struct iss_buffer, vb.v=
b2_buf);<br>
+}<br>
<br>
=C2=A0enum iss_video_dmaqueue_flags {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /* Set if DMA queue becomes empty when ISS_PIPE=
LINE_STREAM_CONTINUOUS */<br>
-- <br>
2.17.1</blockquote></div></div><div dir=3D"auto"><br></div><div dir=3D"auto=
"><div dir=3D"auto" style=3D"font-family:sans-serif">Please let me know if =
the patch needs any further improvements.</div><div dir=3D"auto" style=3D"f=
ont-family:sans-serif"><br></div><div dir=3D"auto" style=3D"font-family:san=
s-serif">Thank you.</div><div dir=3D"auto" style=3D"font-family:sans-serif"=
><br></div><div dir=3D"auto" style=3D"font-family:sans-serif">- Himadri</di=
v></div><div dir=3D"auto"><br></div><div dir=3D"auto"></div><div dir=3D"aut=
o"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
</blockquote><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;b=
order-left:1px #ccc solid;padding-left:1ex"><br></blockquote></div></div></=
div>

--0000000000005690650585c8cd75--

