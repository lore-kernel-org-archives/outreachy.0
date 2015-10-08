X-GM-THRID: 6202655737022251008
X-Received: by 10.66.252.6 with SMTP id zo6mr5974173pac.29.1444312867733;
        Thu, 08 Oct 2015 07:01:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.137.85 with SMTP id l82ls594158iod.74.gmail; Thu, 08 Oct
 2015 07:01:07 -0700 (PDT)
X-Received: by 10.50.17.74 with SMTP id m10mr3042754igd.3.1444312867063;
        Thu, 08 Oct 2015 07:01:07 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from mail-ig0-x235.google.com (mail-ig0-x235.google.com. [2607:f8b0:4001:c05::235])
        by gmr-mx.google.com with ESMTPS id hx4si484594igb.0.2015.10.08.07.01.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Oct 2015 07:01:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.moraru09@gmail.com designates 2607:f8b0:4001:c05::235 as permitted sender) client-ip=2607:f8b0:4001:c05::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.moraru09@gmail.com designates 2607:f8b0:4001:c05::235 as permitted sender) smtp.mailfrom=cristina.moraru09@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-ig0-x235.google.com with SMTP id pe7so13189345igc.0
        for <outreachy-kernel@googlegroups.com>; Thu, 08 Oct 2015 07:01:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=jzZmLyW/g9hNgUrNQ4xldjIexnRDb5SvnNTxi+PK6XU=;
        b=z7uFVlWo8fa9KoTG62VaSg+RZ7eAWslMwJw9HTFHtxlz5RqzPhUG0vvI4mxy1BUBpL
         F3S7DvWsBDDWyfmmmXg01RxRA4oOJF3a8D9lE5KUQ0C39fo//P/6FROW3F3Rjhg6clbc
         io6yau0sqM+pgsw3c9LVqkTvXBnQ4VWabh9Q/+We32jHRZf1JUY+NOoFEI3t8RH/mZlY
         ueXV5hcH2h2dyseEByDOFxbcu3JyluKBFbZJzGu8f6Am3HiiEFr+3ANV6mdiDC2u3vCS
         qyu4K4UVDFdsE3yCXKZvXAOpxSyKuIFu7+crSu0Ec75cEdJTGf/bPd4TAnotJBpse3EK
         axgg==
MIME-Version: 1.0
X-Received: by 10.50.55.68 with SMTP id q4mr4171619igp.77.1444312866001; Thu,
 08 Oct 2015 07:01:06 -0700 (PDT)
Received: by 10.64.155.6 with HTTP; Thu, 8 Oct 2015 07:01:05 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1510080820180.2559@hadrien>
References: <1444168297-90793-1-git-send-email-cristina.moraru09@gmail.com>
	<alpine.DEB.2.10.1510080820180.2559@hadrien>
Date: Thu, 8 Oct 2015 17:01:05 +0300
Message-ID: <CAGZ2q2w+3demm5c3e1frND6t8+R7H35HnCBWH7jSUW+PR0DGXQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: octeon: Fix return
 description for functions
From: Cristina-Gabriela Moraru <cristina.moraru09@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=047d7b10ce9152a7ae0521984bd3

--047d7b10ce9152a7ae0521984bd3
Content-Type: text/plain; charset=UTF-8

That's true. I will correct them.

2015-10-08 10:22 GMT+03:00 Julia Lawall <julia.lawall@lip6.fr>:

> On Wed, 7 Oct 2015, Cristina Moraru wrote:
>
> > Clarify return description for functions
> >
> > Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
> > ---
> >  drivers/staging/octeon/ethernet.c | 8 ++++----
> >  1 file changed, 4 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/staging/octeon/ethernet.c
> b/drivers/staging/octeon/ethernet.c
> > index a63488e..13ee25d 100644
> > --- a/drivers/staging/octeon/ethernet.c
> > +++ b/drivers/staging/octeon/ethernet.c
> > @@ -173,7 +173,7 @@ static void cvm_oct_configure_common_hw(void)
> >   *
> >   * @work_queue_entry: Work queue entry to free
> >   *
> > - * Returns Zero on success, Negative on failure.
> > + * Returns 0 on success or a negative error code.
>
> Is this really true?  I see only one return in this function, and it is a
> return 0.
>
> julia
>
> >   */
> >  int cvm_oct_free_work(void *work_queue_entry)
> >  {
> > @@ -248,7 +248,7 @@ static struct net_device_stats
> *cvm_oct_common_get_stats(struct net_device *dev)
> >   * @dev:     Device to change
> >   * @new_mtu: The new MTU
> >   *
> > - * Returns Zero on success
> > + * Returns 0 on success or a negative error code.
> >   */
> >  static int cvm_oct_common_change_mtu(struct net_device *dev, int
> new_mtu)
> >  {
> > @@ -411,7 +411,7 @@ static int cvm_oct_set_mac_filter(struct net_device
> *dev)
> >   * @dev:    The device in question.
> >   * @addr:   Socket address.
> >   *
> > - * Returns Zero on success
> > + * Returns 0 on success or a negative error code.
> >   */
> >  static int cvm_oct_common_set_mac_address(struct net_device *dev, void
> *addr)
> >  {
> > @@ -426,7 +426,7 @@ static int cvm_oct_common_set_mac_address(struct
> net_device *dev, void *addr)
> >   * cvm_oct_common_init - per network device initialization
> >   * @dev:    Device to initialize
> >   *
> > - * Returns Zero on success
> > + * Returns 0 on success or a negative error code.
> >   */
> >  int cvm_oct_common_init(struct net_device *dev)
>
> This function also seems to contain only a return 0.
>
> julia
>
> >  {
> > --
> > 1.9.1
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/1444168297-90793-1-git-send-email-cristina.moraru09%40gmail.com
> .
> > For more options, visit https://groups.google.com/d/optout.
> >
>

--047d7b10ce9152a7ae0521984bd3
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">That&#39;s true. I will correct them.</div><div class=3D"g=
mail_extra"><br><div class=3D"gmail_quote">2015-10-08 10:22 GMT+03:00 Julia=
 Lawall <span dir=3D"ltr">&lt;<a href=3D"mailto:julia.lawall@lip6.fr" targe=
t=3D"_blank">julia.lawall@lip6.fr</a>&gt;</span>:<br><blockquote class=3D"g=
mail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-l=
eft:1ex"><span class=3D"">On Wed, 7 Oct 2015, Cristina Moraru wrote:<br>
<br>
&gt; Clarify return description for functions<br>
&gt;<br>
&gt; Signed-off-by: Cristina Moraru &lt;<a href=3D"mailto:cristina.moraru09=
@gmail.com">cristina.moraru09@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/octeon/ethernet.c | 8 ++++----<br>
&gt;=C2=A0 1 file changed, 4 insertions(+), 4 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/octeon/ethernet.c b/drivers/staging/octeo=
n/ethernet.c<br>
&gt; index a63488e..13ee25d 100644<br>
&gt; --- a/drivers/staging/octeon/ethernet.c<br>
&gt; +++ b/drivers/staging/octeon/ethernet.c<br>
&gt; @@ -173,7 +173,7 @@ static void cvm_oct_configure_common_hw(void)<br>
&gt;=C2=A0 =C2=A0*<br>
&gt;=C2=A0 =C2=A0* @work_queue_entry: Work queue entry to free<br>
&gt;=C2=A0 =C2=A0*<br>
&gt; - * Returns Zero on success, Negative on failure.<br>
&gt; + * Returns 0 on success or a negative error code.<br>
<br>
</span>Is this really true?=C2=A0 I see only one return in this function, a=
nd it is a<br>
return 0.<br>
<br>
julia<br>
<div><div class=3D"h5"><br>
&gt;=C2=A0 =C2=A0*/<br>
&gt;=C2=A0 int cvm_oct_free_work(void *work_queue_entry)<br>
&gt;=C2=A0 {<br>
&gt; @@ -248,7 +248,7 @@ static struct net_device_stats *cvm_oct_common_get=
_stats(struct net_device *dev)<br>
&gt;=C2=A0 =C2=A0* @dev:=C2=A0 =C2=A0 =C2=A0Device to change<br>
&gt;=C2=A0 =C2=A0* @new_mtu: The new MTU<br>
&gt;=C2=A0 =C2=A0*<br>
&gt; - * Returns Zero on success<br>
&gt; + * Returns 0 on success or a negative error code.<br>
&gt;=C2=A0 =C2=A0*/<br>
&gt;=C2=A0 static int cvm_oct_common_change_mtu(struct net_device *dev, int=
 new_mtu)<br>
&gt;=C2=A0 {<br>
&gt; @@ -411,7 +411,7 @@ static int cvm_oct_set_mac_filter(struct net_devic=
e *dev)<br>
&gt;=C2=A0 =C2=A0* @dev:=C2=A0 =C2=A0 The device in question.<br>
&gt;=C2=A0 =C2=A0* @addr:=C2=A0 =C2=A0Socket address.<br>
&gt;=C2=A0 =C2=A0*<br>
&gt; - * Returns Zero on success<br>
&gt; + * Returns 0 on success or a negative error code.<br>
&gt;=C2=A0 =C2=A0*/<br>
&gt;=C2=A0 static int cvm_oct_common_set_mac_address(struct net_device *dev=
, void *addr)<br>
&gt;=C2=A0 {<br>
&gt; @@ -426,7 +426,7 @@ static int cvm_oct_common_set_mac_address(struct n=
et_device *dev, void *addr)<br>
&gt;=C2=A0 =C2=A0* cvm_oct_common_init - per network device initialization<=
br>
&gt;=C2=A0 =C2=A0* @dev:=C2=A0 =C2=A0 Device to initialize<br>
&gt;=C2=A0 =C2=A0*<br>
&gt; - * Returns Zero on success<br>
&gt; + * Returns 0 on success or a negative error code.<br>
&gt;=C2=A0 =C2=A0*/<br>
&gt;=C2=A0 int cvm_oct_common_init(struct net_device *dev)<br>
<br>
</div></div>This function also seems to contain only a return 0.<br>
<br>
julia<br>
<br>
&gt;=C2=A0 {<br>
<span class=3D"HOEnZb"><font color=3D"#888888">&gt; --<br>
&gt; 1.9.1<br>
&gt;<br>
&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.=
com">outreachy-kernel+unsubscribe@googlegroups.com</a>.<br>
&gt; To post to this group, send email to <a href=3D"mailto:outreachy-kerne=
l@googlegroups.com">outreachy-kernel@googlegroups.com</a>.<br>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/outreachy-kernel/1444168297-90793-1-git-send-email-cristina=
.moraru09%40gmail.com" rel=3D"noreferrer" target=3D"_blank">https://groups.=
google.com/d/msgid/outreachy-kernel/1444168297-90793-1-git-send-email-crist=
ina.moraru09%40gmail.com</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/optout</a=
>.<br>
&gt;<br>
</font></span></blockquote></div><br></div>

--047d7b10ce9152a7ae0521984bd3--

