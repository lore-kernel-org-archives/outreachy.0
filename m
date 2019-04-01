X-GM-THRID: 6672001868710805504
X-Received: by 2002:a9f:35c4:: with SMTP id u4mr7968511uad.23.1554144858129;
        Mon, 01 Apr 2019 11:54:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9f:2743:: with SMTP id a61ls1785380uaa.0.gmail; Mon, 01 Apr
 2019 11:54:17 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwQPscEw7aylx/eNT1JLPAZ2vmOuoHELZ5mcBrDCV+YeJQCFIE0ZeiiNalkxf5bENFl9sad
X-Received: by 2002:a9f:28c9:: with SMTP id d67mr847636uad.7.1554144857288;
        Mon, 01 Apr 2019 11:54:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554144857; cv=none;
        d=google.com; s=arc-20160816;
        b=l/pyNdl8CHl7835lRi5+YJSOrV7PnpOQVDAExzOHm4CGdkLYGtbY7sd3434YT+BCks
         3kvI0UE6XV/IYxds1azjZXEcVEp0jcL+Ok4CdieSopl13GtkPjwUrOKW/WAqhZekYai3
         URxE+wFKUiMApdoEY3bzfrWyQtucXUJ5VwVMve3T9HavIt3kzaoCtxBdv4bGyzoenFFE
         kTqypzlVKhSE3Kkdqji9auSptWfXxskeZ9HTr1bMFeoXENUdFf4L58MVB4MqoUxvMth7
         ouuUzoh5CIn1lrrbF8ob0GsFQ4QUvPoqKjg8yycH7Wss9mqWKcamlNv8YpfdytPL6smV
         BIiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=SF9+Z3pLW2Indr3KdAMvONaCQK7Fs1YEsAjnWY3XDUA=;
        b=WZ03FVyCgUDZAap5JWv7wpjYNZrEq5V9WGMYS9I9QpWBXBUOs9LUZR2zmD/BJ8nH61
         HJI6IKsOsDgwkSa9bqo3C+DsRod9P+XeCiugImyZ0fL7ITWwTr0P3mOfJd60JIa4I/vh
         vl+I56nMHfoeVzXLDX7WsNv9x12w82usvZUkNDHS+y4fw86WKiQinbDoI6A5dk+aYUyU
         ymLa0fcy1JDKt2DwfVM8S+5pdAW7vWmo5FDgNmaVC0mSjVF3/uoN6SyklhwKzS0ktbpc
         zkAzpJLrRj5ULUPBKNb0o2Mbd6UPoCN1VS2achb0BmpdRw0/E0EgqHGlOkRwtYj1Lg2I
         PPsA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lt4hGceI;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com. [2607:f8b0:4864:20::241])
        by gmr-mx.google.com with ESMTPS id e142si430927vsd.2.2019.04.01.11.54.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Apr 2019 11:54:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) client-ip=2607:f8b0:4864:20::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lt4hGceI;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x241.google.com with SMTP id j132so8244908oib.2
        for <outreachy-kernel@googlegroups.com>; Mon, 01 Apr 2019 11:54:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=SF9+Z3pLW2Indr3KdAMvONaCQK7Fs1YEsAjnWY3XDUA=;
        b=lt4hGceIxWWWjeGIzlzt7nu5J7n+In0S09lH1XcukNsUoChJ9o/20Wr5Off2JbO5jf
         63U5SVGXaTtso5qa8RrqhZ2tRDhpRue85OaWo6i++U4AxYfmLMHwvINksOAhehJqJ2gg
         mBmTbIMozWC8FNmGmKzdCcgY/OjU6wc3f/OCdUBSjIaNuecmdZ4Jdrsyekbi9F2rf9Bk
         IDlbGLHo53/3jgJk6BiXOYBwwztO4QUQeKRp1x/aiXPASG2D37a+3aOGDJI6EeTPuV0N
         lZdcXoXeTJU72xiVpQKhJoJ8ozfD+JwZ4J8aGX5oHzILcq4dmGbv/TeR86U3tkzjXiTd
         qlSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=SF9+Z3pLW2Indr3KdAMvONaCQK7Fs1YEsAjnWY3XDUA=;
        b=h7rBWQEIJlLEA55CIqrEA4YPZm8AR7Ev4Xxtx2lM2jb+cIrehE62xx3fmYfSJCT6MG
         x12n3YNJmbqQGJMsQF/UpGAY+DsH/YgVsLWRG06LpdBumg/jBB/ycUYb4sBXFJoXmW7e
         jS1fc+9iFqyI08xgmvGorxBFa1XrzVvo5weEg1ausQvkgJmTvDzGomXVznvgVvOzvXM8
         ysMN/l6U72czO84KePkeJB+Px+qaDyLqtST34hEUezY8Giy/iMSUZLk5VI6cdHrjq0HI
         rT6LB3xPXW6qWLTa+5vodGupMzc7cYk19BulWVrMb6gpSkDqH4bMy8tkDPlcINm+RTzb
         ZW3A==
X-Gm-Message-State: APjAAAX5iy6Bne0Km1iPsjSCR67gQpD8A7JFCRHuhoviqjwJpaOiMO+c
	fyv7i/8xhJDMH7ufhSPfTEq4CsI3qVLsI7GXLG0=
X-Received: by 2002:aca:4a0a:: with SMTP id x10mr13786666oia.82.1554144856624;
 Mon, 01 Apr 2019 11:54:16 -0700 (PDT)
MIME-Version: 1.0
References: <20190324165433.95833-1-himadri18.07@gmail.com>
 <alpine.DEB.2.21.1903241812520.2526@hadrien> <CAPnhUpYSAaY0J6dRsQf2hMvMfUhvaSXqu+Vgt3aQ7g_mjGX8Hw@mail.gmail.com>
 <20190325014654.GC4540@pendragon.ideasonboard.com> <CAPnhUpaaXSAe4wPZZ=mpfQJZAR1MkNfU-0NbD7assXfmL3Tr9w@mail.gmail.com>
 <20190331082502.GA4781@pendragon.ideasonboard.com>
In-Reply-To: <20190331082502.GA4781@pendragon.ideasonboard.com>
From: Himadri Pandya <himadri18.07@gmail.com>
Date: Tue, 2 Apr 2019 00:24:04 +0530
Message-ID: <CAPnhUpbf5AWmV1OSoNF1j8wuMpooLMc2kaRrj3oo0NHOKdayvA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: media: omap4iss: Use
 list_entry instead of container_of
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Julia Lawall <julia.lawall@lip6.fr>, mchehab@kernel.org, 
	Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="0000000000001bd37905857c8c53"

--0000000000001bd37905857c8c53
Content-Type: text/plain; charset="UTF-8"

On Sun, Mar 31, 2019 at 3:38 PM Laurent Pinchart <
laurent.pinchart@ideasonboard.com> wrote:

> Hello Himadri,
>
> On Wed, Mar 27, 2019 at 01:13:27AM +0530, Himadri Pandya wrote:
> > On Mon, Mar 25, 2019 at 7:17 AM Laurent Pinchart wrote:
> > > On Sun, Mar 23, 2019 at 11:19:54PM +0530, Himadri Pandya wrote:
> > >> On Sun, Mar 24, 2019 at 10:48 PM Julia Lawall wrote:
> > >>> On Sun, 24 Mar 2019, Himadri Pandya wrote:
> > >>>> Use list_entry instead of container_of for lists iss_buffer and
> > >>>> iss_video.
> > >>>>
> > >>>> Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
> > >>>> ---
> > >>>>  drivers/staging/media/omap4iss/iss_video.h | 4 ++--
> > >>>>  1 file changed, 2 insertions(+), 2 deletions(-)
> > >>>>
> > >>>> diff --git a/drivers/staging/media/omap4iss/iss_video.h
> b/drivers/staging/media/omap4iss/iss_video.h
> > >>>> index f22489edb562..e8d27b7ac329 100644
> > >>>> --- a/drivers/staging/media/omap4iss/iss_video.h
> > >>>> +++ b/drivers/staging/media/omap4iss/iss_video.h
> > >>>> @@ -118,7 +118,7 @@ struct iss_buffer {
> > >>>>       dma_addr_t iss_addr;
> > >>>>  };
> > >>>>
> > >>>> -#define to_iss_buffer(buf)   container_of(buf, struct iss_buffer,
> vb)
> > >>>> +#define to_iss_buffer(buf)   list_entry(buf, struct iss_buffer, vb)
> > >>>
> > >>> Actually, this macro is no longer used.  Perhaps someone else
> converted
> > >>> the uses to use the proper list operations and forgot to drop the
> macro
> > >>> definition.
> > >>
> > >> Then should I send a patch to drop these macros?
> > >
> > > It would be better to modify the to_iss_buffer macro to convert from a
> > > vb2_buffer to a iss_buffer, and use it where the driver currently uses
> > > container_of directly.
> >
> > I am sorry but I am not sure if I understand what you are suggesting
> > correctly.
> >
> > to_iss_buffer is defined as:
> > #define to_iss_buffer(buf)   container_of(buf, struct iss_buffer, vb)
>
> to_iss_buffer() casts a vb2_v4l2_buffer pointer to a iss_buffer pointer.
>
> > And it is not used. Instead, container_of is used directly
> > static void iss_video_buf_cleanup(struct vb2_buffer *vb)
> > {
> > struct vb2_v4l2_buffer *vbuf = to_vb2_v4l2_buffer(vb);
> > struct iss_buffer *buffer = container_of(vbuf, struct iss_buffer, vb);
> >         ...
> > }
> >
> > static int iss_video_buf_prepare(struct vb2_buffer *vb)
> > {
> > struct vb2_v4l2_buffer *vbuf = to_vb2_v4l2_buffer(vb);
> > struct iss_video_fh *vfh = vb2_get_drv_priv(vb->vb2_queue);
> > struct iss_buffer *buffer = container_of(vbuf, struct iss_buffer, vb);
> >         ...
> > }
> >
> > static void iss_video_buf_queue(struct vb2_buffer *vb)
> > {
> > struct vb2_v4l2_buffer *vbuf = to_vb2_v4l2_buffer(vb);
> > struct iss_video_fh *vfh = vb2_get_drv_priv(vb->vb2_queue);
> > struct iss_video *video = vfh->video;
> > struct iss_buffer *buffer = container_of(vbuf, struct iss_buffer, vb);
> >         ...
> > }
>
> These three functions need to cast a vb2_buffer pointer to a iss_buffer
> pointer. They do so by first casting to vb2_v4l2_buffer, and then to
> iss_buffer with a direct use of container_of. It would be best to
> combine the two casts in a single to_iss_buffer macro and use it through
> the code.
>

Got it. Thank you.

- Himadri


> > If I understand it correctly, these usages are converting vb2_buffer to
> > iss_buffer. Which could be done by using the to_iss_buffer(vbuf) as
> well. Why
> > is this macro no longer used? I also don't understand what modification
> you are
> > suggesting. Can you please elaborate?
> >
> > >>>>  enum iss_video_dmaqueue_flags {
> > >>>>       /* Set if DMA queue becomes empty when
> ISS_PIPELINE_STREAM_CONTINUOUS */
> > >>>> @@ -170,7 +170,7 @@ struct iss_video {
> > >>>>       const struct iss_video_operations *ops;
> > >>>>  };
> > >>>>
> > >>>> -#define to_iss_video(vdev)   container_of(vdev, struct iss_video,
> video)
> > >>>> +#define to_iss_video(vdev)   list_entry(vdev, struct iss_video,
> video)
> > >>>
> > >>> This doesn't involve a list.  Nor does the previous one.  To use
> > >>> list_entry, the third argument should be the name of a field that has
> > >>> type list_head.
> > >>
> > >> Understood. Thank you.
> > >>
> > >>>>  struct iss_video_fh {
> > >>>>       struct v4l2_fh vfh;
>
> --
> Regards,
>
> Laurent Pinchart
>

--0000000000001bd37905857c8c53
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Sun, Mar 31, 2019 at 3:38 PM Laure=
nt Pinchart &lt;<a href=3D"mailto:laurent.pinchart@ideasonboard.com">lauren=
t.pinchart@ideasonboard.com</a>&gt; wrote:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex">Hello Himadri,<br>
<br>On Wed, Mar 27, 2019 at 01:13:27AM +0530, Himadri Pandya wrote:<br>&gt;=
 On Mon, Mar 25, 2019 at 7:17 AM Laurent Pinchart wrote:<br>&gt; &gt; On Su=
n, Mar 23, 2019 at 11:19:54PM +0530, Himadri Pandya wrote:<br>&gt; &gt;&gt;=
 On Sun, Mar 24, 2019 at 10:48 PM Julia Lawall wrote:<br>&gt; &gt;&gt;&gt; =
On Sun, 24 Mar 2019, Himadri Pandya wrote:<br>&gt; &gt;&gt;&gt;&gt; Use lis=
t_entry instead of container_of for lists iss_buffer and<br>&gt; &gt;&gt;&g=
t;&gt; iss_video.<br>&gt; &gt;&gt;&gt;&gt;<br>&gt; &gt;&gt;&gt;&gt; Signed-=
off-by: Himadri Pandya &lt;<a href=3D"mailto:himadri18.07@gmail.com" target=
=3D"_blank">himadri18.07@gmail.com</a>&gt;<br>&gt; &gt;&gt;&gt;&gt; ---<br>=
&gt; &gt;&gt;&gt;&gt;=C2=A0 drivers/staging/media/omap4iss/iss_video.h | 4 =
++--<br>&gt; &gt;&gt;&gt;&gt;=C2=A0 1 file changed, 2 insertions(+), 2 dele=
tions(-)<br>&gt; &gt;&gt;&gt;&gt;<br>&gt; &gt;&gt;&gt;&gt; diff --git a/dri=
vers/staging/media/omap4iss/iss_video.h b/drivers/staging/media/omap4iss/is=
s_video.h<br>&gt; &gt;&gt;&gt;&gt; index f22489edb562..e8d27b7ac329 100644<=
br>&gt; &gt;&gt;&gt;&gt; --- a/drivers/staging/media/omap4iss/iss_video.h<b=
r>&gt; &gt;&gt;&gt;&gt; +++ b/drivers/staging/media/omap4iss/iss_video.h<br=
>&gt; &gt;&gt;&gt;&gt; @@ -118,7 +118,7 @@ struct iss_buffer {<br>&gt; &gt;=
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0dma_addr_t iss_addr;<br>&gt; &gt;&gt=
;&gt;&gt;=C2=A0 };<br>&gt; &gt;&gt;&gt;&gt;<br>&gt; &gt;&gt;&gt;&gt; -#defi=
ne to_iss_buffer(buf)=C2=A0 =C2=A0container_of(buf, struct iss_buffer, vb)<=
br>&gt; &gt;&gt;&gt;&gt; +#define to_iss_buffer(buf)=C2=A0 =C2=A0list_entry=
(buf, struct iss_buffer, vb)<br>&gt; &gt;&gt;&gt;<br>&gt; &gt;&gt;&gt; Actu=
ally, this macro is no longer used.=C2=A0 Perhaps someone else converted<br=
>&gt; &gt;&gt;&gt; the uses to use the proper list operations and forgot to=
 drop the macro<br>&gt; &gt;&gt;&gt; definition.<br>&gt; &gt;&gt;<br>&gt; &=
gt;&gt; Then should I send a patch to drop these macros?<br>&gt; &gt; <br>&=
gt; &gt; It would be better to modify the to_iss_buffer macro to convert fr=
om a<br>&gt; &gt; vb2_buffer to a iss_buffer, and use it where the driver c=
urrently uses<br>&gt; &gt; container_of directly.<br>&gt; <br>&gt; I am sor=
ry but I am not sure if I understand what you are suggesting<br>&gt; correc=
tly.=C2=A0<br>&gt; <br>&gt; to_iss_buffer is defined as:<br>&gt; #define to=
_iss_buffer(buf)=C2=A0 =C2=A0container_of(buf, struct iss_buffer, vb)<br>
<br>to_iss_buffer() casts a vb2_v4l2_buffer pointer to a iss_buffer pointer=
.<br>
<br>&gt; And it is not used. Instead, container_of is used directly<br>&gt;=
 static void iss_video_buf_cleanup(struct vb2_buffer *vb)<br>&gt; {<br>&gt;=
 struct vb2_v4l2_buffer *vbuf =3D to_vb2_v4l2_buffer(vb);<br>&gt; struct is=
s_buffer *buffer =3D container_of(vbuf, struct iss_buffer, vb);<br>&gt; =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 ...<br>&gt; }<br>&gt; <br>&gt; static int iss_vide=
o_buf_prepare(struct vb2_buffer *vb)<br>&gt; {<br>&gt; struct vb2_v4l2_buff=
er *vbuf =3D to_vb2_v4l2_buffer(vb);<br>&gt; struct iss_video_fh *vfh =3D v=
b2_get_drv_priv(vb-&gt;vb2_queue);<br>&gt; struct iss_buffer *buffer =3D co=
ntainer_of(vbuf, struct iss_buffer, vb);<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 ...<br>&gt; }<br>&gt; <br>&gt; static void iss_video_buf_queue(struct v=
b2_buffer *vb)<br>&gt; {<br>&gt; struct vb2_v4l2_buffer *vbuf =3D to_vb2_v4=
l2_buffer(vb);<br>&gt; struct iss_video_fh *vfh =3D vb2_get_drv_priv(vb-&gt=
;vb2_queue);<br>&gt; struct iss_video *video =3D vfh-&gt;video;<br>&gt; str=
uct iss_buffer *buffer =3D container_of(vbuf, struct iss_buffer, vb);<br>&g=
t; =C2=A0 =C2=A0 =C2=A0 =C2=A0 ...<br>&gt; }<br>
<br>These three functions need to cast a vb2_buffer pointer to a iss_buffer=
<br>pointer. They do so by first casting to vb2_v4l2_buffer, and then to<br=
>iss_buffer with a direct use of container_of. It would be best to<br>combi=
ne the two casts in a single to_iss_buffer macro and use it through<br>the =
code.<br></blockquote><div><br></div><div>Got it. Thank you.</div><div><br>=
</div><div>- Himadri=C2=A0</div><div><br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex">
<br>&gt; If I understand it correctly, these usages are converting vb2_buff=
er to<br>&gt; iss_buffer. Which could be done by using the to_iss_buffer(vb=
uf) as well. Why<br>&gt; is this macro no longer used? I also don&#39;t und=
erstand what modification you are<br>&gt; suggesting. Can you please elabor=
ate?<br>&gt; <br>&gt; &gt;&gt;&gt;&gt;=C2=A0 enum iss_video_dmaqueue_flags =
{<br>&gt; &gt;&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0/* Set if DMA queue be=
comes empty when ISS_PIPELINE_STREAM_CONTINUOUS */<br>&gt; &gt;&gt;&gt;&gt;=
 @@ -170,7 +170,7 @@ struct iss_video {<br>&gt; &gt;&gt;&gt;&gt;=C2=A0 =C2=
=A0 =C2=A0 =C2=A0const struct iss_video_operations *ops;<br>&gt; &gt;&gt;&g=
t;&gt;=C2=A0 };<br>&gt; &gt;&gt;&gt;&gt;<br>&gt; &gt;&gt;&gt;&gt; -#define =
to_iss_video(vdev)=C2=A0 =C2=A0container_of(vdev, struct iss_video, video)<=
br>&gt; &gt;&gt;&gt;&gt; +#define to_iss_video(vdev)=C2=A0 =C2=A0list_entry=
(vdev, struct iss_video, video)<br>&gt; &gt;&gt;&gt;<br>&gt; &gt;&gt;&gt; T=
his doesn&#39;t involve a list.=C2=A0 Nor does the previous one.=C2=A0 To u=
se<br>&gt; &gt;&gt;&gt; list_entry, the third argument should be the name o=
f a field that has<br>&gt; &gt;&gt;&gt; type list_head.<br>&gt; &gt;&gt;<br=
>&gt; &gt;&gt; Understood. Thank you.<br>&gt; &gt;&gt;<br>&gt; &gt;&gt;&gt;=
&gt;=C2=A0 struct iss_video_fh {<br>&gt; &gt;&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=
=A0 =C2=A0struct v4l2_fh vfh;<br>
<br>-- <br>Regards,<br>
<br>Laurent Pinchart<br>
</blockquote></div></div>

--0000000000001bd37905857c8c53--

