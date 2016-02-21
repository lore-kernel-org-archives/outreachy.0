X-GM-THRID: 6252763365254365184
X-Received: by 10.31.153.75 with SMTP id b72mr20165979vke.0.1456017127822;
        Sat, 20 Feb 2016 17:12:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.10.141 with SMTP id 13ls497562iok.51.gmail; Sat, 20 Feb
 2016 17:12:07 -0800 (PST)
X-Received: by 10.107.152.10 with SMTP id a10mr22165248ioe.28.1456017127341;
        Sat, 20 Feb 2016 17:12:07 -0800 (PST)
Return-Path: <thaissa.falbo@gmail.com>
Received: from mail-ig0-x230.google.com (mail-ig0-x230.google.com. [2607:f8b0:4001:c05::230])
        by gmr-mx.google.com with ESMTPS id s20si1402634igr.2.2016.02.20.17.12.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 20 Feb 2016 17:12:07 -0800 (PST)
Received-SPF: pass (google.com: domain of thaissa.falbo@gmail.com designates 2607:f8b0:4001:c05::230 as permitted sender) client-ip=2607:f8b0:4001:c05::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of thaissa.falbo@gmail.com designates 2607:f8b0:4001:c05::230 as permitted sender) smtp.mailfrom=thaissa.falbo@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ig0-x230.google.com with SMTP id 5so60496748igt.0
        for <outreachy-kernel@googlegroups.com>; Sat, 20 Feb 2016 17:12:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=Dwcr+94BioJvsCuBqGRKYE8bdS+jRYHs/VxvGkSCBjs=;
        b=vXXUBd2nZCpTHvJsadniOEuap7EoHWTcKiA1ol5seBn/DnYp0w+25C8vqdw5TFfQ5j
         9fFBZAgP4g6o4Rq+RFCk2l62qk5hQbVgEf3ruLDPaVp5+xLy7yih/o731xydUsPyCJx0
         Nec0+hNRVdMDzk4ul7FbPTJxQFumYsmwiVVux7sTws9cVPvpAQ+FmhG+iSvLjRXWy5jJ
         VcbvBbdG3pvkYsXXkb/de0o6HN6/OHixEWmvwuggNwX9H5ORhIhOoHysoZcOIgyDXKSB
         7LLL/BziU8hpmmAfAr8vuwwtwBlY18qkuy9FPkSdP+A1iz5oiIsZ9MJmR2M0nl9E200n
         86Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=Dwcr+94BioJvsCuBqGRKYE8bdS+jRYHs/VxvGkSCBjs=;
        b=Wz9Nyn2pIZZgYu3t89SPx0QJNffJip4XChau7wtlz2z6heAh9RJEZOXYxfiOTHAWuS
         U/8yMdf/Fwxpj1hFaFhWBCok/JE7FPhoF2Xl/5yQiHQA0S5Vam19976uztAB4zF+DlK/
         q3KlZxIkQSp/Y8BWK9KS7H8Tu3N7nOkZuS4s3x6C409c1t8FJGLb8EWszAGmqlcLfS2o
         Sa5WQ3moq/T1zhiMGoYC/dcdSFaxRlNFHA31YneNeS0m+6WapqzfNvPHpKMzbG4MH2aW
         Yhu5YyO6vv2EaZ7tB5BHiPyAdsuhrRqbFLKfCGIC8jTdh9jUEXlBQldKNjgi4YShzZ6O
         emcg==
X-Gm-Message-State: AG10YOTpSuBMahWubxjstVaTyZ+gBWpgYgpWIV+/fKl/bpBXUBRxsJrckqSoXeKEgJPpFLXnmFRQG20at4gHRA==
MIME-Version: 1.0
X-Received: by 10.50.28.72 with SMTP id z8mr726250igg.44.1456017127221; Sat,
 20 Feb 2016 17:12:07 -0800 (PST)
Received: by 10.107.164.6 with HTTP; Sat, 20 Feb 2016 17:12:06 -0800 (PST)
Received: by 10.107.164.6 with HTTP; Sat, 20 Feb 2016 17:12:06 -0800 (PST)
In-Reply-To: <20160220225532.GA22835@kroah.com>
References: <cover.1455834014.git.thaissa.falbo@gmail.com>
	<0449c39d607e37397547a89f096d31f9ab65e7c1.1455834014.git.thaissa.falbo@gmail.com>
	<20160220225532.GA22835@kroah.com>
Date: Sat, 20 Feb 2016 23:12:06 -0200
Message-ID: <CAKqL7ZXKeFnAARu0CyTgU4DYUgecO=82TuGEZm2_pktwnHXTqA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 1/2] staging: media: davinci_vpfe:
 remove ret variable of function
From: =?UTF-8?Q?Tha=C3=ADssa_Falbo?= <thaissa.falbo@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=089e0158b242a7aff8052c3d67f1

--089e0158b242a7aff8052c3d67f1
Content-Type: text/plain; charset=UTF-8

Sorry, I'm gonna send a v2 on that! :)
Em 20/02/2016 20:55, "Greg KH" <gregkh@linuxfoundation.org> escreveu:

> On Thu, Feb 18, 2016 at 08:35:12PM -0200, Thaissa Falbo wrote:
> > Signed-off-by: Thaissa Falbo <thaissa.falbo@gmail.com>
>
> I can't accept patches without any changelog text at all :(
>
>

--089e0158b242a7aff8052c3d67f1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">Sorry, I&#39;m gonna send a v2 on that! :)</p>
<div class=3D"gmail_quote">Em 20/02/2016 20:55, &quot;Greg KH&quot; &lt;<a =
href=3D"mailto:gregkh@linuxfoundation.org">gregkh@linuxfoundation.org</a>&g=
t; escreveu:<br type=3D"attribution"><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On Thu,=
 Feb 18, 2016 at 08:35:12PM -0200, Thaissa Falbo wrote:<br>
&gt; Signed-off-by: Thaissa Falbo &lt;<a href=3D"mailto:thaissa.falbo@gmail=
.com">thaissa.falbo@gmail.com</a>&gt;<br>
<br>
I can&#39;t accept patches without any changelog text at all :(<br>
<br>
</blockquote></div>

--089e0158b242a7aff8052c3d67f1--

