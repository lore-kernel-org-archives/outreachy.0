X-GM-THRID: 6655346970482180096
X-Received: by 2002:a50:b781:: with SMTP id h1mr1534740ede.3.1549568718538;
        Thu, 07 Feb 2019 11:45:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:406:: with SMTP id d6ls686707eja.7.gmail; Thu, 07
 Feb 2019 11:45:17 -0800 (PST)
X-Google-Smtp-Source: AHgI3Ibj5bT9UNaCGxF0jQH+pIVO9OTFOL1AjBPILrUrXQx9UiLPmmsdAz6shc45oQPcUJ054CKw
X-Received: by 2002:a17:906:1589:: with SMTP id k9mr2214095ejd.5.1549568717430;
        Thu, 07 Feb 2019 11:45:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1549568717; cv=none;
        d=google.com; s=arc-20160816;
        b=yyrPBQDQDOznsDLFHzvua63+amdAQ354xBY+lse4ZAdTuHXiBVl9CAC5w/QwOwMYkz
         ZAnXZrgaUvatJze3Re1Syz+GESfRQ403Btjx2GuigCDO/WqlhB88RPocbywEL9J/GUWt
         GIkXu8zNcQFzW5mFlkAG//79nhQvIn/8Nby6K8Pk5m0nHGrEKBTTYHuh7AuHErmz09tH
         BftYqIrRhNMCuKoSd2oMZzNC53f59mrt95ocljHCvNGgWI/ZkVLAJJjuBk0j0tI31d5X
         1b+mEixHl4pzEyHgvSx+6Eaf6/fgEQIO0iL+03KGux4UcncDHVEI+4qAH0oKk0n8x7/V
         x9Ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=u9D/fpT9trX15BsQIicyr13di74WGbYeHCWwn8ajttk=;
        b=ArIO7Jlyr0gRMoZk670EQt/T4L77WcqA/MIec3hJ7MVXvKOYfOfw8OPZTDtN9I7wka
         4BMQIEleQCm+73FXjcWl1iompNcrPfpTSPuGnix7uZGFcujyHqFXolgNfRIU7D27PRRW
         DyUgCsgTQ9Flvwz4AaS6T60anqlf/B8IxiKtGdsBKk7VRFfAW/ncw2bR4GzPyhBHeDiE
         Zvk7vvVag5SuEzIUke8qvz/UxJHQkb2KCOUcr80SDEsJtQg4Ot2GD/+I8diHNou2ijBT
         qH7RCoVY99QgIJaK5DBSMKtrN7hRRbpwPben/v/uTv11iEUB8Vf93hK5jSlYE4kqGUgr
         xrLQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=G0LiMqXh;
       spf=pass (google.com: domain of javeedjavadeveloper54@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=javeedjavadeveloper54@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <javeedjavadeveloper54@gmail.com>
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id h28si8804edh.4.2019.02.07.11.45.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Feb 2019 11:45:17 -0800 (PST)
Received-SPF: pass (google.com: domain of javeedjavadeveloper54@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=G0LiMqXh;
       spf=pass (google.com: domain of javeedjavadeveloper54@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=javeedjavadeveloper54@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x341.google.com with SMTP id z5so1151324wmf.0
        for <outreachy-kernel@googlegroups.com>; Thu, 07 Feb 2019 11:45:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=u9D/fpT9trX15BsQIicyr13di74WGbYeHCWwn8ajttk=;
        b=G0LiMqXhPdnGQiYIe+CtiWwYaZHZUnFjgf7vmtMfDdof4lb9vMXqhsTih1Ijo4slDw
         NaLhrOkQml9hc4eBbZHw5PIkRqtYrKuI0QaEz7/QMJqljyUyu2e4I0ipjF/I2RJsQeiz
         B0PLzdcMcLS4mvQKu0n6mGJBIBbNTZFtKUStnxu2sNQ6UWv+WdbUGOHOFul+gcdkRmyT
         wNYQM4Nq0nNPu+S7O7gE//XuTINxHO2FBQ761KStLiyi+UhG8MBK+dgpQwqVJ9yU0AKW
         +bXRYEH5NzEfm8U8sAeuAlO7JLwI4XJNhTev/5XOiK1QBW0lOPMrfkbAW0TlbqR9Kdak
         vTHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=u9D/fpT9trX15BsQIicyr13di74WGbYeHCWwn8ajttk=;
        b=cGe8J4A2ewc5TNhdP82ppSxUqLq96Fj8uiTYz0JXw3Yd4MDC4FW8/I1ELnM8U143VU
         Itt2sSe0u93rJDXCO9ZMwxxYfVChnYtwxiGWvNmK0QE00+zjelFajFZtqNkJxl4BEENm
         C2rIF1PlytE0SCovf9wTALyfgmzGP6IK4fGPJA5ecWUI5lTgaiNAbvMMH6wUjz3lfEq5
         mmdPxRB12yorsknwoF+X9HUZwHkkk/A0mtarvoRHXyUJMS0NDLRG14AXb3HSDTw0nxDL
         CFsPKTdG25zK0otAH9n6pu4rUd26Q5SIup9NUaRlGlhiq+F0Fpqr7WNiSbVqMuC3Huuh
         O/kQ==
X-Gm-Message-State: AHQUAuaTDg5Z3Shdd7EaEYmHYAhe+CXaEKhtr2/ibOsPFcgHeiQF+WP9
	ADJ6EhgmgY8SLk2Uyf/mkNdE0kWVitLbL9b98AM=
X-Received: by 2002:a1c:7ec4:: with SMTP id z187mr8569461wmc.43.1549568716833;
 Thu, 07 Feb 2019 11:45:16 -0800 (PST)
MIME-Version: 1.0
From: Javed Khan <javeedjavadeveloper54@gmail.com>
Date: Thu, 7 Feb 2019 14:46:45 -0500
Message-ID: <CACVHcdYyDazeXTDJ+i73n-tZjtTXHuK_b-Gz3gZNMj8RS4kCUw@mail.gmail.com>
Subject: Back Fill Position || Urgent Need Java Lead (Bellevue WA) 06+ Months
To: jaweed@aespatech.com
Content-Type: multipart/alternative; boundary="000000000000ec1c9605815314e9"
Bcc: outreachy-kernel@googlegroups.com

--000000000000ec1c9605815314e9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Please share profile on *jaweed@aespatech.com* <jaweed@aespatech.com> /
*javed@nestarit.com* <javed@nestarit.com>

Direct contact number: (201) 448 1153



Hello,

Hope you=E2=80=99re doing great!!!

Please go through the below requirement and If you have suitable
candidate's kindly share updated resume along with below Contact Details.



***CANDIDATES MUST HAVE ALL THE REQUIRED SKILLS BELOW***

***MUST BE SR. 08+ YEARS OF CANDIDATE* *NO EAD-OPT=E2=80=99S*



Job Title: Java Lead / Fullstack

Location: Bellevue WA

Duration: 06+ Months Contract



*Job Description: *

*Java Fullstack Lead.*

*Java Fullstack Lead with 09+ Years experience  (Angular Springboot restful
etc) *



-----------------------------



Thanks & Regards,

Javed Khan (Sr. Technical Recruiter)

*Nestar Technologies | Aespa Tech LLC*

23800 Commerce Park Beachwood, OH 44122

*A Certified Minority & Women Owned Business Enterprise (MWBE)*

Phone: (201) 448 1153 | Fax. (216) 378-4893

*Email: **javed@nestarit.com* <javed@nestarit.com>* | Email: *
*jaweed@aespatech.com* <jaweed@aespatech.com>

*www.nestarit.com* <http://www.nestarit.com/>*  | **www.aespatech.com*
<http://www.aespatech.com/>



*Email is the best way to reach me...!!!*



*Notice of Confidentiality:*

The information contained herein is intended only for the confidential use
of the recipient. If the reader of this message is neither the intended
recipient, nor the person responsible for delivering it to the intended
recipient, you are hereby notified that you have received this
communication in error, and that any review, dissemination, distribution,
or copying of this communication is strictly prohibited. If you receive
this in error, please notify the sender immediately by telephone, and
destroy this e-mail message OR reply with the subject *=E2=80=9CREMOVE=E2=
=80=9D* such that
your email would be taken out of our distribution list.

--000000000000ec1c9605815314e9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;fo=
nt-size:11pt;font-family:Calibri,sans-serif"><a name=3D"_MailAutoSig">Pleas=
e share profile on<span style=3D"color:rgb(31,73,125)"> </span></a><a href=
=3D"mailto:jaweed@aespatech.com" target=3D"_blank" style=3D"color:blue"><b>=
jaweed@aespatech.com</b></a> / <a href=3D"mailto:javed@nestarit.com" style=
=3D"color:blue"><b>javed@nestarit.com</b></a><span style=3D"color:rgb(31,73=
,125)"></span></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">Direct
contact number: (201) 448 1153</p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">=C2=A0</p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">Hello,</p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">Hope you=E2=80=99re doing
great!!!</p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">Please go through the
below requirement and If you have suitable candidate&#39;s kindly share upd=
ated
resume along with below Contact=C2=A0Details.<b><span style=3D"color:red;ba=
ckground:yellow"></span></b></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><b>=C2=A0</b></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><b><span style=3D"color:red;background:yellow">=
**CANDIDATES MUST HAVE ALL THE REQUIRED
SKILLS BELOW**</span></b></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><b><span style=3D"color:red;background:yellow">=
**MUST BE SR. 08+ YEARS OF CANDIDATE</span></b><b><span style=3D"color:red"=
> </span></b><b>NO EAD-OPT=E2=80=99S</b></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">=C2=A0</p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">Job Title: Java Lead / Fullstack</p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">Location: Bellevue WA</p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">Duration: 06+ Months Contract</p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><b>=C2=A0</b></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><b>Job Description: </b></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><b>Java Fullstack Lead.</b></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><b>Java Fullstack Lead with 09+ Years
experience=C2=A0 (Angular Springboot restful
etc) </b></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">=C2=A0</p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">-----------------------------</p>

<p class=3D"MsoNormal" style=3D"background-image:initial;background-positio=
n:initial;background-size:initial;background-repeat:initial;background-orig=
in:initial;background-clip:initial;margin:0in 0in 0.0001pt;font-size:11pt;f=
ont-family:Calibri,sans-serif">=C2=A0</p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">Thanks &amp; Regards,</p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">Javed Khan (Sr. Technical Recruiter)</p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><b><span style=3D"color:rgb(79,98,40)">Nestar T=
echnologies | Aespa Tech LLC</span></b></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">23800 Commerce Park Beachwood, OH 44122 </p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><b>A Certified Minority &amp; Women Owned Busin=
ess Enterprise
(MWBE)</b></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">Phone: (201) 448 1153 | Fax. (216) 378-4893</p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><b>Email: </b><a href=3D"mailto:javed@nestarit.=
com" style=3D"color:blue"><b>javed@nestarit.com</b></a><b> | <span style=3D=
"color:rgb(31,73,125)">Email: </span></b><a href=3D"mailto:jaweed@aespatech=
.com" target=3D"_blank" style=3D"color:blue"><b>jaweed@aespatech.com</b></a=
><b><span style=3D"color:rgb(31,73,125)"> </span></b></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><a href=3D"http://www.nestarit.com/" style=3D"c=
olor:blue"><b>www.nestarit.com</b></a><b>=C2=A0 | </b><a href=3D"http://www=
.aespatech.com/" style=3D"color:blue"><b>www.aespatech.com</b></a><b></b></=
p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span style=3D"color:rgb(31,73,125)">=C2=A0</sp=
an></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><b><span style=3D"color:rgb(33,88,104)">Email i=
s the best way to reach me...!!!</span></b></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">=C2=A0</p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><b>Notice of Confidentiality:<u></u></b></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">The information contained herein is intended on=
ly for the
confidential use of the recipient. If the reader of this message is neither=
 the
intended recipient, nor the person responsible for delivering it to the
intended recipient, you are hereby notified that you have received this
communication in error, and that any review, dissemination, distribution, o=
r
copying of this communication is strictly prohibited. If you receive this i=
n
error, please notify the sender immediately by telephone, and destroy this
e-mail message OR reply with the subject=C2=A0<b><span style=3D"color:red">=
=E2=80=9CREMOVE=E2=80=9D</span></b>=C2=A0such
that your email would be taken out of our distribution list.</p></div>

--000000000000ec1c9605815314e9--

