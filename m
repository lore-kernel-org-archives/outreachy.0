X-GM-THRID: 6661087571721846784
X-Received: by 2002:a25:bb45:: with SMTP id b5mr1288834ybk.27.1550907793500;
        Fri, 22 Feb 2019 23:43:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:c042:: with SMTP id c63ls2740764ybf.4.gmail; Fri, 22 Feb
 2019 23:43:12 -0800 (PST)
X-Google-Smtp-Source: AHgI3IZetFdop8Ef0bT77ndqwglY7098Pe2/MX9REoG4utHiDkz4v5tu2I9LTOOj6U8YoatW0TI4
X-Received: by 2002:a25:8582:: with SMTP id x2mr462157ybk.29.1550907792413;
        Fri, 22 Feb 2019 23:43:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550907792; cv=none;
        d=google.com; s=arc-20160816;
        b=RIlfzwQ37L/7+25pp/rYOQU0AxE07MAQoWT/fz/31s+F8hC0yAKnVtk9aM0vhRYoLv
         6ytzRcse5Moe/e4uCOrqqtbVGh6xJG4I21RX1N5bqwEjmzr/F0RoT/Tx5fnyt/nW1LLA
         yNxKNp3Q14A/HSwADEKYDHGWLsarCdgV4fwgPJKQmuO6ZOZOAkwIpihXPHwG+OjdDp8R
         iOKdwuU7QDenJMrZrsaZeVF/mtXtgs5+1JdmMotwbHTSIWnqTL0AlyJRMbZPvpiKb1K1
         E6Rc0THYFEOAJswGrrEEYU12B9e9n3Ub8dd9O+Kh+T8Q0ZrITkbIbECBmPYabtWeaaUK
         SQSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=B+DPp+sYyde/kDq0VrnUgkb/x7yPT4EeXx1X9gYLm5w=;
        b=0zVMlkKmhbFPcIww6cLXBFhbhZLsas9EmyXKXfirUKGQUSNimACL4fYGYER3ceMoDj
         F/yjT2AV2Fs+UBvrvme9Ap8bTIS21G3hKcCF4P1gwa0xJF8ZXk+Ir8mLbdEbVS/cxLfn
         5pbR2WSQ/sbLNI1s96w2NkYVxa8EnUpqjlBCaGBkTfMkzwNu7wSrnre1xD6XHCACCd5f
         qVYXx0qtFlEA2jxa3w4z9ZglPx3V6WyxpIOHMiadz4uDicYuwe6YdZVRn4akR+jgt94g
         u6GMkEo0uwJXY6qoXrMHUICeeewOmXioHt05y+e26sqxQJmwTzDnbs5nZNStL7JOVzBC
         mBJw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dUR2KCii;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com. [2607:f8b0:4864:20::843])
        by gmr-mx.google.com with ESMTPS id d186si237609ywa.1.2019.02.22.23.43.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Feb 2019 23:43:12 -0800 (PST)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) client-ip=2607:f8b0:4864:20::843;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dUR2KCii;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x843.google.com with SMTP id o6so5207760qtk.6
        for <outreachy-kernel@googlegroups.com>; Fri, 22 Feb 2019 23:43:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=B+DPp+sYyde/kDq0VrnUgkb/x7yPT4EeXx1X9gYLm5w=;
        b=dUR2KCiiR1LCDLi7Q7GXb3OmU80kyE8mAeu95L9PzUKtb9/tpfowI7LPFkdsLP446l
         2DZ2rkiQLFaeOnRheMRzrzCMlCarcgnIMY6umvnTyI8/uK9ZcojDOb7A5nBEQbeLLj5A
         tYDfrWe0pIwqpmowNCgjBwSnWuG2JGRP30q+IUKvhH9yGGMi8LXD+MpJyLKd9vNmDCBV
         R84nIbcQdtx2tiEojWc8uZ0ukL1efihDP3qtYBsZ4S0QqEbTfQ3NbRPj/v3Ka0pqNkoa
         iSHIORODgG/aQP5DNhsfTw57PcPTsB4S1puD2sP9nlNuhVQ16NwvubtITsLOjfiLq6te
         yhEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=B+DPp+sYyde/kDq0VrnUgkb/x7yPT4EeXx1X9gYLm5w=;
        b=bc+jBgQawf9GpadIHcfAGjZMqT+9I2oYWqpTBeRDoIrJXWse4BE/kkOs/hxGeYD22W
         EXOQSiQ1VbiBiUMhSgJPMAk45YgGqnSv0Zvh8zf2K8d1kAJTk2Tato1cjeZeZsNz67tC
         MUetJzGJx/870j9O796vc2jG+Rsz8KxswK7vmRADRZ8B93+K4hh6WGR6WcnnZ321D81Q
         ojzQQP7swpIh94A/VLRp5gGz+WVe2C8NNqNuubD37ULz6Un4ROHpgXU8NoNekpqXDnNy
         IqKe3NFnobYLOrYECgATOzj9kEcll1M9MLo6CMisNikZ8SS6osvKDPQSfj7XOSQn6QHr
         x5Mg==
X-Gm-Message-State: AHQUAuZIiHvbZHZuHcS9qhiRAXmqwMiEeKdcGYvxDfmZXV89QUNhcJn7
	4SJmCcftTDpr8YT2oknVeT4biu4w0ye05g5KNF0=
X-Received: by 2002:a0c:933d:: with SMTP id d58mr6175572qvd.92.1550907791926;
 Fri, 22 Feb 2019 23:43:11 -0800 (PST)
MIME-Version: 1.0
References: <20190223070139.GA13015@bhagyashri-Lenovo-G570> <alpine.DEB.2.21.1902230815350.2612@hadrien>
In-Reply-To: <alpine.DEB.2.21.1902230815350.2612@hadrien>
From: Bhagyashri Dighole <digholebhagyashri@gmail.com>
Date: Sat, 23 Feb 2019 13:12:59 +0530
Message-ID: <CAOMPgjgGr6bmDRoQd+YK2kxUD5oAgzSHGuEMvZ_1PPdWr9X1Ag@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: netlogic: Add
 SPDX-License-Identifier in platform_net.h
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Outreachy <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary="000000000000046bbf05828adcf8"

--000000000000046bbf05828adcf8
Content-Type: text/plain; charset="UTF-8"

In the license context, It is mentioned that "This software is available to
you under a choice of one of two licenses.". This way I found that the
software can be used with either GPL-2.0 license or BSD-2-Clause license.
These are the short identifiers for SPDX licenses. That's why we used
license expression syntax with 'OR' operator. Also, the following term was
missing under the GNU:
"1. Redistributions of source code must retain the above copyright"

So, I added above term under the GNU.

--
Bhagyashri Dighole

On Sat, Feb 23, 2019 at 12:47 PM Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Sat, 23 Feb 2019, Bhagyashri Dighole wrote:
>
> > Adds the SPDX GPL-2.0 or BSD-2-CLAUSE license identifier, which solves
> > the checkpatch.pl warning:
> > "WARNING: Missing or malformed SPDX-License-Identifier tag in line 1".
> > Adds GNU term: "Redistributions of source code must retain the above
> > copyright".
> >
> > Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
> > ---
> >  drivers/staging/netlogic/platform_net.h | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/netlogic/platform_net.h
> b/drivers/staging/netlogic/platform_net.h
> > index e1b27f6..2265927 100644
> > --- a/drivers/staging/netlogic/platform_net.h
> > +++ b/drivers/staging/netlogic/platform_net.h
> > @@ -1,9 +1,10 @@
> > -/*
> > +/* SPDX-License-Identifier: (GPL-2.0 OR BSD-2-CLAUSE)
> >   * Copyright (c) 2003-2012 Broadcom Corporation
> >   * All Rights Reserved
> >   *
> >   * This software is available to you under a choice of one of two
> >   * licenses.  You may choose to be licensed under the terms of the GNU
> > + * 1. Redistributions of source code must retain the above copyright
>
> It looks like something went wrong here.
>
> Bhanusree submitted similar patch on another file and Greg said that the
> file didn't have a SPDX identifier because it was not clear what the
> license should be.  Perhaps it is more clear here,
>
> julia
>
> >   * General Public License (GPL) Version 2, available from the file
> >   * COPYING in the main directory of this source tree, or the Broadcom
> >   * license below:
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
> https://groups.google.com/d/msgid/outreachy-kernel/20190223070139.GA13015%40bhagyashri-Lenovo-G570
> .
> > For more options, visit https://groups.google.com/d/optout.
> >
>

--000000000000046bbf05828adcf8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">In the license context, =
It is mentioned that &quot;This software is available to you under a choice=
 of one of two licenses.&quot;. This way I found that the software can be u=
sed with either GPL-2.0 license or BSD-2-Clause license. These are the shor=
t identifiers for SPDX licenses. That&#39;s why we used license expression =
syntax with &#39;OR&#39; operator. Also, the following term was missing und=
er the GNU:<br> &quot;1. Redistributions of source code must retain the abo=
ve copyright&quot;<br><br></div><div>So, I added above term under the GNU.<=
br><br></div><div>--<br>Bhagyashri Dighole<br></div></div></div><br><div cl=
ass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, Feb 23, 2=
019 at 12:47 PM Julia Lawall &lt;<a href=3D"mailto:julia.lawall@lip6.fr">ju=
lia.lawall@lip6.fr</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex"><br>
<br>
On Sat, 23 Feb 2019, Bhagyashri Dighole wrote:<br>
<br>
&gt; Adds the SPDX GPL-2.0 or BSD-2-CLAUSE license identifier, which solves=
<br>
&gt; the <a href=3D"http://checkpatch.pl" rel=3D"noreferrer" target=3D"_bla=
nk">checkpatch.pl</a> warning:<br>
&gt; &quot;WARNING: Missing or malformed SPDX-License-Identifier tag in lin=
e 1&quot;.<br>
&gt; Adds GNU term: &quot;Redistributions of source code must retain the ab=
ove<br>
&gt; copyright&quot;.<br>
&gt;<br>
&gt; Signed-off-by: Bhagyashri Dighole &lt;<a href=3D"mailto:digholebhagyas=
hri@gmail.com" target=3D"_blank">digholebhagyashri@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/netlogic/platform_net.h | 3 ++-<br>
&gt;=C2=A0 1 file changed, 2 insertions(+), 1 deletion(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/netlogic/platform_net.h b/drivers/staging=
/netlogic/platform_net.h<br>
&gt; index e1b27f6..2265927 100644<br>
&gt; --- a/drivers/staging/netlogic/platform_net.h<br>
&gt; +++ b/drivers/staging/netlogic/platform_net.h<br>
&gt; @@ -1,9 +1,10 @@<br>
&gt; -/*<br>
&gt; +/* SPDX-License-Identifier: (GPL-2.0 OR BSD-2-CLAUSE)<br>
&gt;=C2=A0 =C2=A0* Copyright (c) 2003-2012 Broadcom Corporation<br>
&gt;=C2=A0 =C2=A0* All Rights Reserved<br>
&gt;=C2=A0 =C2=A0*<br>
&gt;=C2=A0 =C2=A0* This software is available to you under a choice of one =
of two<br>
&gt;=C2=A0 =C2=A0* licenses.=C2=A0 You may choose to be licensed under the =
terms of the GNU<br>
&gt; + * 1. Redistributions of source code must retain the above copyright<=
br>
<br>
It looks like something went wrong here.<br>
<br>
Bhanusree submitted similar patch on another file and Greg said that the<br=
>
file didn&#39;t have a SPDX identifier because it was not clear what the<br=
>
license should be.=C2=A0 Perhaps it is more clear here,<br>
<br>
julia<br>
<br>
&gt;=C2=A0 =C2=A0* General Public License (GPL) Version 2, available from t=
he file<br>
&gt;=C2=A0 =C2=A0* COPYING in the main directory of this source tree, or th=
e Broadcom<br>
&gt;=C2=A0 =C2=A0* license below:<br>
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
gle.com/d/msgid/outreachy-kernel/20190223070139.GA13015%40bhagyashri-Lenovo=
-G570" rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/msg=
id/outreachy-kernel/20190223070139.GA13015%40bhagyashri-Lenovo-G570</a>.<br=
>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/optout</a=
>.<br>
&gt;<br>
</blockquote></div>

--000000000000046bbf05828adcf8--

