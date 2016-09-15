X-GM-THRID: 6329929865196732416
X-Received: by 10.129.145.5 with SMTP id i5mr5132616ywg.55.1473964001156;
        Thu, 15 Sep 2016 11:26:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.54.199 with SMTP id l190ls629862itl.2.gmail; Thu, 15 Sep
 2016 11:26:40 -0700 (PDT)
X-Received: by 10.107.135.198 with SMTP id r67mr7876972ioi.2.1473964000595;
        Thu, 15 Sep 2016 11:26:40 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-qk0-x241.google.com (mail-qk0-x241.google.com. [2607:f8b0:400d:c09::241])
        by gmr-mx.google.com with ESMTPS id p193si378658ywe.6.2016.09.15.11.26.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 11:26:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400d:c09::241 as permitted sender) client-ip=2607:f8b0:400d:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400d:c09::241 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x241.google.com with SMTP id z143so3889232qka.3
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 11:26:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=q4FTNmiyzTDQDlM16eDcv7Q3GGN59IcJJDOKXjzwOr0=;
        b=qKquxbPJIYaO0YF1AMUxKbEh23LVyVVJfJhk0RqO6H0s33Pj6sUd+Dj4r2YNOxhge0
         FDrYOL+7xP+Gqz0kFSg+dGlX5CQqctO2tViLva+DaOX6jH99TFYdUsXqJqBa0+r51VQp
         XsyyG1i6qQUiLVmcJqoLObsVbyEHE7qeXunjQzVjHKjvaIc2q0czHFSxwblcFgo6396K
         pa9o8L2iJBCRduhnSTqFXs6TVetVWCtPP4LLskAcKusTJw0mWPp/+ReR8utR2xyh6bxD
         s/y/gyCbRebhrxgCASKwa8e1nx774YRcPXZ0WzFwYd9qrvv5uhtPbI6lm7ziSYgxjdUt
         wPzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=q4FTNmiyzTDQDlM16eDcv7Q3GGN59IcJJDOKXjzwOr0=;
        b=BzcWKAEDkQUhETkEJ7718or4UbsrINq9aIXek2EjaQcjcpMHZuTw3OqFZPhW0syH+v
         Y8/ARkJb0CuN4TjpZAfdSyNeIZ6w8aLafjMKhGrc2Sxn/iqwuGcBi2f7yAzRUN2SX6e3
         vC832nkjv7JDUkXBQQS1lXpXuW5BzJ1viEtavQ1iIjt5ClifdOWeOm0SwzXBW+R0MlX5
         w4r10iV14iqrKkI/4fNqfGzOrc50KVVhXeIqa7fV0xo/z7b01A9gp5ugYJpN045mBGsz
         IwghwU0KeeXHq5QKnhEbl6G2xW3r4hqxgY5pU/m5RvfNpCFcto5li7E+ewwaNkVBPRpx
         CqSg==
X-Gm-Message-State: AE9vXwP30QkpHkAal26xTH8fHsXd4Nkzxeg5DQC7OrgkeOee+IEqV6iaqVvgcjT1GRaue1lrFUA38HXmBKJgJw==
X-Received: by 10.55.181.195 with SMTP id e186mr10595514qkf.153.1473964000415;
 Thu, 15 Sep 2016 11:26:40 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.56.184 with HTTP; Thu, 15 Sep 2016 11:26:09 -0700 (PDT)
In-Reply-To: <20160915173232.GA29652@kroah.com>
References: <20160914185801.12327-1-gs051095@gmail.com> <20160915173232.GA29652@kroah.com>
From: Gargi Sharma <gs051095@gmail.com>
Date: Thu, 15 Sep 2016 23:56:09 +0530
Message-ID: <CAOCi2DE8H3h-SZtz-4HAd1KfmAGuncCrhQmV2f7Uh3UPecvW0Q@mail.gmail.com>
Subject: Re: [PATCH v4] staging: octeon: remove multiple blank lines
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=94eb2c06afa0a81bdd053c8ffc09

--94eb2c06afa0a81bdd053c8ffc09
Content-Type: text/plain; charset=UTF-8

On Thu, Sep 15, 2016 at 11:02 PM, Greg KH <gregkh@linuxfoundation.org>
wrote:
>
> On Thu, Sep 15, 2016 at 12:28:01AM +0530, Gargi Sharma wrote:
> > Fixes the checkpatch issue Please don't use multiple blank lines.
> > ---
> > Changes in v4
> >       -Make the commit message follow protocol by putting v3 commit
> >        subject before v2.
> >
> > Changes in v3
> >         - Make the commit message more clearer. Also, fixed the subject
> >         mistake in v2.
> >
> > Changes in v2
> >       - Change the commit subject to :Correcting the commit
> >         message. Fixes the checkpatch issue Please don't use multiple
> >         blank lines.
> >
> > Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> > ---
>
> The Signed-off-by: has to go above the --- line :(

Ah, so sorry! Sending a revision correcting the mistake.

gargi

>
> thanks,
>
> greg k-h

--94eb2c06afa0a81bdd053c8ffc09
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Thu, Sep 15, 2016 at 11:02 PM, Greg KH &lt;<a href=3D"m=
ailto:gregkh@linuxfoundation.org">gregkh@linuxfoundation.org</a>&gt; wrote:=
<br>&gt;<br>&gt; On Thu, Sep 15, 2016 at 12:28:01AM +0530, Gargi Sharma wro=
te:<br>&gt; &gt; Fixes the checkpatch issue Please don&#39;t use multiple b=
lank lines.<br>&gt; &gt; ---<br>&gt; &gt; Changes in v4<br>&gt; &gt; =C2=A0=
 =C2=A0 =C2=A0 -Make the commit message follow protocol by putting v3 commi=
t<br>&gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0subject before v2.<br>&gt; &gt;<b=
r>&gt; &gt; Changes in v3<br>&gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 - Make t=
he commit message more clearer. Also, fixed the subject<br>&gt; &gt; =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 mistake in v2.<br>&gt; &gt;<br>&gt; &gt; Changes in v=
2<br>&gt; &gt; =C2=A0 =C2=A0 =C2=A0 - Change the commit subject to :Correct=
ing the commit<br>&gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 message. Fixes the =
checkpatch issue Please don&#39;t use multiple<br>&gt; &gt; =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 blank lines.<br>&gt; &gt;<br>&gt; &gt; Signed-off-by: Gargi S=
harma &lt;<a href=3D"mailto:gs051095@gmail.com">gs051095@gmail.com</a>&gt;<=
br>&gt; &gt; ---<br>&gt;<br>&gt; The Signed-off-by: has to go above the ---=
 line :(<br><br>Ah, so sorry! Sending a revision correcting the mistake.<di=
v><br></div><div>gargi<br><div><br></div><div>&gt;<br>&gt; thanks,<br>&gt;<=
br>&gt; greg k-h</div></div></div>

--94eb2c06afa0a81bdd053c8ffc09--

