X-GM-THRID: 3148599001088
X-Received: by 10.194.161.194 with SMTP id xu2mr1887410wjb.1.1424764667586;
        Mon, 23 Feb 2015 23:57:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.228.136 with SMTP id si8ls643365lac.11.gmail; Mon, 23 Feb
 2015 23:57:47 -0800 (PST)
X-Received: by 10.152.45.7 with SMTP id i7mr1892910lam.9.1424764667135;
        Mon, 23 Feb 2015 23:57:47 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-lb0-x22b.google.com (mail-lb0-x22b.google.com. [2a00:1450:4010:c04::22b])
        by gmr-mx.google.com with ESMTPS id xl7si3916498lbb.1.2015.02.23.23.57.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 23:57:47 -0800 (PST)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2a00:1450:4010:c04::22b as permitted sender) client-ip=2a00:1450:4010:c04::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2a00:1450:4010:c04::22b as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by lbjb6 with SMTP id b6so23295076lbj.2
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Feb 2015 23:57:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=/argIMIprCx5jJdr0Kicx7QKPTxdglZj4v6dD5YTbH8=;
        b=GOI92cItIL/qPTbpI653HxsAQvblccRDHpQdTkU8zNtwcuWqyBAO7IrraTP3IJaQnW
         UHnWajEcIthhvSkVvjpIbvMQNVvS9NOjL2dmfjmKVVAwp5os7uDdO2GsbyTDBJrI1y4w
         VmOXrjkA50H+bIhG3VAOfTkRagma6sbRmHcNQ0gLE79MlCWdHSXdX8rLq3WlMB0oMe/s
         TIk0w/nlJklMacaOX7apOPIRoz2lWJ9tB8p1borAmTP0TXZPdcJCymARRlBtO/ClNLLK
         y+vblH5gCTnu0mscD09rgmtFRNB+plT+lk7EklkGymdPI5oKM4OVKCbdCHoPZUuqb0XN
         9vlA==
MIME-Version: 1.0
X-Received: by 10.112.17.39 with SMTP id l7mr13107408lbd.114.1424764667033;
 Mon, 23 Feb 2015 23:57:47 -0800 (PST)
Received: by 10.112.59.9 with HTTP; Mon, 23 Feb 2015 23:57:46 -0800 (PST)
In-Reply-To: <20150224074018.GB11701@kroah.com>
References: <cover.1424761857.git.vatikaharlalka@gmail.com>
	<a504aa6ef851fcf381d8dbf9a1804bb43fbbd343.1424761857.git.vatikaharlalka@gmail.com>
	<20150224074018.GB11701@kroah.com>
Date: Tue, 24 Feb 2015 13:27:46 +0530
Message-ID: <CAHjTdYeJwoC26O-c1oWWaTtdxRfBegggu1fS0qXj+LwLoii5Wg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 1/2 v2] Introduce new macro
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=001a11c3d860ddfe24050fd0df9a

--001a11c3d860ddfe24050fd0df9a
Content-Type: text/plain; charset=UTF-8

Hi, thanks for your response!

I'm using this macro in  /rtl8188eu/hal/phy.c ( in patch 2/2 ).
> u8 channel_5g[ODM_TARGET_CHNL_NUM_5G]
However, based on your response, I will make this array static const int,
so I won't explicitly declare the size.
Should I resend a patch for this with just that fix?

Thanks a lot for your help!

--001a11c3d860ddfe24050fd0df9a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hi, thanks for your response!<br><br>I&#39;=
m using this macro in=C2=A0 /rtl8188eu/hal/phy.c ( in patch 2/2 ).<br>&gt; =
u8 channel_5g[ODM_TARGET_CHNL_NUM_5G]<br></div>However, based on your respo=
nse, I will make this array static const int,<br></div>so I won&#39;t expli=
citly declare the size.<br></div>Should I resend a patch for this with just=
 that fix?<br><br>Thanks a lot for your help!<div class=3D"gmail_extra"><br=
></div></div>

--001a11c3d860ddfe24050fd0df9a--

