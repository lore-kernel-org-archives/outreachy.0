X-GM-THRID: 6671816179609239552
X-Received: by 2002:a2e:680e:: with SMTP id c14mr9723552lja.51.1553410588461;
        Sat, 23 Mar 2019 23:56:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:4b42:: with SMTP id y63ls1259853lfa.7.gmail; Sat, 23 Mar
 2019 23:56:27 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw6y3oC7zCBb/dcJdProYNsi9HFtEpmjqfI2upcZvCQgBJ8RSJNrgxI+j7TebhYlIEV7Q3w
X-Received: by 2002:ac2:519c:: with SMTP id u28mr9009075lfi.20.1553410587562;
        Sat, 23 Mar 2019 23:56:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553410587; cv=none;
        d=google.com; s=arc-20160816;
        b=RozLn5d6OR3DyoYlkpk3YLlLjOxEIb52dCPr9nxis/IBtyZhiHssacNxrM+7iMAPWv
         nv4ctXUIzOnUn9D2JQ40c+BiFXapOVEng5lXr1w5+/vUGCNQWWH2phmUSmCAhFRDLZhn
         s5Z1eSvr7QjyOOP2Vin9NzSao9fMKjKZxDJqDJeYLi95m3pwRPevdbjbKIkiyrX4VCPq
         avFaJBM5psFKtlfaquvdiOLOeBROcoZTKa5MB5rD0MJkgk53gkFyD+DY61ftwlajcr0E
         1GTCUfKD5wXYSPCpdAdd4JAurbLP6rtFWZb5yWiY7OJhOe+7vPF1AtKfHn60EgyPNWUu
         muyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=FotObJbatwWN76MqggN+If3PEwoT6PrmEIjvvPNO1qs=;
        b=oOIuhRfbz1kj0rHnJzjWi49haiBHf/HgCFZQtJgmnekJ8BN1vs1wKEZoJQKukB+yco
         g5JKaJQ6/XVPqA1NuXiUbuU65pEUqlUB01sXdYJasY49tFp5IdUHHZKwocU9ZOIKbzd0
         oaEt4iJxuc4wEP8K4Leot6hQYw7PvjJsAnSzwAof6gjtL37nDAa97UGQnfeCqmSzblv2
         ZnU0iGUAoa/QaWtuqW/3faAne8nB904gA4OFwE2SKhd0He44n3OSJhzWbVdqsNRwzw/9
         5/E1Hfwl7ky5uVgbPbeNB365QIfXlxOgqYKSeLmDZ8++s6w2A+wWrZAEc9coEsugJR1a
         VvJw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Z6I0hd2H;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com. [2a00:1450:4864:20::244])
        by gmr-mx.google.com with ESMTPS id 19si403179lje.4.2019.03.23.23.56.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Mar 2019 23:56:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::244 as permitted sender) client-ip=2a00:1450:4864:20::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Z6I0hd2H;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x244.google.com with SMTP id p14so4194118ljg.5
        for <outreachy-kernel@googlegroups.com>; Sat, 23 Mar 2019 23:56:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=FotObJbatwWN76MqggN+If3PEwoT6PrmEIjvvPNO1qs=;
        b=Z6I0hd2HVHXNSHyrqwmo+8D80Q6i4p2OWJk5O2yXAUM2ajsbcmSV4EpAna3CVx2CK/
         ACxDB17E15JBz+5uY/IaZyEyd4wJ9ddgnsdkCpRIG7XHpy0DUTSNlADV8zL0ByRNVsWp
         GGCLvrwWYCqSSQZeVUGINhatvjglsrVMV7nBeyPelzaQFzaHO6ljAWF7D0X1mMkKyEgI
         HNcPHIpPDMABIU6mGpI7YsTzTH3679vrel7YZGYmq9GjcjHGQ0NqN2nuSv7DL+Fnpn8e
         BsreCgRQqwLNh28hEiSriT8hT0tYLPskzbRULpI63I6UTmlVtbUfVOxifAfPEgElPkol
         rdoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=FotObJbatwWN76MqggN+If3PEwoT6PrmEIjvvPNO1qs=;
        b=lQDaMk5uV6FO+7YuuuWLypp0NPgMlZsIa85bj2h2C6A20e+zwr+BTm+gkjAvu55QhP
         7AqBBt8DNYmS5wYFinqIlkbIltdFZt6EvUf6KFROXS29YY7HAi5OZwxtb3zdMHzNxEJ0
         M6GFVXktkw91NnEAi87s5NF2qq5wY1W0rD5IJWSYgfv3/lo9TnALP3IIImSCi0hVlOGB
         9VCDk/0kQx0TLqqN90PWxEEjwFh0VnxLmkDOOvs5Ny95bHVcyBzzE0CJsCM+s7J8fgrg
         EYc8qS1ais0160o+557eZmp4uZWwu22KO1IVYWZVlgRf38JWkyUjIKNlWBdeT4pDub3j
         Ps3A==
X-Gm-Message-State: APjAAAX/hBHkmOH5W3vgnE6ciSDmkmh7hK2JG89pxnllLJMzXEPADa+p
	ZrsUT+YNf8xUEJnPs7eW/EUxW9iQ09iRJ+hojAPL8g==
X-Received: by 2002:a2e:9b4e:: with SMTP id o14mr9904022ljj.189.1553410587417;
 Sat, 23 Mar 2019 23:56:27 -0700 (PDT)
MIME-Version: 1.0
References: <e0cba4211ae056d80a743a81f01e4cef07663c27.1553403095.git.payal.s.kshirsagar.98@gmail.com>
 <78d3539092434900b454aaa676e29c3be320fd31.1553403095.git.payal.s.kshirsagar.98@gmail.com>
 <alpine.DEB.2.21.1903240744510.2526@hadrien>
In-Reply-To: <alpine.DEB.2.21.1903240744510.2526@hadrien>
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Date: Sun, 24 Mar 2019 12:26:15 +0530
Message-ID: <CANTOzWGk8z4MRF1aJ5z628dB7XpR9axYsWrstKkVtaW5B=k8FA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 4/6] staging: rtl8712: avoid camelcase
 variable name 'backupTKIPCountermeasure'
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="00000000000040df6f0584d196bc"

--00000000000040df6f0584d196bc
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Mar 24, 2019, 12:15 PM Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Sun, 24 Mar 2019, Payal Kshirsagar wrote:
>
> > Eliminate camelcase variable names to fix the style issue =E2=80=93 =E2=
=80=98avoid
> > camelcase=E2=80=99.
> >
> > Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> > ---
> >  drivers/staging/rtl8712/mlme_linux.c | 6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/staging/rtl8712/mlme_linux.c
> b/drivers/staging/rtl8712/mlme_linux.c
> > index 2463344..6323061 100644
> > --- a/drivers/staging/rtl8712/mlme_linux.c
> > +++ b/drivers/staging/rtl8712/mlme_linux.c
> > @@ -88,7 +88,7 @@ static struct RT_PMKID_LIST
>  backup_PMKID_List[NUM_PMKID_CACHE];
> >  void r8712_os_indicate_disconnect(struct _adapter *adapter)
> >  {
> >       u8 backup_PMKID_index =3D 0;
> > -     u8 backupTKIPCountermeasure =3D 0x00;
> > +     u8 backup_TKIP_count_measure =3D 0x00;
> >
> >       r8712_indicate_wx_disassoc_event(adapter);
> >       netif_carrier_off(adapter->pnetdev);
> > @@ -103,7 +103,7 @@ void r8712_os_indicate_disconnect(struct _adapter
> *adapter)
> >                      &adapter->securitypriv.PMKIDList[0],
> >                      sizeof(struct RT_PMKID_LIST) * NUM_PMKID_CACHE);
> >               backup_PMKID_index =3D adapter->securitypriv.PMKIDIndex;
> > -             backupTKIPCountermeasure =3D
> > +             backup_TKIP_count_measure =3D
>
> You actually changed the sense of the identifier here.  The original name
> ended with countermeasure, while your name ends with count_measure, which
> suggests something quite different.
>
Okay I will drop this patch .
Thanks,
Payal

julia
>
> >                       adapter->securitypriv.btkip_countermeasure;
> >               memset((unsigned char *)&adapter->securitypriv, 0,
> >                      sizeof(struct security_priv));
> > @@ -117,7 +117,7 @@ void r8712_os_indicate_disconnect(struct _adapter
> *adapter)
> >                      sizeof(struct RT_PMKID_LIST) * NUM_PMKID_CACHE);
> >               adapter->securitypriv.PMKIDIndex =3D backup_PMKID_index;
> >               adapter->securitypriv.btkip_countermeasure =3D
> > -                                      backupTKIPCountermeasure;
> > +                                      backup_TKIP_count_measure;
> >       } else { /*reset values in securitypriv*/
> >               struct security_priv *psec_priv =3D &adapter->securitypri=
v;
> >
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
> https://groups.google.com/d/msgid/outreachy-kernel/78d3539092434900b454aa=
a676e29c3be320fd31.1553403095.git.payal.s.kshirsagar.98%40gmail.com
> .
> > For more options, visit https://groups.google.com/d/optout.
> >
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.190324=
0744510.2526%40hadrien
> .
> For more options, visit https://groups.google.com/d/optout.
>

--00000000000040df6f0584d196bc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr">=
On Sun, Mar 24, 2019, 12:15 PM Julia Lawall &lt;<a href=3D"mailto:julia.law=
all@lip6.fr">julia.lawall@lip6.fr</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"><br>
<br>
On Sun, 24 Mar 2019, Payal Kshirsagar wrote:<br>
<br>
&gt; Eliminate camelcase variable names to fix the style issue =E2=80=93 =
=E2=80=98avoid<br>
&gt; camelcase=E2=80=99.<br>
&gt;<br>
&gt; Signed-off-by: Payal Kshirsagar &lt;<a href=3D"mailto:payal.s.kshirsag=
ar.98@gmail.com" target=3D"_blank" rel=3D"noreferrer">payal.s.kshirsagar.98=
@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/rtl8712/mlme_linux.c | 6 +++---<br>
&gt;=C2=A0 1 file changed, 3 insertions(+), 3 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/rtl8712/mlme_linux.c b/drivers/staging/rt=
l8712/mlme_linux.c<br>
&gt; index 2463344..6323061 100644<br>
&gt; --- a/drivers/staging/rtl8712/mlme_linux.c<br>
&gt; +++ b/drivers/staging/rtl8712/mlme_linux.c<br>
&gt; @@ -88,7 +88,7 @@ static struct RT_PMKID_LIST=C2=A0 =C2=A0backup_PMKID=
_List[NUM_PMKID_CACHE];<br>
&gt;=C2=A0 void r8712_os_indicate_disconnect(struct _adapter *adapter)<br>
&gt;=C2=A0 {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u8 backup_PMKID_index =3D 0;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0u8 backupTKIPCountermeasure =3D 0x00;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0u8 backup_TKIP_count_measure =3D 0x00;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0r8712_indicate_wx_disassoc_event(adapter);<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0netif_carrier_off(adapter-&gt;pnetdev);<br>
&gt; @@ -103,7 +103,7 @@ void r8712_os_indicate_disconnect(struct _adapter =
*adapter)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 &amp;adapter-&gt;securitypriv.PMKIDList[0],<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 sizeof(struct RT_PMKID_LIST) * NUM_PMKID_CACHE);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0backup_PMKID_ind=
ex =3D adapter-&gt;securitypriv.PMKIDIndex;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0backupTKIPCountermeas=
ure =3D<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0backup_TKIP_count_mea=
sure =3D<br>
<br>
You actually changed the sense of the identifier here.=C2=A0 The original n=
ame<br>
ended with countermeasure, while your name ends with count_measure, which<b=
r>
suggests something quite different.<br></blockquote></div></div><div dir=3D=
"auto">Okay I will drop this patch .</div><div dir=3D"auto">Thanks,</div><d=
iv dir=3D"auto">Payal</div><div dir=3D"auto"><br></div><div dir=3D"auto"><d=
iv class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
julia<br>
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0adapter-&gt;securitypriv.btkip_countermeasure;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0memset((unsigned=
 char *)&amp;adapter-&gt;securitypriv, 0,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 sizeof(struct security_priv));<br>
&gt; @@ -117,7 +117,7 @@ void r8712_os_indicate_disconnect(struct _adapter =
*adapter)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 sizeof(struct RT_PMKID_LIST) * NUM_PMKID_CACHE);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0adapter-&gt;secu=
ritypriv.PMKIDIndex =3D backup_PMKID_index;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0adapter-&gt;secu=
ritypriv.btkip_countermeasure =3D<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 backupTKIPC=
ountermeasure;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 backup_TKIP=
_count_measure;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0} else { /*reset values in securitypriv*/<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0struct security_=
priv *psec_priv =3D &amp;adapter-&gt;securitypriv;<br>
&gt;<br>
&gt; --<br>
&gt; 2.7.4<br>
&gt;<br>
&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.=
com" target=3D"_blank" rel=3D"noreferrer">outreachy-kernel+unsubscribe@goog=
legroups.com</a>.<br>
&gt; To post to this group, send email to <a href=3D"mailto:outreachy-kerne=
l@googlegroups.com" target=3D"_blank" rel=3D"noreferrer">outreachy-kernel@g=
ooglegroups.com</a>.<br>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/outreachy-kernel/78d3539092434900b454aaa676e29c3be320fd31.1=
553403095.git.payal.s.kshirsagar.98%40gmail.com" rel=3D"noreferrer noreferr=
er" target=3D"_blank">https://groups.google.com/d/msgid/outreachy-kernel/78=
d3539092434900b454aaa676e29c3be320fd31.1553403095.git.payal.s.kshirsagar.98=
%40gmail.com</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer noreferrer" target=3D"_blank">https://groups.google.com/=
d/optout</a>.<br>
&gt;<br>
<br>
-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;outreachy-kernel&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.com" =
target=3D"_blank" rel=3D"noreferrer">outreachy-kernel+unsubscribe@googlegro=
ups.com</a>.<br>
To post to this group, send email to <a href=3D"mailto:outreachy-kernel@goo=
glegroups.com" target=3D"_blank" rel=3D"noreferrer">outreachy-kernel@google=
groups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/outreachy-kernel/alpine.DEB.2.21.1903240744510.2526%40hadrien" r=
el=3D"noreferrer noreferrer" target=3D"_blank">https://groups.google.com/d/=
msgid/outreachy-kernel/alpine.DEB.2.21.1903240744510.2526%40hadrien</a>.<br=
>
For more options, visit <a href=3D"https://groups.google.com/d/optout" rel=
=3D"noreferrer noreferrer" target=3D"_blank">https://groups.google.com/d/op=
tout</a>.<br>
</blockquote></div></div></div>

--00000000000040df6f0584d196bc--

