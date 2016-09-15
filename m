X-GM-THRID: 6330658343266287616
X-Received: by 10.36.57.69 with SMTP id l66mr3723740ita.5.1473971256990;
        Thu, 15 Sep 2016 13:27:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.8.175 with SMTP id 44ls4333504otf.31.gmail; Thu, 15 Sep
 2016 13:27:36 -0700 (PDT)
X-Received: by 10.157.60.198 with SMTP id t6mr7991697otf.10.1473971256630;
        Thu, 15 Sep 2016 13:27:36 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-qk0-x242.google.com (mail-qk0-x242.google.com. [2607:f8b0:400d:c09::242])
        by gmr-mx.google.com with ESMTPS id p193si439366ywe.6.2016.09.15.13.27.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 13:27:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400d:c09::242 as permitted sender) client-ip=2607:f8b0:400d:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400d:c09::242 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x242.google.com with SMTP id n66so4157018qkf.0
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 13:27:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to;
        bh=sIpeADjH7jS9Lgkhj4ZKMQZb9xpoO1JGOfzj+MPYVo4=;
        b=Yh03IIkv+7Fmsk+20SS/aIPNzyOMcu2sx7mUtaPYc4Ps/kPCPb5jHDkeG9ZmwtLKny
         GC2i0jn6VfZZlWJPGEtYxMeExtnYTWpZ1anZgU611A8f2h8Adn+Fgbnr9xW2PyoJSxsd
         sGmOvNdOmGzMNAQ3v2z3Caf8NjKaRjfXILUqYaHuRzsoTteWp07zrygmql8dYOns0wtw
         NdLQVk3SyVkv4ZzXSE8VsqxMlHLvhzih0FRNcOe1OZ6eVCJvuKACnkEmc+QRvXPGAvNi
         HQgbPAE1roum9Z0eTrpGlKw5oFxmphN0Qxifyo+5fl2C2kvM1DSwZ60zXEjFLDdUf4dW
         frAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=sIpeADjH7jS9Lgkhj4ZKMQZb9xpoO1JGOfzj+MPYVo4=;
        b=MZgFH0qKCBiZHOAdKS73pO2oog7lyxKicqv8ogMDQ1qzUyjdnSQ0xTJ4tuYKwZYzly
         I9OO+ov0AY6U8ZxVIxPyvvwUgScBmGA5uwRLdHMqI+OmLhMiRXcRmPCq1NqLEHaJyLfc
         5hnUPmptrmscbPxfbHVx+Pci1ZLvhBE36saG4R/hTejezlZACC66rtF51R+H3UFyNWgC
         1orRo1O/Yy+XwN4JxSoqYFcDQgbNcEVLWk35jVkoOTlyZEC6Guz5qOG/QCtA+xtfjH/A
         w2gkLEKIUiFgDUxn2DOlwVsCD8BnDGHg9vRtz+Uk3Wj0fs+U3N9y5K/11bip423V+IPt
         +Rjg==
X-Gm-Message-State: AE9vXwP+k3ScBZrvAE7XjqMAsAP+s1J4uHeRgPOwIz06S9+wFEifSTkCdu7epnocWTAocLC/YiO18aT0v1KSZw==
X-Received: by 10.55.201.200 with SMTP id m69mr2816228qkl.304.1473971256391;
 Thu, 15 Sep 2016 13:27:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.237.41.97 with HTTP; Thu, 15 Sep 2016 13:27:16 -0700 (PDT)
From: Namrata A Shettar <namrataashettar@gmail.com>
Date: Fri, 16 Sep 2016 01:57:16 +0530
Message-ID: <CAFrQyDGMJjdDpKFfRDVp050=CK1rLTc9V0boeDZ6Yq2T2iUC_g@mail.gmail.com>
Subject: [PATCH v2 3/6] staging: vt6656: main_usb: Replace type declaration
 with *pointer of same type
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Malcolm Priestley <tvboxspy@gmail.com>, 
	Alison Schofield <amsfield22@gmail.com>, maomao xu <albert008.xu@gmail.com>, 
	Othmar Pasteka <pasteka@kabsi.at>, Parth Sane <laerdevstudios@gmail.com>, 
	Wolfram Sang <wsa-dev@sang-engineering.com>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary=001a1149ad0e25840f053c91ad53

--001a1149ad0e25840f053c91ad53
Content-Type: text/plain; charset=UTF-8

Fix checkpatch issue:
-Replace data type declaration with same type pointer inside sizeof() as
their size is the same.

Replace type declarations with pointer of same type to resolve
checkpatch issue.Replacement can be done inside sizeof() as they are of
same size.

Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
---
 drivers/staging/vt6656/main_usb.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/vt6656/main_usb.c
b/drivers/staging/vt6656/main_usb.c
index 37f9da0..5f220ee 100644
--- a/drivers/staging/vt6656/main_usb.c
+++ b/drivers/staging/vt6656/main_usb.c
@@ -429,8 +429,7 @@ static bool vnt_alloc_bufs(struct vnt_private *priv)
        int ii;

        for (ii = 0; ii < priv->num_tx_context; ii++) {
-               tx_context = kmalloc(sizeof(struct vnt_usb_send_context),
-                                          GFP_KERNEL);
+               tx_context = kmalloc(sizeof(*tx_context),GFP_KERNEL);
                if (!tx_context)
                        goto free_tx;

@@ -447,7 +446,7 @@ static bool vnt_alloc_bufs(struct vnt_private *priv)
        }

        for (ii = 0; ii < priv->num_rcb; ii++) {
-               priv->rcb[ii] = kzalloc(sizeof(struct vnt_rcb), GFP_KERNEL);
+               priv->rcb[ii] = kzalloc(sizeof(*priv->rcb[ii]), GFP_KERNEL);
                if (!priv->rcb[ii]) {
                        dev_err(&priv->usb->dev,
                                        "failed to allocate rcb no %d\n",
ii);

--
2.7.4

--001a1149ad0e25840f053c91ad53
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Fix checkpatch issue:<br></div><div>-Replace data typ=
e declaration with same type pointer inside sizeof() as their size is the s=
ame.<br></div><br>Replace type declarations with pointer of same type to re=
solve<br>
checkpatch issue.Replacement can be done inside sizeof() as they are of sam=
e size.<br>
<br>
Signed-off-by: Namrata A Shettar &lt;<a href=3D"mailto:namrataashettar@gmai=
l.com">namrataashettar@gmail.com</a>&gt;<br>
---<br>
=C2=A0drivers/staging/vt6656/main_<wbr>usb.c | 5 ++---<br>
=C2=A01 file changed, 2 insertions(+), 3 deletions(-)<br>
<br>
diff --git a/drivers/staging/vt6656/main_<wbr>usb.c b/drivers/staging/vt665=
6/main_<wbr>usb.c<br>
index 37f9da0..5f220ee 100644<br>
--- a/drivers/staging/vt6656/main_<wbr>usb.c<br>
+++ b/drivers/staging/vt6656/main_<wbr>usb.c<br>
@@ -429,8 +429,7 @@ static bool vnt_alloc_bufs(struct vnt_private *priv)<br=
>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 int ii;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 for (ii =3D 0; ii &lt; priv-&gt;num_tx_context;=
 ii++) {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0tx_context =3D kmal=
loc(sizeof(struct vnt_usb_send_context),<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 G=
FP_KERNEL);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0tx_context =3D kmal=
loc(sizeof(*tx_context),<wbr>GFP_KERNEL);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (!tx_context)<br=
>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 goto free_tx;<br>
<br>
@@ -447,7 +446,7 @@ static bool vnt_alloc_bufs(struct vnt_private *priv)<br=
>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 for (ii =3D 0; ii &lt; priv-&gt;num_rcb; ii++) =
{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;rcb[ii] =
=3D kzalloc(sizeof(struct vnt_rcb), GFP_KERNEL);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;rcb[ii] =
=3D kzalloc(sizeof(*priv-&gt;rcb[ii])<wbr>, GFP_KERNEL);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (!priv-&gt;rcb[i=
i]) {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 dev_err(&amp;priv-&gt;usb-&gt;dev,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;fa=
iled to allocate rcb no %d\n&quot;, ii);<div class=3D"gmail-yj6qo gmail-ajU=
"><div tabindex=3D"0" class=3D"gmail-ajR" id=3D"gmail-:211"><img src=3D"htt=
ps://ssl.gstatic.com/ui/v1/icons/mail/images/cleardot.gif" class=3D"gmail-a=
jT"></div></div><div class=3D"gmail-adL"><br>
</div><span class=3D"gmail-HOEnZb gmail-adL"><font color=3D"#888888">--<br>
2.7.4<br>
</font></span><br></div>

--001a1149ad0e25840f053c91ad53--

