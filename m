X-GM-THRID: 6807130356444037120
X-Received: by 2002:a5d:484d:: with SMTP id n13mr1865583wrs.387.1585122525661;
        Wed, 25 Mar 2020 00:48:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:f5cc:: with SMTP id k12ls419574wrp.6.gmail; Wed, 25 Mar
 2020 00:48:44 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtZvAyuoq68cz6UPTkx49IT2ywLKetEDLE28/+vLf1a009/BNY4SVURxSrd1jonjqiEdofD
X-Received: by 2002:adf:eb51:: with SMTP id u17mr2056904wrn.29.1585122524408;
        Wed, 25 Mar 2020 00:48:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585122524; cv=none;
        d=google.com; s=arc-20160816;
        b=H+7SfeH0/6WlTerKD0gFqTqcvfpGuVrCN4zctw/hke8cgeNa5+KA2ivmrmTBko8jiO
         9JLzHvpG0rDs9yR1hSjMx5xoqMV5BOhmh0BAleYa8islQDR9FkQa3+WlOllbSKtoY/9K
         d3+5BiINPqSaTUoo8hg/heyTfki0cWX9CXaSdFu4rTMsYcu5dqEHPA+VS3Bz0PWI+weW
         0ABAHlW0AMbSgAmW8xq6oOKd96vX57liKlaVIWR0jY3p48N44J+GAxoC6Ky91o3Hs5vc
         qyaRJKOscOtntHoHIilm4oolOyXcAHdEc8XlRnUTJZzRhgIN1eGhimnBmosYax5xehjh
         4/gQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=PUMhAcsVAqWt4vWQ+Pz2VzDtjAieFRy3w6MaqRNEnPg=;
        b=S1yEitKK8Az2ADtsf2YT4XCgiW/Q2S59evpG6alEA5S88SqmQ5/YcIyF/Zlt3ASj+h
         0RCnLJeH9lAlqOxBeuxLRnIHAH52ca+9tDtH70pReDzmHCgEtdp5lzwseTP5/x2P3lC3
         ZleJSL/YMAiV+7ttkdb+ci12QK58fQan697G2bBvAdudr/zm1666adg2LzmRqN/5/ys+
         PyJ6Vx0tbW5w1kwpuRsFqDPB+dbQpOoW0wMqyxAaPdJB+aN/ZdH7eMexxjw+Qzuod97E
         quDKglTLVbXR7poTa7FLP/ttLNJdLEyZZhwgxpso1X79qI72/7naYuKbQNqIxagpvWOg
         MZcA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JrYSV0Za;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com. [2a00:1450:4864:20::242])
        by gmr-mx.google.com with ESMTPS id l2si342284wmg.3.2020.03.25.00.48.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Mar 2020 00:48:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) client-ip=2a00:1450:4864:20::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JrYSV0Za;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x242.google.com with SMTP id n17so1369669lji.8
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Mar 2020 00:48:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=PUMhAcsVAqWt4vWQ+Pz2VzDtjAieFRy3w6MaqRNEnPg=;
        b=JrYSV0ZaXuwQncLfzvDdFz/ThmqNIKCSzP57LYf2WYi7iAygrfFvI3+QiAQUYhYdWX
         3GX7r0nrN4uOEwefTMo7z38i45TILG1xtnjVocaB9TIIpQBWL5QwoRcmEbfQLtCw4tCy
         AHtmp12J1r1qy3GHqm+copJUIAOALwhfRkXC0DnDpViOLzVDmSi7vHeIJNS8UXh1oXK3
         jw9vgBITHcaV3YDHpZeeOt9SDeF1MiUfCEwE6mzSIqR/xhupMgaEr77kZeFhkcO7itck
         t2XpoIX/ipGzZBOVjCFgK9WjAd+R0rNvv4YbQP+zzlmNMMy6Zcr2s638uBO6RGyBYABX
         bkHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=PUMhAcsVAqWt4vWQ+Pz2VzDtjAieFRy3w6MaqRNEnPg=;
        b=P9ebjf2T6rj60eFln3+vqE+6aDouRz3IyrdSyc4rqcWQlH8MenDl69spr4uUshWQT0
         JBedfe52Su8k/YrvVr/e7bCZj3jdxPBmo/0gHxWYBCsO9KcEWOK54g80hd2JWVnnKqCy
         tjmeBo7esPoOwrIdyH9f3gHn4nuU1Wtaz2+ypmByE3qJnPloFgg4VkMinWUUHGdGB5Qm
         eZ7bl2awYuVN/dXomwtsxQ9xDpGAnDHAl7tfmxArPP0YDzgZhGIlWPVf02SjzUIHRpYq
         FM88qJQOKMmo05+h01LoNIONovTgSwLWDCuXCG9L9wEc8MYNTbwyrLvXYgQxT/T96Unq
         O23Q==
X-Gm-Message-State: AGi0Puat9OomdhWmzjemr0u82jpS+cetmqchBY2OOsJDFF2AxfHPeUaz
	SwV8zZ0c/+DcEqYPhsNlwkoWuNyb88p9ZWVaaVtKH5+U0xI=
X-Received: by 2002:a2e:85cb:: with SMTP id h11mr1134104ljj.55.1585122523763;
 Wed, 25 Mar 2020 00:48:43 -0700 (PDT)
MIME-Version: 1.0
References: <20200322202214.GA9750@simran-Inspiron-5558> <alpine.DEB.2.21.2003222128580.2325@hadrien>
In-Reply-To: <alpine.DEB.2.21.2003222128580.2325@hadrien>
From: Simran Singhal <singhalsimran0@gmail.com>
Date: Wed, 25 Mar 2020 13:18:30 +0530
Message-ID: <CALrZqyOehUCG20zRfY+nkz4LLUukS64dQL4k7ZcyHxUNcPczSA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723bs: Remove comparisons
 to NULL in conditionals
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, driverdevel <devel@driverdev.osuosl.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary="000000000000f4567c05a1a91854"

--000000000000f4567c05a1a91854
Content-Type: text/plain; charset="UTF-8"

On Mon, Mar 23, 2020 at 2:02 AM Julia Lawall <julia.lawall@inria.fr> wrote:

>
>
> On Mon, 23 Mar 2020, Simran Singhal wrote:
>
> > Remove comparisons to NULL in conditionals in
> > drivers/staging/rtl8723bs/core/rtw_ap.c
> > Issues reported by checkpatch.pl as:
> > CHECK: Comparison to NULL could be written
>
> The patch also drops some parentheses that are completely unrelated to the
> change described here.  These changes should not be done in this patch.
>

I am removing parentheses because then this patch will be generating two
more warnings related to
"remove unnecessary parentheses" after fixing the NULL part.


>
> There is no need to give the name of the file in the log message.  One can
> see that directly in the patch.  Likewise, it is not necessary to give the
> complete message from checkpatch.  Saying that checkpatch identified the
> problem is good enough.
>

Noted. Will fix it in v2.


>
> A good commit log message should say what you have done and why.  The
> message above is missing the "why" part.  Why is it a good idea to remove
> the NULL comparisons, beyond that checkpatch said that it was something to
> check?
>

Answer to "why" part is:-
Fixed coding style for null comparisons to be more consistent with the rest
of the kernel coding style.
Will improve the commit log in v2.

Thanks
Simran


> julia
>
> >
> > Signed-off-by: Simran Singhal <singhalsimran0@gmail.com>
> > ---
> >  drivers/staging/rtl8723bs/core/rtw_ap.c | 30 ++++++++++++-------------
> >  1 file changed, 15 insertions(+), 15 deletions(-)
> >
> > diff --git a/drivers/staging/rtl8723bs/core/rtw_ap.c
> b/drivers/staging/rtl8723bs/core/rtw_ap.c
> > index a76e81330756..82b977c07205 100644
> > --- a/drivers/staging/rtl8723bs/core/rtw_ap.c
> > +++ b/drivers/staging/rtl8723bs/core/rtw_ap.c
> > @@ -79,7 +79,7 @@ static void update_BCNTIM(struct adapter *padapter)
> >                       &tim_ielen,
> >                       pnetwork_mlmeext->IELength - _FIXED_IE_LENGTH_
> >               );
> > -             if (p != NULL && tim_ielen > 0) {
> > +             if (p && tim_ielen > 0) {
> >                       tim_ielen += 2;
> >
> >                       premainder_ie = p + tim_ielen;
> > @@ -103,7 +103,7 @@ static void update_BCNTIM(struct adapter *padapter)
> >                               &tmp_len,
> >                               (pnetwork_mlmeext->IELength -
> _BEACON_IE_OFFSET_)
> >                       );
> > -                     if (p != NULL)
> > +                     if (p)
> >                               offset += tmp_len + 2;
> >
> >                       /*  get supported rates len */
> > @@ -112,7 +112,7 @@ static void update_BCNTIM(struct adapter *padapter)
> >                               _SUPPORTEDRATES_IE_, &tmp_len,
> >                               (pnetwork_mlmeext->IELength -
> _BEACON_IE_OFFSET_)
> >                       );
> > -                     if (p !=  NULL)
> > +                     if (p)
> >                               offset += tmp_len + 2;
> >
> >                       /* DS Parameter Set IE, len =3 */
> > @@ -1036,7 +1036,7 @@ int rtw_check_beacon_data(struct adapter
> *padapter, u8 *pbuf,  int len)
> >               &ie_len,
> >               (pbss_network->IELength - _BEACON_IE_OFFSET_)
> >       );
> > -     if (p !=  NULL) {
> > +     if (p) {
> >               memcpy(supportRate, p + 2, ie_len);
> >               supportRateNum = ie_len;
> >       }
> > @@ -1048,7 +1048,7 @@ int rtw_check_beacon_data(struct adapter
> *padapter, u8 *pbuf,  int len)
> >               &ie_len,
> >               pbss_network->IELength - _BEACON_IE_OFFSET_
> >       );
> > -     if (p !=  NULL) {
> > +     if (p) {
> >               memcpy(supportRate + supportRateNum, p + 2, ie_len);
> >               supportRateNum += ie_len;
> >       }
> > @@ -1136,8 +1136,8 @@ int rtw_check_beacon_data(struct adapter
> *padapter, u8 *pbuf,  int len)
> >                       break;
> >               }
> >
> > -             if ((p == NULL) || (ie_len == 0))
> > -                             break;
> > +             if (!p || ie_len == 0)
> > +                     break;
> >       }
> >
> >       /* wmm */
> > @@ -1165,7 +1165,7 @@ int rtw_check_beacon_data(struct adapter
> *padapter, u8 *pbuf,  int len)
> >                               break;
> >                       }
> >
> > -                     if ((p == NULL) || (ie_len == 0))
> > +                     if (!p || ie_len == 0)
> >                               break;
> >               }
> >       }
> > @@ -1296,7 +1296,7 @@ int rtw_check_beacon_data(struct adapter
> *padapter, u8 *pbuf,  int len)
> >       psta = rtw_get_stainfo(&padapter->stapriv,
> pbss_network->MacAddress);
> >       if (!psta) {
> >               psta = rtw_alloc_stainfo(&padapter->stapriv,
> pbss_network->MacAddress);
> > -             if (psta == NULL)
> > +             if (!psta)
> >                       return _FAIL;
> >       }
> >
> > @@ -1453,7 +1453,7 @@ u8 rtw_ap_set_pairwise_key(struct adapter
> *padapter, struct sta_info *psta)
> >       }
> >
> >       psetstakey_para = rtw_zmalloc(sizeof(struct set_stakey_parm));
> > -     if (psetstakey_para == NULL) {
> > +     if (!psetstakey_para) {
> >               kfree(ph2c);
> >               res = _FAIL;
> >               goto exit;
> > @@ -1491,12 +1491,12 @@ static int rtw_ap_set_key(
> >       /* DBG_871X("%s\n", __func__); */
> >
> >       pcmd = rtw_zmalloc(sizeof(struct cmd_obj));
> > -     if (pcmd == NULL) {
> > +     if (!pcmd) {
> >               res = _FAIL;
> >               goto exit;
> >       }
> >       psetkeyparm = rtw_zmalloc(sizeof(struct setkey_parm));
> > -     if (psetkeyparm == NULL) {
> > +     if (!psetkeyparm) {
> >               kfree(pcmd);
> >               res = _FAIL;
> >               goto exit;
> > @@ -1668,11 +1668,11 @@ static void update_bcn_wps_ie(struct adapter
> *padapter)
> >               &wps_ielen
> >       );
> >
> > -     if (pwps_ie == NULL || wps_ielen == 0)
> > +     if (!pwps_ie || wps_ielen == 0)
> >               return;
> >
> >       pwps_ie_src = pmlmepriv->wps_beacon_ie;
> > -     if (pwps_ie_src == NULL)
> > +     if (!pwps_ie_src)
> >               return;
> >
> >       wps_offset = (uint)(pwps_ie - ie);
> > @@ -2322,7 +2322,7 @@ void rtw_ap_restore_network(struct adapter
> *padapter)
> >       for (i = 0; i < chk_alive_num; i++) {
> >               psta = rtw_get_stainfo_by_offset(pstapriv,
> chk_alive_list[i]);
> >
> > -             if (psta == NULL) {
> > +             if (!psta) {
> >                       DBG_871X(FUNC_ADPT_FMT" sta_info is null\n",
> FUNC_ADPT_ARG(padapter));
> >               } else if (psta->state & _FW_LINKED) {
> >                       rtw_sta_media_status_rpt(padapter, psta, 1);
> > --
> > 2.17.1
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/20200322202214.GA9750%40simran-Inspiron-5558
> .
> >
>

--000000000000f4567c05a1a91854
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div class=3D"gmail_attr" dir=3D"ltr">On Mon, Mar 23, 2020 at 2:02 AM Julia=
 Lawall &lt;<a href=3D"mailto:julia.lawall@inria.fr">julia.lawall@inria.fr<=
/a>&gt; wrote:<br></div><blockquote style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex" class=3D"gmail_quote"><=
br>
<br>
On Mon, 23 Mar 2020, Simran Singhal wrote:<br>
<br>
&gt; Remove comparisons to NULL in conditionals in<br>
&gt; drivers/staging/rtl8723bs/core/rtw_ap.c<br>
&gt; Issues reported by <a rel=3D"noreferrer" href=3D"http://checkpatch.pl"=
>checkpatch.pl</a> as:<br>
&gt; CHECK: Comparison to NULL could be written<br>
<br>
The patch also drops some parentheses that are completely unrelated to the<=
br>
change described here.=C2=A0 These changes should not be done in this patch=
.<br></blockquote><div><br></div><div>I am removing parentheses because the=
n this patch will be generating two more warnings related to <br></div><div=
>&quot;remove unnecessary parentheses&quot; after fixing the NULL part. <br=
></div><div>=C2=A0</div><blockquote style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex" class=3D"gmail_quote">
<br>
There is no need to give the name of the file in the log message.=C2=A0 One=
 can<br>
see that directly in the patch.=C2=A0 Likewise, it is not necessary to give=
 the<br>
complete message from checkpatch.=C2=A0 Saying that checkpatch identified t=
he<br>
problem is good enough.<br></blockquote><div><br></div><div>Noted. Will fix=
 it in v2.<br></div><div>=C2=A0</div><blockquote style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex" class=3D"g=
mail_quote">
<br>
A good commit log message should say what you have done and why.=C2=A0 The<=
br>
message above is missing the &quot;why&quot; part.=C2=A0 Why is it a good i=
dea to remove<br>
the NULL comparisons, beyond that checkpatch said that it was something to<=
br>
check?<br></blockquote><div><br></div><div>Answer to &quot;why&quot; part i=
s:-</div><div>Fixed coding style for null comparisons to be more consistent=
 with the rest of the kernel coding style. <br></div><div>Will improve the =
commit log in v2.<br></div><div><br></div><div>Thanks</div><div>Simran<br><=
/div><div><br></div><blockquote style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex" class=3D"gmail_quote">
<br>
julia<br>
<br>
&gt;<br>
&gt; Signed-off-by: Simran Singhal &lt;<a href=3D"mailto:singhalsimran0@gma=
il.com">singhalsimran0@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/rtl8723bs/core/rtw_ap.c | 30 ++++++++++++-------=
------<br>
&gt;=C2=A0 1 file changed, 15 insertions(+), 15 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/rtl8723bs/core/rtw_ap.c b/drivers/staging=
/rtl8723bs/core/rtw_ap.c<br>
&gt; index a76e81330756..82b977c07205 100644<br>
&gt; --- a/drivers/staging/rtl8723bs/core/rtw_ap.c<br>
&gt; +++ b/drivers/staging/rtl8723bs/core/rtw_ap.c<br>
&gt; @@ -79,7 +79,7 @@ static void update_BCNTIM(struct adapter *padapter)<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0&amp;tim_ielen,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0pnetwork_mlmeext-&gt;IELength - _FIXED_IE_LENGTH_<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (p !=3D NULL &amp;=
&amp; tim_ielen &gt; 0) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (p &amp;&amp; tim_=
ielen &gt; 0) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0tim_ielen +=3D 2;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0premainder_ie =3D p + tim_ielen;<br>
&gt; @@ -103,7 +103,7 @@ static void update_BCNTIM(struct adapter *padapter=
)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&amp;tmp_len,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(pnetwork_mlmeext-&gt;IELength - _=
BEACON_IE_OFFSET_)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0if (p !=3D NULL)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0if (p)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0offset +=3D tmp_len + 2;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0/*=C2=A0 get supported rates len */<br>
&gt; @@ -112,7 +112,7 @@ static void update_BCNTIM(struct adapter *padapter=
)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0_SUPPORTEDRATES_IE_, &amp;tmp_len,=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(pnetwork_mlmeext-&gt;IELength - _=
BEACON_IE_OFFSET_)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0if (p !=3D=C2=A0 NULL)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0if (p)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0offset +=3D tmp_len + 2;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0/* DS Parameter Set IE, len =3D3 */<br>
&gt; @@ -1036,7 +1036,7 @@ int rtw_check_beacon_data(struct adapter *padapt=
er, u8 *pbuf,=C2=A0 int len)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&amp;ie_len,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(pbss_network-&g=
t;IELength - _BEACON_IE_OFFSET_)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (p !=3D=C2=A0 NULL) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (p) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0memcpy(supportRa=
te, p + 2, ie_len);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0supportRateNum =
=3D ie_len;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; @@ -1048,7 +1048,7 @@ int rtw_check_beacon_data(struct adapter *padapt=
er, u8 *pbuf,=C2=A0 int len)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&amp;ie_len,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pbss_network-&gt=
;IELength - _BEACON_IE_OFFSET_<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (p !=3D=C2=A0 NULL) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (p) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0memcpy(supportRa=
te + supportRateNum, p + 2, ie_len);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0supportRateNum +=
=3D ie_len;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; @@ -1136,8 +1136,8 @@ int rtw_check_beacon_data(struct adapter *padapt=
er, u8 *pbuf,=C2=A0 int len)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0break;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if ((p =3D=3D NULL) |=
| (ie_len =3D=3D 0))<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0break;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (!p || ie_len =3D=
=3D 0)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0break;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0/* wmm */<br>
&gt; @@ -1165,7 +1165,7 @@ int rtw_check_beacon_data(struct adapter *padapt=
er, u8 *pbuf,=C2=A0 int len)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0break;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0}<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0if ((p =3D=3D NULL) || (ie_len =3D=3D 0))<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0if (!p || ie_len =3D=3D 0)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0break;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; @@ -1296,7 +1296,7 @@ int rtw_check_beacon_data(struct adapter *padapt=
er, u8 *pbuf,=C2=A0 int len)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0psta =3D rtw_get_stainfo(&amp;padapter-&gt;s=
tapriv, pbss_network-&gt;MacAddress);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (!psta) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0psta =3D rtw_all=
oc_stainfo(&amp;padapter-&gt;stapriv, pbss_network-&gt;MacAddress);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (psta =3D=3D NULL)=
<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (!psta)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0return _FAIL;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;<br>
&gt; @@ -1453,7 +1453,7 @@ u8 rtw_ap_set_pairwise_key(struct adapter *padap=
ter, struct sta_info *psta)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0psetstakey_para =3D rtw_zmalloc(sizeof(struc=
t set_stakey_parm));<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (psetstakey_para =3D=3D NULL) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (!psetstakey_para) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0kfree(ph2c);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0res =3D _FAIL;<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0goto exit;<br>
&gt; @@ -1491,12 +1491,12 @@ static int rtw_ap_set_key(<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0/* DBG_871X(&quot;%s\n&quot;, __func__); */<=
br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0pcmd =3D rtw_zmalloc(sizeof(struct cmd_obj))=
;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (pcmd =3D=3D NULL) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (!pcmd) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0res =3D _FAIL;<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0goto exit;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0psetkeyparm =3D rtw_zmalloc(sizeof(struct se=
tkey_parm));<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (psetkeyparm =3D=3D NULL) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (!psetkeyparm) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0kfree(pcmd);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0res =3D _FAIL;<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0goto exit;<br>
&gt; @@ -1668,11 +1668,11 @@ static void update_bcn_wps_ie(struct adapter *=
padapter)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&amp;wps_ielen<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0);<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (pwps_ie =3D=3D NULL || wps_ielen =3D=3D 0)<br=
>
&gt; +=C2=A0 =C2=A0 =C2=A0if (!pwps_ie || wps_ielen =3D=3D 0)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0pwps_ie_src =3D pmlmepriv-&gt;wps_beacon_ie;=
<br>
&gt; -=C2=A0 =C2=A0 =C2=A0if (pwps_ie_src =3D=3D NULL)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (!pwps_ie_src)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0wps_offset =3D (uint)(pwps_ie - ie);<br>
&gt; @@ -2322,7 +2322,7 @@ void rtw_ap_restore_network(struct adapter *pada=
pter)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0for (i =3D 0; i &lt; chk_alive_num; i++) {<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0psta =3D rtw_get=
_stainfo_by_offset(pstapriv, chk_alive_list[i]);<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (psta =3D=3D NULL)=
 {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (!psta) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0DBG_871X(FUNC_ADPT_FMT&quot; sta_info is null\n&quot;, FUNC_AD=
PT_ARG(padapter));<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0} else if (psta-=
&gt;state &amp; _FW_LINKED) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0rtw_sta_media_status_rpt(padapter, psta, 1);<br>
&gt; --<br>
&gt; 2.17.1<br>
&gt;<br>
&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.=
com">outreachy-kernel+unsubscribe@googlegroups.com</a>.<br>
&gt; To view this discussion on the web visit <a rel=3D"noreferrer" href=3D=
"https://groups.google.com/d/msgid/outreachy-kernel/20200322202214.GA9750%4=
0simran-Inspiron-5558">https://groups.google.com/d/msgid/outreachy-kernel/2=
0200322202214.GA9750%40simran-Inspiron-5558</a>.<br>
&gt;<br>
</blockquote></div></div>

--000000000000f4567c05a1a91854--

