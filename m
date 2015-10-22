X-GM-THRID: 6208281535303385088
X-Received: by 10.66.90.231 with SMTP id bz7mr13428667pab.31.1445534780877;
        Thu, 22 Oct 2015 10:26:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.91.108 with SMTP id y99ls1842818qgd.35.gmail; Thu, 22 Oct
 2015 10:26:19 -0700 (PDT)
X-Received: by 10.13.236.135 with SMTP id v129mr14790516ywe.9.1445534779020;
        Thu, 22 Oct 2015 10:26:19 -0700 (PDT)
Return-Path: <deepa.kernel@gmail.com>
Received: from mail-io0-x229.google.com (mail-io0-x229.google.com. [2607:f8b0:4001:c06::229])
        by gmr-mx.google.com with ESMTPS id hx4si1846151igb.0.2015.10.22.10.26.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2015 10:26:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of deepa.kernel@gmail.com designates 2607:f8b0:4001:c06::229 as permitted sender) client-ip=2607:f8b0:4001:c06::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of deepa.kernel@gmail.com designates 2607:f8b0:4001:c06::229 as permitted sender) smtp.mailfrom=deepa.kernel@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-io0-x229.google.com with SMTP id l68so99304650iol.3
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Oct 2015 10:26:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=eGc2IV/DzP93WpUTWOSGh6gy3Qe/PtPa03MKDGlbT70=;
        b=qkJIjWJm1bwpUFgvPi1e4jXtNPLvQEBV1LrHVR9QoXNFjB6RIeulYs3XcjlDGQZkRu
         8Cahd1qY/PLBBbtoiXaGXGIwqGDIvGt1nemyrB0v0sxF53ZrZQUfYl5mgz0n7eULpB4b
         pc5+xK/JQCnRszsrYaWTd5W6cS8w5GRB1EbcIOdOIaqqBQ4jVbey+r8qvGwWOLn4dpPe
         STbMLwXixXc1ZjsQ1jYPK+q7BSm7syjjnXKYYl/bZTGGb8JSxqy0aYQz1Pxdcv2R6v/x
         uvtvOvisp7yqZWYnHpPXgIUM5fiG692bfWD+2kzFBJSdQbxvtbKZyhuDJC+SrQ/As7oi
         Mo0w==
MIME-Version: 1.0
X-Received: by 10.107.19.219 with SMTP id 88mr19745623iot.41.1445534778888;
 Thu, 22 Oct 2015 10:26:18 -0700 (PDT)
Received: by 10.107.171.198 with HTTP; Thu, 22 Oct 2015 10:26:18 -0700 (PDT)
In-Reply-To: <3745748.XKTVPgGKoG@wuerfel>
References: <1445478157-26453-1-git-send-email-deepa.kernel@gmail.com>
	<3745748.XKTVPgGKoG@wuerfel>
Date: Thu, 22 Oct 2015 10:26:18 -0700
Message-ID: <CABeXuvoQnoW7kqQnczUuCr-MNu0ohhxjh_JV80tVNJ7tmrmfmg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: ft1000: remove obsolete driver
From: Deepa Dinamani <deepa.kernel@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: outreachy-kernel@googlegroups.com, Marek Belisko <marek.belisko@gmail.com>
Content-Type: multipart/alternative; boundary=001a113f94be019bd20522b4cb87

--001a113f94be019bd20522b4cb87
Content-Type: text/plain; charset=UTF-8

On Thu, Oct 22, 2015 at 2:04 AM, Arnd Bergmann <arnd@arndb.de> wrote:

> On Wednesday 21 October 2015 18:42:37 Deepa Dinamani wrote:
> > Remove support for Qleadtek Flash-OFDM modems. Telecom carrier is
> > discontinuing service for the radio technology.
> > See http://www.gtigroup.org/news/ind/2015-08-18/6996.html.
> >
> > Suggested-by: Arnd Bergmann <arnd@arndb.de>
> > Signed-off-by: Deepa Dinamani <deepa.kernel@gmail.com>
> >
>
> The patch looks good.
>
> Acked-by: Arnd Bergmann <arnd@arndb.de>
>
> Did you find any other users of this technology aside from Slovak
> Telekom?
>

A survey of the commercial use of the technology, which seems to be
basically overtaken by LTE, is at
https://en.wikipedia.org/wiki/Orthogonal_frequency-division_multiplexing#FLASH-OFDM
.

There was a Finnish deployment of FLASH-OFDM that was converted to CDMA a
short time after.
https://www.telegeography.com/products/commsupdate/articles/2014/07/01/ukkoverkot-partners-with-huawei-to-upgrade-450mhz-network-to-lte/
.

        Arnd
>

- Deepa

--001a113f94be019bd20522b4cb87
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On T=
hu, Oct 22, 2015 at 2:04 AM, Arnd Bergmann <span dir=3D"ltr">&lt;<a href=3D=
"mailto:arnd@arndb.de" target=3D"_blank">arnd@arndb.de</a>&gt;</span> wrote=
:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex"><span>On Wednesday 2=
1 October 2015 18:42:37 Deepa Dinamani wrote:<br>
&gt; Remove support for Qleadtek Flash-OFDM modems. Telecom carrier is<br>
&gt; discontinuing service for the radio technology.<br>
&gt; See <a href=3D"http://www.gtigroup.org/news/ind/2015-08-18/6996.html" =
rel=3D"noreferrer" target=3D"_blank">http://www.gtigroup.org/news/ind/2015-=
08-18/6996.html</a>.<br>
&gt;<br>
&gt; Suggested-by: Arnd Bergmann &lt;<a href=3D"mailto:arnd@arndb.de" targe=
t=3D"_blank">arnd@arndb.de</a>&gt;<br>
&gt; Signed-off-by: Deepa Dinamani &lt;<a href=3D"mailto:deepa.kernel@gmail=
.com" target=3D"_blank">deepa.kernel@gmail.com</a>&gt;<br>
&gt;<br>
<br>
</span>The patch looks good.<br>
<br>
Acked-by: Arnd Bergmann &lt;<a href=3D"mailto:arnd@arndb.de" target=3D"_bla=
nk">arnd@arndb.de</a>&gt;<br>
<br>
Did you find any other users of this technology aside from Slovak<br>
Telekom?<br></blockquote><div><br>A survey of the commercial use of the tec=
hnology, which seems to be basically overtaken by LTE, is at <a href=3D"htt=
ps://en.wikipedia.org/wiki/Orthogonal_frequency-division_multiplexing#FLASH=
-OFDM" target=3D"_blank">https://en.wikipedia.org/wiki/Orthogonal_frequency=
-division_multiplexing#FLASH-OFDM</a>.<br>=C2=A0<br><div>There was a Finnis=
h deployment of FLASH-OFDM that was converted to CDMA a short time after.<b=
r><a href=3D"https://www.telegeography.com/products/commsupdate/articles/20=
14/07/01/ukkoverkot-partners-with-huawei-to-upgrade-450mhz-network-to-lte/"=
 target=3D"_blank">https://www.telegeography.com/products/commsupdate/artic=
les/2014/07/01/ukkoverkot-partners-with-huawei-to-upgrade-450mhz-network-to=
-lte/</a>.<br><br></div></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex">
<span><font color=3D"#888888">
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Arnd<br></font></span></blockquote><div><br></d=
iv><div></div><div>- Deepa <br></div></div><br></div></div>

--001a113f94be019bd20522b4cb87--

