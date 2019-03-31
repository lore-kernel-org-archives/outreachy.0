X-GM-THRID: 6674450234072891392
X-Received: by 2002:ac2:51a1:: with SMTP id f1mr1506789lfk.13.1554023736928;
        Sun, 31 Mar 2019 02:15:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:998e:: with SMTP id w14ls782290lji.14.gmail; Sun, 31 Mar
 2019 02:15:36 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwxWBCiOqc8SbpzVEaym7Lpb9OwyNDyPwjIm6EKpfuBNeG15oV3kkWuDVVuRkmsv4nFrKv1
X-Received: by 2002:a2e:9cc9:: with SMTP id g9mr1507682ljj.25.1554023736092;
        Sun, 31 Mar 2019 02:15:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554023736; cv=none;
        d=google.com; s=arc-20160816;
        b=eBdHoyZdHinJxDkKtVltjaB8tuKJDx07yt5B+pBb0n2oMQP6dcUR1n74Sd2jkkzLq0
         qWA097gT47HJmzOOeyO3r8m493sCYEZlWBO0Ma5gxw82JDxynaP6cr++uTUjiTBIqsgm
         HWV1mWSIXX9Hf1OKVtVEjdpm57dqKZy1XQn2GQ8Z4kmsw7Ck2TDyrZrCglYVxUL51XqJ
         lbyyDUzKn5sw4Zr+BHr+NElQCNkq0QAKr15YtasHYAt1d3nyXRpWRogZm7gJRVMy/c1l
         4r6wHHTMDdPLXLAActAA62OnRTHZsfW9h48JRBjRpC9V9f7/R4JZWBc6dvxt42ZWbhKD
         Y2eQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=nqWZPFd0GKDgq5R+WNTFjO1TZSrD18MW+7ngweYGRYk=;
        b=HaiVllAv9wxBrmRFRfSJKJTq2YvI6MBhrbx8Lu3+qiEEQYGvxAlOKyjfeI281XQni3
         402OUjaJefq7o+h0kxEuexnWWhkdo7OmUmWCH19DIOpfiRvEm3fUQR7XgLQ0D6RcS/Ld
         L4TN1oueS3eur6oN/m3CLMntPkPr9yYEwI3PsAXf7NTEAuxxEnp3hJaY5Ylk0rm51QkG
         80eXCHddy/aXIwAcw4LWQT1o/Bao5c1fpH9fzH7L4Dx8RcTSMYhwj6IsyvktzqdSHC07
         LZvVqtmi4AgcX9tqmqcDl2ERZyTYB6Bh32No5VQe+BTqy+cUWImb03qXBU5u3YRw1DUw
         1h+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LNhjKbK8;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com. [2a00:1450:4864:20::242])
        by gmr-mx.google.com with ESMTPS id y1si419114lfe.1.2019.03.31.02.15.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 02:15:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) client-ip=2a00:1450:4864:20::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LNhjKbK8;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x242.google.com with SMTP id h21so5403675ljk.13
        for <outreachy-kernel@googlegroups.com>; Sun, 31 Mar 2019 02:15:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=nqWZPFd0GKDgq5R+WNTFjO1TZSrD18MW+7ngweYGRYk=;
        b=LNhjKbK85d0/uvs15KAoPqqCM8wLPACPLUIlcfCaiUSrY8CaRAugwYTnzO26a9XATe
         VIz0TIT9/VHP5EiahVrL7euEl+XhKhqWL+Z93t9eYi86/5/OGTKMIaCi1TgIhaq1EWTZ
         apTrzVIC0O0uGajN9ZsjM/VDUVfNtcVTku8HOYc1o+Y7IwaBkr6Frg1i9JbGExqjbecz
         YMAv1kQIFP3T5h+hMe6niIPcDDIpRlwszqakVQgLOn7DU1t36N+jeMd6pEhUxg61swLS
         bLU7SKwQFADfgtUTWb+NpX1z72D/PG+kSgIa7Z4LiJnAZcP21Wfc57UBjkFz9s0EPk87
         9KDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=nqWZPFd0GKDgq5R+WNTFjO1TZSrD18MW+7ngweYGRYk=;
        b=mTUFE0YVBVROUoTv+uf76OEBonaYmGhOBeMKK55oQs7FYs0KIcWKYdqRPlGJ7l2xi4
         JcWeMqYMtp2e6neZPSo3o9BVvOCc7p/b+wNY3d0HF0a6OgmrjFjn1Ec48upyDh8Z3y1y
         0WnCDXwjEPMN+SvJ1frRF0MQmBILLRlSooWL7KBiMFkOsy02WQ6L1dWFw+Et8T5wNssa
         E2lvg/o/sDWuQMMhq7TX1KRNRjbvWbXVrueDEW7lsxPX9HGVYCEfwzPpduOIvxU16HI6
         hWWBvP43KFThpMPyiS7iSACzxtwiYimxJD8lUXgIPAikpLCeoc0K0ZIznT+QoP89YIs0
         6NuQ==
X-Gm-Message-State: APjAAAVWBWNmOKy3PraKLGwVicsjLkLejIORRQKCHWuTElCKQV7CPueV
	Fx2amXcjls//TOkiRTvgmgu0MKx40IPL51ZnmWQ=
X-Received: by 2002:a2e:3803:: with SMTP id f3mr1305405lja.165.1554023735906;
 Sun, 31 Mar 2019 02:15:35 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1554016131.git.payal.s.kshirsagar.98@gmail.com>
 <2494c4c09f776e7c9b4c80bbeea8d8973a5b69e4.1554016131.git.payal.s.kshirsagar.98@gmail.com>
 <alpine.DEB.2.21.1903311102330.2578@hadrien>
In-Reply-To: <alpine.DEB.2.21.1903311102330.2578@hadrien>
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Date: Sun, 31 Mar 2019 14:45:23 +0530
Message-ID: <CANTOzWHvQrHsfvf9ED2v6YCF5G2f9H3NbNU=k-bZ3JWsTvj7kA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 8/9] staging: rtl8723bs: os_dep:
 ioctl_linux.c: Avoid CamelCase "pPMK"
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000c055550585605805"

--000000000000c055550585605805
Content-Type: text/plain; charset="UTF-8"

On Sun, 31 Mar 2019 at 14:33, Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Sun, 31 Mar 2019, Payal Kshirsagar wrote:
>
> > Change variable name "pPMK" to "PMK"
> > to avoid camelcase style issue.
>
> The p is actually hungarian notation.
>
> It would be good to lowercase the variable as well (pmk).  Normally only
> macros are in all upper case.
>

Okay I will send v2 for this patchset with corrections.
thanks,
payal

julia
>
> >
> > Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> > ---
> >  drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 14 +++++++-------
> >  1 file changed, 7 insertions(+), 7 deletions(-)
> >
> > diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> > index 9f085a3..fbde2eb 100644
> > --- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> > +++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> > @@ -946,7 +946,7 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
> >       u8 j, bl_inserted = false;
> >       int ret = false;
> >       struct security_priv *psecuritypriv = &padapter->securitypriv;
> > -     struct iw_pmksa *pPMK = (struct iw_pmksa *)extra;
> > +     struct iw_pmksa *PMK = (struct iw_pmksa *)extra;
> >       u8 strZeroMacAddress[ETH_ALEN] = { 0x00 };
> >       u8 strIssueBssid[ETH_ALEN] = { 0x00 };
> >
> > @@ -957,8 +957,8 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
> >       If cmd is IW_PMKSA_REMOVE, it means the wpa_supplicant wants to
> remove a PMKID/BSSID from driver.
> >       */
> >
> > -     memcpy(strIssueBssid, pPMK->bssid.sa_data, ETH_ALEN);
> > -     if (pPMK->cmd == IW_PMKSA_ADD) {
> > +     memcpy(strIssueBssid, PMK->bssid.sa_data, ETH_ALEN);
> > +     if (PMK->cmd == IW_PMKSA_ADD) {
> >               DBG_871X("[rtw_wx_set_pmkid] IW_PMKSA_ADD!\n");
> >               if (!memcmp(strIssueBssid, strZeroMacAddress, ETH_ALEN))
> >                       return ret;
> > @@ -972,7 +972,7 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
> >                       if (!memcmp(psecuritypriv->PMKIDList[j].Bssid,
> strIssueBssid, ETH_ALEN)) {
> >                               /*  BSSID is matched, the same AP =>
> rewrite with new PMKID. */
> >                               DBG_871X("[rtw_wx_set_pmkid] BSSID exists
> in the PMKList.\n");
> > -                             memcpy(psecuritypriv->PMKIDList[j].PMKID,
> pPMK->pmkid, IW_PMKID_LEN);
> > +                             memcpy(psecuritypriv->PMKIDList[j].PMKID,
> PMK->pmkid, IW_PMKID_LEN);
> >                               psecuritypriv->PMKIDList[j].bUsed = true;
> >                               psecuritypriv->PMKIDIndex = j+1;
> >                               bl_inserted = true;
> > @@ -985,13 +985,13 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
> >                       DBG_871X("[rtw_wx_set_pmkid] Use the new entry
> index = %d for this PMKID.\n",
> >                                 psecuritypriv->PMKIDIndex);
> >
>  memcpy(psecuritypriv->PMKIDList[psecuritypriv->PMKIDIndex].Bssid,
> strIssueBssid, ETH_ALEN);
> > -
>  memcpy(psecuritypriv->PMKIDList[psecuritypriv->PMKIDIndex].PMKID,
> pPMK->pmkid, IW_PMKID_LEN);
> > +
>  memcpy(psecuritypriv->PMKIDList[psecuritypriv->PMKIDIndex].PMKID,
> PMK->pmkid, IW_PMKID_LEN);
> >
>  psecuritypriv->PMKIDList[psecuritypriv->PMKIDIndex].bUsed = true;
> >                       psecuritypriv->PMKIDIndex++;
> >                       if (psecuritypriv->PMKIDIndex == 16)
> >                               psecuritypriv->PMKIDIndex = 0;
> >               }
> > -     } else if (pPMK->cmd == IW_PMKSA_REMOVE) {
> > +     } else if (PMK->cmd == IW_PMKSA_REMOVE) {
> >               DBG_871X("[rtw_wx_set_pmkid] IW_PMKSA_REMOVE!\n");
> >               ret = true;
> >               for (j = 0 ; j<NUM_PMKID_CACHE; j++) {
> > @@ -1002,7 +1002,7 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
> >                               break;
> >                       }
> >               }
> > -     } else if (pPMK->cmd == IW_PMKSA_FLUSH) {
> > +     } else if (PMK->cmd == IW_PMKSA_FLUSH) {
> >               DBG_871X("[rtw_wx_set_pmkid] IW_PMKSA_FLUSH!\n");
> >               memset(&psecuritypriv->PMKIDList[0], 0x00,
> sizeof(RT_PMKID_LIST) * NUM_PMKID_CACHE);
> >               psecuritypriv->PMKIDIndex = 0;
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
> https://groups.google.com/d/msgid/outreachy-kernel/2494c4c09f776e7c9b4c80bbeea8d8973a5b69e4.1554016131.git.payal.s.kshirsagar.98%40gmail.com
> .
> > For more options, visit https://groups.google.com/d/optout.
> >
>

--000000000000c055550585605805
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Sun, 31 Mar 2019 at 14:33, Julia L=
awall &lt;<a href=3D"mailto:julia.lawall@lip6.fr">julia.lawall@lip6.fr</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><br>
<br>
On Sun, 31 Mar 2019, Payal Kshirsagar wrote:<br>
<br>
&gt; Change variable name &quot;pPMK&quot; to &quot;PMK&quot;<br>
&gt; to avoid camelcase style issue.<br>
<br>
The p is actually hungarian notation.<br>
<br>
It would be good to lowercase the variable as well (pmk).=C2=A0 Normally on=
ly<br>
macros are in all upper case.<br></blockquote><div><br></div><div>Okay I wi=
ll send v2 for this patchset with corrections.</div><div>thanks,</div><div>=
payal</div><div><br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
>
julia<br>
<br>
&gt;<br>
&gt; Signed-off-by: Payal Kshirsagar &lt;<a href=3D"mailto:payal.s.kshirsag=
ar.98@gmail.com" target=3D"_blank">payal.s.kshirsagar.98@gmail.com</a>&gt;<=
br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 14 +++++++-----=
--<br>
&gt;=C2=A0 1 file changed, 7 insertions(+), 7 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/=
staging/rtl8723bs/os_dep/ioctl_linux.c<br>
&gt; index 9f085a3..fbde2eb 100644<br>
&gt; --- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c<br>
&gt; +++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c<br>
&gt; @@ -946,7 +946,7 @@ static int rtw_wx_set_pmkid(struct net_device *dev=
,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u8 j, bl_inserted =3D false;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0int ret =3D false;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct security_priv *psecuritypriv =3D &amp=
;padapter-&gt;securitypriv;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0struct iw_pmksa *pPMK =3D (struct iw_pmksa *)extr=
a;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0struct iw_pmksa *PMK =3D (struct iw_pmksa *)extra=
;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u8 strZeroMacAddress[ETH_ALEN] =3D { 0x00 };=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u8 strIssueBssid[ETH_ALEN] =3D { 0x00 };<br>
&gt;<br>
&gt; @@ -957,8 +957,8 @@ static int rtw_wx_set_pmkid(struct net_device *dev=
,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0If cmd is IW_PMKSA_REMOVE, it means the wpa_=
supplicant wants to remove a PMKID/BSSID from driver.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0*/<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0memcpy(strIssueBssid, pPMK-&gt;bssid.sa_data, ETH=
_ALEN);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (pPMK-&gt;cmd =3D=3D IW_PMKSA_ADD) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0memcpy(strIssueBssid, PMK-&gt;bssid.sa_data, ETH_=
ALEN);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (PMK-&gt;cmd =3D=3D IW_PMKSA_ADD) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0DBG_871X(&quot;[=
rtw_wx_set_pmkid] IW_PMKSA_ADD!\n&quot;);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (!memcmp(strI=
ssueBssid, strZeroMacAddress, ETH_ALEN))<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0return ret;<br>
&gt; @@ -972,7 +972,7 @@ static int rtw_wx_set_pmkid(struct net_device *dev=
,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0if (!memcmp(psecuritypriv-&gt;PMKIDList[j].Bssid, strIssueBssi=
d, ETH_ALEN)) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/*=C2=A0 BSSID is matched, the sam=
e AP =3D&gt; rewrite with new PMKID. */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0DBG_871X(&quot;[rtw_wx_set_pmkid] =
BSSID exists in the PMKList.\n&quot;);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0memcpy(psecuritypriv-&gt;PMKIDList[j].PM=
KID, pPMK-&gt;pmkid, IW_PMKID_LEN);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0memcpy(psecuritypriv-&gt;PMKIDList[j].PM=
KID, PMK-&gt;pmkid, IW_PMKID_LEN);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0psecuritypriv-&gt;PMKIDList[j].bUs=
ed =3D true;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0psecuritypriv-&gt;PMKIDIndex =3D j=
+1;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bl_inserted =3D true;<br>
&gt; @@ -985,13 +985,13 @@ static int rtw_wx_set_pmkid(struct net_device *d=
ev,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0DBG_871X(&quot;[rtw_wx_set_pmkid] Use the new entry index =3D =
%d for this PMKID.\n&quot;,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0psecuritypriv-&gt;PMKIDInde=
x);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0memcpy(psecuritypriv-&gt;PMKIDList[psecuritypriv-&gt;PMKIDInde=
x].Bssid, strIssueBssid, ETH_ALEN);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0memcpy(psecuritypriv-&gt;PMKIDList[psecuritypriv-&gt;PMKIDIndex].PMK=
ID, pPMK-&gt;pmkid, IW_PMKID_LEN);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0memcpy(psecuritypriv-&gt;PMKIDList[psecuritypriv-&gt;PMKIDIndex].PMK=
ID, PMK-&gt;pmkid, IW_PMKID_LEN);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0psecuritypriv-&gt;PMKIDList[psecuritypriv-&gt;PMKIDIndex].bUse=
d =3D true;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0psecuritypriv-&gt;PMKIDIndex++;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0if (psecuritypriv-&gt;PMKIDIndex =3D=3D 16)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0psecuritypriv-&gt;PMKIDIndex =3D 0=
;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; -=C2=A0 =C2=A0 =C2=A0} else if (pPMK-&gt;cmd =3D=3D IW_PMKSA_REMOVE) {=
<br>
&gt; +=C2=A0 =C2=A0 =C2=A0} else if (PMK-&gt;cmd =3D=3D IW_PMKSA_REMOVE) {<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0DBG_871X(&quot;[=
rtw_wx_set_pmkid] IW_PMKSA_REMOVE!\n&quot;);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ret =3D true;<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0for (j =3D 0 ; j=
&lt;NUM_PMKID_CACHE; j++) {<br>
&gt; @@ -1002,7 +1002,7 @@ static int rtw_wx_set_pmkid(struct net_device *d=
ev,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0break;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; -=C2=A0 =C2=A0 =C2=A0} else if (pPMK-&gt;cmd =3D=3D IW_PMKSA_FLUSH) {<=
br>
&gt; +=C2=A0 =C2=A0 =C2=A0} else if (PMK-&gt;cmd =3D=3D IW_PMKSA_FLUSH) {<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0DBG_871X(&quot;[=
rtw_wx_set_pmkid] IW_PMKSA_FLUSH!\n&quot;);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0memset(&amp;psec=
uritypriv-&gt;PMKIDList[0], 0x00, sizeof(RT_PMKID_LIST) * NUM_PMKID_CACHE);=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0psecuritypriv-&g=
t;PMKIDIndex =3D 0;<br>
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
gle.com/d/msgid/outreachy-kernel/2494c4c09f776e7c9b4c80bbeea8d8973a5b69e4.1=
554016131.git.payal.s.kshirsagar.98%40gmail.com" rel=3D"noreferrer" target=
=3D"_blank">https://groups.google.com/d/msgid/outreachy-kernel/2494c4c09f77=
6e7c9b4c80bbeea8d8973a5b69e4.1554016131.git.payal.s.kshirsagar.98%40gmail.c=
om</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/optout</a=
>.<br>
&gt;<br>
</blockquote></div></div>

--000000000000c055550585605805--

