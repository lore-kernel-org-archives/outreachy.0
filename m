X-GM-THRID: 6664617547649777664
X-Received: by 2002:a24:2c48:: with SMTP id i69mr1947288iti.12.1551770027314;
        Mon, 04 Mar 2019 23:13:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:5a55:: with SMTP id v82ls568737ita.0.canary-gmail; Mon,
 04 Mar 2019 23:13:46 -0800 (PST)
X-Google-Smtp-Source: APXvYqzyHn0r6sd3P4CF2abxqPJGpKEWzBsKhwve8jvaTf2F/RKo5k3gcKOb6WBrbOiaO1LTgWNh
X-Received: by 2002:a24:2c48:: with SMTP id i69mr1947273iti.12.1551770026386;
        Mon, 04 Mar 2019 23:13:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551770026; cv=none;
        d=google.com; s=arc-20160816;
        b=eaHc8GvuyVK8qKMi60dY0oZf/7fxX1E4u0yq+iqH7PBfA/xpfuWtKgJL74xTpnVRTf
         6qgRs9rwNEg3WAlRrxbvLlYvSQslG5etuRTYymMsxsPalU6Z5flPBHDkFtY+L09No5M0
         VKTTu4jCKpyIPkSmtZvKTXRGEOwG6m2xMVGpkWWn8eXn6dHhgeb7LBdB07HOLtoCUcVo
         D07++seV6NqLGiBrOHLDwIcNay6FE+XJMDmKB6yb2jNJw/i1rrakS5owF6bVnKKWJApP
         RLDG7llnE+brm48NS32oi8kGlaqOfmJZP5ei46CFH6SYvl+EJG19gZnNjMtqHzk3+Xvx
         NPwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=N2i4O699JlSAfSb8jBhRLVS4zMR15/00Q7yW/dVqjsg=;
        b=Hil2QwKTyINQ+G28U/Tgcg9CXxxQgZ+vuN2X13neHVYI0vky9jgkSeYemtn1iXw3Mc
         JnPdOhXeE9FTceuZSoKrva+1wdqWPAIHfAyCMNM9GFBRIXC19rK84vkW+ll7/OSDk7Ix
         rtey3/s+JjlA0zbF27VszJnzkoQAa96eAaTTELEZjYUOGFIpgfNN5YhlIg9pk/fWaN9T
         MkwiZN7LAQGTK0oLNiPI1eKPlXc9ikDlgTC5sh3XhNaZlAhHn+hkYj1ZKumSpjqMDgt6
         wtsaZIjsyRCy22XpFpbSKQD660RrSj7KVlMYRk3JMaEcbwWVG94ElicYgeg1DpjoATTC
         N5zQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ltYN0K1K;
       spf=pass (google.com: domain of idebleenasen@gmail.com designates 2607:f8b0:4864:20::235 as permitted sender) smtp.mailfrom=idebleenasen@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <idebleenasen@gmail.com>
Received: from mail-oi1-x235.google.com (mail-oi1-x235.google.com. [2607:f8b0:4864:20::235])
        by gmr-mx.google.com with ESMTPS id y204si563845itb.0.2019.03.04.23.13.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Mar 2019 23:13:46 -0800 (PST)
Received-SPF: pass (google.com: domain of idebleenasen@gmail.com designates 2607:f8b0:4864:20::235 as permitted sender) client-ip=2607:f8b0:4864:20::235;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ltYN0K1K;
       spf=pass (google.com: domain of idebleenasen@gmail.com designates 2607:f8b0:4864:20::235 as permitted sender) smtp.mailfrom=idebleenasen@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x235.google.com with SMTP id e7so6041704oia.8
        for <outreachy-kernel@googlegroups.com>; Mon, 04 Mar 2019 23:13:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=N2i4O699JlSAfSb8jBhRLVS4zMR15/00Q7yW/dVqjsg=;
        b=ltYN0K1Kf8/4BT6gb1h/HkQXhnEgpVsRvmELQF/PnMfJWHbDHWuUpdp7rqkoViBiQG
         hGJBF3ArjpYUjLBAfBxeoheVmmaNcHthGl9bMzFSYC5q0P7XtDZbaEyiOor7pkvBHAOu
         AnnMxt87fqYKLgHTMBX94qJ3/644OiDVvEFx1H8u7/tWTFJF+lRli/QzktzZ0YS7BSOW
         rtKe0Fp+TE34wiisXXrtYIbS2PCOkxaZG2HWyM2RR1BPJ5sH5S5hXCxjrCxrwJAJFX2L
         CHnJStA1yVeJhbnwlEpGr2Uujxm8DkTYXgoEYmDnYZ+Ag4M+LTozxO6XV/BH4c5WiizU
         5dIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=N2i4O699JlSAfSb8jBhRLVS4zMR15/00Q7yW/dVqjsg=;
        b=p6Oqo6A90xV2Ozf/733rWRiXxEdLcuuZPyjYyEfwEvrnugmbcMyRsirCVAoacKvgHm
         pzS0rnQloquZ8tg8HFr5XzWaFq3tZpkaL+rO1Znxsv0yoAUk13A6SUlQBmWiw67DrVCa
         pHpp/i4SKq0zJpY4/sbOewOlYgFdsjiPIkvJmH04H23pFGKxjYeg2xXpqHssfxf0nwqm
         ieDF0b02IXkYIy2WXSQvGhkL9dGQfFuiyhbUSxOJqC6VGF/usXO50Q6wUX5plzhCuxuU
         XoDLw0SdvdoLuf0h/NNQRe22sRU4F6QUtCnetxB9pDP/VWNoNAR7i5f0JHba+nACbvqq
         J0FQ==
X-Gm-Message-State: APjAAAWKsZ82w6dY3kV0BdFVi68rTAnGJJVqApRDNzP0iJYrtG/J9bc+
	xmy3MoREe+bdJezxQ0nzLL8zoMiEUsq92p38Xn+IR/6P
X-Received: by 2002:aca:cd93:: with SMTP id d141mr1150894oig.163.1551770025969;
 Mon, 04 Mar 2019 23:13:45 -0800 (PST)
MIME-Version: 1.0
References: <CACw+u4ENfxYmSmGHaFMZ=rKjjNVvO3P=RezCF8dJEZOnp-xSCA@mail.gmail.com>
 <f28dc17c-9521-4f21-8ca5-a54d79adac81@googlegroups.com> <20190305070517.GC1538@kroah.com>
In-Reply-To: <20190305070517.GC1538@kroah.com>
From: Debleena Sen <idebleenasen@gmail.com>
Date: Tue, 5 Mar 2019 12:43:28 +0530
Message-ID: <CACw+u4F+-iZiZgNSaSEOzbb2Xq6Xu+PK9UFBZH95LNLkijNdNw@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: Regarding undocumented string
 checkpatch.pl warning
To: Greg KH <greg@kroah.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary="0000000000002bce4e0583539d4f"

--0000000000002bce4e0583539d4f
Content-Type: text/plain; charset="UTF-8"

On Tue, 5 Mar 2019, 12:35 Greg KH, <greg@kroah.com> wrote:

> On Mon, Mar 04, 2019 at 11:50:35AM -0800, idebleenasen@gmail.com wrote:
> > On Tuesday, March 5, 2019 at 12:49:53 AM UTC+5:30, Debleena Sen wrote:
> > >
> > > I came across the following warning in
> drivers/staging/wilc1000/wilc_spi.c
> > >
> > > WARNING: DT compatible string "microchip,wilc1000-spi" appears
> > > un-documented --check ./Documentation/devicetree/bindings/
> > >
> > > I referred to  ./Documentation/devicetree/bindings/  and checked
> /staging,
> > > resource-names.txt, vendor-prefixes.txt but I could not find anything
> > > related to microchip or wilc1000.
> > >
> > > On referring to ./Documentation/devicetree/bindings/spi  I found a
> text
> > > file "microchip,spi-pic32.txt"  but I do not think its related to
> WILC1000
> > > driver.
> > >
> > > What should I do to remove this warning?
> > >
> >
> > Wanted to add that I found another text file in drivers/staging/wilc1000
> > itself named "microchip,wilc1000,spi.txt". I think this is the required
> > file. Should I move/copy this file to
> ./Documentation/devicetree/bindings/
> > to remove the warning?
>
> No, staging drivers are supposed to be "self contained" and not need
> changes in other parts of the kernel.  That doesn't work well with DT
> files, so for now, until the driver gets merged to the "correct" part of
> the kernel, the DT files stay with the driver itself.
>
> Please do not move that file, as I will not take that patch, and you can
> just ignore that checkpatch warning, there's nothing to do for it at
> this point in time.
>
> hope this helps,
>
> greg k-h
>

OK. Thanks!

>

--0000000000002bce4e0583539d4f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D=
"gmail_attr">On Tue, 5 Mar 2019, 12:35 Greg KH, &lt;<a href=3D"mailto:greg@=
kroah.com">greg@kroah.com</a>&gt; wrote:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left=
:1ex">On Mon, Mar 04, 2019 at 11:50:35AM -0800, <a href=3D"mailto:idebleena=
sen@gmail.com" target=3D"_blank" rel=3D"noreferrer">idebleenasen@gmail.com<=
/a> wrote:<br>
&gt; On Tuesday, March 5, 2019 at 12:49:53 AM UTC+5:30, Debleena Sen wrote:=
<br>
&gt; &gt;<br>
&gt; &gt; I came across the following warning in drivers/staging/wilc1000/w=
ilc_spi.c<br>
&gt; &gt;<br>
&gt; &gt; WARNING: DT compatible string &quot;microchip,wilc1000-spi&quot; =
appears <br>
&gt; &gt; un-documented --check ./Documentation/devicetree/bindings/<br>
&gt; &gt;<br>
&gt; &gt; I referred to=C2=A0 ./Documentation/devicetree/bindings/=C2=A0 an=
d checked /staging, <br>
&gt; &gt; resource-names.txt, vendor-prefixes.txt but I could not find anyt=
hing <br>
&gt; &gt; related to microchip or wilc1000.<br>
&gt; &gt;<br>
&gt; &gt; On referring to ./Documentation/devicetree/bindings/spi=C2=A0 I f=
ound a text <br>
&gt; &gt; file &quot;microchip,spi-pic32.txt&quot;=C2=A0 but I do not think=
 its related to WILC1000 <br>
&gt; &gt; driver.<br>
&gt; &gt;<br>
&gt; &gt; What should I do to remove this warning? <br>
&gt; &gt;<br>
&gt; <br>
&gt; Wanted to add that I found another text file in drivers/staging/wilc10=
00 <br>
&gt; itself named &quot;microchip,wilc1000,spi.txt&quot;. I think this is t=
he required <br>
&gt; file. Should I move/copy this file to ./Documentation/devicetree/bindi=
ngs/ <br>
&gt; to remove the warning?<br>
<br>
No, staging drivers are supposed to be &quot;self contained&quot; and not n=
eed<br>
changes in other parts of the kernel.=C2=A0 That doesn&#39;t work well with=
 DT<br>
files, so for now, until the driver gets merged to the &quot;correct&quot; =
part of<br>
the kernel, the DT files stay with the driver itself.<br>
<br>
Please do not move that file, as I will not take that patch, and you can<br=
>
just ignore that checkpatch warning, there&#39;s nothing to do for it at<br=
>
this point in time.<br>
<br>
hope this helps,<br>
<br>
greg k-h<br></blockquote></div></div><div dir=3D"auto"><br></div><div dir=
=3D"auto">OK. Thanks!=C2=A0</div><div dir=3D"auto"><div class=3D"gmail_quot=
e"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left=
:1px #ccc solid;padding-left:1ex">
</blockquote></div></div></div>

--0000000000002bce4e0583539d4f--

