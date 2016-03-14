X-GM-THRID: 6261829349333270528
X-Received: by 10.107.131.230 with SMTP id n99mr17474621ioi.30.1457947571974;
        Mon, 14 Mar 2016 02:26:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.23.52 with SMTP id 49ls3580558qgo.79.gmail; Mon, 14 Mar
 2016 02:26:11 -0700 (PDT)
X-Received: by 10.141.7.2 with SMTP id j2mr5746621qhd.10.1457947571274;
        Mon, 14 Mar 2016 02:26:11 -0700 (PDT)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-vk0-x235.google.com (mail-vk0-x235.google.com. [2607:f8b0:400c:c05::235])
        by gmr-mx.google.com with ESMTPS id c66si792674vkf.0.2016.03.14.02.26.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 14 Mar 2016 02:26:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400c:c05::235 as permitted sender) client-ip=2607:f8b0:400c:c05::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400c:c05::235 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x235.google.com with SMTP id e185so200653729vkb.1
        for <outreachy-kernel@googlegroups.com>; Mon, 14 Mar 2016 02:26:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=OaeKGJ7m5gvsXdICeuASi3SoauIMyBpLtj9w8leIrXE=;
        b=zBteRMMMNIhqC6dz5XkSIxnH6m93mGqXKrBJTqtPW4ienzM1Cp6Pys5/uFWdPCEwpJ
         XR++/M5iY7W3G7DnbXm+zqyoM/xtWu9Hbnb7j1QRi2ZRITaGW00NqA+dQ3Uml4QISGfX
         S1X0m3D2poPtoH/56pdpagsqkV8ctgeLSoPjynSsIFMBflOChoM28nE64/IRnTgGF0Kd
         SHlGRWBMf578nBtnFJhIaFrquGVAB5I2slpX1ln76W0ZRn5w1Npcr6jL06IZXMmmrX58
         uWnWb0e4SqB8mDzAGCvD+i+ms+TdTnN2hmP72OXHiA8sdQFOWSGpCN3VS0fU/vLb37+J
         /d9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=OaeKGJ7m5gvsXdICeuASi3SoauIMyBpLtj9w8leIrXE=;
        b=hCm1eviRtKBHc0sGnPKChyCyZ3Tq89SVGsCFTaL9A3opls32pYRXJOBTvmosOEJbiu
         YjS7uS0HGFSuGCsEmK9TnJ5eujHP47QYL2m0gBJ+Ecg/ygHx/DjNfiYfBdM8Q2vSJdSg
         H3QzCJPucF0lVElVWXS4Z8iN5WkCYZkwkJarwADxzAC+yohQ2UTYj8IKrhMjj4PNEjyY
         rUmzuWJDBQJFKtVC7SBsAK2KJ2gz4ShbuhJ6Bj5jWMkZ4MBbv6TXuc8SPdAEUD4c8c9B
         u3L7bOJa39qqe2ES+NbITUT5i2gyIZKLlzrTk+/L04Jnx4IxBihvZpk7GMVh/X0DGjAp
         f3wg==
X-Gm-Message-State: AD7BkJJw/MAVne21iuzcUC1Y2gjUK3GF9YnKy0jlgilJU5fpJGwr0CwjcfbtiCe/VoB66bUgkT0huKyr/CwpTw==
X-Received: by 10.31.16.38 with SMTP id g38mr23893806vki.105.1457947571049;
 Mon, 14 Mar 2016 02:26:11 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.159.40.199 with HTTP; Mon, 14 Mar 2016 02:25:31 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1603140955000.2688@hadrien>
References: <alpine.DEB.2.10.1603140955000.2688@hadrien>
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
Date: Mon, 14 Mar 2016 14:55:31 +0530
Message-ID: <CAFNHFT9oYgm041dwaUb89o9dA1MBDJSgxyctOLWR8WMsanCQ0w@mail.gmail.com>
Subject: Re: [Outreachy kernel] coccinelle project
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary=001a11431e7612dc97052dfedf0b

--001a11431e7612dc97052dfedf0b
Content-Type: text/plain; charset=UTF-8

Hello Julia,

I'm working on Coccinelle challenge problem 8 and I have claimed the same
on the Outreachy tasks page.
I will send a patch-set for the same soon.

Thanks,
Bhaktipriya

On Mon, Mar 14, 2016 at 2:25 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:

> If you are interested in applying for the Coccinelle project, please
> reread the description on the outreachy kernelnewbies page, as I have
> extended it a little.
>
> thanks,
> julia
>

--001a11431e7612dc97052dfedf0b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Julia,<br><br>I&#39;m working on Coccinelle challeng=
e problem 8 and I have claimed the same on the Outreachy tasks page.=C2=A0 =
<br>I will send a patch-set for the same soon.<br><br>Thanks, <br>Bhaktipri=
ya<br></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Mo=
n, Mar 14, 2016 at 2:25 PM, Julia Lawall <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:julia.lawall@lip6.fr" target=3D"_blank">julia.lawall@lip6.fr</a>&gt;<=
/span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex">If you are interested in ap=
plying for the Coccinelle project, please<br>
reread the description on the outreachy kernelnewbies page, as I have<br>
extended it a little.<br>
<br>
thanks,<br>
julia<br>
</blockquote></div><br></div>

--001a11431e7612dc97052dfedf0b--

