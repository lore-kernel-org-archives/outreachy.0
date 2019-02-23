X-GM-THRID: 6661078107431108608
X-Received: by 2002:a05:660c:7:: with SMTP id q7mr1340585itj.8.1550908432199;
        Fri, 22 Feb 2019 23:53:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:9784:: with SMTP id s4ls1008636jaj.2.gmail; Fri, 22 Feb
 2019 23:53:51 -0800 (PST)
X-Google-Smtp-Source: AHgI3IZ6OnbeQWpS7GJWgTKPj8bIuGsvfh0UckCl3J7eDbtd8Q5Ba0c4ax8v51uwlgUjRMqh5EZp
X-Received: by 2002:a02:4357:: with SMTP id s84mr1333180jab.16.1550908431541;
        Fri, 22 Feb 2019 23:53:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550908431; cv=none;
        d=google.com; s=arc-20160816;
        b=Bw58z+fWE4g9o4vkG8lmMlO9vsOBcLzeJer8kBJwC1t3mLYLEZTVC5Q2+ATiCxXAdN
         7KgLX163wsopzn6O5iyCOKpTDVQZyt042s3NJR0lWaMp5u/ucmmNEVCJ/+4+ubmQ++qF
         /D/R8HYqPcVBRkPSQpnfH2QDjGxXCVa+H3oXbU6eDtC0H+l3AfTF2N4VzN81IXcRXbjn
         RrkfNMy0KZQbNHnWVsc6XKWuxcTSD6DK0/ly0A8DXBVE4m3v7oWf6L18UnbOyVQ8pfac
         K0MKPR/QROi6Ylp5D1ww0e20afYGucw5HdA7vgFanq/hl702to2eWoEKjBbEkJ1SeI2j
         kQig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=t3z9eVnsqz6oxN0wndvo2WPYQsUTw6SLMKFxHALaMJI=;
        b=l4sw/Po8x07q1epjR+Z4X0Bcs3k/eK4kfZY7JBuLZhNzulATunV75peCnWJhkW3hLu
         mzqGRDi4hgqGhOydZZJKOCIItyqvwaS2HwxD1K/wn8Tu8kVA4XdQKXte5AqLVzs53EGI
         +qP+KB0n0xotiqqhyVJFoiYbOVhcsBKlomzOZ80riB7arYt6dVQ8oEtMo8OVqmIggIPc
         vNU3epeqC1xRoDwfe3K16uvPjzu0u6veAOQhgawPYhd+nhF1HXe6We8a+ErXJor59bpq
         n8PJCG3OXG181Pfj4ruzwVO9jNefxobEVPY449Yu3ISS2JNQiWi0tfRPj5dR3JpiwMf5
         9nEA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tjO5QdX6;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::72d as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-qk1-x72d.google.com (mail-qk1-x72d.google.com. [2607:f8b0:4864:20::72d])
        by gmr-mx.google.com with ESMTPS id b80si155040itc.2.2019.02.22.23.53.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Feb 2019 23:53:51 -0800 (PST)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::72d as permitted sender) client-ip=2607:f8b0:4864:20::72d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tjO5QdX6;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::72d as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x72d.google.com with SMTP id y15so2541738qki.8
        for <outreachy-kernel@googlegroups.com>; Fri, 22 Feb 2019 23:53:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=t3z9eVnsqz6oxN0wndvo2WPYQsUTw6SLMKFxHALaMJI=;
        b=tjO5QdX61uvByp23Nek4R5CqbcEcHWFsootXzSUN3LxMAASYnsJzhkhr8qOFPukoAt
         wmj0PwvauQG+iHgPRdTYuCat2fKNzhE9Ef/PY0kYsYDhhS76p9bkN4jS3JEOYOTby+Us
         JgSk4s70zO3a2EjgQB02/sKO6QlmXp8DWRrRwNSlRBCwRkdTVzEoWxzn0JWJ7LspTxfE
         faB4lsO2ap4dOlyf94E23hNQTqZ7D4vC5jEOm+PqgVw9JQznDwWXJbkV95G27NBp1mth
         0y5Gjzc6VRah/W6NBHhsraTGxy4D0I3XZflfuOxqeH6LIg4LnhhrPuF9Hc579n/0WrQ6
         Ni5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=t3z9eVnsqz6oxN0wndvo2WPYQsUTw6SLMKFxHALaMJI=;
        b=QGbWj5o4uNUqbDOwixyaT92dFbEHb5+B/P3c0kbE/JojsxfOancS0STECh1Z1K45oh
         shkONddlaPYbQbh7hrjiYCF5TfrBJJ/tfn+drAY7k4Wfql2SOuczESU8ejZgLGvMKwC1
         4DFyW/tlNDqourqDyzXU93nf6P7HAz+EFfF9pJWJXN+J0daOzzE1b9m+vbGMtR9GmZu0
         +WaUpzamDoRtHXk2pMBtLvhTYgsolBFpZNrVKqgGGm0v/fKEoXw5i5qFlvLV3qAgzfOM
         rPJEpnfjVhKQNLd1P+2S8CbwLLgLHrlSp3l/j5FtK8WZFjHLkPiVYTBUcaXpxHHMqArr
         QRoA==
X-Gm-Message-State: AHQUAua1QKQB8IbIGO4xUtgY1hae9TVSqE1nsp5rB8zaw5IbZcKpIj3l
	X4oSa2+ohX5svPI3n1HPu6tQ1CqKZijopeSkgnBHWWA7
X-Received: by 2002:a37:4ca:: with SMTP id 193mr5748922qke.21.1550908431130;
 Fri, 22 Feb 2019 23:53:51 -0800 (PST)
MIME-Version: 1.0
References: <20190223062455.GA11432@bhagyashri-Lenovo-G570> <alpine.DEB.2.21.1902230819090.2612@hadrien>
In-Reply-To: <alpine.DEB.2.21.1902230819090.2612@hadrien>
From: Bhagyashri Dighole <digholebhagyashri@gmail.com>
Date: Sat, 23 Feb 2019 13:23:39 +0530
Message-ID: <CAOMPgjhKV2J46Yzj5s=43Q9nuy4DjXhmsGMqngNxQx=yhX3_mg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: netlogic: Add
 SPDX-License-Identifier tag
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Outreachy <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary="0000000000001de6ec05828b02fb"

--0000000000001de6ec05828b02fb
Content-Type: text/plain; charset="UTF-8"

Hi Julia,

I get "BSD-2-Clause" from the LICENSE directory under the kernels project.
There are licenses with short identifiers. I checked BSD-2-Clause license
conditions and found that there are 2 condition which exactly matches with
the license context in the "platform_net.h" file. That's how I get to know
which SPDX short identifiers should be used. Correct me if I am wrong.

-- 
Bhagyashri Dighole

On Sat, Feb 23, 2019 at 12:50 PM Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Sat, 23 Feb 2019, Bhagyashri Dighole wrote:
>
> > Adds the SPDX GPL-2.0 or BSD-2-clause license identifier, which solves
> the
>
> Where do you get the BSD-2-clause thing from?  It seems that Broadcom has
> made their own license.
>
> julia
>
> > checkpatch.pl warning:
> > "WARNING: Missing or malformed SPDX-License-Identifier tag in line 1".
> >
> > Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
> > ---
> >  drivers/staging/netlogic/platform_net.c | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/drivers/staging/netlogic/platform_net.c
> b/drivers/staging/netlogic/platform_net.c
> > index abf4c71..2637fb1 100644
> > --- a/drivers/staging/netlogic/platform_net.c
> > +++ b/drivers/staging/netlogic/platform_net.c
> > @@ -1,3 +1,4 @@
> > +// SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> >  /*
> >   * Copyright (c) 2003-2012 Broadcom Corporation
> >   * All Rights Reserved
> > --
> > 2.7.4
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/20190223062455.GA11432%40bhagyashri-Lenovo-G570
> .
> > For more options, visit https://groups.google.com/d/optout.
> >
>

--0000000000001de6ec05828b02fb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hi Julia,<br><br></div>I get &quot;BSD-2-Clause&=
quot; from the LICENSE directory under the kernels project. There are licen=
ses with short identifiers. I checked BSD-2-Clause license conditions and f=
ound that there are 2 condition which exactly matches with the license cont=
ext in the &quot;platform_net.h&quot; file. That&#39;s how I get to know wh=
ich SPDX short identifiers should be used. Correct me if I am wrong.<br><br=
>-- <br></div>Bhagyashri Dighole<br></div><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Sat, Feb 23, 2019 at 12:50 PM Julia =
Lawall &lt;<a href=3D"mailto:julia.lawall@lip6.fr">julia.lawall@lip6.fr</a>=
&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><br>
<br>
On Sat, 23 Feb 2019, Bhagyashri Dighole wrote:<br>
<br>
&gt; Adds the SPDX GPL-2.0 or BSD-2-clause license identifier, which solves=
 the<br>
<br>
Where do you get the BSD-2-clause thing from?=C2=A0 It seems that Broadcom =
has<br>
made their own license.<br>
<br>
julia<br>
<br>
&gt; <a href=3D"http://checkpatch.pl" rel=3D"noreferrer" target=3D"_blank">=
checkpatch.pl</a> warning:<br>
&gt; &quot;WARNING: Missing or malformed SPDX-License-Identifier tag in lin=
e 1&quot;.<br>
&gt;<br>
&gt; Signed-off-by: Bhagyashri Dighole &lt;<a href=3D"mailto:digholebhagyas=
hri@gmail.com" target=3D"_blank">digholebhagyashri@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/netlogic/platform_net.c | 1 +<br>
&gt;=C2=A0 1 file changed, 1 insertion(+)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/netlogic/platform_net.c b/drivers/staging=
/netlogic/platform_net.c<br>
&gt; index abf4c71..2637fb1 100644<br>
&gt; --- a/drivers/staging/netlogic/platform_net.c<br>
&gt; +++ b/drivers/staging/netlogic/platform_net.c<br>
&gt; @@ -1,3 +1,4 @@<br>
&gt; +// SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)<br>
&gt;=C2=A0 /*<br>
&gt;=C2=A0 =C2=A0* Copyright (c) 2003-2012 Broadcom Corporation<br>
&gt;=C2=A0 =C2=A0* All Rights Reserved<br>
&gt; --<br>
&gt; 2.7.4<br>
&gt;<br>
&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.=
com" target=3D"_blank">outreachy-kernel+unsubscribe@googlegroups.com</a>.<b=
r>
&gt; To post to this group, send email to <a href=3D"mailto:outreachy-kerne=
l@googlegroups.com" target=3D"_blank">outreachy-kernel@googlegroups.com</a>=
.<br>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/outreachy-kernel/20190223062455.GA11432%40bhagyashri-Lenovo=
-G570" rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/msg=
id/outreachy-kernel/20190223062455.GA11432%40bhagyashri-Lenovo-G570</a>.<br=
>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/optout</a=
>.<br>
&gt;<br>
</blockquote></div>

--0000000000001de6ec05828b02fb--

