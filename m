X-GM-THRID: 6664965756693774336
X-Received: by 2002:a24:30c7:: with SMTP id q190mr5190269itq.20.1551865717158;
        Wed, 06 Mar 2019 01:48:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:5a55:: with SMTP id v82ls528388ita.0.canary-gmail; Wed,
 06 Mar 2019 01:48:36 -0800 (PST)
X-Google-Smtp-Source: APXvYqxeiddu0WxQXRSweEXn6IDoOgSIItq+nHrhGMvyd2bLUjebPGF3gO+DhAiKYrKL1HCwmHQZ
X-Received: by 2002:a24:9884:: with SMTP id n126mr5200732itd.4.1551865716245;
        Wed, 06 Mar 2019 01:48:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551865716; cv=none;
        d=google.com; s=arc-20160816;
        b=KnX1475ipEhAoE1pKdQmSUx5XXKxUSmdwLn1ynN8zENA55XWdeZfkxbMhjR9UXc25I
         cETMqqVWwgPg4HdF20cmPqCkqOd68AzwD2QiVYJN59QfYbfPik9PEKlA0XnHKidjn0bJ
         Tm5loty0RuD4rrWfe1wU4EJW6emVv6AyjgN7jzHXtqs0V0uK53vnJXTEcaiYxfmRKu6C
         fYXhDKi9b9p2+3P2jDp7Y0VIkzILc2s/AGqq4MeQQBzS9cadnz1BgIXM4Gspfjuv+6cC
         quKRRhnlfmjfk8UB9yK3vXQaJ+YLR4lXmT4Us5wQ19jXZb9P/9ZBdjO0mYy7EvYEfKrq
         7diA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=cD9Pmc05o/PJmDx6zaYbTjtjVYAByKyqvCPw3m2j/gk=;
        b=KlhFmU9l5kUNusdzAku184PvSG2/i8xs2QZDfBg9pn9ZsmiVaR8osMq/M26h9IttE7
         ghtfvjX7UNJiGCbTr+jiFtaM4p0tsInKteS6NyDhNz/JaOY64LaArLfD16Dc0mYJPERZ
         hc2TJ8GxNzvkY1flnsg2y5TSSxHXeKzIaLkVhgUNv/WWTfjpq27bvUXhl1y4drHXTxUf
         7TecSrs5VPhPVuNdD7hSkuM4F28XM1qztSyR+FlVTwanGIYLWVDzBGqLvNWhqv58xNlT
         AkOLFfmDobyRPWP907WVabAfMAsRf35xU4a0LX/weMPQMt6kZgKKA6XXfJ+nHJlQtHFD
         4RQQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gEErO19Q;
       spf=pass (google.com: domain of idebleenasen@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=idebleenasen@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <idebleenasen@gmail.com>
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id y204si81132itb.0.2019.03.06.01.48.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Mar 2019 01:48:36 -0800 (PST)
Received-SPF: pass (google.com: domain of idebleenasen@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gEErO19Q;
       spf=pass (google.com: domain of idebleenasen@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=idebleenasen@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x343.google.com with SMTP id m1so10165027otf.5
        for <outreachy-kernel@googlegroups.com>; Wed, 06 Mar 2019 01:48:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=cD9Pmc05o/PJmDx6zaYbTjtjVYAByKyqvCPw3m2j/gk=;
        b=gEErO19QjSEN05ypjwMC1qdwlrQNWX1sCHdl/yTqmPbzegJ/a9+TN0p9fIn47FR+84
         RhR6Ztb8Z46A9la4/oo1Q6K/4d5mg9Iin/iQe0dfhwVPVoiHu18RTFgcTDUD2yHbWygq
         3fSQOadgRGCDROV4zL7HOc543RhiZRS6LSkuUSw9aQuNcCpR5SZUukY2FUQANHF9vF8U
         kIEP23Qr9ds6A5XjL7hnCkRDO7ADP6hHRLruIghx+nDYYvW5Rk2JV/Aeo/wQf2wCH0g0
         Uj6D/yghAn5vKbIiM1j3GNwlJ+vXcsrVSF5wnRTNoZiMfKnIoFufWEWPzysxwZvGGimO
         PO2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=cD9Pmc05o/PJmDx6zaYbTjtjVYAByKyqvCPw3m2j/gk=;
        b=Pg9cSe+vfUcohoTkkXLPSNa5ub8HkRPI7T/3qsVhb/t8/cVsnPC0rkHdPSAy4OR7WK
         KH6+leED0yFr9d4a8CMZrSVICJY0WecVxTCiI6HYLH/0MVTNbQewCzBu61iBKANCnshm
         MPXP1aLDYwEmL3hFj8ZJJWORyPOwP596Loq7uDVhzoxgpt/zZMOBU2//Vaa6NbKxE20X
         rpd8MSiC0o7OyaSWgMua1GsWNDe/yLPbttyEwgU17yYS5NHd/GUDSmtjIqFKye/lQo+b
         r61ZEm6LaRzeLvljBkG0gCTPOAp5y3mPiQBxJRscQjFoJ84UmKHcl74HY7GqUt6Ppx+Z
         yYDg==
X-Gm-Message-State: APjAAAXvSvJ/weDIbR+2y8cX/G7xvLJEpkS8e5Myj5ksilNst/St7+6c
	yM7DTTQK/zW8HzMh1Di7I/1iRRAn/iGHpypRiEdLrkS3
X-Received: by 2002:a9d:6496:: with SMTP id g22mr3760944otl.47.1551865716055;
 Wed, 06 Mar 2019 01:48:36 -0800 (PST)
MIME-Version: 1.0
References: <CACw+u4H=4T8_daSPgAstpNFNUJ46zXw2DikwCeu4tzm-MQCSRw@mail.gmail.com>
 <alpine.DEB.2.20.1903051912330.3701@hadrien>
In-Reply-To: <alpine.DEB.2.20.1903051912330.3701@hadrien>
From: Debleena Sen <idebleenasen@gmail.com>
Date: Wed, 6 Mar 2019 15:18:19 +0530
Message-ID: <CACw+u4F_j+tYZ9OTH5PUWZbCNn_Q32w5Jv5dCz9=aNCqrHOAFA@mail.gmail.com>
Subject: Re: [Outreachy kernel] Warning about ENOSYS
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary="000000000000bea3a4058369e4a9"

--000000000000bea3a4058369e4a9
Content-Type: text/plain; charset="UTF-8"

On Tue, 5 Mar 2019, 23:46 Julia Lawall, <julia.lawall@lip6.fr> wrote:

>
>
> On Tue, 5 Mar 2019, Debleena Sen wrote:
>
> > I came across the following warning in
> > git/kernels/staging/drivers/staging/vboxvideo/vbox_prime.c
> > WARNING: ENOSYS means 'invalid syscall nr' and nothing else
> > For the following line:
> >                  return ERR_PTR(-ENOSYS);
> >
> > How should I go about fixing this issue?
>
> One would need to know more about the context.  This return is indicating
> that some error occurred.  This is probably under some condition, that
> checks whether there is a problem.  The indication of a problem probably
> involves some variables that hold the results of some function calls, that
> may be producing inappropriate results.  All of that has to be taken into
> account.
>
> A typical example is:
>
> x = kzalloc(sizeof(struct foo), GFP_KERNEL);
> if (!x) {
>   ...
>   return -ENOMEM;
> }
>
> Here to see that -ENOMEM is the appropriate return value, you actally have
> to look back and see that what failed is the call to kzalloc (a kernel
> memory allocator).
>
> julia
>
> >
> > Thanks,
> > Debleena
> >
> > --
> > You received this message because you are subscribed to the Google Groups
> > "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an
> > email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visithttps://
> groups.google.com/d/msgid/outreachy-kernel/CACw%2Bu4H%3D4T8_daSPgAs
> > tpNFNUJ46zXw2DikwCeu4tzm-MQCSRw%40mail.gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >
> >


Thanks for the explanation. I'll try to find the problem with the code and
fix it

--000000000000bea3a4058369e4a9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"auto"><div><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Tue, 5 Mar 2019, 23:46 Julia Lawall, &lt;<=
a href=3D"mailto:julia.lawall@lip6.fr" target=3D"_blank">julia.lawall@lip6.=
fr</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><br>
<br>
On Tue, 5 Mar 2019, Debleena Sen wrote:<br>
<br>
&gt; I came across the following warning in<br>
&gt; git/kernels/staging/drivers/staging/vboxvideo/vbox_prime.c<br>
&gt; WARNING: ENOSYS means &#39;invalid syscall nr&#39; and nothing else=C2=
=A0<br>
&gt; For the following line:<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return E=
RR_PTR(-ENOSYS);<br>
&gt;<br>
&gt; How should I go about fixing this issue?<br>
<br>
One would need to know more about the context.=C2=A0 This return is indicat=
ing<br>
that some error occurred.=C2=A0 This is probably under some condition, that=
<br>
checks whether there is a problem.=C2=A0 The indication of a problem probab=
ly<br>
involves some variables that hold the results of some function calls, that<=
br>
may be producing inappropriate results.=C2=A0 All of that has to be taken i=
nto<br>
account.<br>
<br>
A typical example is:<br>
<br>
x =3D kzalloc(sizeof(struct foo), GFP_KERNEL);<br>
if (!x) {<br>
=C2=A0 ...<br>
=C2=A0 return -ENOMEM;<br>
}<br>
<br>
Here to see that -ENOMEM is the appropriate return value, you actally have<=
br>
to look back and see that what failed is the call to kzalloc (a kernel<br>
memory allocator).<br>
<br>
julia<br>
<br>
&gt;<br>
&gt; Thanks,<br>
&gt; Debleena<br>
&gt;<br>
&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups<br>
&gt; &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an<br>
&gt; email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups=
.com" rel=3D"noreferrer" target=3D"_blank">outreachy-kernel+unsubscribe@goo=
glegroups.com</a>.<br>
&gt; To post to this group, send email to <a href=3D"mailto:outreachy-kerne=
l@googlegroups.com" rel=3D"noreferrer" target=3D"_blank">outreachy-kernel@g=
ooglegroups.com</a>.<br>
&gt; To view this discussion on the web visithttps://<a href=3D"http://grou=
ps.google.com/d/msgid/outreachy-kernel/CACw%2Bu4H%3D4T8_daSPgAs" rel=3D"nor=
eferrer noreferrer" target=3D"_blank">groups.google.com/d/msgid/outreachy-k=
ernel/CACw%2Bu4H%3D4T8_daSPgAs</a><br>
&gt; tpNFNUJ46zXw2DikwCeu4tzm-MQCSRw%<a href=3D"http://40mail.gmail.com" re=
l=3D"noreferrer noreferrer" target=3D"_blank">40mail.gmail.com</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer noreferrer" target=3D"_blank">https://groups.google.com/=
d/optout</a>.<br>
&gt;<br>
&gt;</blockquote></div></div><div dir=3D"auto"><br></div><div dir=3D"auto">=
Thanks for the explanation. I&#39;ll try to find the problem with the code =
and fix it</div><div dir=3D"auto"></div></div>
</div>

--000000000000bea3a4058369e4a9--

