X-GM-THRID: 6611156296380973056
X-Received: by 2002:ac8:347d:: with SMTP id v58-v6mr4472838qtb.6.1539344217943;
        Fri, 12 Oct 2018 04:36:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:bfef:: with SMTP id u44ls4888694qvj.2.gmail; Fri, 12 Oct
 2018 04:36:57 -0700 (PDT)
X-Google-Smtp-Source: ACcGV62d5aNQfPNoKaPycFsSK2C68pR3POv9cFEngijxe0U//INhq78yQu/MaMSBiqAjSQkcFo9V
X-Received: by 2002:a0c:d0f2:: with SMTP id b47-v6mr4492415qvh.20.1539344217424;
        Fri, 12 Oct 2018 04:36:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1539344217; cv=none;
        d=google.com; s=arc-20160816;
        b=GYnMrXv1dHv31W7AUjN1lItg1kj8Xu0XkLM2MoRq22lyEFZW2XTk/b2IPk5lP74RSE
         p3ftb7ae97IcUrBEwd+dEVOTEhsRPH3bsG3mCq/kTnuGzxX65o8sH3nPv6fPokXb9ebf
         3F2wj6Z1Za6yIDm5D4eDiZLcK2SQkWJOioouRi18Sou3ewpY4SnGEi1TFADPj3HKA6Q7
         nZLB06yHVFDGWH/EDQdit290DkGNpiaof/paefp57B7/CUQKdwLvvsvTxX8Tv6SsIclC
         aKL8/qgxvAY8jx7fq5kDFaseeRHsiyssc1gmYLmcuY9ei2YZur81bdf6HrdLVLWnQ1mh
         0nGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=ozieRY7IoTKu5U5icAptmXBl7H6SpWk2t/sO61QDAFc=;
        b=pMvav1BHTw/o5ifhNVd6uBHvJEbsYqu7BHg6Iv5daT16clREzDsYENwUHt5bp0uSCA
         ATVi34QLajTaF9COjRneBXe6IYHfpfU3i4pdERbLEh1WU21duLFz9Gdzh2Kl0jS0A6gS
         WaZsjBktWj3ob8FgBYx9ogY1aGbdzC3vraz3CQkwMkLAcJSyY8BRVh7pRlQZmenbBoTg
         jXB7tQfDGqwdBdP9s8PDQWCJTVd4ZLMYupHdN1PGfeZb/URJIyxTf/erfmqLtRSEm0e2
         UiC8Dcfs4MBfnUuxjdO1Vyaommy5UvmEeBhXsYAzG2AXHLay2Sp+WzGyw2hLmQ6TJ5W8
         JsSA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AwZBLB8u;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::143 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mamtashukla555@gmail.com>
Received: from mail-it1-x143.google.com (mail-it1-x143.google.com. [2607:f8b0:4864:20::143])
        by gmr-mx.google.com with ESMTPS id p9-v6si26002qte.4.2018.10.12.04.36.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Oct 2018 04:36:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::143 as permitted sender) client-ip=2607:f8b0:4864:20::143;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AwZBLB8u;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::143 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-it1-x143.google.com with SMTP id i76-v6so17742505ita.3
        for <outreachy-kernel@googlegroups.com>; Fri, 12 Oct 2018 04:36:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=ozieRY7IoTKu5U5icAptmXBl7H6SpWk2t/sO61QDAFc=;
        b=AwZBLB8ud34uC4/izEF08vzF2AppBOSA6r7lASceDaxVBiLaLRNSfDNfYT4noyr5nf
         GDZhpETQBOoQ9SzJQMMtam+PXxXs6Nn2V068+2dCAhWhZ5iInQXE6KjVhKqtC+IYFevB
         rgPL0fKN/q4fACqi2/YOWD5wrNU+ONqcNAd6VuKx3CyeiSZriXaCVA/TgCSL2JukV4B5
         vIAkUQhdG9wKXW3uGEoaCGt3FzbdjzPNwBo9c7A2wQ+2+/uwttXXeCRWTGISKkEml8eU
         xHXA+/szW7McAoFbXQhfG4OuRnZiVjFnwvrPWp68XceNUqRwit7UO5ucsR1xPqRsllAQ
         we8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=ozieRY7IoTKu5U5icAptmXBl7H6SpWk2t/sO61QDAFc=;
        b=M2jrgBtlM0Y2wnoOmuOhFqYGWbQuVowA8GZLHAxyhz+oi1TiDp/uwEtdRZFV57zFtw
         EwLBTlJkz+17SwNTrHldQZkuTfvg5raBYfYhRaT7YYxT5uG26qK49nJlAha+OYZ+5Z16
         GDgitp54G+M4r5h09yrzMwJHjuqUPSuGTsqcs/8HnBiTu78N4IbfIFppfBcN3nL1ph16
         CFhLyQlKLBrWinmrTqNTRWTCuEeHH/4PPkZbzI1eGdCNeApWe8Xl69H62BSvbLvWdbwa
         Wmy0rcQkVtI18p2AcpHrcPAnqyU+4ecvrnHv2XJ+o/Uiqkx8TNKVmcfnJRL+raV2/86Y
         24Fw==
X-Gm-Message-State: ABuFfoi5c20JuY89My3H3iVLHzhMPLoezP2gjjYwQiJ5qCpPR7kJfWXx
	dIZ/Dh32iuDgxlXQatYqNcJA0C97dMc5qNUsj3vNTQ+gtgM=
X-Received: by 2002:a02:41c9:: with SMTP id n70-v6mr4623643jad.0.1539344216627;
 Fri, 12 Oct 2018 04:36:56 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1539278377.git.mamtashukla555@gmail.com>
 <deb7888572fb02d8cbd80fcaf9d9cef69c550d88.1539278377.git.mamtashukla555@gmail.com>
 <alpine.DEB.2.20.1810121321340.4366@hadrien>
In-Reply-To: <alpine.DEB.2.20.1810121321340.4366@hadrien>
From: Mamta Shukla <mamtashukla555@gmail.com>
Date: Fri, 12 Oct 2018 17:06:45 +0530
Message-ID: <CAMNCNOX_oF=Jiz9fJgXj2zgEBEvwiksgYKBFTjdbDEnCqZLe0g@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 3/3] staging: rtl8723bs: os_dep: Shift
 * to be adjacent to pointer name
To: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com, 
	gregkh@linuxfoundation.org
Content-Type: multipart/alternative; boundary="000000000000381dc20578068135"

--000000000000381dc20578068135
Content-Type: text/plain; charset="UTF-8"

On Fri, Oct 12, 2018 at 4:56 PM Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> >On Fri, 12 Oct 2018, Mamta Shukla wrote:
>
> > Shift * to be adjacent to pointer name to follow Linux coding style.
> >  Issue found with checkpatch.pl
> > ERROR: "foo * bar" should be "foo *bar"
> >
> > Signed-off-by: Mamta Shukla <mamtashukla555@gmail.com>
> > ACKed-by: Larry Finger <Larry....@lwfinger.net>
>
> >You should put the full email address here.  And it should be Acked-by.
> >
> >This is a v2, so you should say that in the subject line and explain what
> >you changed.  Did Greg already take the others in the series?
>
> >julia
>
>  This was the issue with this patch:
  This patch is somehow corrupted.  Can you fix it up and resend it,
  keeping Larry's ack?

 >thanks,

>greg k-h
 Yes, Greg had already taken the others in the series.
 I  did this patch again to fix it.
 This patch had got corrupted previously.
 I will add the revision and change log.



> > ---
> >  drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> > index 243394e..28bfdbd 100644
> > --- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> > +++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> > @@ -528,8 +528,8 @@ static int wpa_set_encryption(struct net_device
> *dev, struct ieee_param *param,
> >       }
> >
> >       if (padapter->securitypriv.dot11AuthAlgrthm ==
> dot11AuthAlgrthm_8021X) { /*  802_1x */
> > -             struct sta_info * psta,*pbcmc_sta;
> > -             struct sta_priv * pstapriv = &padapter->stapriv;
> > +             struct sta_info *psta, *pbcmc_sta;
> > +             struct sta_priv *pstapriv = &padapter->stapriv;
> >
> >               if (check_fwstate(pmlmepriv, WIFI_STATION_STATE |
> WIFI_MP_STATE) == true) { /* sta mode */
> >                       psta = rtw_get_stainfo(pstapriv,
> get_bssid(pmlmepriv));
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
> https://groups.google.com/d/msgid/outreachy-kernel/deb7888572fb02d8cbd80fcaf9d9cef69c550d88.1539278377.git.mamtashukla555%40gmail.com
> .
> > For more options, visit https://groups.google.com/d/optout.
> >
>


-- 
Mamta Shukla
Pune Institute  of Computer Technology
Pune
m: 9158516957
e : mamtashukla555@gmail.com

--000000000000381dc20578068135
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Fri=
, Oct 12, 2018 at 4:56 PM Julia Lawall &lt;<a href=3D"mailto:julia.lawall@l=
ip6.fr">julia.lawall@lip6.fr</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-l=
eft:1ex"><br>
<br>&gt;On Fri, 12 Oct 2018, Mamta Shukla wrote:<br>
<br>
&gt; Shift * to be adjacent to pointer name to follow Linux coding style.<b=
r>
&gt;=C2=A0 Issue found with <a href=3D"http://checkpatch.pl" rel=3D"norefer=
rer" target=3D"_blank">checkpatch.pl</a><br>
&gt; ERROR: &quot;foo * bar&quot; should be &quot;foo *bar&quot;<br>
&gt;<br>
&gt; Signed-off-by: Mamta Shukla &lt;<a href=3D"mailto:mamtashukla555@gmail=
.com" target=3D"_blank">mamtashukla555@gmail.com</a>&gt;<br>
&gt; ACKed-by: Larry Finger &lt;<a href=3D"mailto:Larry....@lwfinger.net" t=
arget=3D"_blank">Larry....@lwfinger.net</a>&gt;<br>
<br>&gt;You should put the full email address here.=C2=A0 And it should be =
Acked-by.<br>
&gt;<br>&gt;This is a v2, so you should say that in the subject line and ex=
plain what<br>&gt;you changed.=C2=A0 Did Greg already take the others in th=
e series?<br>
<br>&gt;julia<br>
<br></blockquote><div>=C2=A0This was the issue with this patch:</div><div>=
=C2=A0 This patch is somehow corrupted.=C2=A0 Can you fix it up and resend =
it,<br>=C2=A0 keeping Larry&#39;s ack?<br><br>=C2=A0&gt;thanks,<br><br>&gt;=
greg k-h=C2=A0=C2=A0<br></div><div>=C2=A0Yes, Greg had already taken the ot=
hers in the series.</div><div>=C2=A0I=C2=A0 did this patch again to fix it.=
=C2=A0</div><div>=C2=A0This patch had got corrupted previously.</div><div>=
=C2=A0I will add the revision and change log.</div><div><br></div><div>=C2=
=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;borde=
r-left:1px #ccc solid;padding-left:1ex">
&gt; ---<br>
&gt;=C2=A0 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 4 ++--<br>
&gt;=C2=A0 1 file changed, 2 insertions(+), 2 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/=
staging/rtl8723bs/os_dep/ioctl_linux.c<br>
&gt; index 243394e..28bfdbd 100644<br>
&gt; --- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c<br>
&gt; +++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c<br>
&gt; @@ -528,8 +528,8 @@ static int wpa_set_encryption(struct net_device *d=
ev, struct ieee_param *param,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (padapter-&gt;securitypriv.dot11AuthAlgrt=
hm =3D=3D dot11AuthAlgrthm_8021X) { /*=C2=A0 802_1x */<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0struct sta_info * pst=
a,*pbcmc_sta;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0struct sta_priv * pst=
apriv =3D &amp;padapter-&gt;stapriv;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0struct sta_info *psta=
, *pbcmc_sta;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0struct sta_priv *psta=
priv =3D &amp;padapter-&gt;stapriv;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (check_fwstat=
e(pmlmepriv, WIFI_STATION_STATE | WIFI_MP_STATE) =3D=3D true) { /* sta mode=
 */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0psta =3D rtw_get_stainfo(pstapriv, get_bssid(pmlmepriv));<br>
&gt; --<br>
&gt; 1.9.1<br>
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
gle.com/d/msgid/outreachy-kernel/deb7888572fb02d8cbd80fcaf9d9cef69c550d88.1=
539278377.git.mamtashukla555%40gmail.com" rel=3D"noreferrer" target=3D"_bla=
nk">https://groups.google.com/d/msgid/outreachy-kernel/deb7888572fb02d8cbd8=
0fcaf9d9cef69c550d88.1539278377.git.mamtashukla555%40gmail.com</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/optout</a=
>.<br>
&gt;<br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"l=
tr"><font face=3D"arial, helvetica, sans-serif">Mamta Shukla</font><div><fo=
nt face=3D"arial, helvetica, sans-serif">Pune Institute=C2=A0 of Computer T=
echnology</font></div><div><font face=3D"arial, helvetica, sans-serif">Pune=
</font></div><div><font face=3D"arial, helvetica, sans-serif">m: 9158516957=
</font></div><div><font face=3D"arial, helvetica, sans-serif">e :=C2=A0<a h=
ref=3D"mailto:mamtashukla555@gmail.com" target=3D"_blank">mamtashukla555@gm=
ail.com</a></font></div></div></div></div>

--000000000000381dc20578068135--

