X-GM-THRID: 6672001868710805504
X-Received: by 2002:a5d:9506:: with SMTP id d6mr1368712iom.22.1553629417841;
        Tue, 26 Mar 2019 12:43:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:455f:: with SMTP id y92ls2831046ita.1.canary-gmail; Tue,
 26 Mar 2019 12:43:36 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxGorwsWNs3AZHcgnzfQw4R9Oyd2rWThBb/2iqudgJPfurtVZiOawZnTCODfgSkBvYulH4+
X-Received: by 2002:a24:64c9:: with SMTP id t192mr227853itc.2.1553629416613;
        Tue, 26 Mar 2019 12:43:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553629416; cv=none;
        d=google.com; s=arc-20160816;
        b=Vf+hctNCglU/AUBXj4wFWOyWS3CsIr+rlxXUan3N84zZBOGdpEWoJZjMtlW/b3LOXl
         WIWXek8b4UOJUQ7Ne43oz0eCcN8O8yVpZM02MxnGZbUAjo6eodfQl0yp/XpgAQ9Q2feI
         pUYc6Wykbgi+macHHnrB8c9wcvwmOKWsvc+6gH0kySBb5Jcj2EUBUfEL/pG8U0H10fJw
         FDl28BUgFPSIQcIslPPbMzIkG/Kc7C2ts1+PPr3Q9OkqojjIs+tF0MTbGrNmfoegESSW
         nFz7Us5vFbNiaELoVfJevXq+oeDVhyaiEx3bVu5KAg2eS3o2tHH4z7rxPaQCE4rSfSps
         PkMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=jJoAwZBLiurgU5eZtj/6vde+NeG6zBiQkKCJbhcP8UA=;
        b=mEsCwy/LpDLSu8Hb2DknwQaM8H4PeDJgG/417rVBb4V/GiroVj0wcNsrCdkSsSx5GW
         /+I3j+Gx+bmNCeatSzkVu3QPCi5LVzsIVz5V6AgrlcQccZ+ldcvlDvcWkmvzM7vrJ6IT
         4JWKqAwR2bsvGTVFHS0r70T+CVK3oKUiXrzK1tWQRk3D+7r8dTaHfj0LrhAx5q3INujc
         5zHPWaloGc4uY3NbTPGhJDO/X0NASPu9LJGPmjVFOB4IpzLQwMnvcYyUFPQqJRUY12VI
         qKDB47kCzhNEE1mva9xUtupHATs3oN/oBa2r+B9I32rCAUVBTRY/xIm1NjrbPi7ZnaWw
         vHjg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SfuzWS5D;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::22f as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-oi1-x22f.google.com (mail-oi1-x22f.google.com. [2607:f8b0:4864:20::22f])
        by gmr-mx.google.com with ESMTPS id 71si1037410ita.0.2019.03.26.12.43.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Mar 2019 12:43:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::22f as permitted sender) client-ip=2607:f8b0:4864:20::22f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SfuzWS5D;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::22f as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x22f.google.com with SMTP id 3so10934215oir.7
        for <outreachy-kernel@googlegroups.com>; Tue, 26 Mar 2019 12:43:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=jJoAwZBLiurgU5eZtj/6vde+NeG6zBiQkKCJbhcP8UA=;
        b=SfuzWS5DfMf+PVse/X6yj5nCOUfRifgdhGuCxSJwqoZbXVV4iDaOGTzPsyhIJ8k1mF
         6pfajQusr/OXhr1/MkP4NPnJqiMxnv+FvrRKktqBHEZcVyxB4n2VRQsCdUNB90TTtDPw
         0MKcmipRT7ncYd4qobATdUOYslHUHdq8sVJ+mg7NWdS2km3GU8rzYxG4QzJkKiXJ6tPx
         DrCZCmdmbc/AdyLmHBEWluzwy4EgW02X4fdLNzKV6XXzbLiR/ybabnKrMyVWvogFpuxz
         Z8eZGF/ZppDXnqEI6eAY1pzVUIL5ariCegjK/q9Mul8oqm8KCIvG/4csV8zn2GOfzWc0
         meqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=jJoAwZBLiurgU5eZtj/6vde+NeG6zBiQkKCJbhcP8UA=;
        b=ocZfI6/Ip9R3HZINCIDBaoF89cuc/LDI3Qm4izZN5AC6Ap0D9uO2LfRJYw6rPmrD1n
         VBQG2zJxbtZDrI8MXRv1nypquXlxpEOiSfeIN5dfYjP4wAV3MZ5v1UuvGfMx+p0pHG6p
         BEKFaQn0tBkGfBZnJ16k0keCm6sy7PMp7Y4k7QL36WsVvSaqzDv7ZnzfiK7Z8uVVWpvO
         ebGTRaw1KkudT2UI+4bZ6ZLgyNtWAs60BdY2EAfDH+98wJTmC1lm8DBHy8syFPDLi7JX
         U+KDh+aNV3izvkF1u1MQqOHdamdESqASLxLvIo+0xcekoed6/2+2up7BZNV6G09oW7tu
         Waug==
X-Gm-Message-State: APjAAAW6YAnWr7iOHDujY+05HgqoKuedIsGF7NXzTkN1gVgC5UF1CjAZ
	eE0AJ32BAK1dkNWFAsGqYd/iBKWWT9Sukn4i+pRNw7QE
X-Received: by 2002:aca:4a0a:: with SMTP id x10mr16457597oia.82.1553629416132;
 Tue, 26 Mar 2019 12:43:36 -0700 (PDT)
MIME-Version: 1.0
References: <20190324165433.95833-1-himadri18.07@gmail.com>
 <alpine.DEB.2.21.1903241812520.2526@hadrien> <CAPnhUpYSAaY0J6dRsQf2hMvMfUhvaSXqu+Vgt3aQ7g_mjGX8Hw@mail.gmail.com>
 <20190325014654.GC4540@pendragon.ideasonboard.com>
In-Reply-To: <20190325014654.GC4540@pendragon.ideasonboard.com>
From: Himadri Pandya <himadri18.07@gmail.com>
Date: Wed, 27 Mar 2019 01:13:27 +0530
Message-ID: <CAPnhUpaaXSAe4wPZZ=mpfQJZAR1MkNfU-0NbD7assXfmL3Tr9w@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: media: omap4iss: Use
 list_entry instead of container_of
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Julia Lawall <julia.lawall@lip6.fr>, mchehab@kernel.org, 
	Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="0000000000007613b40585048997"

--0000000000007613b40585048997
Content-Type: text/plain; charset="UTF-8"

On Mon, Mar 25, 2019 at 7:17 AM Laurent Pinchart <
laurent.pinchart@ideasonboard.com> wrote:

> Hello Himadri,
>
> On Sun, Mar 24, 2019 at 11:19:54PM +0530, Himadri Pandya wrote:
> > On Sun, Mar 24, 2019 at 10:48 PM Julia Lawall <julia.lawall@lip6.fr>
> wrote:
> > > On Sun, 24 Mar 2019, Himadri Pandya wrote:
> > >> Use list_entry instead of container_of for lists iss_buffer and
> > >> iss_video.
> > >>
> > >> Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
> > >> ---
> > >>  drivers/staging/media/omap4iss/iss_video.h | 4 ++--
> > >>  1 file changed, 2 insertions(+), 2 deletions(-)
> > >>
> > >> diff --git a/drivers/staging/media/omap4iss/iss_video.h
> b/drivers/staging/media/omap4iss/iss_video.h
> > >> index f22489edb562..e8d27b7ac329 100644
> > >> --- a/drivers/staging/media/omap4iss/iss_video.h
> > >> +++ b/drivers/staging/media/omap4iss/iss_video.h
> > >> @@ -118,7 +118,7 @@ struct iss_buffer {
> > >>       dma_addr_t iss_addr;
> > >>  };
> > >>
> > >> -#define to_iss_buffer(buf)   container_of(buf, struct iss_buffer, vb)
> > >> +#define to_iss_buffer(buf)   list_entry(buf, struct iss_buffer, vb)
> > >
> > > Actually, this macro is no longer used.  Perhaps someone else converted
> > > the uses to use the proper list operations and forgot to drop the macro
> > > definition.
> >
> > Then should I send a patch to drop these macros?
>
> It would be better to modify the to_iss_buffer macro to convert from a
> vb2_buffer to a iss_buffer, and use it where the driver currently uses
> container_of directly.
>
>
I am sorry but I am not sure if I understand what you are suggesting
correctly.

to_iss_buffer is defined as:
#define to_iss_buffer(buf)   container_of(buf, struct iss_buffer, vb)

And it is not used. Instead, container_of is used directly
static void iss_video_buf_cleanup(struct vb2_buffer *vb)
{
struct vb2_v4l2_buffer *vbuf = to_vb2_v4l2_buffer(vb);
struct iss_buffer *buffer = container_of(vbuf, struct iss_buffer, vb);
        ...
}

static int iss_video_buf_prepare(struct vb2_buffer *vb)
{
struct vb2_v4l2_buffer *vbuf = to_vb2_v4l2_buffer(vb);
struct iss_video_fh *vfh = vb2_get_drv_priv(vb->vb2_queue);
struct iss_buffer *buffer = container_of(vbuf, struct iss_buffer, vb);
        ...
}

static void iss_video_buf_queue(struct vb2_buffer *vb)
{
struct vb2_v4l2_buffer *vbuf = to_vb2_v4l2_buffer(vb);
struct iss_video_fh *vfh = vb2_get_drv_priv(vb->vb2_queue);
struct iss_video *video = vfh->video;
struct iss_buffer *buffer = container_of(vbuf, struct iss_buffer, vb);
        ...
}


If I understand it correctly, these usages are converting vb2_buffer to
iss_buffer. Which could be done by using the to_iss_buffer(vbuf) as well.
Why is this macro no longer used? I also don't understand what modification
you are suggesting. Can you please elaborate?

Thank you.

- Himadri



> > >>  enum iss_video_dmaqueue_flags {
> > >>       /* Set if DMA queue becomes empty when
> ISS_PIPELINE_STREAM_CONTINUOUS */
> > >> @@ -170,7 +170,7 @@ struct iss_video {
> > >>       const struct iss_video_operations *ops;
> > >>  };
> > >>
> > >> -#define to_iss_video(vdev)   container_of(vdev, struct iss_video,
> video)
> > >> +#define to_iss_video(vdev)   list_entry(vdev, struct iss_video,
> video)
> > >
> > > This doesn't involve a list.  Nor does the previous one.  To use
> > > list_entry, the third argument should be the name of a field that has
> type
> > > list_head.
> >
> > Understood. Thank you.
> >
> > >>  struct iss_video_fh {
> > >>       struct v4l2_fh vfh;
>
> --
> Regards,
>
> Laurent Pinchart
>

--0000000000007613b40585048997
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div di=
r=3D"ltr"><br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Mon, Mar 25, 2019 at 7:17 AM Laurent Pinchart &lt;<a hre=
f=3D"mailto:laurent.pinchart@ideasonboard.com">laurent.pinchart@ideasonboar=
d.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex">Hello Himadri,<br>
<br>
On Sun, Mar 24, 2019 at 11:19:54PM +0530, Himadri Pandya wrote:<br>
&gt; On Sun, Mar 24, 2019 at 10:48 PM Julia Lawall &lt;<a href=3D"mailto:ju=
lia.lawall@lip6.fr" target=3D"_blank">julia.lawall@lip6.fr</a>&gt; wrote:<b=
r>
&gt; &gt; On Sun, 24 Mar 2019, Himadri Pandya wrote:<br>
&gt; &gt;&gt; Use list_entry instead of container_of for lists iss_buffer a=
nd<br>
&gt; &gt;&gt; iss_video.<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; Signed-off-by: Himadri Pandya &lt;<a href=3D"mailto:himadri18=
.07@gmail.com" target=3D"_blank">himadri18.07@gmail.com</a>&gt;<br>
&gt; &gt;&gt; ---<br>
&gt; &gt;&gt;=C2=A0 drivers/staging/media/omap4iss/iss_video.h | 4 ++--<br>
&gt; &gt;&gt;=C2=A0 1 file changed, 2 insertions(+), 2 deletions(-)<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; diff --git a/drivers/staging/media/omap4iss/iss_video.h b/dri=
vers/staging/media/omap4iss/iss_video.h<br>
&gt; &gt;&gt; index f22489edb562..e8d27b7ac329 100644<br>
&gt; &gt;&gt; --- a/drivers/staging/media/omap4iss/iss_video.h<br>
&gt; &gt;&gt; +++ b/drivers/staging/media/omap4iss/iss_video.h<br>
&gt; &gt;&gt; @@ -118,7 +118,7 @@ struct iss_buffer {<br>
&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0dma_addr_t iss_addr;<br>
&gt; &gt;&gt;=C2=A0 };<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; -#define to_iss_buffer(buf)=C2=A0 =C2=A0container_of(buf, str=
uct iss_buffer, vb)<br>
&gt; &gt;&gt; +#define to_iss_buffer(buf)=C2=A0 =C2=A0list_entry(buf, struc=
t iss_buffer, vb)<br>
&gt; &gt; <br>
&gt; &gt; Actually, this macro is no longer used.=C2=A0 Perhaps someone els=
e converted<br>
&gt; &gt; the uses to use the proper list operations and forgot to drop the=
 macro<br>
&gt; &gt; definition.<br>
&gt; <br>
&gt; Then should I send a patch to drop these macros?<br>
<br>
It would be better to modify the to_iss_buffer macro to convert from a<br>
vb2_buffer to a iss_buffer, and use it where the driver currently uses<br>
container_of directly.<br>
<br></blockquote><div><br></div><div>I am sorry but I am not sure if I unde=
rstand what you are suggesting correctly.=C2=A0</div><div><br></div><div>to=
_iss_buffer is defined as:</div><div><font color=3D"#ff00ff">#define to_iss=
_buffer(buf)=C2=A0 =C2=A0container_of(buf, struct iss_buffer, vb)</font><br=
></div><div><br></div><div>And it is not used. Instead, container_of is use=
d directly</div><div><span style=3D"color:rgb(0,0,255)">static void iss_vid=
eo_buf_cleanup(struct vb2_buffer *vb)</span><br></div><div><font color=3D"#=
0000ff">{</font></div><div><font color=3D"#0000ff"><span style=3D"white-spa=
ce:pre">	</span>struct vb2_v4l2_buffer *vbuf =3D to_vb2_v4l2_buffer(vb);</f=
ont></div><div><span style=3D"color:rgb(0,0,255);white-space:pre">	</span><=
font color=3D"#ff00ff">struct iss_buffer *buffer =3D container_of(vbuf, str=
uct iss_buffer, vb);</font></div><div><font color=3D"#0000ff">=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 ...</font></div><div><span style=3D"color:rgb(0,0,255)">}</s=
pan></div><div><span style=3D"color:rgb(0,0,255)"><br></span></div><div><di=
v><font color=3D"#0000ff">static int iss_video_buf_prepare(struct vb2_buffe=
r *vb)</font></div><div><font color=3D"#0000ff">{</font></div><div><font co=
lor=3D"#0000ff"><span style=3D"white-space:pre">	</span>struct vb2_v4l2_buf=
fer *vbuf =3D to_vb2_v4l2_buffer(vb);</font></div><div><font color=3D"#0000=
ff"><span style=3D"white-space:pre">	</span>struct iss_video_fh *vfh =3D vb=
2_get_drv_priv(vb-&gt;vb2_queue);</font></div><div><span style=3D"color:rgb=
(0,0,255);white-space:pre">	</span><font color=3D"#ff00ff">struct iss_buffe=
r *buffer =3D container_of(vbuf, struct iss_buffer, vb);</font></div></div>=
<div><font color=3D"#0000ff">=C2=A0 =C2=A0 =C2=A0 =C2=A0 ...</font></div><d=
iv><font color=3D"#0000ff">}</font></div><div><font color=3D"#0000ff"><br><=
/font></div><div><div style=3D"color:rgb(0,0,255)">static void iss_video_bu=
f_queue(struct vb2_buffer *vb)</div><div style=3D"color:rgb(0,0,255)">{</di=
v><div style=3D"color:rgb(0,0,255)"><span style=3D"white-space:pre">	</span=
>struct vb2_v4l2_buffer *vbuf =3D to_vb2_v4l2_buffer(vb);</div><div style=
=3D"color:rgb(0,0,255)"><span style=3D"white-space:pre">	</span>struct iss_=
video_fh *vfh =3D vb2_get_drv_priv(vb-&gt;vb2_queue);</div><div style=3D"co=
lor:rgb(0,0,255)"><span style=3D"white-space:pre">	</span>struct iss_video =
*video =3D vfh-&gt;video;</div><div style=3D""><span style=3D"color:rgb(0,0=
,255);white-space:pre">	</span><font color=3D"#ff00ff">struct iss_buffer *b=
uffer =3D container_of(vbuf, struct iss_buffer, vb);</font></div><div style=
=3D"color:rgb(0,0,255)">=C2=A0 =C2=A0 =C2=A0 =C2=A0 ...</div><div style=3D"=
color:rgb(0,0,255)">}</div></div><div><font color=3D"#0000ff"><br></font></=
div><div><br></div><div>If I understand it correctly, these usages are conv=
erting vb2_buffer to iss_buffer. Which could be done by using the <font col=
or=3D"#ff00ff">to_iss_buffer(vbuf)</font> as well. Why is this macro no lon=
ger used? I also don&#39;t understand what modification you are suggesting.=
 Can you please elaborate?</div><div><br></div><div>Thank you.</div><div><b=
r></div><div>- Himadri</div><div><br></div><div>=C2=A0</div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex">
&gt; &gt;&gt;=C2=A0 enum iss_video_dmaqueue_flags {<br>
&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0/* Set if DMA queue becomes empty w=
hen ISS_PIPELINE_STREAM_CONTINUOUS */<br>
&gt; &gt;&gt; @@ -170,7 +170,7 @@ struct iss_video {<br>
&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0const struct iss_video_operations *=
ops;<br>
&gt; &gt;&gt;=C2=A0 };<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; -#define to_iss_video(vdev)=C2=A0 =C2=A0container_of(vdev, st=
ruct iss_video, video)<br>
&gt; &gt;&gt; +#define to_iss_video(vdev)=C2=A0 =C2=A0list_entry(vdev, stru=
ct iss_video, video)<br>
&gt; &gt; <br>
&gt; &gt; This doesn&#39;t involve a list.=C2=A0 Nor does the previous one.=
=C2=A0 To use<br>
&gt; &gt; list_entry, the third argument should be the name of a field that=
 has type<br>
&gt; &gt; list_head.<br>
&gt; <br>
&gt; Understood. Thank you.<br>
&gt; <br>
&gt; &gt;&gt;=C2=A0 struct iss_video_fh {<br>
&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct v4l2_fh vfh;<br>
<br>
-- <br>
Regards,<br>
<br>
Laurent Pinchart<br>
</blockquote></div></div></div></div></div>

--0000000000007613b40585048997--

