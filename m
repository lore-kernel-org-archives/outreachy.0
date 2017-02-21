X-GM-THRID: 6389618960460939264
X-Received: by 10.157.22.184 with SMTP id c53mr9812320ote.87.1487699095097;
        Tue, 21 Feb 2017 09:44:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.10.196 with SMTP id 62ls13942543otq.7.gmail; Tue, 21 Feb
 2017 09:44:54 -0800 (PST)
X-Received: by 10.157.88.38 with SMTP id r38mr10005378oth.124.1487699094677;
        Tue, 21 Feb 2017 09:44:54 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-it0-x232.google.com (mail-it0-x232.google.com. [2607:f8b0:4001:c0b::232])
        by gmr-mx.google.com with ESMTPS id 13si224437iti.0.2017.02.21.09.44.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Feb 2017 09:44:54 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c0b::232 as permitted sender) client-ip=2607:f8b0:4001:c0b::232;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c0b::232 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x232.google.com with SMTP id y135so61607219itc.1
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Feb 2017 09:44:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=jjSiAAykLkxOTO+oCGEUFLqiQSXnqoyQNOkCrejCr90=;
        b=tr7o8BJDhMioq8zfhJSKo2nyVmfCNmokVWTfX/rLVZNJC2wPILGQMdlvVckLxuN/Nu
         Y7UVqmPODLdT1Y5IrZi5dbxluHPH2McC6t3oyhWefMa5Gkw0UpBnSmiuFmcK5BaVRjRB
         QtznHHqpN227JSvyHY7LkfWn9ru3aXyN2E18sjl1sjwiAGY0ggHhhAN17AaAIw78/q39
         2yMxDOguyxP7uP6lzf1+59QUaRIDaNT8hXdhOaDh8f9v7WasB6qpnQEqRUtuTa58+npd
         sZxRB61Pqluq1EOHwpZYzbulZOe99eTy1KzIHSV8pXYE8uqgI5RBiek7x13cv4ih21xS
         w1lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=jjSiAAykLkxOTO+oCGEUFLqiQSXnqoyQNOkCrejCr90=;
        b=cGnPNObMU0NBCDdWmHVwwd1VWCN+cEh1eV+ildvC5bmYxf68gT1sG67C8w2wi6Y1sd
         U7TVtmqYjqbgfMYGwCzTcP8CziGawU6Ai4IgEJqxlynU8fKpogTQN+YjnJx9z002txj1
         8wsYbAkKE5FLTuyjTUvKO0PK0d/4QHmIOrdxflENoirPKe5mz5ssKgzU5dZPPzMwMLab
         fjKrJ/rf9dIzIp6v12P4DqPOlKBT5/7DEe7HGtW5JghCi5Z1wkhezjOFB92zQtbkhtei
         ICz6DQdxHzrYMCjB/qVZD/yhrWANpURPePtI9sTIZBr6E+Pw0+HCQPpgwIxn3K2f26Xi
         hcBg==
X-Gm-Message-State: AMke39lvTZ6R4ivtUDIhk5pvyLyHuzeWBT6H0dP8GHVgSGjRJJZBwXhaTtvTnV6VWsFl5/N2dV352DJ4k2xEZA==
X-Received: by 10.36.66.145 with SMTP id i139mr13869958itb.6.1487699094372;
 Tue, 21 Feb 2017 09:44:54 -0800 (PST)
MIME-Version: 1.0
Received: by 10.36.103.141 with HTTP; Tue, 21 Feb 2017 09:44:24 -0800 (PST)
From: Gargi Sharma <gs051095@gmail.com>
Date: Tue, 21 Feb 2017 23:14:24 +0530
Message-ID: <CAOCi2DHM+X0ksQZ2ZBXPkbJu5uv5kerHRpaJaFEG8C36CA72jA@mail.gmail.com>
Subject: Coccinelle Challenge Problem 2
To: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=001a1144b9480d8a0105490df03e

--001a1144b9480d8a0105490df03e
Content-Type: text/plain; charset=UTF-8

Hi,

Here's my coccinelle script to parentheses around the right hand side of an
assignment.

@@ expression e, e1, e2; @@
e =
-(
        e1 + e2
-)

@@ expression e, e1, e2; @@
e =
-(
        e1 - e2
-)

@@ expression e, e1;
contant c; @@
e =
-(
        e1 << c
-)

@@ expression e, e1;
constant c; @@
e =
-(
        e1 >> c
-)

thanks,
gargi

--001a1144b9480d8a0105490df03e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><br>Here&#39;s my coccinelle script to parentheses =
around the right hand side of an assignment.<br><br>@@ expression e, e1, e2=
; @@ =C2=A0<br>e =3D =C2=A0<br>-( =C2=A0<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 e1 =
+ e2 <br>-) =C2=A0<br>=C2=A0<br>@@ expression e, e1, e2; @@ =C2=A0<br>e =3D=
 =C2=A0<br>-( =C2=A0<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 e1 - e2 =C2=A0<br>-) <b=
r>=C2=A0<br>@@ expression e, e1; <br>contant c; @@ =C2=A0<br>e =3D =C2=A0<b=
r>-( =C2=A0<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 e1 &lt;&lt; c =C2=A0<br>-) <br>=
=C2=A0<br>@@ expression e, e1; <br>constant c; @@ =C2=A0<br>e =3D =C2=A0<br=
>-( =C2=A0<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 e1 &gt;&gt; c =C2=A0<br>-)<div><b=
r></div><div>thanks,</div><div>gargi</div></div>

--001a1144b9480d8a0105490df03e--

