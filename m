X-GM-THRID: 6668944264527872000
X-Received: by 2002:a25:4250:: with SMTP id p77mr4123988yba.22.1552739884966;
        Sat, 16 Mar 2019 05:38:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:4f56:: with SMTP id d83ls2395847ybb.4.gmail; Sat, 16 Mar
 2019 05:38:04 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzXydAwXoBzitLf1HoEaWPBxAEOubkDK/NR4RwIAioC/rImXU/4n37qYnSLXhsGIsg808Vr
X-Received: by 2002:a25:ab14:: with SMTP id u20mr4129323ybi.29.1552739884031;
        Sat, 16 Mar 2019 05:38:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552739884; cv=none;
        d=google.com; s=arc-20160816;
        b=eq0KakU1ucvsyjCmOGQcnPWdr16YVSYcYqH9AryZrY23VHXZvDWQ2jBI5HJIJU9N04
         xJ6nbjFDnmmnBBU/Eo7Wun9/YXNOY6+xPwugBB2sh71UT0aTfRL2VyrR5NGXMGLaolJa
         AonETlNrjs8VxQ3l08R1XsLvuk+CS+jBAeD9F3IS54+JoDnVWL0/WJYqQjPo6dV+lfes
         ek+aNZ4v2ZEmvIWcRLwJ3TXaaViXgBiqqGfxxh0KlS1BwOiIid/qwO7SzCK3qgLMlFZy
         b6r8nnuX8Kgqy38dTs7pnfBOok4YoQ/E9ng8XdS/JlNZVdRiVy0+sky9EP4b/xgqf6kS
         vagA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=dyfII2NX8xmJNI59eDktquC2AJxcFtgyQWecphpkw9Y=;
        b=dE6YUv3+YHSGxILzpeKYRInl1omBz6NkTVBig5kyXT/UhCvTNzsODzeATOoC1uHhEP
         gobmaNXoEHhIxKWLFRSPL3WYBoaMIcZUSRjjz6gafWmhY67k7SmWPvLMakL3Zn/LzXSc
         p3aiW0rtfaeNuSoGaSCjz8GblaOHJOwilnnixclmD43+fL3YNx5Q8ZNTWh8FFC3x/9eU
         UjEnLNOCHkestgjmGxfD4Zp0H3mcPhLI49UGzq0cC4tMSvlRYqOhDavflU/OvE2FBr0s
         8jRfO/UcFZVWkrejhTg8tpJxyuWgAMlS9uTP5p+Ry6a+nRj7/E4vEy6rxsK9Luy7dBkN
         ZKjg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=e0CQFLnl;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id e23si241996ybb.1.2019.03.16.05.38.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 05:38:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=e0CQFLnl;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x343.google.com with SMTP id v62so10717476otb.3
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Mar 2019 05:38:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=dyfII2NX8xmJNI59eDktquC2AJxcFtgyQWecphpkw9Y=;
        b=e0CQFLnlbObKu8egGjgMt+Z5wWXrpgc+jOfvhBsdVvdyKpJZU08aNY5pvGF621pA/X
         pxXVqWEG8V7kJ81Tklrzam4L310ThSobZNesB5N3Pcx0t7w6s6mk6VudS8CFpDDKk7Wo
         TWLXVL52uAe4iI+pQHl1TS/omloKQbHBN86S7uvCBcjzHaO5HnMQ9eHT6wrPid9jXL++
         TlHIMslu1yX413OppcmyfUu+NBWa6yO6FqrWpClarnK005uQwBhIbi3DfdzhfsFbnwY1
         NS580cTG9EDbcE+r18CTnQn1jcmWXg89ag4XZSwF7ugSNXvvYjdgqrQkp3Z6zPaYC9BN
         0/Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=dyfII2NX8xmJNI59eDktquC2AJxcFtgyQWecphpkw9Y=;
        b=PJlVYsqGzueLWxZb2eFG1PKVvdStjUuPdZn7YZKjAQHdHLDxExJKP7sRdUkNeGOisw
         30lAEA2QlEhC9Q8TYXNh4oYGaRBi7dcMmxETxPmSRqBUN7EuHBWxF6ri5Qu0ICjmBaaa
         O9Nc00TBrRH87NUh2oL4Xd7Sq/q7oNeakUodd7I2af26Gwu/DuFiWmUdBMMGhfFgUdh3
         Ba2WQK9/eAuo3toA8k31mUJUbIYyGGlbsIf4g8daghJKRy0hIkDzmQH/wPYw9mW8meYC
         ZnabmUa3qPclL0aJPsqRJEEh+WseZgc9cSumkD3v88QfTzPE7emfvQy6ovLOR3Bsq6kS
         eCgg==
X-Gm-Message-State: APjAAAUuQnmhWO6pMbldaUpsbkDvL7C28ktwMLnkXoV+hr8Dn5tp6VYp
	4q7MFKctCVDoYvNYhWHNqKyNW7IFmwZBLomyepO3UA==
X-Received: by 2002:a05:6830:11d5:: with SMTP id v21mr818885otq.165.1552739883340;
 Sat, 16 Mar 2019 05:38:03 -0700 (PDT)
MIME-Version: 1.0
References: <20190316102759.20272-1-himadri18.07@gmail.com>
 <20190316102759.20272-4-himadri18.07@gmail.com> <alpine.DEB.2.21.1903161317440.2487@hadrien>
 <CAPnhUpYy8H7h-0UqK6fu+Kjd9mSMCkXJ87W7kJJYqhX4AZSrZg@mail.gmail.com> <alpine.DEB.2.21.1903161334160.2487@hadrien>
In-Reply-To: <alpine.DEB.2.21.1903161334160.2487@hadrien>
From: Himadri Pandya <himadri18.07@gmail.com>
Date: Sat, 16 Mar 2019 18:07:50 +0530
Message-ID: <CAPnhUpZs9M9ph9pfN2HFuBbMjFMio+hG=g5oWWCg1nEr9+6C_g@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 3/3] staging: rtl8723bs: hal: Remove
 comparision to NULL
To: Julia Lawall <Julia.Lawall@lip6.fr>
Cc: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="0000000000002cd5ea0584356dd4"

--0000000000002cd5ea0584356dd4
Content-Type: text/plain; charset="UTF-8"

On Sat, 16 Mar, 2019, 6:05 PM Julia Lawall, <julia.lawall@lip6.fr> wrote:

>
>
> On Sat, 16 Mar 2019, Himadri Pandya wrote:
>
> >
> >
> > On Sat, 16 Mar, 2019, 5:48 PM Julia Lawall, <julia.lawall@lip6.fr>
> wrote:
> >
> >
> >       On Sat, 16 Mar 2019, Himadri Pandya wrote:
> >
> >       > Remove comparision to NULL. Suggested by Coccinelle.
> >       >
> >       > Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
> >       > ---
> >       >  drivers/staging/rtl8723bs/hal/hal_btcoex.c | 8 ++++----
> >       >  drivers/staging/rtl8723bs/hal/hal_com.c    | 8 ++++----
> >       >  2 files changed, 8 insertions(+), 8 deletions(-)
> >       >
> >       > diff --git a/drivers/staging/rtl8723bs/hal/hal_btcoex.c
> b/drivers/staging/rtl8723bs/hal/hal_btcoex.c
> >       > index 2b43f6d3c762..8eb28f97ebcc 100644
> >       > --- a/drivers/staging/rtl8723bs/hal/hal_btcoex.c
> >       > +++ b/drivers/staging/rtl8723bs/hal/hal_btcoex.c
> >       > @@ -75,7 +75,7 @@ static BTCDBGINFO GLBtcDbgInfo;
> >       >
> >       >  static void DBG_BT_INFO_INIT(PBTCDBGINFO pinfo, u8 *pbuf, u32
> size)
> >       >  {
> >       > -     if (NULL == pinfo)
> >       > +     if (!pinfo)
> >       >               return;
> >       >
> >       >       memset(pinfo, 0, sizeof(BTCDBGINFO));
> >       > @@ -95,7 +95,7 @@ void DBG_BT_INFO(u8 *dbgmsg)
> >       >
> >       >       pinfo = &GLBtcDbgInfo;
> >       >
> >       > -     if (NULL == pinfo->info)
> >       > +     if (!pinfo->info)
> >       >               return;
> >       >
> >       >       msglen = strlen(dbgmsg);
> >       > @@ -1571,7 +1571,7 @@ void hal_btcoex_SetDBG(struct adapter
> *padapter, u32 *pDbgModule)
> >       >       u32 i;
> >       >
> >       >
> >       > -     if (NULL == pDbgModule)
> >       > +     if (!pDbgModule)
> >       >               return;
> >       >
> >       >       for (i = 0; i < BTC_MSG_MAX; i++)
> >       > @@ -1585,7 +1585,7 @@ u32 hal_btcoex_GetDBG(struct adapter
> *padapter, u8 *pStrBuf, u32 bufSize)
> >       >       u32 leftSize;
> >       >
> >       >
> >       > -     if ((NULL == pStrBuf) || (0 == bufSize))
> >       > +     if (!pStrBuf || (0 == bufSize))
> >
> >       It's another issue, so not for this patch, but the kernel prefers
> >       constants on the right.
> >
> >       julia
> >
> >
> > I couldn't understand. Should I resend this patch as well? Or it should
> not be part of this patchset?
> >
> > Constants on the right means "pStrBuf == NULL" instead of "NULL ==
> pStrBuf", right? In that case, if I'm removing the comparison itself, I
> guess it is okay. Please correct me if I'm mistaken.
>
> I was referring to the 0, actually, which is on the left.


Understood.

If you want to
> make that change too, then it would be another patch in this series.  But
> it's not obligatory, it was just an observation.
>
> julia
>

I'll do that. Thank you.

- Himadri


> >
> > Thank you.
> >
> > - Himadri
> >
> >
> >       >               return 0;
> >       >
> >       >       pstr = pStrBuf;
> >       > diff --git a/drivers/staging/rtl8723bs/hal/hal_com.c
> b/drivers/staging/rtl8723bs/hal/hal_com.c
> >       > index 7f8ec55b08f1..b97b53c34449 100644
> >       > --- a/drivers/staging/rtl8723bs/hal/hal_com.c
> >       > +++ b/drivers/staging/rtl8723bs/hal/hal_com.c
> >       > @@ -18,7 +18,7 @@ u8 rtw_hal_data_init(struct adapter *padapter)
> >       >       if (is_primary_adapter(padapter)) {     /* if
> (padapter->isprimary) */
> >       >               padapter->hal_data_sz = sizeof(struct
> hal_com_data);
> >       >               padapter->HalData = vzalloc(padapter->hal_data_sz);
> >       > -             if (padapter->HalData == NULL) {
> >       > +             if (!padapter->HalData) {
> >       >                       DBG_8192C("cannot alloc memory for HAL
> DATA\n");
> >       >                       return _FAIL;
> >       >               }
> >       > @@ -909,7 +909,7 @@ s32 c2h_evt_read_88xx(struct adapter
> *adapter, u8 *buf)
> >       >       int i;
> >       >       u8 trigger;
> >       >
> >       > -     if (buf == NULL)
> >       > +     if (!buf)
> >       >               goto exit;
> >       >
> >       >       trigger = rtw_read8(adapter, REG_C2HEVT_CLEAR);
> >       > @@ -982,7 +982,7 @@ void rtw_hal_update_sta_rate_mask(struct
> adapter *padapter, struct sta_info *pst
> >       >       u8 i, rf_type, limit;
> >       >       u32 tx_ra_bitmap;
> >       >
> >       > -     if (psta == NULL)
> >       > +     if (!psta)
> >       >               return;
> >       >
> >       >       tx_ra_bitmap = 0;
> >       > @@ -1407,7 +1407,7 @@ bool GetHexValueFromString(char *szStr,
> u32 *pu4bVal, u32 *pu4bMove)
> >       >       char *szScan = szStr;
> >       >
> >       >       /*  Check input parameter. */
> >       > -     if (szStr == NULL || pu4bVal == NULL || pu4bMove == NULL) {
> >       > +     if (!szStr || !pu4bVal || !pu4bMove) {
> >       >               DBG_871X("GetHexValueFromString(): Invalid input
> arguments! szStr: %p, pu4bVal: %p, pu4bMove: %p\n",
> >       >                        szStr, pu4bVal, pu4bMove);
> >       >               return false;
> >       > --
> >       > 2.17.1
> >       >
> >       > --
> >       > You received this message because you are subscribed to the
> Google Groups "outreachy-kernel" group.
> >       > To unsubscribe from this group and stop receiving emails from
> it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> >       > To post to this group, send email to
> outreachy-kernel@googlegroups.com.
> >       > To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/20190316102759.20272-4-himadri18.07%40gmail.com
> .
> >       > For more options, visit https://groups.google.com/d/optout.
> >       >
> >
> >       --
> >       You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> >       To unsubscribe from this group and stop receiving emails from it,
> send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> >       To post to this group, send email to
> outreachy-kernel@googlegroups.com.
> >       To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1903161317440.2487%40hadrien
> .
> >       For more options, visit https://groups.google.com/d/optout.
> >
> >
> >
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1903161334160.2487%40hadrien
> .
> For more options, visit https://groups.google.com/d/optout.
>

--0000000000002cd5ea0584356dd4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Sat, 16 Mar, 2019, 6:05 PM Julia Lawall, &lt;<a hre=
f=3D"mailto:julia.lawall@lip6.fr">julia.lawall@lip6.fr</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-lef=
t:1px #ccc solid;padding-left:1ex"><br>
<br>
On Sat, 16 Mar 2019, Himadri Pandya wrote:<br>
<br>
&gt;<br>
&gt;<br>
&gt; On Sat, 16 Mar, 2019, 5:48 PM Julia Lawall, &lt;<a href=3D"mailto:juli=
a.lawall@lip6.fr" target=3D"_blank" rel=3D"noreferrer">julia.lawall@lip6.fr=
</a>&gt; wrote:<br>
&gt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0On Sat, 16 Mar 2019, Himadri Pandya wrote:<b=
r>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Remove comparision to NULL. Suggested b=
y Coccinelle.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Signed-off-by: Himadri Pandya &lt;<a hr=
ef=3D"mailto:himadri18.07@gmail.com" target=3D"_blank" rel=3D"noreferrer">h=
imadri18.07@gmail.com</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; ---<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 drivers/staging/rtl8723bs/hal/hal=
_btcoex.c | 8 ++++----<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 drivers/staging/rtl8723bs/hal/hal=
_com.c=C2=A0 =C2=A0 | 8 ++++----<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 2 files changed, 8 insertions(+),=
 8 deletions(-)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; diff --git a/drivers/staging/rtl8723bs/=
hal/hal_btcoex.c b/drivers/staging/rtl8723bs/hal/hal_btcoex.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; index 2b43f6d3c762..8eb28f97ebcc 100644=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; --- a/drivers/staging/rtl8723bs/hal/hal=
_btcoex.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; +++ b/drivers/staging/rtl8723bs/hal/hal=
_btcoex.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; @@ -75,7 +75,7 @@ static BTCDBGINFO GLB=
tcDbgInfo;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 static void DBG_BT_INFO_INIT(PBTC=
DBGINFO pinfo, u8 *pbuf, u32 size)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; -=C2=A0 =C2=A0 =C2=A0if (NULL =3D=3D pi=
nfo)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; +=C2=A0 =C2=A0 =C2=A0if (!pinfo)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0return;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0memset(pinfo,=
 0, sizeof(BTCDBGINFO));<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; @@ -95,7 +95,7 @@ void DBG_BT_INFO(u8 *=
dbgmsg)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0pinfo =3D &am=
p;GLBtcDbgInfo;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; -=C2=A0 =C2=A0 =C2=A0if (NULL =3D=3D pi=
nfo-&gt;info)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; +=C2=A0 =C2=A0 =C2=A0if (!pinfo-&gt;inf=
o)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0return;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0msglen =3D st=
rlen(dbgmsg);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; @@ -1571,7 +1571,7 @@ void hal_btcoex_S=
etDBG(struct adapter *padapter, u32 *pDbgModule)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u32 i;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; -=C2=A0 =C2=A0 =C2=A0if (NULL =3D=3D pD=
bgModule)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; +=C2=A0 =C2=A0 =C2=A0if (!pDbgModule)<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0return;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0for (i =3D 0;=
 i &lt; BTC_MSG_MAX; i++)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; @@ -1585,7 +1585,7 @@ u32 hal_btcoex_Ge=
tDBG(struct adapter *padapter, u8 *pStrBuf, u32 bufSize)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u32 leftSize;=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; -=C2=A0 =C2=A0 =C2=A0if ((NULL =3D=3D p=
StrBuf) || (0 =3D=3D bufSize))<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; +=C2=A0 =C2=A0 =C2=A0if (!pStrBuf || (0=
 =3D=3D bufSize))<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0It&#39;s another issue, so not for this patc=
h, but the kernel prefers<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0constants on the right.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0julia<br>
&gt;<br>
&gt;<br>
&gt; I couldn&#39;t understand. Should I resend this patch as well? Or it s=
hould not be part of this patchset?=C2=A0<br>
&gt;<br>
&gt; Constants on the right means &quot;pStrBuf =3D=3D NULL&quot; instead o=
f &quot;NULL =3D=3D pStrBuf&quot;, right? In that case, if I&#39;m removing=
 the comparison itself, I guess it is okay. Please correct me if I&#39;m mi=
staken.<br>
<br>
I was referring to the 0, actually, which is on the left.</blockquote></div=
></div><div dir=3D"auto"><br></div><div dir=3D"auto">Understood.</div><div =
dir=3D"auto"><br></div><div dir=3D"auto"><div class=3D"gmail_quote"><blockq=
uote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc =
solid;padding-left:1ex"> If you want to<br>
make that change too, then it would be another patch in this series.=C2=A0 =
But<br>
it&#39;s not obligatory, it was just an observation.<br>
<br>
julia<br></blockquote></div></div><div dir=3D"auto"><br></div><div dir=3D"a=
uto">I&#39;ll do that. Thank you.</div><div dir=3D"auto"><br></div><div dir=
=3D"auto">- Himadri=C2=A0</div><div dir=3D"auto"><br></div><div dir=3D"auto=
"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
&gt;<br>
&gt; Thank you.<br>
&gt;<br>
&gt; - Himadri<br>
&gt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0return 0;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0pstr =3D pStr=
Buf;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; diff --git a/drivers/staging/rtl8723bs/=
hal/hal_com.c b/drivers/staging/rtl8723bs/hal/hal_com.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; index 7f8ec55b08f1..b97b53c34449 100644=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; --- a/drivers/staging/rtl8723bs/hal/hal=
_com.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; +++ b/drivers/staging/rtl8723bs/hal/hal=
_com.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; @@ -18,7 +18,7 @@ u8 rtw_hal_data_init(=
struct adapter *padapter)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (is_primar=
y_adapter(padapter)) {=C2=A0 =C2=A0 =C2=A0/* if (padapter-&gt;isprimary) */=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0padapter-&gt;hal_data_sz =3D sizeof(struct hal_com_data);<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0padapter-&gt;HalData =3D vzalloc(padapter-&gt;hal_data_sz)=
;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0if (padapter-&gt;HalData =3D=3D NULL) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0if (!padapter-&gt;HalData) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0DBG_8192C(&quot;cannot alloc m=
emory for HAL DATA\n&quot;);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return _FAIL;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; @@ -909,7 +909,7 @@ s32 c2h_evt_read_88=
xx(struct adapter *adapter, u8 *buf)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0int i;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u8 trigger;<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; -=C2=A0 =C2=A0 =C2=A0if (buf =3D=3D NUL=
L)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; +=C2=A0 =C2=A0 =C2=A0if (!buf)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0goto exit;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0trigger =3D r=
tw_read8(adapter, REG_C2HEVT_CLEAR);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; @@ -982,7 +982,7 @@ void rtw_hal_update=
_sta_rate_mask(struct adapter *padapter, struct sta_info *pst<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u8 i, rf_type=
, limit;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u32 tx_ra_bit=
map;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; -=C2=A0 =C2=A0 =C2=A0if (psta =3D=3D NU=
LL)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; +=C2=A0 =C2=A0 =C2=A0if (!psta)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0return;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0tx_ra_bitmap =
=3D 0;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; @@ -1407,7 +1407,7 @@ bool GetHexValueF=
romString(char *szStr, u32 *pu4bVal, u32 *pu4bMove)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0char *szScan =
=3D szStr;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0/*=C2=A0 Chec=
k input parameter. */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; -=C2=A0 =C2=A0 =C2=A0if (szStr =3D=3D N=
ULL || pu4bVal =3D=3D NULL || pu4bMove =3D=3D NULL) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; +=C2=A0 =C2=A0 =C2=A0if (!szStr || !pu4=
bVal || !pu4bMove) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0DBG_871X(&quot;GetHexValueFromString(): Invalid input argu=
ments! szStr: %p, pu4bVal: %p, pu4bMove: %p\n&quot;,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 szStr, pu4bVal, pu4bMove);<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0return false;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; --<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; 2.17.1<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; --<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; You received this message because you a=
re subscribed to the Google Groups &quot;outreachy-kernel&quot; group.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; To unsubscribe from this group and stop=
 receiving emails from it, send an email to <a href=3D"mailto:outreachy-ker=
nel%2Bunsubscribe@googlegroups.com" target=3D"_blank" rel=3D"noreferrer">ou=
treachy-kernel+unsubscribe@googlegroups.com</a>.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; To post to this group, send email to <a=
 href=3D"mailto:outreachy-kernel@googlegroups.com" target=3D"_blank" rel=3D=
"noreferrer">outreachy-kernel@googlegroups.com</a>.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; To view this discussion on the web visi=
t <a href=3D"https://groups.google.com/d/msgid/outreachy-kernel/20190316102=
759.20272-4-himadri18.07%40gmail.com" rel=3D"noreferrer noreferrer" target=
=3D"_blank">https://groups.google.com/d/msgid/outreachy-kernel/201903161027=
59.20272-4-himadri18.07%40gmail.com</a>.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; For more options, visit <a href=3D"http=
s://groups.google.com/d/optout" rel=3D"noreferrer noreferrer" target=3D"_bl=
ank">https://groups.google.com/d/optout</a>.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0--<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0You received this message because you are su=
bscribed to the Google Groups &quot;outreachy-kernel&quot; group.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0To unsubscribe from this group and stop rece=
iving emails from it, send an email to <a href=3D"mailto:outreachy-kernel%2=
Bunsubscribe@googlegroups.com" target=3D"_blank" rel=3D"noreferrer">outreac=
hy-kernel+unsubscribe@googlegroups.com</a>.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0To post to this group, send email to <a href=
=3D"mailto:outreachy-kernel@googlegroups.com" target=3D"_blank" rel=3D"nore=
ferrer">outreachy-kernel@googlegroups.com</a>.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0To view this discussion on the web visit <a =
href=3D"https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.=
1903161317440.2487%40hadrien" rel=3D"noreferrer noreferrer" target=3D"_blan=
k">https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.19031=
61317440.2487%40hadrien</a>.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0For more options, visit <a href=3D"https://g=
roups.google.com/d/optout" rel=3D"noreferrer noreferrer" target=3D"_blank">=
https://groups.google.com/d/optout</a>.<br>
&gt;<br>
&gt;<br>
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
om/d/msgid/outreachy-kernel/alpine.DEB.2.21.1903161334160.2487%40hadrien" r=
el=3D"noreferrer noreferrer" target=3D"_blank">https://groups.google.com/d/=
msgid/outreachy-kernel/alpine.DEB.2.21.1903161334160.2487%40hadrien</a>.<br=
>
For more options, visit <a href=3D"https://groups.google.com/d/optout" rel=
=3D"noreferrer noreferrer" target=3D"_blank">https://groups.google.com/d/op=
tout</a>.<br>
</blockquote></div></div></div>

--0000000000002cd5ea0584356dd4--

