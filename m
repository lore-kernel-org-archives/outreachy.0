X-GM-THRID: 6955860329873014784
X-Received: by 2002:aca:ad87:: with SMTP id w129mr16771418oie.35.1619539181189;
        Tue, 27 Apr 2021 08:59:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:5c5:: with SMTP id 188ls5419928oif.6.gmail; Tue, 27 Apr
 2021 08:59:40 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxc6VLz2r8x6IePqELIN9L3ksrqmI/p8WUOx6IyPsBK4eRSZ5UTujyRcebcYnmnCVn6BF1m
X-Received: by 2002:a05:6808:14d4:: with SMTP id f20mr7972543oiw.126.1619539180371;
        Tue, 27 Apr 2021 08:59:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619539180; cv=none;
        d=google.com; s=arc-20160816;
        b=QtlN+l6ZBuKLXTWXLhPb1HIyGwNcEekUkHMorRDdQwfSCBsK50EX6cdjMigoR3Y4J1
         sMqxKZx8/27dbLOhAjup6CVys0tYj72nuzelXu8ikx3XyWXZqDqiPsvyn8Min0pHrqtJ
         2gU40b+HYM/k3tN1QmfdBkZ/CVDAAlVwViDBhHdD13SZQLf+y1pvMVXYgJU1pvYK/jIk
         MAhzE1hbct7tEWEivvzDG7enPw1BgcMOLgYtCizGTcScPbtiNl0cEyst+fhjgU9RRCEd
         R8giNUbJA12x4e/ziK0D8GP21SRlE/BS24r+7o7H4KQgw+AMuxKCUXWX6eY3+zEqCkF3
         8zCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=pO+TOeQz7nD0Aw+QxjAyrumXOZBdSGmgLPKk5fvu3a0=;
        b=KiOLhyMdVrI+mAMd/VolCSioMAfTCbgz693Us2CyA7vrPciOjG8xHX2fsYPl8Ows4+
         WEq+Ibo8wwpUCPi4nToOx+wSKKL5SnSu72FhW3jcTaBqewFnLTyoOQRChHJaRYwDHg1W
         b7ET5RKAyGUWMEEmOF2QmoEsXPN4Ohv8+Ai2nO8ZmaVOq0dxD+AJj+/UmafXBEl6QvIZ
         TnyK0x5qBdlJQyRmsLNkPnfh073L4HGWhbXsMoqH4eIoWJZjGL1Vl+vAtTP4MAkZ8Ol5
         VsVWqy1Ntdi2fD6GpAMlhv2hxGdqZGSC51VH41DC8sqG0l97HY3Wnf78Oq50Qirz9kj7
         HNMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="F8jtvz/a";
       spf=pass (google.com: domain of tawahpeggy98@gmail.com designates 2607:f8b0:4864:20::334 as permitted sender) smtp.mailfrom=tawahpeggy98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <tawahpeggy98@gmail.com>
Received: from mail-ot1-x334.google.com (mail-ot1-x334.google.com. [2607:f8b0:4864:20::334])
        by gmr-mx.google.com with ESMTPS id v31si1459829ott.5.2021.04.27.08.59.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Apr 2021 08:59:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of tawahpeggy98@gmail.com designates 2607:f8b0:4864:20::334 as permitted sender) client-ip=2607:f8b0:4864:20::334;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="F8jtvz/a";
       spf=pass (google.com: domain of tawahpeggy98@gmail.com designates 2607:f8b0:4864:20::334 as permitted sender) smtp.mailfrom=tawahpeggy98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x334.google.com with SMTP id f75-20020a9d03d10000b0290280def9ab76so50614650otf.12
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Apr 2021 08:59:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=pO+TOeQz7nD0Aw+QxjAyrumXOZBdSGmgLPKk5fvu3a0=;
        b=F8jtvz/azZ1zbAA5DRJmnAcfoVgrfaYVPHe0IvWrc8TffCO9liGXp9o3cAbmE5uOqO
         IP8et8MYKcvZpqdNCx6Vsg2rmWTFFHEw7gDHDiPYOh2dD/2RZpQvAawsOL+xr1+LqQOV
         QAPMJRCklhB2OMdCyGAAsFw3depvS35EETn/jXxnXeeL3NUUBO6gmku4kKpgVDDlWkVK
         sE2BzldB6PjE0cTROZU0M/C9TW2MYb011BbmNFtHaQW6FpzWMMBcIIceOw+KTPhPsTUF
         YmI17xI9xQOKa7LJhGuLNYoo3Xx7qh7IMYGEEmfd8N1/90hg1oxpVxyfJmdsy3Sa++GK
         cy4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=pO+TOeQz7nD0Aw+QxjAyrumXOZBdSGmgLPKk5fvu3a0=;
        b=IjjJKuPHSh9Lv9NtPSdhZ/0r1+aPFrEFyQo3gXKJT2DFJcYi/FpRxgDRSETaJbIfkR
         sn1K/uAfRVMnmDmYbsgfTfO7nGQQ2vehi9cAmIxJcK3bRw0F3yGSRs8iT+oIsBZjXcbg
         Xy6YoQvpqmfmaoJHwhp6gq+EWpp8TpdEya2pKNLcHSxzZB66OnHcD3Da4WrtQWYv9w75
         l3ak123dxwejK6VJg+FUgEnHy5VxpGdP7EZLx9NZ4JPL4EU1KxdEevIshep88moT13WQ
         N+PELCX/nEMy56KAukxtQpF5qrh8+7NQg/FBVokJegRGCAh1CIHSBJzuyJEaxWfIs0H8
         Zayw==
X-Gm-Message-State: AOAM5312MF1WXtTCuXWcAjf7/c3N0J+rihpUMurZ1xJzVBvyIfdFfkWs
	/8ZY7nFIia6qFZGFGK2wsF3Z9UXox3egh2L+d6SMXmu5H1cPkA==
X-Received: by 2002:a05:6830:4110:: with SMTP id w16mr20683305ott.348.1619539180191;
 Tue, 27 Apr 2021 08:59:40 -0700 (PDT)
MIME-Version: 1.0
References: <20210427153024.GA14574@peggy-Lenovo-V130-15IKB> <YIgzSRmi41e8PjHH@hovoldconsulting.com>
In-Reply-To: <YIgzSRmi41e8PjHH@hovoldconsulting.com>
From: PEGGY TAWAH <tawahpeggy98@gmail.com>
Date: Tue, 27 Apr 2021 16:59:28 +0100
Message-ID: <CADT-=4mhWwO7BJXG8CGMXv=ADK9Xp_78gpxPygWmB92-9+gjRQ@mail.gmail.com>
Subject: Re: [PATCH] Staging:greybus: Add () around gcam macro.
To: Johan Hovold <johan@kernel.org>
Cc: Alex Elder <elder@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary="00000000000089048b05c0f6596c"

--00000000000089048b05c0f6596c
Content-Type: text/plain; charset="UTF-8"

Ok, I'll check it out. Thanks for your corrections

On Tue, Apr 27, 2021, 4:52 PM Johan Hovold <johan@kernel.org> wrote:

> On Tue, Apr 27, 2021 at 11:30:28AM -0400, tawahpeggy wrote:
> > checkpatch.pl suggested parenthesis be added aroung gcam macro variable.
> >
> > Signed-off-by: tawahpeggy <tawahpeggy98@gmail.com>
> >
> > ---
> >  drivers/staging/greybus/camera.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/greybus/camera.c
> b/drivers/staging/greybus/camera.c
> > index cdbb42cd413b..324a26430f71 100644
> > --- a/drivers/staging/greybus/camera.c
> > +++ b/drivers/staging/greybus/camera.c
> > @@ -182,7 +182,7 @@ static const struct gb_camera_fmt_info
> *gb_camera_get_format_info(u16 gb_fmt)
> >
> >  #define gcam_dbg(gcam, format...)    dev_dbg(&gcam->bundle->dev, format)
> >  #define gcam_info(gcam, format...)   dev_info(&gcam->bundle->dev,
> format)
> > -#define gcam_err(gcam, format...)    dev_err(&gcam->bundle->dev, format)
> > +#define gcam_err((gcam), format...)  dev_err(&gcam->bundle->dev, format)
>
> I'm pretty sure this is not what checkpatch suggested. You could add
> parenthesis around gcam in the &gcam->bundle bit though.
>
> Also doesn't make sense to change only one of the macros.
>
> >  static int gb_camera_operation_sync_flags(struct gb_connection
> *connection,
> >                                         int type, unsigned int flags,
>
> Johan
>

--00000000000089048b05c0f6596c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Ok, I&#39;ll check it out. Thanks for your corrections</d=
iv><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On =
Tue, Apr 27, 2021, 4:52 PM Johan Hovold &lt;<a href=3D"mailto:johan@kernel.=
org">johan@kernel.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex=
">On Tue, Apr 27, 2021 at 11:30:28AM -0400, tawahpeggy wrote:<br>
&gt; <a href=3D"http://checkpatch.pl" rel=3D"noreferrer noreferrer" target=
=3D"_blank">checkpatch.pl</a> suggested parenthesis be added aroung gcam ma=
cro variable.<br>
&gt; <br>
&gt; Signed-off-by: tawahpeggy &lt;<a href=3D"mailto:tawahpeggy98@gmail.com=
" target=3D"_blank" rel=3D"noreferrer">tawahpeggy98@gmail.com</a>&gt;<br>
&gt; <br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/greybus/camera.c | 2 +-<br>
&gt;=C2=A0 1 file changed, 1 insertion(+), 1 deletion(-)<br>
&gt; <br>
&gt; diff --git a/drivers/staging/greybus/camera.c b/drivers/staging/greybu=
s/camera.c<br>
&gt; index cdbb42cd413b..324a26430f71 100644<br>
&gt; --- a/drivers/staging/greybus/camera.c<br>
&gt; +++ b/drivers/staging/greybus/camera.c<br>
&gt; @@ -182,7 +182,7 @@ static const struct gb_camera_fmt_info *gb_camera_=
get_format_info(u16 gb_fmt)<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 #define gcam_dbg(gcam, format...)=C2=A0 =C2=A0 dev_dbg(&amp;gcam=
-&gt;bundle-&gt;dev, format)<br>
&gt;=C2=A0 #define gcam_info(gcam, format...)=C2=A0 =C2=A0dev_info(&amp;gca=
m-&gt;bundle-&gt;dev, format)<br>
&gt; -#define gcam_err(gcam, format...)=C2=A0 =C2=A0 dev_err(&amp;gcam-&gt;=
bundle-&gt;dev, format)<br>
&gt; +#define gcam_err((gcam), format...)=C2=A0 dev_err(&amp;gcam-&gt;bundl=
e-&gt;dev, format)<br>
<br>
I&#39;m pretty sure this is not what checkpatch suggested. You could add<br=
>
parenthesis around gcam in the &amp;gcam-&gt;bundle bit though.<br>
<br>
Also doesn&#39;t make sense to change only one of the macros.<br>
<br>
&gt;=C2=A0 static int gb_camera_operation_sync_flags(struct gb_connection *=
connection,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0int type, unsigned int flags,<br>
<br>
Johan<br>
</blockquote></div>

--00000000000089048b05c0f6596c--

