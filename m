X-GM-THRID: 6211884889777635328
X-Received: by 10.112.173.170 with SMTP id bl10mr2957097lbc.7.1446318743016;
        Sat, 31 Oct 2015 12:12:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.167.83 with SMTP id q80ls317240lfe.107.gmail; Sat, 31 Oct
 2015 12:12:22 -0700 (PDT)
X-Received: by 10.112.150.201 with SMTP id uk9mr2914318lbb.8.1446318742380;
        Sat, 31 Oct 2015 12:12:22 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-wi0-x22b.google.com (mail-wi0-x22b.google.com. [2a00:1450:400c:c05::22b])
        by gmr-mx.google.com with ESMTPS id l1si268981wmb.3.2015.10.31.12.12.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 31 Oct 2015 12:12:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) client-ip=2a00:1450:400c:c05::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22b.google.com with SMTP id ll6so28638244wic.0
        for <outreachy-kernel@googlegroups.com>; Sat, 31 Oct 2015 12:12:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=ntdRzltpXGLTl2pzbesGPJecnsI3zWZzktaeUfrQ/TM=;
        b=P7qMG+phYO5oRtBc5c378xfJX8krGOOQWkTMkmeJ0qZrwlNEx51xZTHtYSoKn6K7OO
         fI10rkA5egDGuDUZcV2JLKQsZ/6N9cYkgc/DJBEagvlV1JC3RnULoA/kDnK6F+LFYIOf
         3yyw5Em3We8RgqjPQistb/Fyh1HQ1/ov4SrqqpltHbZeg/TtR94s1MDGOJ0ocNngPvyw
         2tRbrZxppFxKPYcthsoh5wkY5Iiogr3W7k5SGFa488GiTOeW8c3rEn049ungONOSh0WZ
         lrSO6r5+5ooC13Rniz7MenkVFkL+5+ymz8NfaQjUd9kgMzUnIEKQUwgqQZ8P66I6fDyk
         u+tA==
MIME-Version: 1.0
X-Received: by 10.194.116.197 with SMTP id jy5mr15176584wjb.86.1446318742256;
 Sat, 31 Oct 2015 12:12:22 -0700 (PDT)
Received: by 10.27.186.23 with HTTP; Sat, 31 Oct 2015 12:12:22 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.02.1510312007450.2194@localhost6.localdomain6>
References: <20151031184544.GA27064@ubuntu>
	<20151031185300.GA8949@kroah.com>
	<CAKHNQQEyJD+j+yNOGtsfZnTkjFcUBNxcAHsTjM=bJWqmb81hOQ@mail.gmail.com>
	<alpine.DEB.2.02.1510312007450.2194@localhost6.localdomain6>
Date: Sun, 1 Nov 2015 00:42:22 +0530
Message-ID: <CAKHNQQHALdjf7KpZ7keNf2+4wXXfCVmabGZj-zB-b+=uorKOtw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: interval_tree:
 Convert inline function to macro
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Greg KH <gregkh@linuxfoundation.org>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary=001a1130cf26dd462f05236b5234

--001a1130cf26dd462f05236b5234
Content-Type: text/plain; charset=UTF-8

On Sun, Nov 1, 2015 at 12:39 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Sun, 1 Nov 2015, Shivani Bhardwaj wrote:
>
> >
> >
> > On Sun, Nov 1, 2015 at 12:23 AM, Greg KH <gregkh@linuxfoundation.org>
> wrote:
> >       On Sun, Nov 01, 2015 at 12:15:44AM +0530, Shivani Bhardwaj
> >       wrote:
> >       > Convert the function max_u64() to macro because macros tend to
> >       be more
> >       > flexible than inline functions and here, the macro is going to
> >       be type
> >       > safe so there are not going to be any side effects.
> >       >
> >       > Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
> >       > ---
> >       >  drivers/staging/lustre/lustre/ldlm/interval_tree.c | 7
> >       ++-----
> >       >  1 file changed, 2 insertions(+), 5 deletions(-)
> >       >
> >       > diff --git
> >       a/drivers/staging/lustre/lustre/ldlm/interval_tree.c
> >       b/drivers/staging/lustre/lustre/ldlm/interval_tree.c
> >       > index a2ea8e5..52d0afd 100644
> >       > --- a/drivers/staging/lustre/lustre/ldlm/interval_tree.c
> >       > +++ b/drivers/staging/lustre/lustre/ldlm/interval_tree.c
> >       > @@ -42,6 +42,8 @@
> >       >  #include "../include/obd_support.h"
> >       >  #include "../include/interval_tree.h"
> >       >
> >       > +#define max_u64(x, y) ((x > y) ? x : y)
> >
> >       Ick, no, there is already a _correct_ macro in the kernel for
> >       this,
> >       don't try to create another one that does not work properly for
> >       all
> >       users.
> >
> >       And your patch is also backwards, inline functions are better
> >       than
> >       macros, don't ever convert from an inline function to a macro.
> >
> >
> > Alright. Thanks for explaining.
>
> Inline functons have types, which help you find bugs.
>
> Inline functions don't risk duplicating computations.  In your macro, if
> eg x is the larger value, then whatever x is replaced by will be evaluated
> twice.  Consider what would happen if x is eg i++.
>
> Yes, Julia. I took into consideration this case  and I checked out the
entire code where the function was called, there was no situation like
this. Plus, I had read that inline functions are compiler dependent so I
thought of making the change.
Thank you for explaining. :)

julia

--001a1130cf26dd462f05236b5234
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Sun, Nov 1, 2015 at 12:39 AM, Julia Lawall <span dir=3D"ltr">&lt;<a =
href=3D"mailto:julia.lawall@lip6.fr" target=3D"_blank">julia.lawall@lip6.fr=
</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin=
:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div class=3D"HOEn=
Zb"><div class=3D"h5"><br>
<br>
On Sun, 1 Nov 2015, Shivani Bhardwaj wrote:<br>
<br>
&gt;<br>
&gt;<br>
&gt; On Sun, Nov 1, 2015 at 12:23 AM, Greg KH &lt;<a href=3D"mailto:gregkh@=
linuxfoundation.org">gregkh@linuxfoundation.org</a>&gt; wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0On Sun, Nov 01, 2015 at 12:15:44AM +0530, Sh=
ivani Bhardwaj<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Convert the function max_u64() to macro=
 because macros tend to<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0be more<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; flexible than inline functions and here=
, the macro is going to<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0be type<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; safe so there are not going to be any s=
ide effects.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Signed-off-by: Shivani Bhardwaj &lt;<a =
href=3D"mailto:shivanib134@gmail.com">shivanib134@gmail.com</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; ---<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 drivers/staging/lustre/lustre/ldl=
m/interval_tree.c | 7<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0++-----<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 1 file changed, 2 insertions(+), =
5 deletions(-)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; diff --git<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0a/drivers/staging/lustre/lustre/ldlm/interva=
l_tree.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0b/drivers/staging/lustre/lustre/ldlm/interva=
l_tree.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; index a2ea8e5..52d0afd 100644<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; --- a/drivers/staging/lustre/lustre/ldl=
m/interval_tree.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; +++ b/drivers/staging/lustre/lustre/ldl=
m/interval_tree.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; @@ -42,6 +42,8 @@<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 #include &quot;../include/obd_sup=
port.h&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 #include &quot;../include/interva=
l_tree.h&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; +#define max_u64(x, y) ((x &gt; y) ? x =
: y)<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0Ick, no, there is already a _correct_ macro =
in the kernel for<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0this,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0don&#39;t try to create another one that doe=
s not work properly for<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0all<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0users.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0And your patch is also backwards, inline fun=
ctions are better<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0than<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0macros, don&#39;t ever convert from an inlin=
e function to a macro.<br>
&gt;<br>
&gt;<br>
&gt; Alright. Thanks for explaining.<br>
<br>
</div></div>Inline functons have types, which help you find bugs.<br>
<br>
Inline functions don&#39;t risk duplicating computations.=C2=A0 In your mac=
ro, if<br>
eg x is the larger value, then whatever x is replaced by will be evaluated<=
br>
twice.=C2=A0 Consider what would happen if x is eg i++.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br></font></span></blockquo=
te><div>Yes, Julia. I took into consideration this case=C2=A0 and I checked=
 out the entire code where the function was called, there was no situation =
like this. Plus, I had read that inline functions are compiler dependent so=
 I thought of making the change.<br></div><div>Thank you for explaining. :)=
<br><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex"><span class=3D"HOEnZb"><font c=
olor=3D"#888888">
julia</font></span></blockquote></div><br></div></div>

--001a1130cf26dd462f05236b5234--

