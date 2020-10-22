X-GM-THRID: 6886436790360604672
X-Received: by 2002:a1c:5a06:: with SMTP id o6mr2817195wmb.181.1603375996922;
        Thu, 22 Oct 2020 07:13:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:82ab:: with SMTP id 40ls2646130wrc.1.gmail; Thu, 22 Oct
 2020 07:13:09 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxIVo77zmybRhX5VUg4ftXh8WkE7JTvSkxGRZa9zFfL9LRuENgs3DgN3i7hfDHWPnRPqJT+
X-Received: by 2002:a5d:6506:: with SMTP id x6mr3164101wru.71.1603375989860;
        Thu, 22 Oct 2020 07:13:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603375989; cv=none;
        d=google.com; s=arc-20160816;
        b=mHpmV5clYsygZ3mfecu9ocl4/Vur5uaQpkQuMnEc9+mCHkfM2UPCEG2rxm17AzagUf
         4xAInXN72c3mXpaEvGP5/gSR67qvJkq2WyxsOJzdR5C3YAY9FGY/JwReHM1ARWHIsOSl
         BP/Q330R77YDfJG4LQCJN1hrMdZneFEA208jdZxEGJ1Yc+DYi/ZgrFJsNlkI9RGffixJ
         Bk0L+7mnw2sHOT69/yuSfQUYDspBHYOc3gD1aKnmNkVQGLq73IWA2dGboCjDQK3d3B/Z
         Xl4rEU9CvQY3U3rUR7hmt6valB7gfAZEoTf6avxBD38iW9nUYEM+FzXY5aQrYz7uG990
         Buyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=48c5OcYMWvu5q5X1zsOMZin5NZbqXEZ5nAv/nbXgfjY=;
        b=GP8vvgKsGMeqHK23olXgbmkwkeIPYEXk4CLNb4f9LrJ3u4AX9cOyT6Y4t9D1pydkfn
         jyOpK2dbSqG0OFpobGYFk6Zxt7L8SZJXzcetcfYEW/XiMuNSG9LwmFAOL92KKq4L7ZfC
         pmsSLok+fohtHXxzxV5y+nJu8A2pKhXMBngoagYZMDnNjIhaMY8oNSCNvQs8by6KmoH4
         +NmWxt4Bb+gIFQWLlWyx3/pZGvisywYprHrk2UcILUgGRQzW+wd/OKR7KCalJaO8UVjO
         I2n0rSohlImRN4ohTMB5pvTvl+Vf7+8we7nd2r7Mo18KhLL51qzF2EOY0bxkHxtO7lHP
         Y6gA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Gd8eKbtt;
       spf=pass (google.com: domain of sylphrenadin@gmail.com designates 2a00:1450:4864:20::644 as permitted sender) smtp.mailfrom=sylphrenadin@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sylphrenadin@gmail.com>
Received: from mail-ej1-x644.google.com (mail-ej1-x644.google.com. [2a00:1450:4864:20::644])
        by gmr-mx.google.com with ESMTPS id o16si63528wrv.1.2020.10.22.07.13.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Oct 2020 07:13:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of sylphrenadin@gmail.com designates 2a00:1450:4864:20::644 as permitted sender) client-ip=2a00:1450:4864:20::644;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Gd8eKbtt;
       spf=pass (google.com: domain of sylphrenadin@gmail.com designates 2a00:1450:4864:20::644 as permitted sender) smtp.mailfrom=sylphrenadin@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x644.google.com with SMTP id a3so2503318ejy.11
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Oct 2020 07:13:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=48c5OcYMWvu5q5X1zsOMZin5NZbqXEZ5nAv/nbXgfjY=;
        b=Gd8eKbttnDG/Ntg/jKirWXu2V0CMB/QsfmXJ4GaaalmXXoFQkte3NFqa9IkI5/xPJc
         ITon4DSj/TFInhhLkxMMo0OBpsIBly5lAcUF/ijXSxbOQbXo39O6MesGV4VuGJ/Q/ebd
         wtb3VFfkUfJDCJ29kQxrlYf5FIqvoa/6EpUHY0kB4lOZs29oBLkknNQ3f4CAg/gjGn6P
         /qibsNOULoWgUKA6LYRqwGNZM0WAaeY16AdcAjzCrbBUvaw6lZIbYn+iG0t5FtsybAv1
         lcJon7ei5xm/NNaYQs0Sozaz+/21RX6kdNm9sXlyH7bv0QbAVq2jcDQ8jBkkA1j9NUUX
         ajOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=48c5OcYMWvu5q5X1zsOMZin5NZbqXEZ5nAv/nbXgfjY=;
        b=EkZ0T2HBtgi8KGlgq5O3UhqjCSdP74xNLwPW+lXoCKJ2tDHpMZTvUGTuFSLZ3WCXvU
         QxCN5yey5dVfxrUZYO0a76Kwdi2eabXhprlM0mCmTnU8HSeoD/eK9B4rppbyyDLS0jum
         KLPUGDbaFHepC/hHOGdcnj3YX/gN1jOQW4fp65QUn5HO6Y95nIYPTy/ot71lp0kF0z86
         ysBQaykfJYkOf4tZ+C2d80FOyZS2ZwJ+3fxKasG+uIMtdqVIcd7BLwH63uc2Btlrknw6
         3NXLr8/PkJa4bk7DNojVLxgwbmckUYvDAyiPdJZLJSVAuatjQBMzvt0XotsXQLUu536g
         Smdw==
X-Gm-Message-State: AOAM531aIAlf5rdohB0G61pZmxwq7HPdce+xYV98fcNnGdClbd5HmRfq
	8aPGSN5caT0GcaMXgYpcDBt+BW5loebpMNt/c2a5fX/4
X-Received: by 2002:a17:906:bc57:: with SMTP id s23mr2430030ejv.94.1603375989619;
 Thu, 22 Oct 2020 07:13:09 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1603371258.git.sylphrenadin@gmail.com> <20201022133722.GA1784385@kroah.com>
 <CAK-LDbJQM_Xq1w5Nc4NVtEmqtjYdezr_w--b-d7cbHYiM98mvQ@mail.gmail.com>
In-Reply-To: <CAK-LDbJQM_Xq1w5Nc4NVtEmqtjYdezr_w--b-d7cbHYiM98mvQ@mail.gmail.com>
From: Sumera Priyadarsini <sylphrenadin@gmail.com>
Date: Thu, 22 Oct 2020 19:42:57 +0530
Message-ID: <CACAkLuoubwnXBEHGry9kLy_YStwXu9bR=dGndt0Dx6JdJM+8LQ@mail.gmail.com>
Subject: Re: [Outreachy kernel][PATCH 0/5] drm/amdgpu: Replace snprintf() with sysfs_emit
To: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
Cc: Greg KH <gregkh@linuxfoundation.org>, 
	Outreachy <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary="0000000000004d811c05b243105b"

--0000000000004d811c05b243105b
Content-Type: text/plain; charset="UTF-8"

On Thu, 22 Oct, 2020, 7:19 PM Vaishali Thakkar, <vthakkar@vaishalithakkar.in>
wrote:

> On Thu, Oct 22, 2020 at 7:06 PM Greg KH <gregkh@linuxfoundation.org>
> wrote:
> >
> > On Thu, Oct 22, 2020 at 07:01:44PM +0530, Sumera Priyadarsini wrote:
> > > Using snprintf() for show() methods holds the risk of buffer overrun
> > > as snprintf() does not know the PAGE_SIZE maximum of the temporary
> > > buffer used to output sysfs content.
> > >
> > > This patchset is a series of Coccinelle cleanups across the staging
> > > directory to convert snprintf with scnprintf in the relevant files.
> > >
> > > Sumera Priyadarsini (5):
> > >   gpu: drm: amdgpu: Replace snprintf() with sysfs_emit()
> > >   gpu: drm: amdgpu: Replace snprintf() with sysfs_emit()
> > >   gpu: drm: amdgpu: Replace snprintf() with sysfs_emit()
> > >   gpu: drm: amdgpu: Replace snprintf() with sysfs_emit()
> > >   gpu: drm: amdgpu: Replace snprintf() with sysfs_emit()
> > >
> > >  drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c | 2 +-
> > >  drivers/gpu/drm/amd/amdgpu/amdgpu_device.c   | 8 ++++----
> > >  drivers/gpu/drm/amd/amdgpu/amdgpu_gtt_mgr.c  | 4 ++--
> > >  drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c      | 2 +-
> > >  drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c      | 4 ++--
> >
> > These files are ot "in the staging directory" as your text above states
> :(
>
> I think Sumera has sent it as part of the DRM project
> related task(s).


Yes, although I think Greg is referring to the cover letter text here- I
will change that.

So CC'ing outreachy-kernel mailing list
> is fine. Although I see 2 cover letters being sent - one
> with all mailing lists and maintainers being CC'ed and
> other one without most of them which is confusing.
>
> Sumera: You may want to fix that.
>

I will send a v2 fixing the patchset.

regards,
Sumera

> Also, you have 5 patches that do different things, yet have the same
> > exact subject line, which isn't acceptable either.
> >
> > thanks,
> >
> > greg k-h
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/20201022133722.GA1784385%40kroah.com
> .
>
>
>
> --
> Vaishali
>
>
> --
> Vaishali
>

--0000000000004d811c05b243105b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Thu, 22 Oct, 2020, 7:19 PM Vaishali Thakkar, &lt;<a=
 href=3D"mailto:vthakkar@vaishalithakkar.in">vthakkar@vaishalithakkar.in</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0=
 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On Thu, Oct 22, 2020 a=
t 7:06 PM Greg KH &lt;<a href=3D"mailto:gregkh@linuxfoundation.org" target=
=3D"_blank" rel=3D"noreferrer">gregkh@linuxfoundation.org</a>&gt; wrote:<br=
>
&gt;<br>
&gt; On Thu, Oct 22, 2020 at 07:01:44PM +0530, Sumera Priyadarsini wrote:<b=
r>
&gt; &gt; Using snprintf() for show() methods holds the risk of buffer over=
run<br>
&gt; &gt; as snprintf() does not know the PAGE_SIZE maximum of the temporar=
y<br>
&gt; &gt; buffer used to output sysfs content.<br>
&gt; &gt;<br>
&gt; &gt; This patchset is a series of Coccinelle cleanups across the stagi=
ng<br>
&gt; &gt; directory to convert snprintf with scnprintf in the relevant file=
s.<br>
&gt; &gt;<br>
&gt; &gt; Sumera Priyadarsini (5):<br>
&gt; &gt;=C2=A0 =C2=A0gpu: drm: amdgpu: Replace snprintf() with sysfs_emit(=
)<br>
&gt; &gt;=C2=A0 =C2=A0gpu: drm: amdgpu: Replace snprintf() with sysfs_emit(=
)<br>
&gt; &gt;=C2=A0 =C2=A0gpu: drm: amdgpu: Replace snprintf() with sysfs_emit(=
)<br>
&gt; &gt;=C2=A0 =C2=A0gpu: drm: amdgpu: Replace snprintf() with sysfs_emit(=
)<br>
&gt; &gt;=C2=A0 =C2=A0gpu: drm: amdgpu: Replace snprintf() with sysfs_emit(=
)<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c | 2 +-<br>
&gt; &gt;=C2=A0 drivers/gpu/drm/amd/amdgpu/amdgpu_device.c=C2=A0 =C2=A0| 8 =
++++----<br>
&gt; &gt;=C2=A0 drivers/gpu/drm/amd/amdgpu/amdgpu_gtt_mgr.c=C2=A0 | 4 ++--<=
br>
&gt; &gt;=C2=A0 drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c=C2=A0 =C2=A0 =C2=A0=
 | 2 +-<br>
&gt; &gt;=C2=A0 drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c=C2=A0 =C2=A0 =C2=A0=
 | 4 ++--<br>
&gt;<br>
&gt; These files are ot &quot;in the staging directory&quot; as your text a=
bove states :(<br>
<br>
I think Sumera has sent it as part of the DRM project<br>
related task(s). </blockquote></div></div><div dir=3D"auto"><br></div><div =
dir=3D"auto">Yes, although I think Greg is referring to the cover letter te=
xt here- I will change that.=C2=A0</div><div dir=3D"auto"><br></div><div di=
r=3D"auto"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">So CC&=
#39;ing outreachy-kernel mailing list<br>
is fine. Although I see 2 cover letters being sent - one<br>
with all mailing lists and maintainers being CC&#39;ed and<br>
other one without most of them which is confusing.<br>
<br>
Sumera: You may want to fix that.<br></blockquote></div></div><div dir=3D"a=
uto"><br></div><div dir=3D"auto">I will send a v2 fixing the patchset.=C2=
=A0</div><div dir=3D"auto"><br></div><div dir=3D"auto">regards,=C2=A0</div>=
<div dir=3D"auto">Sumera</div><div dir=3D"auto"><br></div><div dir=3D"auto"=
><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"marg=
in:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
&gt; Also, you have 5 patches that do different things, yet have the same<b=
r>
&gt; exact subject line, which isn&#39;t acceptable either.<br>
&gt;<br>
&gt; thanks,<br>
&gt;<br>
&gt; greg k-h<br>
&gt;<br>
&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.=
com" target=3D"_blank" rel=3D"noreferrer">outreachy-kernel+unsubscribe@goog=
legroups.com</a>.<br>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/outreachy-kernel/20201022133722.GA1784385%40kroah.com" rel=
=3D"noreferrer noreferrer" target=3D"_blank">https://groups.google.com/d/ms=
gid/outreachy-kernel/20201022133722.GA1784385%40kroah.com</a>.<br>
<br>
<br>
<br>
-- <br>
Vaishali<br>
<br>
<br>
-- <br>
Vaishali<br>
</blockquote></div></div></div>

--0000000000004d811c05b243105b--

