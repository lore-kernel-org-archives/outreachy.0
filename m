X-GM-THRID: 6674450234072891392
X-Received: by 2002:a1c:4803:: with SMTP id v3mr828695wma.12.1554023578409;
        Sun, 31 Mar 2019 02:12:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:b406:: with SMTP id d6ls881705wmf.2.canary-gmail; Sun,
 31 Mar 2019 02:12:57 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzG6QGWCo+o5/FKAxs9cCSIUMV6AMh6ECufARlqWbtjucG7SJTCCEZhI0GPmoTfp3npWWE8
X-Received: by 2002:a1c:3cc3:: with SMTP id j186mr899630wma.5.1554023577298;
        Sun, 31 Mar 2019 02:12:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554023577; cv=none;
        d=google.com; s=arc-20160816;
        b=nm2ItOaPLBK/5luc+obMnjMxrCm4Pfc0RHKmPVr5DLA8CTrFhkH98KCN+LDLmSp2Vi
         lmEFZk3v74Jw2V6K2vNNdjPdysnJNOg5Jieh5OIlfAdljutRVe99CgHycZqcsEevpjh3
         cdv/uL93UsbOctdb49d6//gJKkdNqWk/7KZZVFLEpSsQ7sATNRmyOh4k6NVoavIIQOTH
         qPGhwZACRmifqHjdjHyvVBQQ/fnBJhmvJQjtcxzM1hmOw69xnNnL+aZUQmtjNmOYgrQl
         xT3C/V/hp6D2qz4hmH3nC0HeCVjLSFDgInSVH9NFXiC6c1MhFQdwR1UqneWr7pQ7Cnxg
         zSWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=8rEw9CWxWceKjq3J/POXUMN0kDNjSId5MPsQlt3Rx5s=;
        b=w7m244hk0B8qdRW0Ws68To2rdA1DL73igI0vKsqroauZ10pUTL+/DnNXSUH02SELl4
         LCfgMknO9VoO3YQ08oqEk9x7OjadXYrUwrcaKIPv3w8ot+oUGDxL5wZjkRzckQL2kBFH
         bYdaa6Nth+50zYtO/nJSu2BPkpQQVJ5vDmuU4LXsWh+aNm21/QtibJVPs5JgihDd/QIW
         D4pKM6vuY4WEhvhSyhCZ8EgeSLJ+7qQJtER2gXnrwtq7gZSpOcbUemICyew7szkXNlj/
         0U/uSSWNOtuAKPGDgsUNzj3h5JQ8//HfAFYBLKC/X4g652FkeWPFz7COIZzmA6aI5jyX
         VHbQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eSCM7zu3;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-lf1-x142.google.com (mail-lf1-x142.google.com. [2a00:1450:4864:20::142])
        by gmr-mx.google.com with ESMTPS id u6si316486wrw.2.2019.03.31.02.12.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 02:12:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::142 as permitted sender) client-ip=2a00:1450:4864:20::142;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eSCM7zu3;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf1-x142.google.com with SMTP id g7so4146329lfh.10
        for <outreachy-kernel@googlegroups.com>; Sun, 31 Mar 2019 02:12:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=8rEw9CWxWceKjq3J/POXUMN0kDNjSId5MPsQlt3Rx5s=;
        b=eSCM7zu3eGjRXAsBb3Xlqp3tOItlPjbhFGDAjNAwoOpO7IsBq7Ym+6+NpelUI9wNU9
         wvxfKFDdhkr/YURbEMEDbJQ/ACpgGWB7C5Sx5CHU9R+x+IFH31NtLDWlPFSYC7njZqDs
         p3EonDU4YhBNTjta9j8SjyEOPykrq9G+AAIsA6EA2Pcb1iiWt8y61UPBxYGavvCyMfHw
         WSB2RfAlYBL05T7WuMjMdzhJHWsGj8A3o35OqzkBV/p9r7Frw15Fnwg/DijGzspz8ssE
         tpwPO1pswp1+1WWkcLNBPTSqxH1DtuOaS/ruTd7/494cGkD7OeZnKBS0u6MibqWxbpd7
         mlKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=8rEw9CWxWceKjq3J/POXUMN0kDNjSId5MPsQlt3Rx5s=;
        b=Ve4PXczMvYVKaJIOA9DvgYfSNxXEsAUx9WJIJTHqqZZnhavaC13WtoLdFsHk1d3yq5
         EH+I+NB98EU8wLk5WNt6M8crxOQ80iFWU98G8+v+vhND1ZIrSxgnze0y3gWds+8WwnwC
         kYlg7rdHl06jU0uPCCb5PtOtbxQZk5hK/+4Yk6Qxevs9BqYv3ERnTRNwr/vrj2R1cPpZ
         LNZsRtbxcuoiyhagdBa2pHSvZjobis6PHr1eSo0PDpJS1BmrTR/dCDQchyvssowY63b2
         OYpIR4GeVR/ICH1svlK9fKwBmNne1Ih9Gfp7GxvZgp/8I6vU53UDA+8XQyyoKAbtPVkJ
         tesA==
X-Gm-Message-State: APjAAAVOhijTSWw1gZCMLes/1qy4tsKL/uOF35ELRn8QzXcasBdVNglW
	bvQ/kLVPnJG7OwgBQJM3SrYyv/xXPdeovVUA2TI=
X-Received: by 2002:ac2:4561:: with SMTP id k1mr24822990lfm.95.1554023576802;
 Sun, 31 Mar 2019 02:12:56 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1554016131.git.payal.s.kshirsagar.98@gmail.com>
 <97ba5a38e386011ce2c46eb9668d44ef257da020.1554016131.git.payal.s.kshirsagar.98@gmail.com>
 <alpine.DEB.2.21.1903311103540.2578@hadrien>
In-Reply-To: <alpine.DEB.2.21.1903311103540.2578@hadrien>
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Date: Sun, 31 Mar 2019 14:42:44 +0530
Message-ID: <CANTOzWGW=3Yg4j5-EQFjuU0ft-61Xd4_XH+FCSmhhwACj2Yqhg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 6/9] staging: rtl8723bs: os_dep:
 ioctl_linux.c: Avoid CamelCase "intReturn"
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="0000000000004499cc0585604fb3"

--0000000000004499cc0585604fb3
Content-Type: text/plain; charset="UTF-8"

On Sun, 31 Mar 2019 at 14:34, Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Sun, 31 Mar 2019, Payal Kshirsagar wrote:
>
> > Change variable name "intReturn" to "ret" to avoid camelcase style
> > issue.
>
> This is hungarian notation too.  Using ret was a good idea.
>

Thank you :)
payal


> julia
>
> >
> > Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> > ---
> >  drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 12 ++++++------
> >  1 file changed, 6 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> > index 99e02c4..98a91ce 100644
> > --- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> > +++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> > @@ -944,7 +944,7 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
> >  {
> >       struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
> >       u8 j, bl_inserted = false;
> > -     int intReturn = false;
> > +     int ret = false;
> >       struct security_priv *psecuritypriv = &padapter->securitypriv;
> >       struct iw_pmksa *pPMK = (struct iw_pmksa *)extra;
> >       u8 strZeroMacAddress[ETH_ALEN] = { 0x00 };
> > @@ -961,9 +961,9 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
> >       if (pPMK->cmd == IW_PMKSA_ADD) {
> >               DBG_871X("[rtw_wx_set_pmkid] IW_PMKSA_ADD!\n");
> >               if (!memcmp(strIssueBssid, strZeroMacAddress, ETH_ALEN))
> > -                     return intReturn;
> > +                     return ret;
> >               else
> > -                     intReturn = true;
> > +                     ret = true;
> >
> >               bl_inserted = false;
> >
> > @@ -993,7 +993,7 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
> >               }
> >       } else if (pPMK->cmd == IW_PMKSA_REMOVE) {
> >               DBG_871X("[rtw_wx_set_pmkid] IW_PMKSA_REMOVE!\n");
> > -             intReturn = true;
> > +             ret = true;
> >               for (j = 0 ; j<NUM_PMKID_CACHE; j++) {
> >                       if (!memcmp(psecuritypriv->PMKIDList[j].Bssid,
> strIssueBssid, ETH_ALEN)) {
> >                               /*  BSSID is matched, the same AP =>
> Remove this PMKID information and reset it. */
> > @@ -1006,9 +1006,9 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
> >               DBG_871X("[rtw_wx_set_pmkid] IW_PMKSA_FLUSH!\n");
> >               memset(&psecuritypriv->PMKIDList[0], 0x00,
> sizeof(RT_PMKID_LIST) * NUM_PMKID_CACHE);
> >               psecuritypriv->PMKIDIndex = 0;
> > -             intReturn = true;
> > +             ret = true;
> >       }
> > -     return intReturn;
> > +     return ret;
> >  }
> >
> >  static int rtw_wx_get_sens(struct net_device *dev,
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
> https://groups.google.com/d/msgid/outreachy-kernel/97ba5a38e386011ce2c46eb9668d44ef257da020.1554016131.git.payal.s.kshirsagar.98%40gmail.com
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
> https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1903311103540.2578%40hadrien
> .
> For more options, visit https://groups.google.com/d/optout.
>

--0000000000004499cc0585604fb3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Sun, 31 Mar 2019 at 14:34, Julia L=
awall &lt;<a href=3D"mailto:julia.lawall@lip6.fr">julia.lawall@lip6.fr</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><br>
<br>
On Sun, 31 Mar 2019, Payal Kshirsagar wrote:<br>
<br>
&gt; Change variable name &quot;intReturn&quot; to &quot;ret&quot; to avoid=
 camelcase style<br>
&gt; issue.<br>
<br>
This is hungarian notation too.=C2=A0 Using ret was a good idea.<br></block=
quote><div><br></div><div>Thank you :)</div><div>payal<br></div><div>=C2=A0=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex">
julia<br>
<br>
&gt;<br>
&gt; Signed-off-by: Payal Kshirsagar &lt;<a href=3D"mailto:payal.s.kshirsag=
ar.98@gmail.com" target=3D"_blank">payal.s.kshirsagar.98@gmail.com</a>&gt;<=
br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 12 ++++++------=
<br>
&gt;=C2=A0 1 file changed, 6 insertions(+), 6 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/=
staging/rtl8723bs/os_dep/ioctl_linux.c<br>
&gt; index 99e02c4..98a91ce 100644<br>
&gt; --- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c<br>
&gt; +++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c<br>
&gt; @@ -944,7 +944,7 @@ static int rtw_wx_set_pmkid(struct net_device *dev=
,<br>
&gt;=C2=A0 {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct adapter *padapter =3D (struct adapter=
 *)rtw_netdev_priv(dev);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u8 j, bl_inserted =3D false;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0int intReturn =3D false;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0int ret =3D false;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct security_priv *psecuritypriv =3D &amp=
;padapter-&gt;securitypriv;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct iw_pmksa *pPMK =3D (struct iw_pmksa *=
)extra;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u8 strZeroMacAddress[ETH_ALEN] =3D { 0x00 };=
<br>
&gt; @@ -961,9 +961,9 @@ static int rtw_wx_set_pmkid(struct net_device *dev=
,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (pPMK-&gt;cmd =3D=3D IW_PMKSA_ADD) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0DBG_871X(&quot;[=
rtw_wx_set_pmkid] IW_PMKSA_ADD!\n&quot;);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (!memcmp(strI=
ssueBssid, strZeroMacAddress, ETH_ALEN))<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0return intReturn;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0return ret;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0else<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0intReturn =3D true;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0ret =3D true;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bl_inserted =3D =
false;<br>
&gt;<br>
&gt; @@ -993,7 +993,7 @@ static int rtw_wx_set_pmkid(struct net_device *dev=
,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0} else if (pPMK-&gt;cmd =3D=3D IW_PMKSA_REMO=
VE) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0DBG_871X(&quot;[=
rtw_wx_set_pmkid] IW_PMKSA_REMOVE!\n&quot;);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0intReturn =3D true;<b=
r>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ret =3D true;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0for (j =3D 0 ; j=
&lt;NUM_PMKID_CACHE; j++) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0if (!memcmp(psecuritypriv-&gt;PMKIDList[j].Bssid, strIssueBssi=
d, ETH_ALEN)) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/*=C2=A0 BSSID is matched, the sam=
e AP =3D&gt; Remove this PMKID information and reset it. */<br>
&gt; @@ -1006,9 +1006,9 @@ static int rtw_wx_set_pmkid(struct net_device *d=
ev,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0DBG_871X(&quot;[=
rtw_wx_set_pmkid] IW_PMKSA_FLUSH!\n&quot;);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0memset(&amp;psec=
uritypriv-&gt;PMKIDList[0], 0x00, sizeof(RT_PMKID_LIST) * NUM_PMKID_CACHE);=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0psecuritypriv-&g=
t;PMKIDIndex =3D 0;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0intReturn =3D true;<b=
r>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ret =3D true;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; -=C2=A0 =C2=A0 =C2=A0return intReturn;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0return ret;<br>
&gt;=C2=A0 }<br>
&gt;<br>
&gt;=C2=A0 static int rtw_wx_get_sens(struct net_device *dev,<br>
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
gle.com/d/msgid/outreachy-kernel/97ba5a38e386011ce2c46eb9668d44ef257da020.1=
554016131.git.payal.s.kshirsagar.98%40gmail.com" rel=3D"noreferrer" target=
=3D"_blank">https://groups.google.com/d/msgid/outreachy-kernel/97ba5a38e386=
011ce2c46eb9668d44ef257da020.1554016131.git.payal.s.kshirsagar.98%40gmail.c=
om</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/optout</a=
>.<br>
&gt;<br>
<br>
-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;outreachy-kernel&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.com" =
target=3D"_blank">outreachy-kernel+unsubscribe@googlegroups.com</a>.<br>
To post to this group, send email to <a href=3D"mailto:outreachy-kernel@goo=
glegroups.com" target=3D"_blank">outreachy-kernel@googlegroups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/outreachy-kernel/alpine.DEB.2.21.1903311103540.2578%40hadrien" r=
el=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/msgid/outre=
achy-kernel/alpine.DEB.2.21.1903311103540.2578%40hadrien</a>.<br>
For more options, visit <a href=3D"https://groups.google.com/d/optout" rel=
=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/optout</a>.<b=
r>
</blockquote></div></div>

--0000000000004499cc0585604fb3--

