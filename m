X-GM-THRID: 6255258611058999296
X-Received: by 10.129.132.213 with SMTP id u204mr7614763ywf.5.1456419892081;
        Thu, 25 Feb 2016 09:04:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.47.25 with SMTP id j25ls496097ioo.59.gmail; Thu, 25 Feb
 2016 09:04:51 -0800 (PST)
X-Received: by 10.107.9.213 with SMTP id 82mr3239426ioj.10.1456419891742;
        Thu, 25 Feb 2016 09:04:51 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-oi0-x22e.google.com (mail-oi0-x22e.google.com. [2607:f8b0:4003:c06::22e])
        by gmr-mx.google.com with ESMTPS id p10si330630igg.1.2016.02.25.09.04.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 09:04:51 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:4003:c06::22e as permitted sender) client-ip=2607:f8b0:4003:c06::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:4003:c06::22e as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-oi0-x22e.google.com with SMTP id j125so44539249oih.0
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 09:04:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=fzTZa4oKaoFfvqXGy9byhDjm233NSgab84cKYbJ88n8=;
        b=GltvmEEPlL0YiugPs2SRhUh+QgXUyZpQZgMvUT0Ot+8qq8xzDYafGlIjdIcBmrqSWg
         l4Pe0zTOUA6LX5Ny884cwdJoZCxZTFimwjdA85yPvGD27srAyt8o0cEXYjuzOIUQfRaq
         E7EA/RqmoKyRJCtGpIMN+OObVTrv5HZmiv8yS9O8XeE3sKkISB8R7CFONHlh8jmk+1co
         V3YjPDRmVuW1ykrJRrKRNo60qnJy7n79o/1Iq+frUvWagvbA6ijV3jlfzJJQiJQVEwFy
         8hGDoUV1ck+83FSNs1bjAD0L7ySVzJ+UnZQ2e8t9IM+U9Tqh7AO9vKNLfcupcPUiqapP
         5f8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=fzTZa4oKaoFfvqXGy9byhDjm233NSgab84cKYbJ88n8=;
        b=jyTCKGEzDvET09rSJx/vbfPGIMYlF53FPfIkXmbc2lCEkMsZAHL631Dg2Nuhdp21f5
         7i048pbtakGhNANNm0Na1jlDrTKbb2Xdc29wWCXRtu0IH8i5X9JHZ+CauyPSLcV9gtvC
         abrZmoPqi0Pk7mN6bg63KGGcUnJEsg0VKv5ysZXRgjnJCZX3OJ5CxyvBYcNAktUJ1K7v
         W3OeJvwb6uzW3etv898Yko3OV8USbV2a4JS7Ial/giiV/K8Ju9cx/8vsZMzwbPJB9muJ
         Vq4MY0/o7rAkUcAAvs1gg9BHUnAyAnjjEbjgmVOoIGo79uWefb7KF6UBUVicQa3i57IT
         XJvA==
X-Gm-Message-State: AG10YOQfnctg5EpZrAJVuZoJdyc+fELiGGxsuYSkPZb2kmMrJLuxFjbjnrwdJn6DbxcNirqy8g371nwVX2nmfA==
MIME-Version: 1.0
X-Received: by 10.202.193.10 with SMTP id r10mr37464559oif.126.1456419891559;
 Thu, 25 Feb 2016 09:04:51 -0800 (PST)
Received: by 10.157.40.238 with HTTP; Thu, 25 Feb 2016 09:04:51 -0800 (PST)
In-Reply-To: <alpine.DEB.2.10.1602251759440.2708@hadrien>
References: <1456415872-7808-1-git-send-email-bhumirks@gmail.com>
	<alpine.DEB.2.10.1602251701180.2708@hadrien>
	<CAOH+1jEUq-kp09wHNCBMVi+Sd-E_HBG-XnkcqEAyFtNUPz7wxA@mail.gmail.com>
	<alpine.DEB.2.10.1602251759440.2708@hadrien>
Date: Thu, 25 Feb 2016 22:34:51 +0530
Message-ID: <CAOH+1jFB-BH-tERdNa070QO7X2gdKETwsi8eC3puLKtK7KA7qQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: lov: Use
 list_for_each_entry instead of list_for_each
From: Bhumika Goyal <bhumirks@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=001a113dc36e47d718052c9b2eb2

--001a113dc36e47d718052c9b2eb2
Content-Type: text/plain; charset=UTF-8

On Thu, Feb 25, 2016 at 10:30 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Thu, 25 Feb 2016, Bhumika Goyal wrote:
>
> >
> >
> > On Thu, Feb 25, 2016 at 9:31 PM, Julia Lawall <julia.lawall@lip6.fr>
> wrote:
> >       On Thu, 25 Feb 2016, Bhumika Goyal wrote:
> >
> >       > Use list_for_each_entry instead of list_for_each and
> >       list_entry as it
> >       > simplifies the code. Done using coccinelle:
> >
> >       Did you check in each case that req is not used after the loop?
> >
> >       julia
> >
> >
> > Yes I checked and req is not used anywhere after list_for_each_entry
> loop in
> > each case.
>
> OK, it would be good to update the patch with that information.
> Basically, req should only be used inside the loop.
>
> julia
>

Ok I will update the patch and send a v2 :D .

Thanks,
Bhumika

--001a113dc36e47d718052c9b2eb2
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Thu, Feb 25, 2016 at 10:30 PM, Julia Lawall <span dir=3D"ltr">&lt;<a=
 href=3D"mailto:julia.lawall@lip6.fr" target=3D"_blank">julia.lawall@lip6.f=
r</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D"">=
<br>
<br>
On Thu, 25 Feb 2016, Bhumika Goyal wrote:<br>
<br>
&gt;<br>
&gt;<br>
&gt; On Thu, Feb 25, 2016 at 9:31 PM, Julia Lawall &lt;<a href=3D"mailto:ju=
lia.lawall@lip6.fr">julia.lawall@lip6.fr</a>&gt; wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0On Thu, 25 Feb 2016, Bhumika Goyal wrote:<br=
>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Use list_for_each_entry instead of list=
_for_each and<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0list_entry as it<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; simplifies the code. Done using coccine=
lle:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0Did you check in each case that req is not u=
sed after the loop?<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0julia<br>
&gt;<br>
&gt;<br>
&gt; Yes I checked and req is not used anywhere after list_for_each_entry l=
oop in<br>
&gt; each case.<br>
<br>
</span>OK, it would be good to update the patch with that information.<br>
Basically, req should only be used inside the loop.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
julia<br>
</font></span></blockquote></div><br></div><div class=3D"gmail_extra">Ok I =
will update the patch and send a v2 :D .<br><br></div><div class=3D"gmail_e=
xtra">Thanks,<br></div><div class=3D"gmail_extra">Bhumika<br></div></div>

--001a113dc36e47d718052c9b2eb2--

