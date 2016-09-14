X-GM-THRID: 6330315351806443520
X-Received: by 10.237.36.113 with SMTP id s46mr3992858qtc.18.1473891397869;
        Wed, 14 Sep 2016 15:16:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.11.177 with SMTP id 46ls6328oth.38.gmail; Wed, 14 Sep 2016
 15:16:37 -0700 (PDT)
X-Received: by 10.129.132.208 with SMTP id u199mr3981620ywf.38.1473891397431;
        Wed, 14 Sep 2016 15:16:37 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-qt0-x244.google.com (mail-qt0-x244.google.com. [2607:f8b0:400d:c0d::244])
        by gmr-mx.google.com with ESMTPS id y77si39782ywd.7.2016.09.14.15.16.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 15:16:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400d:c0d::244 as permitted sender) client-ip=2607:f8b0:400d:c0d::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400d:c0d::244 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qt0-x244.google.com with SMTP id e5so998348qtb.1
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Sep 2016 15:16:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to;
        bh=5x7enK97A8JB4G5QC/Daas5VNIEqxNKQbyF34yWVico=;
        b=YCcaxzFXpN7HSMEcf4VgDSx0+CvcOC/0FMLKed4RnZ2H9Lbu4jOhXbRygWJuTojFgk
         twCmhPvRUJ+zMw8ONVzfGLM6v3YCqGXo6XB21lEt4K0+3mdfbW40lWbRo8i+/Lo9zMh9
         V/wvRJx6n7UHC+tuK3buIEudTE9Qsqk6CoBEY7NDEuQL5vCLeXZgSwa6xKgeulo9ltXC
         j9v6gGzJYTnVYrgxmP2RDqfggLzbPt2DjLSkMPM63jgM7yqCJsREKfMIJRfmA5Z4NY06
         BlrSTSyvsAp9B1oOkO1w2Z1eXE4HcquzR378+cNvO/p/bn/Owgo2WWRIE+FpOAtgjh5f
         zgYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=5x7enK97A8JB4G5QC/Daas5VNIEqxNKQbyF34yWVico=;
        b=EKfP+bXzje0is0CUdAPxP7SwcWxvsGSjK/SIJ0fciHkmeKuVXGrwFLwzrO3Stkm3v/
         nrqiAr2Sbrya2jpsjE6QUmehm6AiJrmtPy8rBMUg6wZCHMRBHi6NqYwNsX4ndDn1eCNg
         AQDUwdYKmYqC6qFlvK6+crWlUeCu/GK5WnuXtUzot/6QCbZxdBzFvGh5OOCZxK6JeFC/
         eCpb9lMNwyZ6GnkoE7E8mJqGi0l9NwYfR9g5xuAhRAugbOskvZxwVNq2tLzzk0CRwsWB
         QcD9clM0zAFzKAQeAZTKd3Uh454a3hoIhKpELIJ70Bp2UR4olh+kD3fqNA9anSecox+2
         HUUQ==
X-Gm-Message-State: AE9vXwNG5Q8mg1upmnZu1KM+IHKXDAEdyBD0b2wP7vPFm4X+2pSNk9e+ZUDPHo9J1ZJ5q3PGTLftlkfw2xWItQ==
X-Received: by 10.200.58.38 with SMTP id w35mr1974477qte.118.1473891397215;
 Wed, 14 Sep 2016 15:16:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.237.41.97 with HTTP; Wed, 14 Sep 2016 15:16:16 -0700 (PDT)
From: Namrata A Shettar <namrataashettar@gmail.com>
Date: Thu, 15 Sep 2016 03:46:16 +0530
Message-ID: <CAFrQyDE6sfGmOZSBMC6+f-UV=iG0UEe7aED916aQoRK6eQ7pzA@mail.gmail.com>
Subject: [PATCH 1/6] staging: vt6656: Remove unnecessary blank lines
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Malcolm Priestley <tvboxspy@gmail.com>, 
	Alison Schofield <amsfield22@gmail.com>, maomao xu <albert008.xu@gmail.com>, 
	Othmar Pasteka <pasteka@kabsi.at>, Parth Sane <laerdevstudios@gmail.com>, 
	Wolfram Sang <wsa-dev@sang-engineering.com>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary=94eb2c0ca10c2b2d3d053c7f157f

--94eb2c0ca10c2b2d3d053c7f157f
Content-Type: text/plain; charset=UTF-8

This patch fixes checkpatch issue of unneccesary blank lines.

Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
---
 drivers/staging/vt6656/wcmd.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/staging/vt6656/wcmd.c b/drivers/staging/vt6656/wcmd.c
index 95faaeb..bd8e8b8 100644
--- a/drivers/staging/vt6656/wcmd.c
+++ b/drivers/staging/vt6656/wcmd.c
@@ -45,7 +45,6 @@ static void vnt_cmd_timer_wait(struct vnt_private *priv,
unsigned long msecs)

 static int vnt_cmd_complete(struct vnt_private *priv)
 {
-
        priv->command_state = WLAN_CMD_IDLE;
        if (priv->free_cmd_queue == CMD_Q_SIZE) {
                /* Command Queue Empty */
@@ -165,7 +164,6 @@ void vnt_run_command(struct work_struct *work)

 int vnt_schedule_command(struct vnt_private *priv, enum vnt_cmd command)
 {
-
        if (priv->free_cmd_queue == 0)
                return false;

@@ -178,7 +176,6 @@ int vnt_schedule_command(struct vnt_private *priv, enum
vnt_cmd command)
                vnt_cmd_complete(priv);

        return true;
-
 }

 void vnt_reset_command_timer(struct vnt_private *priv)

--
2.7.4

--94eb2c0ca10c2b2d3d053c7f157f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">This patch fixes checkpatch issue of unneccesary blank lin=
es.<br>
<br>
Signed-off-by: Namrata A Shettar &lt;<a target=3D"_blank" href=3D"mailto:na=
mrataashettar@gmail.com">namrataashettar@gmail.com</a>&gt;<br>
---<br>
=C2=A0drivers/staging/vt6656/wcmd.c | 3 ---<br>
=C2=A01 file changed, 3 deletions(-)<br>
<br>
diff --git a/drivers/staging/vt6656/wcmd.<wbr>c b/drivers/staging/vt6656/wc=
md.<wbr>c<br>
index 95faaeb..bd8e8b8 100644<br>
--- a/drivers/staging/vt6656/wcmd.<wbr>c<br>
+++ b/drivers/staging/vt6656/wcmd.<wbr>c<br>
@@ -45,7 +45,6 @@ static void vnt_cmd_timer_wait(struct vnt_private *priv, =
unsigned long msecs)<br>
<br>
=C2=A0static int vnt_cmd_complete(struct vnt_private *priv)<br>
=C2=A0{<br>
-<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 priv-&gt;command_state =3D WLAN_CMD_IDLE;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (priv-&gt;free_cmd_queue =3D=3D CMD_Q_SIZE) =
{<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* Command Queue Em=
pty */<br>
@@ -165,7 +164,6 @@ void vnt_run_command(struct work_struct *work)<br>
<br>
=C2=A0int vnt_schedule_command(struct vnt_private *priv, enum vnt_cmd comma=
nd)<br>
=C2=A0{<br>
-<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (priv-&gt;free_cmd_queue =3D=3D 0)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return false;<br>
<br>
@@ -178,7 +176,6 @@ int vnt_schedule_command(struct vnt_private *priv, enum=
 vnt_cmd command)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 vnt_cmd_complete(pr=
iv);<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 return true;<br>
-<br>
=C2=A0}<br>
<br>
=C2=A0void vnt_reset_command_timer(struct vnt_private *priv)<div><div><img =
src=3D"https://ssl.gstatic.com/ui/v1/icons/mail/images/cleardot.gif" class=
=3D"gmail-CToWUd"></div></div><div><br>
</div><span><font color=3D"#888888">--<br>
2.7.4</font></span></div>

--94eb2c0ca10c2b2d3d053c7f157f--

