X-GM-THRID: 6673458738250121216
X-Received: by 2002:a1c:700d:: with SMTP id l13mr65197wmc.16.1553789733028;
        Thu, 28 Mar 2019 09:15:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:a7ce:: with SMTP id q197ls553921wme.9.gmail; Thu, 28 Mar
 2019 09:15:32 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxK+R3fiZgl5x3MC/LEs/Z5dOl2r/SASogKFXWwiEVcQukzg1zBcT6Z/fGUJ5hZfZTq+faI
X-Received: by 2002:a1c:2e58:: with SMTP id u85mr59196wmu.25.1553789732256;
        Thu, 28 Mar 2019 09:15:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553789732; cv=none;
        d=google.com; s=arc-20160816;
        b=iQAgDrZNYGbZzC29AgsBswbBbGZLsmbAr7+ePYm7iJ8k3G0QboKuwFV3V0hbdLuNhT
         X7BWfH2BkPmHrad2YAa0JVHqkl8wH8n+XhCL1sVtqmIINsCBuAPSgdrFYBQhxfPibq7q
         Hak9UAulnb4l4J8mNMbIsJWuti+fRjR0MwzPDwHM6AujdNLN4NQq8REuJKps6bgBiee2
         laLt6P3dKDQ6LGrf0PIRmbDvgaytAjq4y4hs9qCjAFWv/xCApgI+6k0ndvq0lGLpHZo3
         i/HwnpK0Rz6O2u7UET7vOEvpJErCwUMbJkZhh2Jx30S5i4DfzFMoASNi687bbwqKEmWz
         0xhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=IzGZu1B9CA+v3GwkGICZzdPzBOFylc9am6xNS0xGGVA=;
        b=MsBbSX42JY7ZMIsfBNKK551qQZzaQpJwX1z55wosQgsW35AN+8aUZ2tuHBkkDTOmvm
         sXOxmGn19vHL2rmNp8/NIMp8gsAaHkNeG9oMsbZFr0iCEqJOl7+xYa4hgdtYKxQ7fCeO
         5nC4z5KphcyZj8VVE4U6gZ3vFaCy18UkRWaV5kXIoIiOXoKm65na2k29Lr8/7Qnve7Nc
         RpQe1wK7VYpAsUDg7JEvOHW7cUCihGlbFBkKOwAH7Odw2uj1liEdGkDU6/Lu1UgWgIDP
         5nmCPsn2MGcVLAAXHamd6C5oziNczkNjO4UGsphDsnAraAI7Xn7f9TFLTgN75yIBtD9r
         nbOg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pGJVZJTU;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2a00:1450:4864:20::52b as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com. [2a00:1450:4864:20::52b])
        by gmr-mx.google.com with ESMTPS id 7si167832wma.1.2019.03.28.09.15.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Mar 2019 09:15:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2a00:1450:4864:20::52b as permitted sender) client-ip=2a00:1450:4864:20::52b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pGJVZJTU;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2a00:1450:4864:20::52b as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x52b.google.com with SMTP id q14so17720014edr.5
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Mar 2019 09:15:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=IzGZu1B9CA+v3GwkGICZzdPzBOFylc9am6xNS0xGGVA=;
        b=pGJVZJTUo5WI6zGLCk0kNd3mkHd8z8flEqhA2oIXtHBgKB54lh82xZvdVfbIz1V/LW
         jJKNh0R64OfPVFkyMlPZ1R7hCkD0SvtaYyjl9T5PzNtds6bY1yPQT0U+H+gSIok//fdf
         7olxPGhSvnYC+C22F2QIKHVv0kh274skJ/gSr+BUVtS7hT9UloCdGh39dMxxco9T68VL
         IX2oLchJoiQY/aAAEbNAMVjuntbmRA9AhiSVVPHHJ3Kvue2jTuey0HP8k9MclsiadYQV
         SPmZxWJkbiHWI09ehAGNMyYsWRcLoCNLNUC+2F6cewmtVWpOoQsDj3N6gKw8xAWt/EIG
         PMKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=IzGZu1B9CA+v3GwkGICZzdPzBOFylc9am6xNS0xGGVA=;
        b=FnvVYFkrAKmKxegSdU86PpOdqNYmmNTu+Uc3TYau2TgmPSf+AdfmLoZARh3Enh/Xzm
         GHHnuIGQJzj5L3ac59A2bPGELZrz1fYNEfQTkObMKTjtHFmt7fKKiwO5zypAG4hAUhL0
         XQm0hMoZOmJ/bxksW+Cn934WZRb8YdOHfFL7CTxM7QqqIkN7FERh5bOK8qMRrkrB9u0H
         iF3M23YWf6g9WmYfwA2/uvtZM8yDW5+0hTvA9+F/DT+GS7mn3GxIudPYcH+U1CWhONBs
         mWuMCE7gejXXI2N0nNrNY877Zxgj/4MXo5w4eFeWW32aq+rRzi23sKV9SkFuTOFu1GPk
         nF3A==
X-Gm-Message-State: APjAAAUYjIeo229UWdG0bRSzad3gZrRVfDM7rBlLzHH42p1/b/Nz5yGJ
	NghI0KkriB6P99NP8y5qc6RcuCibDY1j/YA62TeCNw==
X-Received: by 2002:a17:906:6dcd:: with SMTP id j13mr23797602ejt.216.1553789732043;
 Thu, 28 Mar 2019 09:15:32 -0700 (PDT)
MIME-Version: 1.0
References: <20190328150759.10539-1-sanjana99reddy99@gmail.com>
 <20190328151007.10650-1-sanjana99reddy99@gmail.com> <20190328160814.GA30629@kroah.com>
In-Reply-To: <20190328160814.GA30629@kroah.com>
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
Date: Thu, 28 Mar 2019 21:45:19 +0530
Message-ID: <CAO-bXGDNCCJ01vGSE28HJx5TOH7UWKgys=_7YY8JnCQLPy4P0w@mail.gmail.com>
Subject: Re: [PATCH 2/2] staging: rtlwifi: Remove unused variable.
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="00000000000008c206058529dd16"

--00000000000008c206058529dd16
Content-Type: text/plain; charset="UTF-8"

On Thu, 28 Mar 2019, 21:38 Greg KH, <gregkh@linuxfoundation.org> wrote:

> On Thu, Mar 28, 2019 at 08:40:07PM +0530, Sanjana Sanikommu wrote:
> > Remove unused variable. This variable is
> > created unnecessarily for return type whose
> > use is removed using ret.cocci.
> >
> > Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
> > ---
> >  drivers/staging/rtlwifi/rtl8822be/phy.c | 1 -
> >  1 file changed, 1 deletion(-)
> >
> > diff --git a/drivers/staging/rtlwifi/rtl8822be/phy.c
> b/drivers/staging/rtlwifi/rtl8822be/phy.c
> > index aed315143cbb..ececfed7b35a 100644
> > --- a/drivers/staging/rtlwifi/rtl8822be/phy.c
> > +++ b/drivers/staging/rtlwifi/rtl8822be/phy.c
> > @@ -1840,7 +1840,6 @@ static long _rtl8822be_phy_txpwr_idx_to_dbm(struct
> ieee80211_hw *hw,
> >                                           u8 txpwridx)
> >  {
> >       long offset;
> > -     long pwrout_dbm;
>
> Did you just cause this warning to happen with patch 1/2?  That's not
> ok, please put this together with that patch, you can not have any
> commit break the build, or add new build warnings.
>

    I will put them together in one patch and send as v2
     Sanjana

>
> thanks,
>
> greg k-h
>

--00000000000008c206058529dd16
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><div dir=3D"auto"><br></div><br><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, 28 Mar 2019, 21:38=
 Greg KH, &lt;<a href=3D"mailto:gregkh@linuxfoundation.org">gregkh@linuxfou=
ndation.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On Thu, =
Mar 28, 2019 at 08:40:07PM +0530, Sanjana Sanikommu wrote:<br>
&gt; Remove unused variable. This variable is<br>
&gt; created unnecessarily for return type whose<br>
&gt; use is removed using ret.cocci.<br>
&gt; <br>
&gt; Signed-off-by: Sanjana Sanikommu &lt;<a href=3D"mailto:sanjana99reddy9=
9@gmail.com" target=3D"_blank" rel=3D"noreferrer">sanjana99reddy99@gmail.co=
m</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/rtlwifi/rtl8822be/phy.c | 1 -<br>
&gt;=C2=A0 1 file changed, 1 deletion(-)<br>
&gt; <br>
&gt; diff --git a/drivers/staging/rtlwifi/rtl8822be/phy.c b/drivers/staging=
/rtlwifi/rtl8822be/phy.c<br>
&gt; index aed315143cbb..ececfed7b35a 100644<br>
&gt; --- a/drivers/staging/rtlwifi/rtl8822be/phy.c<br>
&gt; +++ b/drivers/staging/rtlwifi/rtl8822be/phy.c<br>
&gt; @@ -1840,7 +1840,6 @@ static long _rtl8822be_phy_txpwr_idx_to_dbm(stru=
ct ieee80211_hw *hw,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0u8 txpwridx)<br>
&gt;=C2=A0 {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0long offset;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0long pwrout_dbm;<br>
<br>
Did you just cause this warning to happen with patch 1/2?=C2=A0 That&#39;s =
not<br>
ok, please put this together with that patch, you can not have any<br>
commit break the build, or add new build warnings.<br></blockquote></div></=
div><div dir=3D"auto">=C2=A0 =C2=A0 =C2=A0</div><div dir=3D"auto">=C2=A0 =
=C2=A0 I will put them together in one patch and send as v2</div><div dir=
=3D"auto">=C2=A0 =C2=A0 =C2=A0Sanjana</div><div dir=3D"auto"><div class=3D"=
gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;b=
order-left:1px #ccc solid;padding-left:1ex">
<br>
thanks,<br>
<br>
greg k-h<br>
</blockquote></div></div></div>

--00000000000008c206058529dd16--

