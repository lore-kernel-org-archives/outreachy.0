X-GM-THRID: 6330315351806443520
X-Received: by 10.157.5.37 with SMTP id 34mr7967984otw.31.1473971217386;
        Thu, 15 Sep 2016 13:26:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.195.70 with SMTP id t67ls1383427iof.48.gmail; Thu, 15 Sep
 2016 13:26:56 -0700 (PDT)
X-Received: by 10.36.204.197 with SMTP id x188mr3720934itf.11.1473971216539;
        Thu, 15 Sep 2016 13:26:56 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-qk0-x244.google.com (mail-qk0-x244.google.com. [2607:f8b0:400d:c09::244])
        by gmr-mx.google.com with ESMTPS id c75si422099ywh.0.2016.09.15.13.26.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 13:26:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400d:c09::244 as permitted sender) client-ip=2607:f8b0:400d:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400d:c09::244 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x244.google.com with SMTP id w204so4099795qka.2
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 13:26:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to;
        bh=9t1Pi8so8DhLKPy14fPa+ekQe9cLOnO6ZAj8p3fA3BQ=;
        b=ZKKYNKgvmr7so3fVjtChAeO+zmjxgBPpJvbkWKJMtFeNlAM4bJkhZ/IXyReYmgJJ1B
         UBH+XQt92VuCHpMop3IL/48PU/9egGCbAXX5JgzxFzMbE8toivn6pxQsfWWy1n3cXYOI
         n7X3A61jOS6tEfWkGWcaIjpzZw8aWlouy9rN8BgkswYpvTD+voU9d4CSYWCXcTFWLGW2
         TpfrD5WKXXButvByMjpvALYnkUtKEmx20NGsxi/ywiSTya0jgJ/e/GUsqxab0MdPijky
         V+R5VTRyPxdkTk+71MvxPIuyl2r9Fm7yQWpiQRbda4xJdjlReiIeUL1e6VwSAKf9RVCn
         exrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=9t1Pi8so8DhLKPy14fPa+ekQe9cLOnO6ZAj8p3fA3BQ=;
        b=BIGu6JUSGPgsgr0BIoTsW9y6jg8xM5vTnUGspX1Rk8uWN+DfvQdCC3NigyJVI3OkJj
         Ts8xYh9ER0saPCpvCG47KKWVCH4HOPjzBcygv9Ff5yiZEaZA8VUKr1dpEtAVEDs0DKXA
         DZtpfpU49MGHyYG58rhGELeeEI9ZSJorz36HQd9KSig7aQZ7wb9bZORb00W4T+mzAFZJ
         o3edbsrAJ1fDDYAEc0Ei0VFbkoBWBvOLnXawG8th9KWGBLrAZ/WVMSqvVpmZYkxqqwmd
         NJ0sbqPSD7I65p66walxFh1vaTVThS+ECKwtRaO/GT/nNg+4eHVkF9kz+vq+hfe8BWVu
         bMWQ==
X-Gm-Message-State: AE9vXwPJ3oU809SfdoY1TYSZE7k6sEyK+JbK6QhzJeZyGV9FXauRRmz1EfOtZEFzzmqNH04xSQ9vp1oyHZVE/g==
X-Received: by 10.55.168.69 with SMTP id r66mr11599677qke.155.1473971216219;
 Thu, 15 Sep 2016 13:26:56 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.237.41.97 with HTTP; Thu, 15 Sep 2016 13:26:35 -0700 (PDT)
From: Namrata A Shettar <namrataashettar@gmail.com>
Date: Fri, 16 Sep 2016 01:56:35 +0530
Message-ID: <CAFrQyDGf=YBPFuDTD+C48WkghUHVpuY_5Qr2o-so38Q+_xOLmw@mail.gmail.com>
Subject: [PATCH v2 1/6] staging: vt6656: Remove unnecessary blank lines
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Malcolm Priestley <tvboxspy@gmail.com>, 
	Alison Schofield <amsfield22@gmail.com>, maomao xu <albert008.xu@gmail.com>, 
	Othmar Pasteka <pasteka@kabsi.at>, Parth Sane <laerdevstudios@gmail.com>, 
	Wolfram Sang <wsa-dev@sang-engineering.com>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary=94eb2c065742c09e26053c91aabf

--94eb2c065742c09e26053c91aabf
Content-Type: text/plain; charset=UTF-8

Fix checkpatch issue of unnecessary blank lines.

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

--94eb2c065742c09e26053c91aabf
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Fix checkpatch issue of unnecessary blank lines.<br><div><=
div><div>
<br>
Signed-off-by: Namrata A Shettar &lt;<a href=3D"mailto:namrataashettar@gmai=
l.com" target=3D"_blank">namrataashettar@gmail.com</a>&gt;<br>
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
src=3D"https://ssl.gstatic.com/ui/v1/icons/mail/images/cleardot.gif"></div>=
</div><div><br>
</div><span><font color=3D"#888888">--<br>
2.7.4</font></span></div></div></div></div>

--94eb2c065742c09e26053c91aabf--

