X-GM-THRID: 6618908371010453504
X-Received: by 2002:a6b:b20a:: with SMTP id b10-v6mr2926976iof.39.1541664624199;
        Thu, 08 Nov 2018 00:10:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:f306:: with SMTP id m6-v6ls120106ioh.1.gmail; Thu, 08
 Nov 2018 00:10:23 -0800 (PST)
X-Google-Smtp-Source: AJdET5fGittC3fkUlOfNyKXJd7z2efxLHx/5qFVsq0cLiprWRkqsTzzLvwrvdvCSp+vlCTq1PndW
X-Received: by 2002:a6b:7115:: with SMTP id q21-v6mr2956427iog.5.1541664623000;
        Thu, 08 Nov 2018 00:10:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541664622; cv=none;
        d=google.com; s=arc-20160816;
        b=XjGsWryp4zzXupx+Rm66vwmBG0l/UqvlOPR8TMvOlC6g3iZTZDzOa9fQVv1eW08UN8
         Z1viM1ajK6lMvJ8ruZFsR/hBVoaUeS2iPLzM1G46wO3/McKf+6hNG6Aq1z1uB6UdyrvI
         zV81FEacttXxAzDEyZ8qOi5HNCwSDj920L1lC2Pz07iH+vzFx8HZeJqNnlC1enqolJdl
         kkUNe4ddrrEuQom55FYyFidjFYIjKiuDztgwRWUH2VMpe52WhGMazbLD978HTfO/Z2Qd
         Ozb+bOh1CLfN+gZhwJOVAH4+zJa3y5nXoFYZ9+DJCCkQ+j4MSCeS0CKvpaDhK1YsOhw/
         wdog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=1Ytm90WGnN0u87p0JD+c+/1YNPR0Vc+LJZyyEmqlH9U=;
        b=K2kRxcaPwq4ohqCZ9Kz+EcKaqEklP3NZsxrxUa3kHKc4k27POuDDfyNSyNxLHx/Pay
         drWvKGcRhWXLkYq98UvIiFWQ0DNIAtX5RAYMzM7zQfEMErC8l3qw78b3Vgywj79dIu39
         6zovEd9NHxFYu0I0LJcMiTPUHHyDic26qlplLmZDB15o9fMuX0ZBqzhM7WD97xe4X61b
         2e0kghSeMErfqDixfIUSvwJcgsFAqzJszsEome77EIU2RzgqL3sKodRnfWCOc+u5gSqH
         bgLrP5ARevtyQgPhyPwcsk7GxQy1yJbiARFV4j73ylZ6NgPqeo2cfpz6XDNIhYbelCt3
         UafQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VEdWhh8S;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2607:f8b0:4864:20::942 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <dafna3@gmail.com>
Received: from mail-ua1-x942.google.com (mail-ua1-x942.google.com. [2607:f8b0:4864:20::942])
        by gmr-mx.google.com with ESMTPS id x6-v6si112526iob.5.2018.11.08.00.10.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Nov 2018 00:10:22 -0800 (PST)
Received-SPF: pass (google.com: domain of dafna3@gmail.com designates 2607:f8b0:4864:20::942 as permitted sender) client-ip=2607:f8b0:4864:20::942;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VEdWhh8S;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2607:f8b0:4864:20::942 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ua1-x942.google.com with SMTP id p9so2886371uaa.5
        for <outreachy-kernel@googlegroups.com>; Thu, 08 Nov 2018 00:10:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=1Ytm90WGnN0u87p0JD+c+/1YNPR0Vc+LJZyyEmqlH9U=;
        b=VEdWhh8S57TGowQSJX49/q/XecOJtqOpZ6EWdpieL0aQO9mmPty3f01S0mkZphb+/o
         eDnVvujxQrGC6EzTrFaS4aVDvKIe21+haEn0hPz7VltErKtt3Kd+mA65h54iVCq5GOM7
         OzU8V06ZgpgQSW/HCPPtXP0DHxYt9sBlT4mrwMlb99tWfRzqS1nTsFyIQQJ28TLo3hcQ
         sjB/SD6EAvABT78fWyoda4l/l5SShEpICS02Rszry2u5s9GixxrNK148FPxAyQzqcIEf
         ZalQ1g6XF+O9uKVEFM/Vt3hX2/0UgvF+pF54E6tcNdExsBXyy2vx+MrzWK/5eW9ZXnUl
         R34Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=1Ytm90WGnN0u87p0JD+c+/1YNPR0Vc+LJZyyEmqlH9U=;
        b=fh7GwDeqTsJv00fMKL8XRiwEUxBp99hVy09x92gZrG0jG+o7bdT2dStuT/LvOXppDb
         PAJiMD6p8wwpAKxl2lXTy6QFTJcvu4IISxxsXV+1AAg4q5llaNP6W4B4pBRAvZtDOW3P
         uqBTwrXNu8SSylnyAdPX85SlC7CMJlp/VnAkOXPvjVQp4K6lWu9UXDzOOqSAH3Uk8I+f
         QOy3sed8vrbnNgU39oCCUbeVsf55x3xqB3oF7GpJakE9R9Gsl2tmJPkBkIDb8HN5WRV1
         x3LyRzsVdmaBney/KON9nxtwPfQPPx7dCRWPoeoIS3icXuNs8HoJhkqq9xnOf0uLnfAa
         ZVxQ==
X-Gm-Message-State: AGRZ1gKaXI+ixlJX2//vJYgtmqiWwYKH8Yf3oS4YKb/yrfeh5ysN0dzu
	Qphn3zRXf74nNqmPkAw+XNjY5IyEHcz2btx61Tq70hG3
X-Received: by 2002:ab0:48cd:: with SMTP id y13mr291243uac.49.1541664622265;
 Thu, 08 Nov 2018 00:10:22 -0800 (PST)
MIME-Version: 1.0
References: <cover.1541451484.git.dafna3@gmail.com> <CAAEAJfC=R3U9Pz0K5MkYT1Y0FM=PA2e6uUfbYL3sfDuobCWMDA@mail.gmail.com>
In-Reply-To: <CAAEAJfC=R3U9Pz0K5MkYT1Y0FM=PA2e6uUfbYL3sfDuobCWMDA@mail.gmail.com>
From: Dafna Hirschfeld <dafna3@gmail.com>
Date: Thu, 8 Nov 2018 10:10:10 +0200
Message-ID: <CAJ1myNSJ5RtaJgAubNyxmH-JrZdVpZtjHL6-jDhW65oStqX-Ow@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH vicodec v4 0/3] Add support to more
 pixel formats in vicodec
To: ezequiel@vanguardiasur.com.ar
Cc: helen.koike@collabora.com, hverkuil@xs4all.nl, mchehab@kernel.org, 
	outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="0000000000002c4a7f057a22c4f9"

--0000000000002c4a7f057a22c4f9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 8, 2018 at 2:51 AM Ezequiel Garcia <
ezequiel@vanguardiasur.com.ar> wrote:

> Hello Dafna,
>
> Thanks for the patches.
>
> Just out of curiosity.  Why these patches havent't been submitted to
> the media mailing list?
>
> Hi,
I wasn't sure if I should send it to the media mailing list, since this
part of outreachy application.


Also, how are you testing these changes?
>

Based on Helen's decoder:
https://gitlab.collabora.com/koike/v4l2-codec

I extended it to include encoders and decoders for the new supported
formats.

testing formats with alpha plane:
https://github.com/kamomil/outreachy/blob/master/argb-and-abgr-full-example=
.sh

testing greyscale:
https://github.com/kamomil/outreachy/blob/master/greyscale-full-example.sh

Dafna


> Thanks,
> Ezequiel
>
> On Mon, 5 Nov 2018 at 18:14, Dafna Hirschfeld <dafna3@gmail.com> wrote:
> >
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
> https://groups.google.com/d/msgid/outreachy-kernel/cover.1541451484.git.d=
afna3%40gmail.com
> .
> > For more options, visit https://groups.google.com/d/optout.
>
>
>
> --
> Ezequiel Garc=C3=ADa, VanguardiaSur
> www.vanguardiasur.com.ar
>

--0000000000002c4a7f057a22c4f9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div di=
r=3D"ltr"><br><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Thu, Nov 8=
, 2018 at 2:51 AM Ezequiel Garcia &lt;<a href=3D"mailto:ezequiel@vanguardia=
sur.com.ar">ezequiel@vanguardiasur.com.ar</a>&gt; wrote:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex">Hello Dafna,<br>
<br>
Thanks for the patches.<br>
<br>
Just out of curiosity.=C2=A0 Why these patches havent&#39;t been submitted =
to<br>
the media mailing list?<br>
<br></blockquote><div>Hi,</div><div>I wasn&#39;t sure if I should send it t=
o the media mailing list, since this part of outreachy application.</div><d=
iv><br></div><div><br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x">
Also, how are you testing these changes?<br></blockquote><div><br></div><di=
v>Based on Helen&#39;s decoder:<br></div><div><a href=3D"https://gitlab.col=
labora.com/koike/v4l2-codec">https://gitlab.collabora.com/koike/v4l2-codec<=
/a><br></div><div><br></div><div>I extended it to include encoders and deco=
ders for the new supported formats.</div><div><br></div><div>testing format=
s with alpha plane:</div><div><a href=3D"https://github.com/kamomil/outreac=
hy/blob/master/argb-and-abgr-full-example.sh">https://github.com/kamomil/ou=
treachy/blob/master/argb-and-abgr-full-example.sh</a><br></div><div><br></d=
iv><div>testing greyscale:</div><div><a href=3D"https://github.com/kamomil/=
outreachy/blob/master/greyscale-full-example.sh">https://github.com/kamomil=
/outreachy/blob/master/greyscale-full-example.sh</a><br></div><div><br></di=
v><div>Dafna</div><div><br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex">
<br>
Thanks,<br>
Ezequiel<br>
<br>
On Mon, 5 Nov 2018 at 18:14, Dafna Hirschfeld &lt;<a href=3D"mailto:dafna3@=
gmail.com" target=3D"_blank">dafna3@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; The new supported formats are<br>
&gt; V4L2_PIX_FMT_GREY, V4L2_PIX_FMT_ARGB32, V4L2_PIX_FMT_ABGR32.<br>
&gt;<br>
&gt; The returned encoded format is chaned to support various numbers<br>
&gt; of planes instead of assuming 3 planes.<br>
&gt;<br>
&gt; The first patch adds new fields to structs.<br>
&gt; The second patch adds support for V4L2_PIX_FMT_GREY.<br>
&gt; The third patch adds support for V4L2_PIX_FMT_ARGB32, V4L2_PIX_FMT_ABG=
R32.<br>
&gt;<br>
&gt; Changes from v3:<br>
&gt;<br>
&gt; patch 1,3: - no change<br>
&gt;<br>
&gt; patch 2:<br>
&gt; - replace the 2-bit flag FWHT_FL_COMPONENTS_NUM_BIT[01] with GENMASK<b=
r>
&gt; - add TODO comment - handle the case where the encoded stream is diffe=
rent format<br>
&gt; than the decoded<br>
&gt; - allocate maximal space for the V4L2_PIX_FMT_FWHT format<br>
&gt;<br>
&gt; with the test &#39;flags &amp; FWHT_FL_COMPONENTS_NUM_BIT[01]&#39;<br>
&gt;<br>
&gt; Dafna Hirschfeld (3):<br>
&gt;=C2=A0 =C2=A0media: vicodec: prepare support for various number of plan=
es<br>
&gt;=C2=A0 =C2=A0media: vicodec: Add support of greyscale format<br>
&gt;=C2=A0 =C2=A0media: vicodec: Add support for 4 planes formats<br>
&gt;<br>
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
&gt;<br>
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
gle.com/d/msgid/outreachy-kernel/cover.1541451484.git.dafna3%40gmail.com" r=
el=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/msgid/outre=
achy-kernel/cover.1541451484.git.dafna3%40gmail.com</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/optout</a=
>.<br>
<br>
<br>
<br>
-- <br>
Ezequiel Garc=C3=ADa, VanguardiaSur<br>
<a href=3D"http://www.vanguardiasur.com.ar" rel=3D"noreferrer" target=3D"_b=
lank">www.vanguardiasur.com.ar</a><br>
</blockquote></div></div></div></div></div></div>

--0000000000002c4a7f057a22c4f9--

