X-GM-THRID: 6618908371010453504
X-Received: by 2002:a0c:b0fa:: with SMTP id p55mr13702qvc.23.1542280478720;
        Thu, 15 Nov 2018 03:14:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aed:3f7a:: with SMTP id q55ls2934815qtf.12.gmail; Thu, 15
 Nov 2018 03:14:38 -0800 (PST)
X-Google-Smtp-Source: AFSGD/Wa/vaVAvBZsPaK8j1JXDNcPVVfELnAKFEvRmlGISt14r9xrgCVpKUl2h7BHBX9UgwPqbY3
X-Received: by 2002:ac8:9d:: with SMTP id c29mr25580qtg.50.1542280478035;
        Thu, 15 Nov 2018 03:14:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1542280478; cv=none;
        d=google.com; s=arc-20160816;
        b=d2Y5LPI/FS/yxef7KSgS5W2EB8GcKhy7I1AmNQhEooqwa+KpU7PnwPg+I7Bt7+BVT/
         SzqsMeX7MQ6JhUuPTpv8MxzIgbx1e2Ey4FQBmG6SVV4RHhsKsQQlzM1g1nKpwGQFFxU9
         RYYyPmwaI8y7fwSYbFqQm3/DB+yLLJEXCNVVThq7bSUgzSecvDTVxrm/pkT9F/5kuNHB
         gT+14XHA4taF5wTVsAaZkz3QNFNfru/+zZoOv1W9st1X/M3mLG07el3YTDB+YlP5AzEv
         FmmepuCdItk2XsFKqGHsJTlH6Z0WgtUhikmHZ6aHZlOanxrHl6lo6rk/Op+NIirIRU/O
         wvEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=6ydCG9infB4XbDLW1CxL3CrFZUAWCrUXfyaIY9CtELg=;
        b=E3TPzn9P8b1bE5Qj1QnTdG4DfWs6AGML2aA2sb1qHRC3p1k9rNBMRebbjrF+GuqN/c
         2odsGv+cGj4UYBVWv70BriNV9fqg2wI4H772tWMNFGMDwBsAuGLkTKzQXmEy36NuUwc6
         D8xASc9+KI1KY790xzrEwZcat92tPiqp/QZ2J7IxUYeHB5v0CxsTeOJOKFWqZ5BPY1ju
         IBKfIxweUpBKDnTaWz0w40kyAi9I/VWFN1QfVzS1+GkYVF3zEQ8Ed6RkzCYh80UzzbVV
         XhRE67jqmCeQvqCf2j6f9TeU42X0qje1g1SSxx1fI3wyrYpjd3PYJmshLK5gdRG0qTuD
         czTg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=N1jqgG4a;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2607:f8b0:4864:20::e43 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <dafna3@gmail.com>
Received: from mail-vs1-xe43.google.com (mail-vs1-xe43.google.com. [2607:f8b0:4864:20::e43])
        by gmr-mx.google.com with ESMTPS id 21si1520608qkr.2.2018.11.15.03.14.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Nov 2018 03:14:38 -0800 (PST)
Received-SPF: pass (google.com: domain of dafna3@gmail.com designates 2607:f8b0:4864:20::e43 as permitted sender) client-ip=2607:f8b0:4864:20::e43;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=N1jqgG4a;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2607:f8b0:4864:20::e43 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-vs1-xe43.google.com with SMTP id g68so11430722vsd.11
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Nov 2018 03:14:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=6ydCG9infB4XbDLW1CxL3CrFZUAWCrUXfyaIY9CtELg=;
        b=N1jqgG4aejvfzlhlbNfl9oqaE1GjgswuOFKWN5E56X2IxfHBDsDGUI5QfZHTyL02Jv
         tlTvBfNLGbo8tPj22HAd5aughlpRagwmRlLSx35vvy+4f0fgFNAByg49RIsdgwOVe+G6
         gorymQxNh29WgZRiY3Gk5eEp5latHG23p2ZemptgedcNPOBUvFmdyAhVKtwQ6cNZIiNL
         RPbNIbpKAoE0BO+24hQJxaZmi4HqagxwIp8Jfo49Tb9FezfZHDeevRm8M/UJgGPH5ElR
         CKGyT+bDM48TyVVsrJRPGoiCvbCZGnfPq5Gyi6q3eTlvbZ9FSTs4HaYJXU8pF7ZALdcA
         l5mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=6ydCG9infB4XbDLW1CxL3CrFZUAWCrUXfyaIY9CtELg=;
        b=n0fvvDNa8VE3SiThxkzPiYDVWanAZbEraN/bZ64xXh6D4HFstJWdR+nw69ZxjluE3u
         nBsQuKPPogifIjEpYRG4e1kGRNb5Gt8RSmoBlVJVgYRu6AMEFKH7hIWS6qgUIKM0ZDq2
         zvhIk7YoTZ2EipKDBe/+9fO8tnPXywGIKt4wd4nH939PHW1werIcUlUrGJyYiMaORh++
         4ZXfVLTTCgJey3fq9tPaDRlqioIf1e1bXCQrK+BAEXLT4/9//pjPKAnRPxKIeec1IGC2
         i6Bi3phHRNLbZZ5rORBXWpRkrCPtO1QCdc1bFTSa04u7RJR8gposxWLMqOaYuk4ywq2m
         MglA==
X-Gm-Message-State: AGRZ1gIflIEJczYFzCQAoCxm+R1sz1H3/tSJxrw0WQ2PEtNTHPU0yjIs
	xeOJXtlR2x4qkugmMjtTGLrWq5GmT9LfeLnHE28hgVdy
X-Received: by 2002:a67:385a:: with SMTP id f87mr2472658vsa.179.1542280477592;
 Thu, 15 Nov 2018 03:14:37 -0800 (PST)
MIME-Version: 1.0
References: <cover.1541451484.git.dafna3@gmail.com> <5243e781-280d-791f-4e2f-db39778217df@xs4all.nl>
In-Reply-To: <5243e781-280d-791f-4e2f-db39778217df@xs4all.nl>
From: Dafna Hirschfeld <dafna3@gmail.com>
Date: Thu, 15 Nov 2018 13:14:26 +0200
Message-ID: <CAJ1myNSZho7g0asONjPtpmfNNDRD5nTNOsye0+Y8MyLk=HE4JA@mail.gmail.com>
Subject: Re: [PATCH vicodec v4 0/3] Add support to more pixel formats in vicodec
To: hverkuil@xs4all.nl
Cc: helen.koike@collabora.com, mchehab@kernel.org, 
	outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="00000000000002d36f057ab2286f"

--00000000000002d36f057ab2286f
Content-Type: text/plain; charset="UTF-8"

On Tue, Nov 13, 2018 at 1:48 PM Hans Verkuil <hverkuil@xs4all.nl> wrote:

> Hi Dafna,
>
> This patch series looks very nice!
>
> thanks:)

> Can you repost this and add a CC to linux-media?
>
> I will

I'm happy to take this.
>
The TODO that is in the decoder code (what to do if the fwht bitstream
> encodes fewer/more planes than the requested raw frame format) is
> something that needs to be implemented later as part of making vicodec
> compliant to the stateful codec specification.
>
> I tried to look in the docs what should be done in that case and didn't
find.
The user can send VIDIOC_ENUM_FMT ioctl on CAPTURE to enumerate the
supported formats based on the OUTPUT buffers
but this is only optional.

Dafna

Regards,
>
>         Hans
>
> On 11/05/18 22:14, Dafna Hirschfeld wrote:
> > The new supported formats are
> > V4L2_PIX_FMT_GREY, V4L2_PIX_FMT_ARGB32, V4L2_PIX_FMT_ABGR32.
> >
> > The returned encoded format is chaned to support various numbers
> > of planes instead of assuming 3 planes.
> >
> > The first patch adds new fields to structs.
> > The second patch adds support for V4L2_PIX_FMT_GREY.
> > The third patch adds support for V4L2_PIX_FMT_ARGB32,
> V4L2_PIX_FMT_ABGR32.
> >
> > Changes from v3:
> >
> > patch 1,3: - no change
> >
> > patch 2:
> > - replace the 2-bit flag FWHT_FL_COMPONENTS_NUM_BIT[01] with GENMASK
> > - add TODO comment - handle the case where the encoded stream is
> different format
> > than the decoded
> > - allocate maximal space for the V4L2_PIX_FMT_FWHT format
> >
> > with the test 'flags & FWHT_FL_COMPONENTS_NUM_BIT[01]'
> >
> > Dafna Hirschfeld (3):
> >   media: vicodec: prepare support for various number of planes
> >   media: vicodec: Add support of greyscale format
> >   media: vicodec: Add support for 4 planes formats
> >
> >  drivers/media/platform/vicodec/codec-fwht.c   |  73 +++++++----
> >  drivers/media/platform/vicodec/codec-fwht.h   |  15 ++-
> >  .../media/platform/vicodec/codec-v4l2-fwht.c  | 123 +++++++++++++-----
> >  .../media/platform/vicodec/codec-v4l2-fwht.h  |   3 +-
> >  drivers/media/platform/vicodec/vicodec-core.c |  35 ++++-
> >  5 files changed, 182 insertions(+), 67 deletions(-)
> >
>
>

--00000000000002d36f057ab2286f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr">On Tue, Nov 13, 2018 at 1:48 PM Hans Verkuil &lt;<a href=3D"mail=
to:hverkuil@xs4all.nl" target=3D"_blank">hverkuil@xs4all.nl</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi Dafna,<br>
<br>
This patch series looks very nice!<br>
<br></blockquote><div>thanks:)=C2=A0</div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex">
Can you repost this and add a CC to linux-media?<br>
<br></blockquote><div>I will</div><div><br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex">
I&#39;m happy to take this.<br></blockquote><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex">
The TODO that is in the decoder code (what to do if the fwht bitstream<br>
encodes fewer/more planes than the requested raw frame format) is<br>
something that needs to be implemented later as part of making vicodec<br>
compliant to the stateful codec specification.<br>
<br></blockquote><div>I tried to look in the docs what should be done in th=
at case and didn&#39;t find.</div><div>The user can send=C2=A0VIDIOC_ENUM_F=
MT ioctl on CAPTURE to enumerate the supported formats based on the OUTPUT =
buffers</div><div>but this is only optional.</div><div><br></div><div>Dafna=
</div><div><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
Regards,<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Hans<br>
<br>
On 11/05/18 22:14, Dafna Hirschfeld wrote:<br>
&gt; The new supported formats are<br>
&gt; V4L2_PIX_FMT_GREY, V4L2_PIX_FMT_ARGB32, V4L2_PIX_FMT_ABGR32.<br>
&gt; <br>
&gt; The returned encoded format is chaned to support various numbers<br>
&gt; of planes instead of assuming 3 planes.<br>
&gt; <br>
&gt; The first patch adds new fields to structs.<br>
&gt; The second patch adds support for V4L2_PIX_FMT_GREY.<br>
&gt; The third patch adds support for V4L2_PIX_FMT_ARGB32, V4L2_PIX_FMT_ABG=
R32.<br>
&gt; <br>
&gt; Changes from v3:<br>
&gt; <br>
&gt; patch 1,3: - no change<br>
&gt; <br>
&gt; patch 2:<br>
&gt; - replace the 2-bit flag FWHT_FL_COMPONENTS_NUM_BIT[01] with GENMASK<b=
r>
&gt; - add TODO comment - handle the case where the encoded stream is diffe=
rent format<br>
&gt; than the decoded<br>
&gt; - allocate maximal space for the V4L2_PIX_FMT_FWHT format<br>
&gt; <br>
&gt; with the test &#39;flags &amp; FWHT_FL_COMPONENTS_NUM_BIT[01]&#39;<br>
&gt; <br>
&gt; Dafna Hirschfeld (3):<br>
&gt;=C2=A0 =C2=A0media: vicodec: prepare support for various number of plan=
es<br>
&gt;=C2=A0 =C2=A0media: vicodec: Add support of greyscale format<br>
&gt;=C2=A0 =C2=A0media: vicodec: Add support for 4 planes formats<br>
&gt; <br>
&gt;=C2=A0 drivers/media/platform/vicodec/codec-fwht.c=C2=A0 =C2=A0|=C2=A0 =
73 +++++++----<br>
&gt;=C2=A0 drivers/media/platform/vicodec/codec-fwht.h=C2=A0 =C2=A0|=C2=A0 =
15 ++-<br>
&gt;=C2=A0 .../media/platform/vicodec/codec-v4l2-fwht.c=C2=A0 | 123 +++++++=
++++++-----<br>
&gt;=C2=A0 .../media/platform/vicodec/codec-v4l2-fwht.h=C2=A0 |=C2=A0 =C2=
=A03 +-<br>
&gt;=C2=A0 drivers/media/platform/vicodec/vicodec-core.c |=C2=A0 35 ++++-<b=
r>
&gt;=C2=A0 5 files changed, 182 insertions(+), 67 deletions(-)<br>
&gt; <br>
<br>
</blockquote></div></div></div>

--00000000000002d36f057ab2286f--

