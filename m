X-GM-THRID: 6675008112137601024
X-Received: by 2002:a37:a783:: with SMTP id q125mr7880465qke.56.1554194962431;
        Tue, 02 Apr 2019 01:49:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:58c4:: with SMTP id m187ls5472188qkb.7.gmail; Tue, 02
 Apr 2019 01:49:21 -0700 (PDT)
X-Google-Smtp-Source: APXvYqys5jr8yh6P3/OWkDNXRiFLLpFQEOsXGEOLP5hE1wjj2N/aGPAVZACE4rbNHRWkZ+08kC5n
X-Received: by 2002:ae9:ec16:: with SMTP id h22mr1368142qkg.41.1554194961729;
        Tue, 02 Apr 2019 01:49:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554194961; cv=none;
        d=google.com; s=arc-20160816;
        b=E/RfOxGK0NrRokXo57z1nDnwsVoeSSLNMEwDhCpT4kRdZGIPoglmEpNIV7NaeAA7ZS
         uFYKt8bCPzeCJmREFUQLKuEuCVO/jGBZAuXIDq2WAh1hISF3oYqqTU4OPCfd60ZWTi4G
         uYTeZFhm8Ce8sjn+KoFIH45mXWY5RVGPgDZZpR+5Mqv3XSWPlAe0jg3n0VBHRmWpBCDX
         Fnko6EbU9clBudiMyBcHtr7npwC3X9MKQpv8g/w2yvxyDwm64T3r/x/r1nZ0rCBCEHjd
         wQio1iNOw04PuROIBiyasXVzyG29rVY5cZd20UwjI7lKo+AIgUSm7b0GsIbtNTxDMxYF
         aGNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=FtLJHl21Etv9fQIqNRIaDuW9Yr5PEdXegd/Gy7Qoejo=;
        b=qbcDwbq9fh8Jztel7etHte1gbWRi9tTt0cxDxWNcaQAvoVglLRY1lOLZcDtCY/PQer
         Lb3xv/Xf0xoyfFmrGYeS5GzzV9jJ8ZNI+2685ec/wByonZCKDfFZowOQVpSzPDOx43h0
         1J4j2Mz4YvAdzDf8jMyTyInTaE/WeFWvGWYWk8WjErg331OwVD1vE6E7VqzIPOUll01D
         pciJliFeSN2E2rWtdEDy0fkAKJdIAZNM/DTI3gx20o0ZxWAyH6W5yQiEE2umaxWweMVc
         Zwu6w7qsEYJlSKl9rKLUd9xbNE9/pu8XH4Qipty71p2Cy8Icl2GaIqBYLJF9z8eUVjEu
         mfAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="EeXDR6/Y";
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::32a as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-ot1-x32a.google.com (mail-ot1-x32a.google.com. [2607:f8b0:4864:20::32a])
        by gmr-mx.google.com with ESMTPS id h186si766904qkc.1.2019.04.02.01.49.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Apr 2019 01:49:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::32a as permitted sender) client-ip=2607:f8b0:4864:20::32a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="EeXDR6/Y";
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::32a as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x32a.google.com with SMTP id j10so11405569otq.0
        for <outreachy-kernel@googlegroups.com>; Tue, 02 Apr 2019 01:49:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=FtLJHl21Etv9fQIqNRIaDuW9Yr5PEdXegd/Gy7Qoejo=;
        b=EeXDR6/YDmwKKWBkfNbSPWY1LSCdBbmbW7K2UCBc0aGCItMKOjAemtgOdXjwCMONKF
         VyqHh4GPOJbZWZ0JzgB2x1PQYkWTqPPxZMu/fVtNocXteAr2Vi494cyjysIZkTCmfQ49
         26g4vwaULZVrriruUTC31wjSfUb+CCDXS2YsmP0lCbnkBQriYP0mnuaXG6wQabtDWpTl
         7FTEE4cPNUMBDFlyx8kjtf7jO2oIx89E6rp0vxH/hMO6376WvB90kIxTTl8yIaz60n84
         EmLdM579GeSpETMBzKoEot+aFDizNpFaPv2RV36u4H5iZvVGrVu9wvu4fH6YHvdlHNMr
         aEiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=FtLJHl21Etv9fQIqNRIaDuW9Yr5PEdXegd/Gy7Qoejo=;
        b=k/+1N2OBR/GG8B3hLNeKzHNPAv4Rur6s/u/07gWLItU9kf8tDHAhNbfHShNUDtQQC1
         SCVG4K60AFlSkolUl7Vj7xq3SZscxufMcJFg4CF15+pUiXarQloLqnv/kPe21/mI40w9
         YGZ2D0D5W+FZB+LC7m3uBAzhyCQh4JuD0cDaaNqpZmZN+oHVOV3zjcpb+/SDNOo0YQyW
         knxqBUEBbpnhV4VzQoChmGyMMrbY9yzRyOoHMakVJVI3enw1vso/Xur9IoH4BuXBQ88p
         KG/FAT2HGZZmCQVMwjUKCgIT9X+FAJc1kep3U4aNAiBvjyTdrAqzV8BtPHsoRBZwNnbw
         gl+Q==
X-Gm-Message-State: APjAAAXJYEsstL1PgjBevcsnHdakpEgbSy59gVUf3rjJQmIFYJzce+4Y
	FREnE4w6BkKNOaD8R4XseOG5c/LIew0KYE1CLCU=
X-Received: by 2002:a9d:27ea:: with SMTP id c97mr51081955otb.252.1554194961374;
 Tue, 02 Apr 2019 01:49:21 -0700 (PDT)
MIME-Version: 1.0
References: <20190401192015.96166-1-himadri18.07@gmail.com>
 <20190401192015.96166-2-himadri18.07@gmail.com> <20190402065846.GA4805@pendragon.ideasonboard.com>
In-Reply-To: <20190402065846.GA4805@pendragon.ideasonboard.com>
From: Himadri Pandya <himadri18.07@gmail.com>
Date: Tue, 2 Apr 2019 14:19:09 +0530
Message-ID: <CAPnhUpZyJZzKsn914XVi6=xEtE24ivgv=diypW5Zz1uvJaaPdg@mail.gmail.com>
Subject: Re: [PATCH 1/2] staging: media: omap4iss: redefine to_iss_buffer()
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: mchehab@kernel.org, Greg KH <gregkh@linuxfoundation.org>, 
	outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="00000000000095a1cb05858836cc"

--00000000000095a1cb05858836cc
Content-Type: text/plain; charset="UTF-8"

On Tue, 2 Apr, 2019, 12:28 PM Laurent Pinchart, <
laurent.pinchart@ideasonboard.com> wrote:

> Hi Himadri,
>
> Thank you for the patch.
>
> On Tue, Apr 02, 2019 at 12:50:14AM +0530, Himadri Pandya wrote:
> > Currently macro to_iss_buffer converts vb2_v4l2_buffer into iss_buffer.
> > But the application needs the conversion from vb2_buffer to iss_bufffer.
> > So they need to convert vb2_buffer into vb2_v4l2_buffer first and then
> > vb2_v4l2_buffer into iss_buffer. Redefining to_iss_buffer to convert
> > from vb2_buffer into iss_buffer directly helps the situation.
> >
> > Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
> > ---
> >  drivers/staging/media/omap4iss/iss_video.h | 7 ++++++-
> >  1 file changed, 6 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/media/omap4iss/iss_video.h
> b/drivers/staging/media/omap4iss/iss_video.h
> > index f22489edb562..3722ac8ba2fa 100644
> > --- a/drivers/staging/media/omap4iss/iss_video.h
> > +++ b/drivers/staging/media/omap4iss/iss_video.h
> > @@ -118,7 +118,12 @@ struct iss_buffer {
> >       dma_addr_t iss_addr;
> >  };
> >
> > -#define to_iss_buffer(buf)   container_of(buf, struct iss_buffer, vb)
> > +static inline struct iss_buffer *to_iss_buffer(struct vb2_buffer *vb)
> > +{
> > +     struct vb2_v4l2_buffer *vbuf = container_of(vb, struct
> vb2_v4l2_buffer, vb2_buf);
> > +
> > +     return container_of(vbuf, struct iss_buffer, vb);
>
> In addition to Greg's comment about merging the two patches in one, you
> can also merge the above two lines with
>
>         container_of(vb, iss_buffer, vb.vb2_buf)
>

Okay. I'll do that. Thank you.

- Himadri


> > +}
> >
> >  enum iss_video_dmaqueue_flags {
> >       /* Set if DMA queue becomes empty when
> ISS_PIPELINE_STREAM_CONTINUOUS */
>
> --
> Regards,
>
> Laurent Pinchart
>

--00000000000095a1cb05858836cc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Tue, 2 Apr, 2019, 12:28 PM Laurent Pinchart, &lt;<a=
 href=3D"mailto:laurent.pinchart@ideasonboard.com">laurent.pinchart@ideason=
board.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Hi Himad=
ri,<br>
<br>
Thank you for the patch.<br>
<br>
On Tue, Apr 02, 2019 at 12:50:14AM +0530, Himadri Pandya wrote:<br>
&gt; Currently macro to_iss_buffer converts vb2_v4l2_buffer into iss_buffer=
.<br>
&gt; But the application needs the conversion from vb2_buffer to iss_bufffe=
r.<br>
&gt; So they need to convert vb2_buffer into vb2_v4l2_buffer first and then=
<br>
&gt; vb2_v4l2_buffer into iss_buffer. Redefining to_iss_buffer to convert<b=
r>
&gt; from vb2_buffer into iss_buffer directly helps the situation.<br>
&gt; <br>
&gt; Signed-off-by: Himadri Pandya &lt;<a href=3D"mailto:himadri18.07@gmail=
.com" target=3D"_blank" rel=3D"noreferrer">himadri18.07@gmail.com</a>&gt;<b=
r>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/media/omap4iss/iss_video.h | 7 ++++++-<br>
&gt;=C2=A0 1 file changed, 6 insertions(+), 1 deletion(-)<br>
&gt; <br>
&gt; diff --git a/drivers/staging/media/omap4iss/iss_video.h b/drivers/stag=
ing/media/omap4iss/iss_video.h<br>
&gt; index f22489edb562..3722ac8ba2fa 100644<br>
&gt; --- a/drivers/staging/media/omap4iss/iss_video.h<br>
&gt; +++ b/drivers/staging/media/omap4iss/iss_video.h<br>
&gt; @@ -118,7 +118,12 @@ struct iss_buffer {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0dma_addr_t iss_addr;<br>
&gt;=C2=A0 };<br>
&gt;=C2=A0 <br>
&gt; -#define to_iss_buffer(buf)=C2=A0 =C2=A0container_of(buf, struct iss_b=
uffer, vb)<br>
&gt; +static inline struct iss_buffer *to_iss_buffer(struct vb2_buffer *vb)=
<br>
&gt; +{<br>
&gt; +=C2=A0 =C2=A0 =C2=A0struct vb2_v4l2_buffer *vbuf =3D container_of(vb,=
 struct vb2_v4l2_buffer, vb2_buf);<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 =C2=A0return container_of(vbuf, struct iss_buffer, vb);=
<br>
<br>
In addition to Greg&#39;s comment about merging the two patches in one, you=
<br>
can also merge the above two lines with<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 container_of(vb, iss_buffer, vb.vb2_buf)<br></b=
lockquote></div></div><div dir=3D"auto"><br></div><div dir=3D"auto">Okay. I=
&#39;ll do that. Thank you.</div><div dir=3D"auto"><br></div><div dir=3D"au=
to">- Himadri</div><div dir=3D"auto"><br></div><div dir=3D"auto"><div class=
=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
&gt; +}<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 enum iss_video_dmaqueue_flags {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0/* Set if DMA queue becomes empty when ISS_P=
IPELINE_STREAM_CONTINUOUS */<br>
<br>
-- <br>
Regards,<br>
<br>
Laurent Pinchart<br>
</blockquote></div></div></div>

--00000000000095a1cb05858836cc--

