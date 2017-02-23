X-GM-THRID: 6390372862333550592
X-Received: by 10.107.28.69 with SMTP id c66mr1782492ioc.9.1487882644863;
        Thu, 23 Feb 2017 12:44:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.27.71 with SMTP id l65ls4715117otl.41.gmail; Thu, 23 Feb
 2017 12:44:04 -0800 (PST)
X-Received: by 10.129.84.213 with SMTP id i204mr12762228ywb.46.1487882644372;
        Thu, 23 Feb 2017 12:44:04 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-it0-x233.google.com (mail-it0-x233.google.com. [2607:f8b0:4001:c0b::233])
        by gmr-mx.google.com with ESMTPS id e196si939269itc.2.2017.02.23.12.44.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Feb 2017 12:44:04 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c0b::233 as permitted sender) client-ip=2607:f8b0:4001:c0b::233;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c0b::233 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x233.google.com with SMTP id h10so179334363ith.1
        for <outreachy-kernel@googlegroups.com>; Thu, 23 Feb 2017 12:44:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=+f5iZHmClJXyOKrNegWd3VoWjeK224SN8BnHiqvrx94=;
        b=D9MBGf7KGdqY0SJDoxcp+YqKhDU4M+3jI78WE2l99GRa+KD2M503zwoU6dsko2OxDy
         agHp/uT1l+rE5CIxpvVubRiACIcuMZk9vFGSWlmnuVrJYdj3XdZnb2XqNvmO6OtiQ9Hm
         CyW6ONXNubMzdLBDvjrolHXEQkhD6OeNVoI+5zZG+JlVH3hLkVfDxK11fCJawrs4Sngn
         z3Fp2zg//UI2Ytov2W0y+wJhqIUL3sMkwgg6K7p4W4s7mtLfW0BAmY4elvUMBCzmksCS
         CUKVhpYpvxrpXh7mfvmI2o/90JWVm5rO/QcALTEH18sjej9BN+OzdGOgvFOxerjRXooA
         vqKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=+f5iZHmClJXyOKrNegWd3VoWjeK224SN8BnHiqvrx94=;
        b=jWYK4pMGlPDUjm5hOEXRoa3+H+nP/imItqLyYJnZyrJ7P5CITvfClxdmJR86lAGuAe
         0gJmVnYM/DBIYGTGjxgc8YueeblfnPP202e84ixKF5OjpM06WhMPNGoda0nBT+IQZ06v
         2N8gIGnmPVsOT51bxX24KVn/9kbDlRj2aP/n1pF4kkby7n0mjC4bD11+tT08cBKbaXsV
         Jpd91yI9/AyAnRpvfp6yI4gEabFIuYcmCU72zcR2dXf9FUNl98dI1BKR/zYRdetFaCFF
         avp++KRZJKdTEUvWev2gmOCOk1TblsWXMT7RL8KXSd7/baqF+XQUwOJHEaO7I1l3zI+b
         9znw==
X-Gm-Message-State: AMke39nia7FgMSHUKgzvZcsommgUASuh95eHGYQAaDPFwTeWmYiZpX8JURRntN3dCvpjKhKUKncN3sCCRBaR0A==
X-Received: by 10.36.0.130 with SMTP id 124mr6933062ita.89.1487882643732; Thu,
 23 Feb 2017 12:44:03 -0800 (PST)
MIME-Version: 1.0
Received: by 10.36.103.141 with HTTP; Thu, 23 Feb 2017 12:43:33 -0800 (PST)
In-Reply-To: <alpine.DEB.2.20.1702232056220.2103@hadrien>
References: <CAOCi2DE66sqkwAAQiZKNYcY5tWxg30n+qmrq3Yqb2-L1uPHqBA@mail.gmail.com>
 <alpine.DEB.2.20.1702232056220.2103@hadrien>
From: Gargi Sharma <gs051095@gmail.com>
Date: Fri, 24 Feb 2017 02:13:33 +0530
Message-ID: <CAOCi2DFbaEUW4Nrwkq-AeaXT28xJyX5D0SRkoAyUNDfrijujkw@mail.gmail.com>
Subject: Re: [Outreachy kernel] Coccinelle Challenge Problem 3
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=001a11402d96727ff6054938ace6

--001a11402d96727ff6054938ace6
Content-Type: text/plain; charset=UTF-8

On Fri, Feb 24, 2017 at 1:27 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
>
> On Thu, 23 Feb 2017, Gargi Sharma wrote:
>
> > Hi,
> >
> > Here's my Coccinelle script to handle NULL tests for the following
functions
> > kmalloc, devm_kzalloc, kmalloc_array, devm_ioremap, usb_alloc_urb,
> > alloc_netdev, dev_alloc_skb.
> >
> > @@
> > expression ptr;
> > position p;
> > statement s0;
> > @@
> >
> > ptr@p
=\(kmalloc\|devm_kzalloc\|kmalloc_array\|devm_ioremap\|usb_alloc_urb\|alloc_
> > netdev\|dev_alloc_skb\)(...)
> > ... when != ptr
> >
> > if (
> > (
> > + !
> > ptr
> > - == NULL
> > )
> >  ) s0
>
> This looks fine.  To be a bit more general, you can put "else s1".  If
> there is an else that is just a metavariable that is not used elsewhere,
> then it will also match the case where the else is completely absent.

I did make the changes you suggested to my coccinelle script. I have a
confusion
though, when running this script on a directory, the script does not handle
all .c files
for some reason. For example wlan-ng staging driver has 12 .c files but the
script says
that only 4 files match.

gargi
>
> julia
>
> > Thanks,
> > Gargi
> >
> > --
> > You received this message because you are subscribed to the Google
Groups
> > "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
an
> > email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visithttps://
groups.google.com/d/msgid/outreachy-kernel/CAOCi2DE66sqkwAAQiZKNYcY
> > 5tWxg30n%2Bqmrq3Yqb2-L1uPHqBA%40mail.gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >
> >

--001a11402d96727ff6054938ace6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Fri, Feb 24, 2017 at 1:27 AM, Julia Lawall &lt;<a href=
=3D"mailto:julia.lawall@lip6.fr">julia.lawall@lip6.fr</a>&gt; wrote:<br>&gt=
;<br>&gt;<br>&gt;<br>&gt; On Thu, 23 Feb 2017, Gargi Sharma wrote:<br>&gt;<=
br>&gt; &gt; Hi,<br>&gt; &gt;<br>&gt; &gt; Here&#39;s my Coccinelle script =
to handle NULL tests for the following functions<br>&gt; &gt; kmalloc, devm=
_kzalloc, kmalloc_array, devm_ioremap, usb_alloc_urb,<br>&gt; &gt; alloc_ne=
tdev, dev_alloc_skb.<br>&gt; &gt;<br>&gt; &gt; @@<br>&gt; &gt; expression p=
tr;<br>&gt; &gt; position p;<br>&gt; &gt; statement s0;<br>&gt; &gt; @@<br>=
&gt; &gt;<br>&gt; &gt; ptr@p =3D\(kmalloc\|devm_kzalloc\|kmalloc_array\|dev=
m_ioremap\|usb_alloc_urb\|alloc_<br>&gt; &gt; netdev\|dev_alloc_skb\)(...)<=
br>&gt; &gt; ... when !=3D ptr<br>&gt; &gt;<br>&gt; &gt; if (<br>&gt; &gt; =
(<br>&gt; &gt; + !<br>&gt; &gt; ptr<br>&gt; &gt; - =3D=3D NULL<br>&gt; &gt;=
 )<br>&gt; &gt; =C2=A0) s0<br>&gt;<br>&gt; This looks fine.=C2=A0 To be a b=
it more general, you can put &quot;else s1&quot;.=C2=A0 If<br>&gt; there is=
 an else that is just a metavariable that is not used elsewhere,<br>&gt; th=
en it will also match the case where the else is completely absent.<br><br>=
I did make the changes you suggested to my coccinelle script. I have a conf=
usion<br>though, when running this script on a directory, the script does n=
ot handle all .c files<br>for some reason. For example wlan-ng staging driv=
er has 12 .c files but the script says<br>that only 4 files match.<br><br>g=
argi<br>&gt;<br>&gt; julia<br>&gt;<br>&gt; &gt; Thanks,<br>&gt; &gt; Gargi<=
br>&gt; &gt;<br>&gt; &gt; --<br>&gt; &gt; You received this message because=
 you are subscribed to the Google Groups<br>&gt; &gt; &quot;outreachy-kerne=
l&quot; group.<br>&gt; &gt; To unsubscribe from this group and stop receivi=
ng emails from it, send an<br>&gt; &gt; email to <a href=3D"mailto:outreach=
y-kernel%2Bunsubscribe@googlegroups.com">outreachy-kernel+unsubscribe@googl=
egroups.com</a>.<br>&gt; &gt; To post to this group, send email to <a href=
=3D"mailto:outreachy-kernel@googlegroups.com">outreachy-kernel@googlegroups=
.com</a>.<br>&gt; &gt; To view this discussion on the web visithttps://<a h=
ref=3D"http://groups.google.com/d/msgid/outreachy-kernel/CAOCi2DE66sqkwAAQi=
ZKNYcY">groups.google.com/d/msgid/outreachy-kernel/CAOCi2DE66sqkwAAQiZKNYcY=
</a><br>&gt; &gt; 5tWxg30n%2Bqmrq3Yqb2-L1uPHqBA%<a href=3D"http://40mail.gm=
ail.com">40mail.gmail.com</a>.<br>&gt; &gt; For more options, visit <a href=
=3D"https://groups.google.com/d/optout">https://groups.google.com/d/optout<=
/a>.<br>&gt; &gt;<br>&gt; &gt;<br></div>

--001a11402d96727ff6054938ace6--

