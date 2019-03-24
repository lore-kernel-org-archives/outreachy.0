X-GM-THRID: 6672001868710805504
X-Received: by 2002:a17:902:1e6:: with SMTP id b93mr20816034plb.325.1553449807421;
        Sun, 24 Mar 2019 10:50:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:5788:: with SMTP id i8ls6041324pfj.0.gmail; Sun, 24 Mar
 2019 10:50:06 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzPeEpWalic+VhfA2pO+TIGsxZK1Wt9/IFf1RpLUu9amFoyDNpjcqvn6V25OpAyzjQH6S8s
X-Received: by 2002:a62:449b:: with SMTP id m27mr20161277pfi.79.1553449806553;
        Sun, 24 Mar 2019 10:50:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553449806; cv=none;
        d=google.com; s=arc-20160816;
        b=VBqDTBLLXA+Zj5vu60suLV3m1QstDqxwheEH/EQDinJfmOD/YTT2s+3Yw9fbgF9D05
         iQx6HrgoR3T+HUY48gPS7Eo+GH7a0BexhjR2tPqx2u1lb3b6rx59jgnhXaiovtj7SM/f
         Fg8lCv3K/CVlC94bbWebGqxnyo8vWPL3hYK16OJh5xh+ZCfJhKp1/RKncX4yiEjq/7o7
         pvilN461BCcVG2lz9B83lEqNrN+CNyfgkiiyi+pLmoVR/Sc9G2N6XhBAk1qF1RVNIWyC
         OYvhdHLhsHA24kdJBKe4SCVq8atfAa62WXppy8UsJQ7Czn6QtTkAKeA3dNVUBTdmFa8k
         RGHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=tSt+XCh6E6E8BOUst0XxfghKiXtIFlDFCjSnIiPJ4fY=;
        b=s+R8vWfI+YuYqNUsvIhcAOvTH66TjTufuvRUD7O4hQlVuTd/O3xjSZJHUDYRpLFf/V
         b1cSQ7vUXJfUruDE17dCBaMCPRImDvnEnKMZPwHOcJ48KvxYgPeeOmoxBd/XLR7pJPMv
         PpldrBFm13sDBlXOaJ+hpbukzWLARsPDj7kQ9JcqpmH3EIHuJPmrVeG9luUfiUw5PM1F
         BLiF0myA9ujE/OO7hOwTkJ96wPVvYU1bkWX0Kt1HnAi+kcGt6h7GtQD9mvloIw/MLpGK
         YyuEL+5YB9IRhUbLQPSwCndRAAh51VXyHNtO1zKv59gKcPtAfv+suY2bTuv8FoA4GfO7
         X7SQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pqtQgyIF;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::22e as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-oi1-x22e.google.com (mail-oi1-x22e.google.com. [2607:f8b0:4864:20::22e])
        by gmr-mx.google.com with ESMTPS id k70si729873pfc.0.2019.03.24.10.50.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 24 Mar 2019 10:50:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::22e as permitted sender) client-ip=2607:f8b0:4864:20::22e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pqtQgyIF;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::22e as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x22e.google.com with SMTP id e22so5262682oiy.0
        for <outreachy-kernel@googlegroups.com>; Sun, 24 Mar 2019 10:50:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=tSt+XCh6E6E8BOUst0XxfghKiXtIFlDFCjSnIiPJ4fY=;
        b=pqtQgyIFEFpu7sbGVbhehiHbllN9EutitDvUv2qQdet97f7opTvEnt2vAwzRiXwrre
         VV1A8VmEPIPpJK49C+mzhHI6x+i3iei2S7HUU/0yAGPCjtpmNmS5JYeXDBGEWg37h+Ta
         jw3GTEIyJc2T5MlcvUFFyHtz3qrcYODZSD3OrkkcHssWy3/6EEB/N23RLHxOzYz9xqKt
         pBagEXPi00E08R8r1myIpQkFEoPkxzlw3MBm/5/XnxZtTqA2Y2gsEa2FYhLuGb6HHAtV
         Q7bZDKFvmSuEiJ1LaPApMAqNyybQiLpwh0yT2S4A0dxfpCCcKawZz8LTvg1W0hmRk9/e
         TtFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=tSt+XCh6E6E8BOUst0XxfghKiXtIFlDFCjSnIiPJ4fY=;
        b=tPr1y5JnXwroybduEU9DkA7zArV9agdZ0U5HEQxpNWEeFJDh95SqtGLjQK3hAQTmY7
         EWmui64+Tu/cqFvn5VsHLI6etmYwxoTHWk8SHwv6z/hGSu4Cx0IHVHWNdzgegxFzTYI+
         +bJv3SGiAxIzULaJFiGqdiFVoraq9LWXPG4hgf0Ibc2PEczZrbi9UlpjKMEhMIMrPTPO
         Wdg2o8b65LBBw5Ed4bHYTwj6nqXxuwh2eR3+Xhovv6iO2Ir3gqRPsM5j5GtKE36iTvgq
         EBT4ls+evwZIJCnvgdWjIjvAHwrfZ0dIhfZ2ycjwT/6byVzWmrwoNbGvK1Kf59xQsN1H
         mPEQ==
X-Gm-Message-State: APjAAAWR+mQZgh/4iRBWaG0lNkMIZDpyugko/22qKLzlca+sPOeeEopA
	OKfphz0vVo+awvFdrsZTPYsqjB4pYwRSopOAX2+a1Q==
X-Received: by 2002:aca:eb10:: with SMTP id j16mr9205808oih.65.1553449806076;
 Sun, 24 Mar 2019 10:50:06 -0700 (PDT)
MIME-Version: 1.0
References: <20190324165433.95833-1-himadri18.07@gmail.com> <alpine.DEB.2.21.1903241812520.2526@hadrien>
In-Reply-To: <alpine.DEB.2.21.1903241812520.2526@hadrien>
From: Himadri Pandya <himadri18.07@gmail.com>
Date: Sun, 24 Mar 2019 23:19:54 +0530
Message-ID: <CAPnhUpYSAaY0J6dRsQf2hMvMfUhvaSXqu+Vgt3aQ7g_mjGX8Hw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: media: omap4iss: Use
 list_entry instead of container_of
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: laurent.pinchart@ideasonboard.com, mchehab@kernel.org, 
	Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000de213e0584dab74b"

--000000000000de213e0584dab74b
Content-Type: text/plain; charset="UTF-8"

On Sun, Mar 24, 2019 at 10:48 PM Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Sun, 24 Mar 2019, Himadri Pandya wrote:
>
> > Use list_entry instead of container_of for lists iss_buffer and
> > iss_video.
> >
> > Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
> > ---
> >  drivers/staging/media/omap4iss/iss_video.h | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/staging/media/omap4iss/iss_video.h
> b/drivers/staging/media/omap4iss/iss_video.h
> > index f22489edb562..e8d27b7ac329 100644
> > --- a/drivers/staging/media/omap4iss/iss_video.h
> > +++ b/drivers/staging/media/omap4iss/iss_video.h
> > @@ -118,7 +118,7 @@ struct iss_buffer {
> >       dma_addr_t iss_addr;
> >  };
> >
> > -#define to_iss_buffer(buf)   container_of(buf, struct iss_buffer, vb)
> > +#define to_iss_buffer(buf)   list_entry(buf, struct iss_buffer, vb)
>
> Actually, this macro is no longer used.  Perhaps someone else converted
> the uses to use the proper list operations and forgot to drop the macro
> definition.
>

Then should I send a patch to drop these macros?


>
> >
> >  enum iss_video_dmaqueue_flags {
> >       /* Set if DMA queue becomes empty when
> ISS_PIPELINE_STREAM_CONTINUOUS */
> > @@ -170,7 +170,7 @@ struct iss_video {
> >       const struct iss_video_operations *ops;
> >  };
> >
> > -#define to_iss_video(vdev)   container_of(vdev, struct iss_video, video)
> > +#define to_iss_video(vdev)   list_entry(vdev, struct iss_video, video)
>
> This doesn't involve a list.  Nor does the previous one.  To use
> list_entry, the third argument should be the name of a field that has type
> list_head.
>

Understood. Thank you.

- Himadri


>
> julia
>
> >  struct iss_video_fh {
> >       struct v4l2_fh vfh;
> > --
> > 2.17.1
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/20190324165433.95833-1-himadri18.07%40gmail.com
> .
> > For more options, visit https://groups.google.com/d/optout.
> >
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1903241812520.2526%40hadrien
> .
> For more options, visit https://groups.google.com/d/optout.
>

--000000000000de213e0584dab74b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Sun, Mar 24, 2019 at 10:48 PM Juli=
a Lawall &lt;<a href=3D"mailto:julia.lawall@lip6.fr">julia.lawall@lip6.fr</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><b=
r>
<br>
On Sun, 24 Mar 2019, Himadri Pandya wrote:<br>
<br>
&gt; Use list_entry instead of container_of for lists iss_buffer and<br>
&gt; iss_video.<br>
&gt;<br>
&gt; Signed-off-by: Himadri Pandya &lt;<a href=3D"mailto:himadri18.07@gmail=
.com" target=3D"_blank">himadri18.07@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/media/omap4iss/iss_video.h | 4 ++--<br>
&gt;=C2=A0 1 file changed, 2 insertions(+), 2 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/media/omap4iss/iss_video.h b/drivers/stag=
ing/media/omap4iss/iss_video.h<br>
&gt; index f22489edb562..e8d27b7ac329 100644<br>
&gt; --- a/drivers/staging/media/omap4iss/iss_video.h<br>
&gt; +++ b/drivers/staging/media/omap4iss/iss_video.h<br>
&gt; @@ -118,7 +118,7 @@ struct iss_buffer {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0dma_addr_t iss_addr;<br>
&gt;=C2=A0 };<br>
&gt;<br>
&gt; -#define to_iss_buffer(buf)=C2=A0 =C2=A0container_of(buf, struct iss_b=
uffer, vb)<br>
&gt; +#define to_iss_buffer(buf)=C2=A0 =C2=A0list_entry(buf, struct iss_buf=
fer, vb)<br>
<br>
Actually, this macro is no longer used.=C2=A0 Perhaps someone else converte=
d<br>
the uses to use the proper list operations and forgot to drop the macro<br>
definition.<br></blockquote><div><br></div><div>Then should I send a patch =
to drop these macros?</div><div>=C2=A0</div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex">
<br>
&gt;<br>
&gt;=C2=A0 enum iss_video_dmaqueue_flags {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0/* Set if DMA queue becomes empty when ISS_P=
IPELINE_STREAM_CONTINUOUS */<br>
&gt; @@ -170,7 +170,7 @@ struct iss_video {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0const struct iss_video_operations *ops;<br>
&gt;=C2=A0 };<br>
&gt;<br>
&gt; -#define to_iss_video(vdev)=C2=A0 =C2=A0container_of(vdev, struct iss_=
video, video)<br>
&gt; +#define to_iss_video(vdev)=C2=A0 =C2=A0list_entry(vdev, struct iss_vi=
deo, video)<br>
<br>
This doesn&#39;t involve a list.=C2=A0 Nor does the previous one.=C2=A0 To =
use<br>
list_entry, the third argument should be the name of a field that has type<=
br>
list_head.<br></blockquote><div><br></div><div>Understood. Thank you.</div>=
<div><br></div><div>- Himadri=C2=A0</div><div>=C2=A0</div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">
<br>
julia<br>
<br>
&gt;=C2=A0 struct iss_video_fh {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct v4l2_fh vfh;<br>
&gt; --<br>
&gt; 2.17.1<br>
&gt;<br>
&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.=
com" target=3D"_blank">outreachy-kernel+unsubscribe@googlegroups.com</a>.<b=
r>
&gt; To post to this group, send email to <a href=3D"mailto:outreachy-kerne=
l@googlegroups.com" target=3D"_blank">outreachy-kernel@googlegroups.com</a>=
.<br>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/outreachy-kernel/20190324165433.95833-1-himadri18.07%40gmai=
l.com" rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/msg=
id/outreachy-kernel/20190324165433.95833-1-himadri18.07%40gmail.com</a>.<br=
>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/optout</a=
>.<br>
&gt;<br>
<br>
-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;outreachy-kernel&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.com" =
target=3D"_blank">outreachy-kernel+unsubscribe@googlegroups.com</a>.<br>
To post to this group, send email to <a href=3D"mailto:outreachy-kernel@goo=
glegroups.com" target=3D"_blank">outreachy-kernel@googlegroups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/outreachy-kernel/alpine.DEB.2.21.1903241812520.2526%40hadrien" r=
el=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/msgid/outre=
achy-kernel/alpine.DEB.2.21.1903241812520.2526%40hadrien</a>.<br>
For more options, visit <a href=3D"https://groups.google.com/d/optout" rel=
=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/optout</a>.<b=
r>
</blockquote></div></div>

--000000000000de213e0584dab74b--

