X-GM-THRID: 6802879895263248384
X-Received: by 2002:a05:600c:2c52:: with SMTP id r18mr4051711wmg.56.1583934395424;
        Wed, 11 Mar 2020 06:46:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:508e:: with SMTP id a14ls1087897wrt.2.gmail; Wed, 11 Mar
 2020 06:46:34 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtrRuLbFmCtUJlFvzeAuGKoMhtnAD2fallCLcAy04V5iR6fyZEZeAGjmj3NetVbWmG0WG5e
X-Received: by 2002:adf:cf04:: with SMTP id o4mr4942014wrj.347.1583934393951;
        Wed, 11 Mar 2020 06:46:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583934393; cv=none;
        d=google.com; s=arc-20160816;
        b=rN1smdpkujxa+1GDQxQ2UEiCZbFlK7AefIzljgHsPYw2QJumtrlSn/nO5L/pfa/De1
         miD2S0Fo+LrZq5khXAqsVQ6RP9enFHU2Yg1qyDCHgOd0xXwcomgkq0MRWCpBRYfj62WA
         ml/nUOj2ceaDway19rl3mWNZqzqVjCRzUamjff0Wnli6081h/sbZwYVDZZwgzY0MIG63
         apGYdXm/uA74WDjWD2h87bJ6yKtrCufd6xoakBbkPRQz4St8nq5wbZtkDKSgxZwsvQ+6
         9Sa1XGMl/lDcpMutvP4W+RYBVJsJoyoP4j2UxUxH/4l9L3+7Mo05FjC65T4iGvWhHm6g
         t/yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=FrJjgB/umLw22l5DtXNFOmk4uAkKh5J4C2va78GGEqg=;
        b=a0EbO0aJ9Z3OZZZ0+2IFBZcoX/KQMmQNcp7jHULblXpTOS606qtfo36KKGyTFsO8CH
         qX7mtfphM+RFDpmz4G7GzOnWqZNQcX8ex0zzrGZA38k272pBYg6waBiyhKUVOi2xibQj
         JhgyljH/mAI650siCWzc+kNF7LZUbLkRhGsMcy4lzEsi26cXK64ZM5mkc5rgUkQXwf89
         F1RywHL6pOxOdb3oyPe8PAv8jzbnwIilzdh5GUSeEUvBIAguCgdFP9kmFRTnn4xPSwqX
         r75PTe4SfiK9r6K/EJPVmzk+mqILiUpCcLUonmZUhSfaRzxifqjgxfxNxOFzO/rcEtLV
         XwLA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="A/r+JtNX";
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id i19si124308wml.0.2020.03.11.06.46.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Mar 2020 06:46:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="A/r+JtNX";
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x441.google.com with SMTP id l18so2662233wru.11
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Mar 2020 06:46:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=FrJjgB/umLw22l5DtXNFOmk4uAkKh5J4C2va78GGEqg=;
        b=A/r+JtNXGqr1lrGIhLORTUyJLQHq1idD9BzRobR5e5NxRY+jEgw4wh4T4L+f7mVcIj
         9FNc4A2oViaQ7pOrWWWrHdkxwkBEVUdM6+5qyxaK/tWhPjkCSblmm6SEicYBDANw9Xbg
         79n3EvnWt8OGKju386JTvdPbUB7QUihlffd/jm6d+6SxAKnamHMvNL0XlRMyhV2mIuAt
         4SbRq8LjGB0AdVBjYqYGCRtEgfGlld7MKFfflGjVlDVJ79Ki0Niw+PrQSO8z3An9cpsr
         0LIHmjAz0y9d6oMenNrxA8Yg7mPEZH4yOodkokd+brxSw2RGwVT4aiAV71dtu0b8Pc8o
         3uqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=FrJjgB/umLw22l5DtXNFOmk4uAkKh5J4C2va78GGEqg=;
        b=K5OHn0sQ01CJSpoel0cJV308EUV/gUzNoOcexwG0gOoCaDOOikyvi8xr9qAHGKGHPl
         gXOCxdy+nJxZA3xPNktZKCZrzGMSVmomr5KhHgVAlQguZdPz36edsY6zhgMQgXx50VG2
         IS+AeyGqIylTeWGDYyEAl88JtfqHVhRiXbjtUEAfLJTLULlHeURW/B4OOr0UcZnuOk5w
         65PWlDJ6qIuEJYLgc0lkBni30vC+zn6y5VXjg0gzBasSxd0AHlYXpn03iZo9Ucq2UaQb
         nEnumSMCouNo/QhIj4/3K6PfMMxVYUg4+FgvOS7LNsN8CToVFYOKajsdBdaLeDwa12p7
         vYHQ==
X-Gm-Message-State: ANhLgQ0opPPnoF68IbmPeAGQXaSqEU81CBgHFcMSqgqTdNq+Eei2QmSW
	PT4mMwlcANSS7X8WYgULG4i7jT2eiVpJ9yZIu+Z/yz04h0Y=
X-Received: by 2002:a05:6000:1186:: with SMTP id g6mr4524355wrx.331.1583934393537;
 Wed, 11 Mar 2020 06:46:33 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1583918265.git.payalskshirsagar1234@gmail.com>
 <cf99101e09f79788fd87ad9ed455c5ef363b261f.1583918265.git.payalskshirsagar1234@gmail.com>
 <20200311130807.02e32fc8@elisabeth> <CAJyzNhmYR0e2Z6YMsfcMdt81zDEn+ReapnPs=PpMaxOMVgANxA@mail.gmail.com>
 <20200311134418.468f571a@elisabeth>
In-Reply-To: <20200311134418.468f571a@elisabeth>
From: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
Date: Wed, 11 Mar 2020 19:16:21 +0530
Message-ID: <CAJyzNhmd8cT9QEiK_YkdYEBn+Ad8zgJCavWW9PBo6KtgRd+h1w@mail.gmail.com>
Subject: Re: [PATCH 4/4] [Outreachy kernel] staging: qlge: qlge_ethtool.c:
 remove an unneeded variable
To: Stefano Brivio <sbrivio@redhat.com>
Cc: manishc@marvell.com, GR-Linux-NIC-Dev@marvell.com, 
	Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000dfd9c505a0947645"

--000000000000dfd9c505a0947645
Content-Type: text/plain; charset="UTF-8"

On Wed, Mar 11, 2020 at 6:14 PM Stefano Brivio <sbrivio@redhat.com> wrote:

> On Wed, 11 Mar 2020 17:50:35 +0530
> Payal Kshirsagar <payalskshirsagar1234@gmail.com> wrote:
>
> > On Wed, Mar 11, 2020, 5:38 PM Stefano Brivio <sbrivio@redhat.com> wrote:
> >
> > > On Wed, 11 Mar 2020 14:58:15 +0530
> > > Payal Kshirsagar <payalskshirsagar1234@gmail.com> wrote:
> > >
> > > > Remove unneeded temporary local variable, cleanup suggested by
> > > coccinelle.
> > > >
> > > > Signed-off-by: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
> > > > ---
> > > >  drivers/staging/qlge/qlge_ethtool.c | 5 +----
> > > >  1 file changed, 1 insertion(+), 4 deletions(-)
> > > >
> > > > diff --git a/drivers/staging/qlge/qlge_ethtool.c
> > > b/drivers/staging/qlge/qlge_ethtool.c
> > > > index 592ca7edfc44..e15f9723b5c0 100644
> > > > --- a/drivers/staging/qlge/qlge_ethtool.c
> > > > +++ b/drivers/staging/qlge/qlge_ethtool.c
> > > > @@ -692,7 +692,6 @@ static int ql_set_pauseparam(struct net_device
> > > *netdev,
> > > >                            struct ethtool_pauseparam *pause)
> > > >  {
> > > >       struct ql_adapter *qdev = netdev_priv(netdev);
> > > > -     int status = 0;
> > > >
> > > >       if ((pause->rx_pause) && (pause->tx_pause))
> > > >               qdev->link_config |= CFG_PAUSE_STD;
> > > > @@ -700,9 +699,7 @@ static int ql_set_pauseparam(struct net_device
> > > *netdev,
> > > >               qdev->link_config &= ~CFG_PAUSE_STD;
> > > >       else
> > > >               return -EINVAL;
> > > > -
> > > > -     status = ql_mb_set_port_cfg(qdev);
> > > > -     return status;
> > > > +     return ql_mb_set_port_cfg(qdev);
> > >
> > > Here, you're also removing a newline that is typically inserted before
> > > a second return (or the last one in a function) for readability, or
> > > whenever there are two logically distinct branches, same in 3/4.
> > >
> >
> > Thanks for the suggestion.
> > I thought there is no need to keep the newline as is:D
>
> Have a look at some "sane" examples (especially outside of
> drivers/staging), maybe that helps getting a picture...
>
> > But I did not understand what do you want me to do, patch is okay or need
> > to be resend by adding a newline for readability:)
>
> I would say you need to re-send the series, because 3/4 and 4/4
> actually impair readability in their current form.
>
> Note that I gave my Reviewed-by: on another patch of yours, not on
> this series.
>
> Another note: from the cover letter, it's apparent that "[Outreachy
> kernel]" is part of commit titles. It shouldn't be, that's only a
> prefix (git format-patch --subject-prefix) for email.
> If I run git format-patch --subject-prefix="Outreachy Kernel" HEAD^, it
> only adds [Outreachy Kernel] prefix to the subject not [PATCH].  I am only
> able to add either [Outreachy Kernel] or [PATCH]. Please guide me regarding
> the same.
>
>
> > payal
> >
> > And in 1/4, you might want to add one. In 2/4, there's no need.
> > >
> > > --
> > > Stefano
> > >
>
> One note about quoting: read above. Who wrote what?
>
> I see you're using GMail, which is fine, by all means, but:
>
> - you shouldn't send HTML emails to kernel lists. Especially with
>   projects using patchwork
>   (example: https://patchwork.ozlabs.org/project/netdev/list/) this
>   has a big potential to mess things up
>
> - you should fix your quoting: a sentence I wrote needs a "> >" prefix
>   there, otherwise it seems to come from you, and I'll get confused.
>
> That is, I suggest that you set up an email client as also covered by
> the tutorial. The GMail web interface is probably not ideal. The
> tutorial suggests 'mutt', but it's not mandatory. I'm using claws-mail
> to send you this e-mail and for my work in general.
>
> There are other graphical or text-based clients (Evolution, pine,
> sylpheed, KMail, many others) that can also be used for this purpose. I
> would suggest that you look at screenshots, maybe play with some of
> them, find one you're comfortable with, and set it up.
> I followed every step of setting up the gmail as mentioned in tutorial, I
> don't know why this is happening;(
> --
> Stefano
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/20200311134418.468f571a%40elisabeth
> .
>

--000000000000dfd9c505a0947645
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Wed, Mar 11, 2020 at 6:14 PM Stefa=
no Brivio &lt;<a href=3D"mailto:sbrivio@redhat.com">sbrivio@redhat.com</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div>=
On Wed, 11 Mar 2020 17:50:35 +0530<br>
Payal Kshirsagar &lt;<a href=3D"mailto:payalskshirsagar1234@gmail.com" targ=
et=3D"_blank">payalskshirsagar1234@gmail.com</a>&gt; wrote:<br>
<br>
&gt; On Wed, Mar 11, 2020, 5:38 PM Stefano Brivio &lt;<a href=3D"mailto:sbr=
ivio@redhat.com" target=3D"_blank">sbrivio@redhat.com</a>&gt; wrote:<br>
&gt; <br>
&gt; &gt; On Wed, 11 Mar 2020 14:58:15 +0530<br>
&gt; &gt; Payal Kshirsagar &lt;<a href=3D"mailto:payalskshirsagar1234@gmail=
.com" target=3D"_blank">payalskshirsagar1234@gmail.com</a>&gt; wrote:<br>
&gt; &gt;=C2=A0 <br>
&gt; &gt; &gt; Remove unneeded temporary local variable, cleanup suggested =
by=C2=A0 <br>
&gt; &gt; coccinelle.=C2=A0 <br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Signed-off-by: Payal Kshirsagar &lt;<a href=3D"mailto:payals=
kshirsagar1234@gmail.com" target=3D"_blank">payalskshirsagar1234@gmail.com<=
/a>&gt;<br>
&gt; &gt; &gt; ---<br>
&gt; &gt; &gt;=C2=A0 drivers/staging/qlge/qlge_ethtool.c | 5 +----<br>
&gt; &gt; &gt;=C2=A0 1 file changed, 1 insertion(+), 4 deletions(-)<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; diff --git a/drivers/staging/qlge/qlge_ethtool.c=C2=A0 <br>
&gt; &gt; b/drivers/staging/qlge/qlge_ethtool.c=C2=A0 <br>
&gt; &gt; &gt; index 592ca7edfc44..e15f9723b5c0 100644<br>
&gt; &gt; &gt; --- a/drivers/staging/qlge/qlge_ethtool.c<br>
&gt; &gt; &gt; +++ b/drivers/staging/qlge/qlge_ethtool.c<br>
&gt; &gt; &gt; @@ -692,7 +692,6 @@ static int ql_set_pauseparam(struct net_=
device=C2=A0 <br>
&gt; &gt; *netdev,=C2=A0 <br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 struct ethtool_pauseparam *pause)<br=
>
&gt; &gt; &gt;=C2=A0 {<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ql_adapter *qdev =3D netdev=
_priv(netdev);<br>
&gt; &gt; &gt; -=C2=A0 =C2=A0 =C2=A0int status =3D 0;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if ((pause-&gt;rx_pause) &amp;&amp=
; (pause-&gt;tx_pause))<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0qdev-&=
gt;link_config |=3D CFG_PAUSE_STD;<br>
&gt; &gt; &gt; @@ -700,9 +699,7 @@ static int ql_set_pauseparam(struct net_=
device=C2=A0 <br>
&gt; &gt; *netdev,=C2=A0 <br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0qdev-&=
gt;link_config &amp;=3D ~CFG_PAUSE_STD;<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0else<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return=
 -EINVAL;<br>
&gt; &gt; &gt; -<br>
&gt; &gt; &gt; -=C2=A0 =C2=A0 =C2=A0status =3D ql_mb_set_port_cfg(qdev);<br=
>
&gt; &gt; &gt; -=C2=A0 =C2=A0 =C2=A0return status;<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0return ql_mb_set_port_cfg(qdev);=C2=A0 =
<br>
&gt; &gt;<br>
&gt; &gt; Here, you&#39;re also removing a newline that is typically insert=
ed before<br>
&gt; &gt; a second return (or the last one in a function) for readability, =
or<br>
&gt; &gt; whenever there are two logically distinct branches, same in 3/4.<=
br>
&gt; &gt;=C2=A0 <br>
&gt; <br>
&gt; Thanks for the suggestion.<br>
&gt; I thought there is no need to keep the newline as is:D<br>
<br>
Have a look at some &quot;sane&quot; examples (especially outside of<br>
drivers/staging), maybe that helps getting a picture...<br>
<br>
&gt; But I did not understand what do you want me to do, patch is okay or n=
eed<br>
&gt; to be resend by adding a newline for readability:)<br>
<br>
I would say you need to re-send the series, because 3/4 and 4/4<br>
actually impair readability in their current form.<br>
<br>
Note that I gave my Reviewed-by: on another patch of yours, not on<br>
this series.<br>
<br>
Another note: from the cover letter, it&#39;s apparent that &quot;[Outreach=
y<br>
kernel]&quot; is part of commit titles. It shouldn&#39;t be, that&#39;s onl=
y a<br>
prefix (git format-patch --subject-prefix) for email.<br></div>
If I run git format-patch --subject-prefix=3D&quot;Outreachy Kernel&quot; H=
EAD^, it only adds [Outreachy Kernel] prefix to the subject not [PATCH].=C2=
=A0 I am only able to add either [Outreachy Kernel] or [PATCH]. Please guid=
e me regarding the same.<br></blockquote><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex"><div>
&gt; <br>
&gt; payal<br>
&gt; <br>
&gt; And in 1/4, you might want to add one. In 2/4, there&#39;s no need.<br=
>
&gt; &gt;<br>
&gt; &gt; --<br>
&gt; &gt; Stefano<br>
&gt; &gt;=C2=A0 <br>
<br>
One note about quoting: read above. Who wrote what?<br>
<br>
I see you&#39;re using GMail, which is fine, by all means, but:<br>
<br>
- you shouldn&#39;t send HTML emails to kernel lists. Especially with<br>
=C2=A0 projects using patchwork<br>
=C2=A0 (example: <a href=3D"https://patchwork.ozlabs.org/project/netdev/lis=
t/" rel=3D"noreferrer" target=3D"_blank">https://patchwork.ozlabs.org/proje=
ct/netdev/list/</a>) this<br>
=C2=A0 has a big potential to mess things up<br>
<br>
- you should fix your quoting: a sentence I wrote needs a &quot;&gt; &gt;&q=
uot; prefix<br>
=C2=A0 there, otherwise it seems to come from you, and I&#39;ll get confuse=
d.<br>
<br>
That is, I suggest that you set up an email client as also covered by<br>
the tutorial. The GMail web interface is probably not ideal. The<br>
tutorial suggests &#39;mutt&#39;, but it&#39;s not mandatory. I&#39;m using=
 claws-mail<br>
to send you this e-mail and for my work in general.<br>
<br>
There are other graphical or text-based clients (Evolution, pine,<br>
sylpheed, KMail, many others) that can also be used for this purpose. I<br>
would suggest that you look at screenshots, maybe play with some of<br>
them, find one you&#39;re comfortable with, and set it up.<br></div><div>
I followed every step of setting up the gmail as mentioned in tutorial, I d=
on&#39;t know why this is happening;( <br></div><div>
-- <br>
Stefano<br>
<br>
-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;outreachy-kernel&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.com" =
target=3D"_blank">outreachy-kernel+unsubscribe@googlegroups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/outreachy-kernel/20200311134418.468f571a%40elisabeth" rel=3D"nor=
eferrer" target=3D"_blank">https://groups.google.com/d/msgid/outreachy-kern=
el/20200311134418.468f571a%40elisabeth</a>.<br>
</div></blockquote></div></div>

--000000000000dfd9c505a0947645--

