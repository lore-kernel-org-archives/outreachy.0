X-GM-THRID: 6330315387682422784
X-Received: by 10.36.213.138 with SMTP id a132mr7288876itg.10.1473891406546;
        Wed, 14 Sep 2016 15:16:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.103.86 with SMTP id u83ls11574itc.20.gmail; Wed, 14 Sep
 2016 15:16:46 -0700 (PDT)
X-Received: by 10.107.150.133 with SMTP id y127mr4297713iod.7.1473891406148;
        Wed, 14 Sep 2016 15:16:46 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-qk0-x242.google.com (mail-qk0-x242.google.com. [2607:f8b0:400d:c09::242])
        by gmr-mx.google.com with ESMTPS id w124si58972ywc.4.2016.09.14.15.16.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 15:16:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400d:c09::242 as permitted sender) client-ip=2607:f8b0:400d:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400d:c09::242 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x242.google.com with SMTP id z143so2068284qka.3
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Sep 2016 15:16:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to;
        bh=Jq+fgZZk6b86nWTMzrA0M94i+EhV8vmlG8DbNuqsZEM=;
        b=CK/3EGLnrcIGWlCvkXati+DV4XzcFO01PXxDAogp0VdCazhVlaiez2ZSOudbv5boZm
         PYIf9aoWTYtrt/aT/MtLB53/Bt0CjKkBowDfR+v3OOhSkZgP5QlzC3vZ0zW6JVwSrBIz
         0KrOKLwAY7h5VF501CQ+CwGseZ+n8Nn9wr1wU7W7axSzWUtkTBmwcEwWeHFL225DRFrx
         lp0ojbDtWytiHqrMEzQvSD6E8k1jCbDgXM7zYP9/+NNkmirkacTzgdjF28gOLD2FhqT9
         YNbtZE7JpYslw8jSTjJCC9brqJNw/OThKvFZ1CpIPheuqpcwyio6Prvha3u52DTo3tNK
         1MLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=Jq+fgZZk6b86nWTMzrA0M94i+EhV8vmlG8DbNuqsZEM=;
        b=OMZ658TcdNMveTxCtdgyVaH7qkf8/OSa6ITExVixr79kBgbzX3dVNCj6GXY4vEmfkf
         EmCAtF5X3uBIRl5MGm+8z1vCQINmYnVWCOyNAibbpzDjRw7skVwMA+bP+/0+6Y37rfI6
         P5sRkgGgdddogn0O2CtfPbw9jZNAdhlDvVBIoe11FAv323Vf+MiNXfe9WjyVLHPENhLn
         XmeNa/kYUqmpo3CE/tOuPbkIYMd42c9CtDLw7z7sL9ZZMdlCJPuIaUZ6lM6ibv5Qzjny
         z5+I7oRHmD02aOFD9JstaNB7gqEK5Z8FpDuRzDAa6cGTLNT9mJ9pTW3zh/c2m4P6IPuY
         ROQA==
X-Gm-Message-State: AE9vXwNIXXntSyas8DBy4fdL+llOZMuroII+zH8MGGs3yA/ro6LkahAIbYWY0fNLVYepGsTWjHAXhVjKFuSRsw==
X-Received: by 10.55.105.130 with SMTP id e124mr6482094qkc.183.1473891405934;
 Wed, 14 Sep 2016 15:16:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.237.41.97 with HTTP; Wed, 14 Sep 2016 15:16:25 -0700 (PDT)
From: Namrata A Shettar <namrataashettar@gmail.com>
Date: Thu, 15 Sep 2016 03:46:25 +0530
Message-ID: <CAFrQyDHhpXVeYyQGb=kwRp=4ToJw-9i6Y2KiwxVTb=21Wtxb9Q@mail.gmail.com>
Subject: [PATCH 3/6] staging: vt6656: main_usb: Replace data type declaration
 with variable of same type
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Malcolm Priestley <tvboxspy@gmail.com>, 
	Alison Schofield <amsfield22@gmail.com>, maomao xu <albert008.xu@gmail.com>, 
	Othmar Pasteka <pasteka@kabsi.at>, Parth Sane <laerdevstudios@gmail.com>, 
	Wolfram Sang <wsa-dev@sang-engineering.com>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary=001a114fdde2b03a06053c7f1529

--001a114fdde2b03a06053c7f1529
Content-Type: text/plain; charset=UTF-8

This patch fixes checkpatch issue:
-Replacing sizeof(struct vnt_usb_send_context) with sizeof(*tx_context)
-Replacing sizeof(struct vnt_rcb) with sizeof(*priv->rcb[ii])
The replacements are of the type they are replaced with hence size
remains same.

Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
---
 drivers/staging/vt6656/main_usb.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/vt6656/main_usb.c
b/drivers/staging/vt6656/main_usb.c
index d79f07f..c03f023 100644
--- a/drivers/staging/vt6656/main_usb.c
+++ b/drivers/staging/vt6656/main_usb.c
@@ -429,7 +429,7 @@ static bool vnt_alloc_bufs(struct vnt_private *priv)
        int ii;

        for (ii = 0; ii < priv->num_tx_context; ii++) {
-               tx_context = kmalloc(sizeof(struct vnt_usb_send_context),
+               tx_context = kmalloc(sizeof(*tx_context),
                                                                GFP_KERNEL);
                if (!tx_context)
                        goto free_tx;
@@ -447,7 +447,7 @@ static bool vnt_alloc_bufs(struct vnt_private *priv)
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

--001a114fdde2b03a06053c7f1529
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">This patch fixes checkpatch issue:<br>
-Replacing sizeof(struct vnt_usb_send_context) with sizeof(*tx_context)<br>
-Replacing sizeof(struct vnt_rcb) with sizeof(*priv-&gt;rcb[ii])<br>
The replacements are of the type they are replaced with hence size<br>
remains same.<br>
<br>
Signed-off-by: Namrata A Shettar &lt;<a href=3D"mailto:namrataashettar@gmai=
l.com" target=3D"_blank">namrataashettar@gmail.com</a>&gt;<br>
---<br>
=C2=A0drivers/staging/vt6656/main_u<wbr>sb.c | 4 ++--<br>
=C2=A01 file changed, 2 insertions(+), 2 deletions(-)<br>
<br>
diff --git a/drivers/staging/vt6656/main_<wbr>usb.c b/drivers/staging/vt665=
6/main_<wbr>usb.c<br>
index d79f07f..c03f023 100644<br>
--- a/drivers/staging/vt6656/main_<wbr>usb.c<br>
+++ b/drivers/staging/vt6656/main_<wbr>usb.c<br>
@@ -429,7 +429,7 @@ static bool vnt_alloc_bufs(struct vnt_private *priv)<br=
>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 int ii;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 for (ii =3D 0; ii &lt; priv-&gt;num_tx_context;=
 ii++) {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0tx_context =3D kmal=
loc(sizeof(struct vnt_usb_send_context),<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0tx_context =3D kmal=
loc(sizeof(*tx_context),<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 GFP_KERNEL);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (!tx_context)<br=
>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 goto free_tx;<br>
@@ -447,7 +447,7 @@ static bool vnt_alloc_bufs(struct vnt_private *priv)<br=
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
iled to allocate rcb no %d\n&quot;, ii);<br><br><span><font color=3D"#88888=
8">--<br>
2.7.4</font></span><br></div>

--001a114fdde2b03a06053c7f1529--

