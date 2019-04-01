X-GM-THRID: 6674814656588021760
X-Received: by 2002:a17:906:9613:: with SMTP id s19mr3273814ejx.13.1554103907911;
        Mon, 01 Apr 2019 00:31:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:4009:: with SMTP id v9ls1753560ejj.9.gmail; Mon, 01
 Apr 2019 00:31:46 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz1yglQz0nTGqZnoUOeclK7EUuJimn79VLar0mNk4uyhGTXbR/6tSg4l8WMujBB+a09svqH
X-Received: by 2002:a17:906:8597:: with SMTP id v23mr3272134ejx.14.1554103906787;
        Mon, 01 Apr 2019 00:31:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554103906; cv=none;
        d=google.com; s=arc-20160816;
        b=JwAUfgH3diPCh50aB+LZc176BabL/6v2GP78sm+b0y8oZVaxxzZn/PQVVqeVBorVQi
         n369dQpaKXL4esDI+K0E7qrOM5oaCJVcTMrylGgrDkj0FlGUSVeDslnic6cGYIeIjxxR
         Kd6k1QpzXmHe5+ADSOtLzLobiFHc9sV7RRYqZiQ+/dyhwZA30bS2WD7gtXEULcUR1d3z
         vUHxy/T/FRyBJfthEmHoaWmE97p9z8Cg0ObBJno8e2b25vHR7fcGv1GVW3v1/JvPXS0x
         gmQwcGBbiYHB8IjfhwnHRLM57432K2Rz4HdhVA0YscxlvZYEx4ilzCTpkfDa2p1cGfGt
         +Ddg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=7jo9VBpjy6hZ2PzhGntqREfqpReYW7Y56s89uv9jI7g=;
        b=seqRl4HNeG3pMwYlrFd97rIEsF1FqQChJdI6lrI731Gm1+ZfC+jDBXhP/oVtdc2mn2
         SOTyKVgSiEGl8VM25bLEOArUa3VxBgZvawm6RJHUsbebh6ZCm18kvCqK684sfalqM581
         /x1ViFnLQwb09itqlnrrTQ20JvmmCVmGnvAOE4B+fS6f+cYEp6Kbh52nZbfP1oVWxcUD
         N7YQnTXObv6/2gfC9dJKLWsZeu033kpHBQqpqcAqZ8cisZ45sYofktMr8gYLikzovTZl
         Rv4N/uTdVtGOtmtDeX1IzH73Z2uH7OlzrtWJG2oBkFMkySgvKt1JnieGScmQHqumdDzc
         845w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jXsu2hA6;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::22c as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com. [2a00:1450:4864:20::22c])
        by gmr-mx.google.com with ESMTPS id ck11si354288ejb.0.2019.04.01.00.31.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Apr 2019 00:31:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::22c as permitted sender) client-ip=2a00:1450:4864:20::22c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jXsu2hA6;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2a00:1450:4864:20::22c as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x22c.google.com with SMTP id h16so7094498ljg.11
        for <outreachy-kernel@googlegroups.com>; Mon, 01 Apr 2019 00:31:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=7jo9VBpjy6hZ2PzhGntqREfqpReYW7Y56s89uv9jI7g=;
        b=jXsu2hA6tCM6nA+g0OkPsLk950eZRS1dPwkMrzmcUI6NtuwfE9Tlt1FHfkeNZ22C9/
         S0xuoZ4Ux/+8QgBmyWqFtPREABsyxI1EiXNOIvbSPCZ0qvDg/S5OdqJkOWdWrLlZg5rw
         y3xkLnfoXq0XmWyi1Q7VZ+xWZj1LOwQyl/ETyhAZ1bQM58FC3wHD6YYgpMKA4JJJ0kaG
         9rnPmk8u8gSs01ElAPl+degKXRldhiFB2W7+OO9lp9qxct0b34rABxv83OWXTr/xx90h
         WVbyWrMvTtfPjeFIR/ud5noJO2RWOcDJvGJDamg/DICOLu2EmTvgM7/yThXRlZgx4NRM
         Zf/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=7jo9VBpjy6hZ2PzhGntqREfqpReYW7Y56s89uv9jI7g=;
        b=OSxwjVY/Irf/6l00KqZXtIeeGbJjw1XBVQNpA8T/ePKVE9mUf4XYiwa/Go7iaaWP5Y
         SkI7e2h93a1O5Fk+VdyTScYyMxYMS+KeIy6ttYhNGc2YEFxp3QbO8XmVwrm4XrJtgTZu
         o2TIrKI/h8SaxGQX7TuPuz/El8OnQto0KYul2fS1knt094IAp5w/C33ussJdTbQcUpsa
         B3YphUiopAxaAkIujpZFECmKG67HC2KzIwbLxfuylNVSepVTTj5ybBHYqDEW//LN9NAK
         dMywoievmS8tcaZIWt9azFpvBVEzFfJKALXRdPcE+CHDhpogcowHVnvgt18DNLv6jrIA
         Wjqw==
X-Gm-Message-State: APjAAAU+kPtoEv7fZ0UdoRHpGr1uB0H9bS2Ln2yDCDRTUzLmq1isuo6E
	SWQGf8iQ6gq7du8313FVtYEy8PMQ7gDDC6Q/Lv4Uow==
X-Received: by 2002:a2e:899a:: with SMTP id c26mr33861610lji.192.1554103906625;
 Mon, 01 Apr 2019 00:31:46 -0700 (PDT)
MIME-Version: 1.0
References: <1554101376-7055-1-git-send-email-payal.s.kshirsagar.98@gmail.com> <20190401070657.GD20095@kroah.com>
In-Reply-To: <20190401070657.GD20095@kroah.com>
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Date: Mon, 1 Apr 2019 13:01:34 +0530
Message-ID: <CANTOzWG84kcQTTU1a_x6Rj22MpyT1QV+T0Qab5_QKNRkrJgoFg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8192u: Remove print
 statements for error messages.
To: Greg KH <greg@kroah.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="0000000000004c6c2f0585730399"

--0000000000004c6c2f0585730399
Content-Type: text/plain; charset="UTF-8"

On Mon, Apr 1, 2019, 12:37 PM Greg KH <greg@kroah.com> wrote:

> On Mon, Apr 01, 2019 at 12:19:36PM +0530, Payal Kshirsagar wrote:
> > Challenge suggested by coccinelle.
> > Remove prints of error message, it is not needed to print error
> > messages.
> >
> > Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> > ---
> >  drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c | 2 --
> >  1 file changed, 2 deletions(-)
> >
> > diff --git a/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c
> b/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c
> > index 1094454..085309a 100644
> > --- a/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c
> > +++ b/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c
> > @@ -119,7 +119,6 @@ static struct sk_buff *ieee80211_ADDBA(struct
> ieee80211_device *ieee, u8 *Dst, s
> >       }
> >       skb = dev_alloc_skb(len + sizeof(struct rtl_80211_hdr_3addr));
> //need to add something others? FIXME
> >       if (!skb) {
> > -             IEEE80211_DEBUG(IEEE80211_DL_ERR, "can't alloc skb for
> ADDBA_REQ\n");
> >               return NULL;
> >       }
>
> Please also remove the now-unneeded { } characters/lines.
>

Okay.
Thanks,
Payal

thanks,
>
> greg k-h
>

--0000000000004c6c2f0585730399
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr">=
On Mon, Apr 1, 2019, 12:37 PM Greg KH &lt;<a href=3D"mailto:greg@kroah.com"=
>greg@kroah.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On M=
on, Apr 01, 2019 at 12:19:36PM +0530, Payal Kshirsagar wrote:<br>
&gt; Challenge suggested by coccinelle.<br>
&gt; Remove prints of error message, it is not needed to print error<br>
&gt; messages.<br>
&gt; <br>
&gt; Signed-off-by: Payal Kshirsagar &lt;<a href=3D"mailto:payal.s.kshirsag=
ar.98@gmail.com" target=3D"_blank" rel=3D"noreferrer">payal.s.kshirsagar.98=
@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c | 2 --<br>
&gt;=C2=A0 1 file changed, 2 deletions(-)<br>
&gt; <br>
&gt; diff --git a/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c b/dri=
vers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c<br>
&gt; index 1094454..085309a 100644<br>
&gt; --- a/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c<br>
&gt; +++ b/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c<br>
&gt; @@ -119,7 +119,6 @@ static struct sk_buff *ieee80211_ADDBA(struct ieee=
80211_device *ieee, u8 *Dst, s<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0skb =3D dev_alloc_skb(len + sizeof(struct rt=
l_80211_hdr_3addr)); //need to add something others? FIXME<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (!skb) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0IEEE80211_DEBUG(IEEE8=
0211_DL_ERR, &quot;can&#39;t alloc skb for ADDBA_REQ\n&quot;);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return NULL;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
<br>
Please also remove the now-unneeded { } characters/lines.<br></blockquote><=
/div></div><div dir=3D"auto"><br></div><div dir=3D"auto">Okay.</div><div di=
r=3D"auto">Thanks,</div><div dir=3D"auto">Payal</div><div dir=3D"auto"><br>=
</div><div dir=3D"auto"><div class=3D"gmail_quote"><blockquote class=3D"gma=
il_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-lef=
t:1ex">
thanks,<br>
<br>
greg k-h<br>
</blockquote></div></div></div>

--0000000000004c6c2f0585730399--

