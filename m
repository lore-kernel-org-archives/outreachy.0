X-GM-THRID: 1328454565888
X-Received: by 10.140.149.78 with SMTP id 75mr10876687qhv.9.1424453112476;
        Fri, 20 Feb 2015 09:25:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.142.98 with SMTP id rv2ls221595igb.34.gmail; Fri, 20 Feb
 2015 09:25:11 -0800 (PST)
X-Received: by 10.68.194.97 with SMTP id hv1mr10242476pbc.0.1424453111875;
        Fri, 20 Feb 2015 09:25:11 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from mail-ie0-x235.google.com (mail-ie0-x235.google.com. [2607:f8b0:4001:c03::235])
        by gmr-mx.google.com with ESMTPS id g3si188770igr.2.2015.02.20.09.25.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 09:25:11 -0800 (PST)
Received-SPF: pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2607:f8b0:4001:c03::235 as permitted sender) client-ip=2607:f8b0:4001:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2607:f8b0:4001:c03::235 as permitted sender) smtp.mail=aysemelikeyurtoglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ie0-x235.google.com with SMTP id ar1so9409704iec.11
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 09:25:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=b5gPb931LBeXOm7R4rqWVZrE7y+Q6nENVVYdrhgLqb4=;
        b=Bm6bI1nZ50cH4cvYQe2XQgPhPxprFBXyO+Qrhh9YWita8BdbDhHWSeoMOrPEzy+HGR
         1Sqvh7RqIIPGoektG1GusFP84ASPXmN94dDPS3GUv4t9Qj9CzoWUDfxI7i1pAWjuAhAY
         4ISkmbzFP9dYPmX/uaOjeb96m3fgblEsa6MuW+raxr2JfTBjgPJ0jOV8i+kPIv28bYYE
         OWpoeoOGOx1ssDabw4L8sFYLzeng/M1RD6qxwCeye4DAj2+B+xqahTnYta7YqxfEtvbJ
         +JL6iOaVaOYsZGP5AgpRAnrRV5lqUWJp0cJJeNtMWUtzYNwZRZLdHw4ml9gIdW5lAy+w
         mzkQ==
MIME-Version: 1.0
X-Received: by 10.107.47.90 with SMTP id j87mr932731ioo.33.1424453111723; Fri,
 20 Feb 2015 09:25:11 -0800 (PST)
Received: by 10.64.142.49 with HTTP; Fri, 20 Feb 2015 09:25:11 -0800 (PST)
In-Reply-To: <54E76892.207@gmail.com>
References: <1424446070-14232-1-git-send-email-aysemelikeyurtoglu@gmail.com>
	<54E76892.207@gmail.com>
Date: Fri, 20 Feb 2015 19:25:11 +0200
Message-ID: <CAPYvaxN_FfH_GvmfHAA0ZohHZuHhXX-0GiwxSmL7R3KEXz-V6A@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 1/4] Staging: lustre: lnet: klnds:
 socklnd: Deleted space prohibited between function name and open parenthesis
From: =?UTF-8?Q?Ay=C5=9Fe_Melike_Yurto=C4=9Flu?= <aysemelikeyurtoglu@gmail.com>
To: Jes Sorensen <jes.sorensen@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=001a11c158a8b93f05050f8855c6

--001a11c158a8b93f05050f8855c6
Content-Type: text/plain; charset=UTF-8

I will pay much more attention to the commit messages and subject line.I am
using the following command while the patch series.I'm doing it wrong, I
wonder.
"git format-patch -n --subject-prefix="PATCH vY" --cover-letter"

Thanks

2015-02-20 19:02 GMT+02:00 Jes Sorensen <jes.sorensen@gmail.com>:

> On 02/20/15 10:27, Melike Yurtoglu wrote:
> > WARNING: space prohibited between function name and open parenthesis '('
> > checkpatch.pl warning in socklnd.c
> >
> > Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
> > ---
> >  .../staging/lustre/lnet/klnds/socklnd/socklnd.c    | 448
> ++++++++++-----------
> >  1 file changed, 224 insertions(+), 224 deletions(-)
>
> When posting multi patch series, you need to use a cover letter to
> describe the reason for the patch set. Argument '--cover-letter' for
> 'git format-patch'
>
> In addition, please try to write a human patch description for each
> commit rather than just paste in the automated checkpatch output.
> Something like:
>
> "Remove unnecessary space between function name and opening parenthesis.
> That was found by running checkpatch.
>
> Cheers,
> Jes
>
>
> > diff --git a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c
> b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c
> > index 5956dba..aac3a7d 100644
> > --- a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c
> > +++ b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c
> > @@ -65,15 +65,15 @@ ksocknal_ip2iface(lnet_ni_t *ni, __u32 ip)
> >  }
> >
> >  static ksock_route_t *
> > -ksocknal_create_route (__u32 ipaddr, int port)
> > +ksocknal_create_route(__u32 ipaddr, int port)
> >  {
> >       ksock_route_t *route;
> >
> > -     LIBCFS_ALLOC (route, sizeof (*route));
> > +     LIBCFS_ALLOC(route, sizeof(*route));
> >       if (route == NULL)
> >               return NULL;
> >
> > -     atomic_set (&route->ksnr_refcount, 1);
> > +     atomic_set(&route->ksnr_refcount, 1);
> >       route->ksnr_peer = NULL;
> >       route->ksnr_retry_interval = 0;  /* OK to connect at any time */
> >       route->ksnr_ipaddr = ipaddr;
> > @@ -89,43 +89,43 @@ ksocknal_create_route (__u32 ipaddr, int port)
> >  }
>
>

--001a11c158a8b93f05050f8855c6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I will pay much more attention to the commit messages=
 and subject line.I am using the following command while the patch series.I=
&#39;m doing it wrong, I wonder.<br>&quot;git format-patch -n --subject-pre=
fix=3D&quot;PATCH vY&quot; --cover-letter&quot;<br><br></div>Thanks <br></d=
iv><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">2015-02-20 19:=
02 GMT+02:00 Jes Sorensen <span dir=3D"ltr">&lt;<a href=3D"mailto:jes.soren=
sen@gmail.com" target=3D"_blank">jes.sorensen@gmail.com</a>&gt;</span>:<br>=
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><span class=3D"">On 02/20/15 10:27, Melike Y=
urtoglu wrote:<br>
&gt; WARNING: space prohibited between function name and open parenthesis &=
#39;(&#39;<br>
&gt; <a href=3D"http://checkpatch.pl" target=3D"_blank">checkpatch.pl</a> w=
arning in socklnd.c<br>
&gt;<br>
&gt; Signed-off-by: Melike Yurtoglu &lt;<a href=3D"mailto:aysemelikeyurtogl=
u@gmail.com">aysemelikeyurtoglu@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 .../staging/lustre/lnet/klnds/socklnd/socklnd.c=C2=A0 =C2=A0 | 4=
48 ++++++++++-----------<br>
&gt;=C2=A0 1 file changed, 224 insertions(+), 224 deletions(-)<br>
<br>
</span>When posting multi patch series, you need to use a cover letter to<b=
r>
describe the reason for the patch set. Argument &#39;--cover-letter&#39; fo=
r<br>
&#39;git format-patch&#39;<br>
<br>
In addition, please try to write a human patch description for each<br>
commit rather than just paste in the automated checkpatch output.<br>
Something like:<br>
<br>
&quot;Remove unnecessary space between function name and opening parenthesi=
s.<br>
That was found by running checkpatch.<br>
<br>
Cheers,<br>
Jes<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
<br>
&gt; diff --git a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c b/dri=
vers/staging/lustre/lnet/klnds/socklnd/socklnd.c<br>
&gt; index 5956dba..aac3a7d 100644<br>
&gt; --- a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c<br>
&gt; +++ b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c<br>
&gt; @@ -65,15 +65,15 @@ ksocknal_ip2iface(lnet_ni_t *ni, __u32 ip)<br>
&gt;=C2=A0 }<br>
&gt;<br>
&gt;=C2=A0 static ksock_route_t *<br>
&gt; -ksocknal_create_route (__u32 ipaddr, int port)<br>
&gt; +ksocknal_create_route(__u32 ipaddr, int port)<br>
&gt;=C2=A0 {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0ksock_route_t *route;<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0LIBCFS_ALLOC (route, sizeof (*route));<br>
&gt; +=C2=A0 =C2=A0 =C2=A0LIBCFS_ALLOC(route, sizeof(*route));<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (route =3D=3D NULL)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return NULL;<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0atomic_set (&amp;route-&gt;ksnr_refcount, 1);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0atomic_set(&amp;route-&gt;ksnr_refcount, 1);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0route-&gt;ksnr_peer =3D NULL;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0route-&gt;ksnr_retry_interval =3D 0;=C2=A0 /=
* OK to connect at any time */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0route-&gt;ksnr_ipaddr =3D ipaddr;<br>
&gt; @@ -89,43 +89,43 @@ ksocknal_create_route (__u32 ipaddr, int port)<br>
&gt;=C2=A0 }<br>
<br>
</div></div></blockquote></div><br></div>

--001a11c158a8b93f05050f8855c6--

