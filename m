X-GM-THRID: 6672001868710805504
X-Received: by 2002:a81:a60c:: with SMTP id d12mr4775423ywh.3.1553960420053;
        Sat, 30 Mar 2019 08:40:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:b8c7:: with SMTP id g7ls1620272ybm.0.gmail; Sat, 30 Mar
 2019 08:40:19 -0700 (PDT)
X-Google-Smtp-Source: APXvYqySt38+GBJ+u4xQEc9TD7eks6lDDSzy8N7fwHXLgxFQruaiSqxajuJIw6//YcEGPWHmzBHf
X-Received: by 2002:a25:d383:: with SMTP id e125mr305301ybf.30.1553960419023;
        Sat, 30 Mar 2019 08:40:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553960419; cv=none;
        d=google.com; s=arc-20160816;
        b=WKqU7gYJ15LafpS5A4O8CPpuT0P4erJNPT95oXA36iMYkHUF9E5sQC4svoQzDqEBEm
         MSqb2REp0b6VsaR4Rlas2Frc0qqBNjE/FRs3uAhT5BkV4l99wzMAXOtvL1Xt81TLk8/P
         xKmiFkDOVWtnmMIOyFRNtIJXZXcQFVfk5b10aAxMK1pjkfXIWkFt79dZt0qXWIOezRTM
         4Y0c2xQG6BPMD/nsC+k5mw4lL7Mg0WmFTesq40xtMOUwUwXDz7zvEA0jS8TkK05FaeiT
         9LSgi7elAojyDTCy7h45HJCuaPImiisslApFmDW/Lh2T6F1kk/tFbctXD5CTj4mAToZC
         LO6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Z/TBKJIFpedbTMaFprFO3AlGY4B3tFvCyKPDpq1QdEw=;
        b=K7GZbyeGjXIN7SyvGEF7rv3kptl8vz5gmbmXt/jmNthN32jUZjnd0ar7gfnNFL0aWP
         hZuphBckoEmcGKydoIMi+v7xysPgTQxrkdKdQOk03KtlBTWibFtC9wpUpyvNSfcyHKmU
         /hw+8dfMX7LV2PgVZQwKZnObfOCNIjHd7oQc93lD9XqQv6DbXGH5mLZiCWrBUO/aEG+6
         L9gariwccqrxJvPwZjpUKzR1nHUjkqhJ5yh/dklRvj1DacDMbQqG4ddVBoZPUKrEt5gg
         Xyx1aD7fhTE90ogK67O4wk6mCvpbr80cVZWoRJDDMBWOvooh2DlpM5pkQ2mcrU+gT3+o
         Tovw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=W+VDrct5;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::22a as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-oi1-x22a.google.com (mail-oi1-x22a.google.com. [2607:f8b0:4864:20::22a])
        by gmr-mx.google.com with ESMTPS id e23si287553ybb.1.2019.03.30.08.40.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 08:40:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::22a as permitted sender) client-ip=2607:f8b0:4864:20::22a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=W+VDrct5;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::22a as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x22a.google.com with SMTP id l203so3348024oia.3
        for <outreachy-kernel@googlegroups.com>; Sat, 30 Mar 2019 08:40:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Z/TBKJIFpedbTMaFprFO3AlGY4B3tFvCyKPDpq1QdEw=;
        b=W+VDrct5pyNbI/mAlBquODZZRw3tTFySlXMeBl/8KMvoMi3wtCqF4nLAPA+Q4yvVbp
         476MXPj/ASLhKCdizImGPf3Lt4CQ4Ht2SNKymOVVi1eZXVZTVu1WO8U/zh8QJI8Y3lEa
         MKkRo5612kNDdDIpsPAAPNSOrVGQ8tOQIrqSRX2fmLo4TohFTQSK79qJmUvR/FZgKdDE
         n6DteqIf5jKWdsNFfsBP2jhDn0Ls4qt/BiklxiSTkDcLB+ViOsnBpWxU+jJZzPhEEyyN
         rJ3RlRa3CIvwLFoy3BuCVctS9aimQRYkYVqgJ3WSF1uopxRJTnx4cGXDv/KKbVx1jZ1d
         lIMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Z/TBKJIFpedbTMaFprFO3AlGY4B3tFvCyKPDpq1QdEw=;
        b=oZkcGDDzWwGtINP5UooIXsb14IrUmoPCeTCcsIcZVnA+v8fBfwCQgGcrwgut2qv6zM
         CBKTknOYctjyUrzX1PIMNepjoTDhgXnUgQM+ZLlmj/fHdMkLX8ldPYR3Wh6whX4xQwId
         P71nauPnEneOEg3yiMImNbo7PmyEAPmuMYXIumRmjNTwSB2RjkDcNDe+zh71VQNHj5D2
         cRDOch9W0cUVrpdXhgECbVCdydpZ/9uqy9z9urs6vJRC7iZLDQYKajODd3cDHzXEZZkb
         so9LGKJR7VU9VssMy9b0yhMU2u6qtgFJ9Rzk3JaNCs/SOc+3CT7W3xoH1RvPlFoghR7p
         OXHQ==
X-Gm-Message-State: APjAAAUso8cDqPXIZGLZkT/gfDax91ZyteZbAA1y35S5FmDfvXJWAbA0
	jEvopYgJOshZCDgr11c4NNfIBbnX7MZi4NxrqCQ=
X-Received: by 2002:aca:f189:: with SMTP id p131mr6829902oih.89.1553960418531;
 Sat, 30 Mar 2019 08:40:18 -0700 (PDT)
MIME-Version: 1.0
References: <20190324165433.95833-1-himadri18.07@gmail.com>
 <alpine.DEB.2.21.1903241812520.2526@hadrien> <CAPnhUpYSAaY0J6dRsQf2hMvMfUhvaSXqu+Vgt3aQ7g_mjGX8Hw@mail.gmail.com>
 <20190325014654.GC4540@pendragon.ideasonboard.com> <CAPnhUpaaXSAe4wPZZ=mpfQJZAR1MkNfU-0NbD7assXfmL3Tr9w@mail.gmail.com>
In-Reply-To: <CAPnhUpaaXSAe4wPZZ=mpfQJZAR1MkNfU-0NbD7assXfmL3Tr9w@mail.gmail.com>
From: Himadri Pandya <himadri18.07@gmail.com>
Date: Sat, 30 Mar 2019 21:10:04 +0530
Message-ID: <CAPnhUpauo5XwcCpmgXNm3F+nPNAE1r+sQd2LjQbrw4v00Sdzng@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: media: omap4iss: Use
 list_entry instead of container_of
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Julia Lawall <julia.lawall@lip6.fr>, mchehab@kernel.org, 
	Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000bde13b0585519a8e"

--000000000000bde13b0585519a8e
Content-Type: text/plain; charset="UTF-8"

On Wed, Mar 27, 2019 at 1:13 AM Himadri Pandya <himadri18.07@gmail.com>
wrote:

>
>
> On Mon, Mar 25, 2019 at 7:17 AM Laurent Pinchart <
> laurent.pinchart@ideasonboard.com> wrote:
>
>> Hello Himadri,
>>
>> On Sun, Mar 24, 2019 at 11:19:54PM +0530, Himadri Pandya wrote:
>> > On Sun, Mar 24, 2019 at 10:48 PM Julia Lawall <julia.lawall@lip6.fr>
>> wrote:
>> > > On Sun, 24 Mar 2019, Himadri Pandya wrote:
>> > >> Use list_entry instead of container_of for lists iss_buffer and
>> > >> iss_video.
>> > >>
>> > >> Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
>> > >> ---
>> > >>  drivers/staging/media/omap4iss/iss_video.h | 4 ++--
>> > >>  1 file changed, 2 insertions(+), 2 deletions(-)
>> > >>
>> > >> diff --git a/drivers/staging/media/omap4iss/iss_video.h
>> b/drivers/staging/media/omap4iss/iss_video.h
>> > >> index f22489edb562..e8d27b7ac329 100644
>> > >> --- a/drivers/staging/media/omap4iss/iss_video.h
>> > >> +++ b/drivers/staging/media/omap4iss/iss_video.h
>> > >> @@ -118,7 +118,7 @@ struct iss_buffer {
>> > >>       dma_addr_t iss_addr;
>> > >>  };
>> > >>
>> > >> -#define to_iss_buffer(buf)   container_of(buf, struct iss_buffer,
>> vb)
>> > >> +#define to_iss_buffer(buf)   list_entry(buf, struct iss_buffer, vb)
>> > >
>> > > Actually, this macro is no longer used.  Perhaps someone else
>> converted
>> > > the uses to use the proper list operations and forgot to drop the
>> macro
>> > > definition.
>> >
>> > Then should I send a patch to drop these macros?
>>
>> It would be better to modify the to_iss_buffer macro to convert from a
>> vb2_buffer to a iss_buffer, and use it where the driver currently uses
>> container_of directly.
>>
>>
> I am sorry but I am not sure if I understand what you are suggesting
> correctly.
>
> to_iss_buffer is defined as:
> #define to_iss_buffer(buf)   container_of(buf, struct iss_buffer, vb)
>
> And it is not used. Instead, container_of is used directly
> static void iss_video_buf_cleanup(struct vb2_buffer *vb)
> {
> struct vb2_v4l2_buffer *vbuf = to_vb2_v4l2_buffer(vb);
> struct iss_buffer *buffer = container_of(vbuf, struct iss_buffer, vb);
>         ...
> }
>
> static int iss_video_buf_prepare(struct vb2_buffer *vb)
> {
> struct vb2_v4l2_buffer *vbuf = to_vb2_v4l2_buffer(vb);
> struct iss_video_fh *vfh = vb2_get_drv_priv(vb->vb2_queue);
> struct iss_buffer *buffer = container_of(vbuf, struct iss_buffer, vb);
>         ...
> }
>
> static void iss_video_buf_queue(struct vb2_buffer *vb)
> {
> struct vb2_v4l2_buffer *vbuf = to_vb2_v4l2_buffer(vb);
> struct iss_video_fh *vfh = vb2_get_drv_priv(vb->vb2_queue);
> struct iss_video *video = vfh->video;
> struct iss_buffer *buffer = container_of(vbuf, struct iss_buffer, vb);
>         ...
> }
>
>
> If I understand it correctly, these usages are converting vb2_buffer to
> iss_buffer. Which could be done by using the to_iss_buffer(vbuf) as well.
> Why is this macro no longer used? I also don't understand what modification
> you are suggesting. Can you please elaborate?
>
> Thank you.
>
> - Himadri
>
>
>
>> > >>  enum iss_video_dmaqueue_flags {
>> > >>       /* Set if DMA queue becomes empty when
>> ISS_PIPELINE_STREAM_CONTINUOUS */
>> > >> @@ -170,7 +170,7 @@ struct iss_video {
>> > >>       const struct iss_video_operations *ops;
>> > >>  };
>> > >>
>> > >> -#define to_iss_video(vdev)   container_of(vdev, struct iss_video,
>> video)
>> > >> +#define to_iss_video(vdev)   list_entry(vdev, struct iss_video,
>> video)
>> > >
>> > > This doesn't involve a list.  Nor does the previous one.  To use
>> > > list_entry, the third argument should be the name of a field that has
>> type
>> > > list_head.
>> >
>> > Understood. Thank you.
>> >
>> > >>  struct iss_video_fh {
>> > >>       struct v4l2_fh vfh;
>>
>> --
>> Regards,
>>
>> Laurent Pinchart
>>
>
I have been suggested to modify the macro to_iss_bufer(). But I do not
understand how should it be changed. Can anybody please explain it? I need
to understand this in order to send the next version of the patch.

Thank you.

- Himadri

--000000000000bde13b0585519a8e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>On Wed, Mar 27, 2019 at 1:13 AM Himadri Pandya &lt;<a=
 href=3D"mailto:himadri18.07@gmail.com">himadri18.07@gmail.com</a>&gt; wrot=
e:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=
=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Mon, Mar 25, 2019 at 7:17 AM Laurent Pinch=
art &lt;<a href=3D"mailto:laurent.pinchart@ideasonboard.com" target=3D"_bla=
nk">laurent.pinchart@ideasonboard.com</a>&gt; wrote:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex">Hello Himadri,<br>
<br>On Sun, Mar 24, 2019 at 11:19:54PM +0530, Himadri Pandya wrote:<br>&gt;=
 On Sun, Mar 24, 2019 at 10:48 PM Julia Lawall &lt;<a href=3D"mailto:julia.=
lawall@lip6.fr" target=3D"_blank">julia.lawall@lip6.fr</a>&gt; wrote:<br>&g=
t; &gt; On Sun, 24 Mar 2019, Himadri Pandya wrote:<br>&gt; &gt;&gt; Use lis=
t_entry instead of container_of for lists iss_buffer and<br>&gt; &gt;&gt; i=
ss_video.<br>&gt; &gt;&gt;<br>&gt; &gt;&gt; Signed-off-by: Himadri Pandya &=
lt;<a href=3D"mailto:himadri18.07@gmail.com" target=3D"_blank">himadri18.07=
@gmail.com</a>&gt;<br>&gt; &gt;&gt; ---<br>&gt; &gt;&gt;=C2=A0 drivers/stag=
ing/media/omap4iss/iss_video.h | 4 ++--<br>&gt; &gt;&gt;=C2=A0 1 file chang=
ed, 2 insertions(+), 2 deletions(-)<br>&gt; &gt;&gt;<br>&gt; &gt;&gt; diff =
--git a/drivers/staging/media/omap4iss/iss_video.h b/drivers/staging/media/=
omap4iss/iss_video.h<br>&gt; &gt;&gt; index f22489edb562..e8d27b7ac329 1006=
44<br>&gt; &gt;&gt; --- a/drivers/staging/media/omap4iss/iss_video.h<br>&gt=
; &gt;&gt; +++ b/drivers/staging/media/omap4iss/iss_video.h<br>&gt; &gt;&gt=
; @@ -118,7 +118,7 @@ struct iss_buffer {<br>&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=
=A0 =C2=A0dma_addr_t iss_addr;<br>&gt; &gt;&gt;=C2=A0 };<br>&gt; &gt;&gt;<b=
r>&gt; &gt;&gt; -#define to_iss_buffer(buf)=C2=A0 =C2=A0container_of(buf, s=
truct iss_buffer, vb)<br>&gt; &gt;&gt; +#define to_iss_buffer(buf)=C2=A0 =
=C2=A0list_entry(buf, struct iss_buffer, vb)<br>&gt; &gt; <br>&gt; &gt; Act=
ually, this macro is no longer used.=C2=A0 Perhaps someone else converted<b=
r>&gt; &gt; the uses to use the proper list operations and forgot to drop t=
he macro<br>&gt; &gt; definition.<br>&gt; <br>&gt; Then should I send a pat=
ch to drop these macros?<br>
<br>It would be better to modify the to_iss_buffer macro to convert from a<=
br>vb2_buffer to a iss_buffer, and use it where the driver currently uses<b=
r>container_of directly.<br>
<br></blockquote><div><br></div><div>I am sorry but I am not sure if I unde=
rstand what you are suggesting correctly.=C2=A0</div><div><br></div><div>to=
_iss_buffer is defined as:</div><div><font color=3D"#ff00ff">#define to_iss=
_buffer(buf)=C2=A0 =C2=A0container_of(buf, struct iss_buffer, vb)</font><br=
></div><div><br></div><div>And it is not used. Instead, container_of is use=
d directly</div><div><span style=3D"color:rgb(0,0,255)">static void iss_vid=
eo_buf_cleanup(struct vb2_buffer *vb)</span><br></div><div><font color=3D"#=
0000ff">{</font></div><div><font color=3D"#0000ff"><span style=3D"white-spa=
ce:pre-wrap">	</span>struct vb2_v4l2_buffer *vbuf =3D to_vb2_v4l2_buffer(vb=
);</font></div><div><span style=3D"color:rgb(0,0,255);white-space:pre-wrap"=
>	</span><font color=3D"#ff00ff">struct iss_buffer *buffer =3D container_of=
(vbuf, struct iss_buffer, vb);</font></div><div><font color=3D"#0000ff">=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 ...</font></div><div><span style=3D"color:rgb(0,0,=
255)">}</span></div><div><span style=3D"color:rgb(0,0,255)"><br></span></di=
v><div><div><font color=3D"#0000ff">static int iss_video_buf_prepare(struct=
 vb2_buffer *vb)</font></div><div><font color=3D"#0000ff">{</font></div><di=
v><font color=3D"#0000ff"><span style=3D"white-space:pre-wrap">	</span>stru=
ct vb2_v4l2_buffer *vbuf =3D to_vb2_v4l2_buffer(vb);</font></div><div><font=
 color=3D"#0000ff"><span style=3D"white-space:pre-wrap">	</span>struct iss_=
video_fh *vfh =3D vb2_get_drv_priv(vb-&gt;vb2_queue);</font></div><div><spa=
n style=3D"color:rgb(0,0,255);white-space:pre-wrap">	</span><font color=3D"=
#ff00ff">struct iss_buffer *buffer =3D container_of(vbuf, struct iss_buffer=
, vb);</font></div></div><div><font color=3D"#0000ff">=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 ...</font></div><div><font color=3D"#0000ff">}</font></div><div><fon=
t color=3D"#0000ff"><br></font></div><div><div style=3D"color:rgb(0,0,255)"=
>static void iss_video_buf_queue(struct vb2_buffer *vb)</div><div style=3D"=
color:rgb(0,0,255)">{</div><div style=3D"color:rgb(0,0,255)"><span style=3D=
"white-space:pre-wrap">	</span>struct vb2_v4l2_buffer *vbuf =3D to_vb2_v4l2=
_buffer(vb);</div><div style=3D"color:rgb(0,0,255)"><span style=3D"white-sp=
ace:pre-wrap">	</span>struct iss_video_fh *vfh =3D vb2_get_drv_priv(vb-&gt;=
vb2_queue);</div><div style=3D"color:rgb(0,0,255)"><span style=3D"white-spa=
ce:pre-wrap">	</span>struct iss_video *video =3D vfh-&gt;video;</div><div><=
span style=3D"color:rgb(0,0,255);white-space:pre-wrap">	</span><font color=
=3D"#ff00ff">struct iss_buffer *buffer =3D container_of(vbuf, struct iss_bu=
ffer, vb);</font></div><div style=3D"color:rgb(0,0,255)">=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 ...</div><div style=3D"color:rgb(0,0,255)">}</div></div><div><fo=
nt color=3D"#0000ff"><br></font></div><div><br></div><div>If I understand i=
t correctly, these usages are converting vb2_buffer to iss_buffer. Which co=
uld be done by using the <font color=3D"#ff00ff">to_iss_buffer(vbuf)</font>=
 as well. Why is this macro no longer used? I also don&#39;t understand wha=
t modification you are suggesting. Can you please elaborate?</div><div><br>=
</div><div>Thank you.</div><div><br></div><div>- Himadri</div><div><br></di=
v><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">&gt; &=
gt;&gt;=C2=A0 enum iss_video_dmaqueue_flags {<br>&gt; &gt;&gt;=C2=A0 =C2=A0=
 =C2=A0 =C2=A0/* Set if DMA queue becomes empty when ISS_PIPELINE_STREAM_CO=
NTINUOUS */<br>&gt; &gt;&gt; @@ -170,7 +170,7 @@ struct iss_video {<br>&gt;=
 &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0const struct iss_video_operations *ops;=
<br>&gt; &gt;&gt;=C2=A0 };<br>&gt; &gt;&gt;<br>&gt; &gt;&gt; -#define to_is=
s_video(vdev)=C2=A0 =C2=A0container_of(vdev, struct iss_video, video)<br>&g=
t; &gt;&gt; +#define to_iss_video(vdev)=C2=A0 =C2=A0list_entry(vdev, struct=
 iss_video, video)<br>&gt; &gt; <br>&gt; &gt; This doesn&#39;t involve a li=
st.=C2=A0 Nor does the previous one.=C2=A0 To use<br>&gt; &gt; list_entry, =
the third argument should be the name of a field that has type<br>&gt; &gt;=
 list_head.<br>&gt; <br>&gt; Understood. Thank you.<br>&gt; <br>&gt; &gt;&g=
t;=C2=A0 struct iss_video_fh {<br>&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0s=
truct v4l2_fh vfh;<br>
<br>-- <br>Regards,<br>
<br>Laurent Pinchart<br></blockquote></div></div></div></div></div></blockq=
uote><div><br></div><div>I have been suggested to modify the macro to_iss_b=
ufer(). But I do not understand how should it be changed. Can anybody pleas=
e explain it? I need to understand this in order to send the next version o=
f the patch.</div><div><br></div><div>Thank you.</div><div><br></div><div>-=
 Himadri</div></div></div>

--000000000000bde13b0585519a8e--

