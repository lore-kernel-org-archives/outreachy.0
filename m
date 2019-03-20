X-GM-THRID: 6670157635256320000
X-Received: by 2002:a05:600c:2110:: with SMTP id u16mr663653wml.11.1553067768473;
        Wed, 20 Mar 2019 00:42:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:2d06:: with SMTP id t6ls235380wmt.10.gmail; Wed, 20 Mar
 2019 00:42:47 -0700 (PDT)
X-Google-Smtp-Source: APXvYqywufGaGRxyzmqobx1CPRFcUBtH3ADsq/dN5kxElJiGASvMPMfi0jxpSoYrelbslAp89UOu
X-Received: by 2002:a1c:e901:: with SMTP id q1mr116132wmc.12.1553067767215;
        Wed, 20 Mar 2019 00:42:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553067767; cv=none;
        d=google.com; s=arc-20160816;
        b=zW2aM5NuB2JrgwBlUVRmkarU5LKe8JWzeBSykiiMSs8iGJ8RaqI9WxBOuP3I9hTyHO
         MnPrZpCxg+P9UFD1ipFJjE7ubuIIs3TdbDvTe8TJItMS9287EnPSYrYAf8UcCNMXRUgL
         S1aA3hcJmVjQROEEUtc6CFMXwbUcq5YJdbjcuj3ul7XUwBb5d+aUxD5O9rH6Zfrj82P6
         CWX7y7596vqKN4cpL7QTXgrOOq7oUTNym/sCCkuPtFcN0GGUbIieyP/7mrGzEPjDqlJB
         Cj5FYHf/3ZzfdenX2yFqDRFBUtODJaBnSswQAgbEp8Z58sb5OI68QFRhZcCNp0cQvMHb
         ZGcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=3eQRqbkcMENKSSOGIOEhFQGAULN28oTe8BnGDjdoW7c=;
        b=oSVhzSXDo3bwAHqHUd6avpsdMIe1eoWk5ai751+kbHxS/8KogLH7MnqB1ZFsHteiZt
         SUKrrurEtrz59KmrfCnxdCKHNLSlWptwDAhTTfYu6kAWfOLX8UUUuF1uPX9PuBqe3H0j
         KDj+2nE0XC6exQWLZGp2I1S2ZkVOradEfH4hCr9UkuFMOdBJ3Nw2lGWVpzhG1bJ1jztZ
         eri4sPtJdnMw0OGaiUwFlnMWxgL7zpLOwJMh1Y11bFU2TXjj9nwhfGsSz6ucSTYmlvQm
         vze7rJdW5YW5xD6PvV61CXoM1P0lMCN5fsC3T9/TfbJ0rb4ivYJtW7fvSlDn2AH6xwb0
         cjiA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MILYx8Si;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2a00:1450:4864:20::542 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com. [2a00:1450:4864:20::542])
        by gmr-mx.google.com with ESMTPS id z129si177216wmc.2.2019.03.20.00.42.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Mar 2019 00:42:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2a00:1450:4864:20::542 as permitted sender) client-ip=2a00:1450:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MILYx8Si;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2a00:1450:4864:20::542 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x542.google.com with SMTP id d6so1107290eds.2
        for <outreachy-kernel@googlegroups.com>; Wed, 20 Mar 2019 00:42:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=3eQRqbkcMENKSSOGIOEhFQGAULN28oTe8BnGDjdoW7c=;
        b=MILYx8SixqhdAur4JEMHCE1cX5lNQNQozJLFXm6H7nlnFTAe3Omn2bdVvl3u0X1dV5
         k7kIozMJRzpQO22YLk1ftin8uAYQGtPDo8SAYQglqcuGpXMD1XHYHO0yThnVpX/Zw4I2
         dIFFcqOw8ArK/pyR+r21VVpaSrpiEmwDy9UBeXN/vzo3nhWPOutGsbctgO/niB9THab3
         AdTxFOmJ0qIKiibUop9Y3V+ikXU1wYH9B3H31O719s01Evl4XNYigW3E3UttgK/+2zi4
         PtT2tMjVYjHWgqXeOkmHNsrvcWyXgR8/jHYM33w+/u+MrABF2x3TlgwJmuLZlgBjQzBX
         nNZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=3eQRqbkcMENKSSOGIOEhFQGAULN28oTe8BnGDjdoW7c=;
        b=DzZ9u2EJ+7DwEvRGgCtpXfXTUhOBJLUXB6yiud9VA/dZbyNXePrv1REQWTiLXt4lj/
         kDjsk/1M+gHyfgHNOZ2g4cvG9ARqfUnA7NvFNhAnMMRQMz4xTKeqFLkFL2xoXYoIxvCN
         65p+QbmdWUOYwGjxBvIZiOqITeTsBykPmjPkhJe0J+mFfQlzoeNk0pf1Gsp4Fn6aBDwR
         C8XXsr8vn3KGG8ULswmsa5Oj/R1CKfXBYk1y3CiekxrBXg1qcdvUODboNdYDKJ7lKV/J
         GvV+JC5rx527PiOpOk/ZrE2OZxE5uCtQvf1utdgahU8iYIK4dljk4dNFiexo9bREoE8o
         2V+g==
X-Gm-Message-State: APjAAAVPgVae0LeKpNqzKgKyXXKTlBbkBBqhsmpRpCfv4kiF2m3rL9CY
	oDyUxOVdN8rqjuWs+cfP3aYanLlgXiHw0XuoJ9/C/EkL
X-Received: by 2002:a50:b1fa:: with SMTP id n55mr19367279edd.34.1553067766976;
 Wed, 20 Mar 2019 00:42:46 -0700 (PDT)
MIME-Version: 1.0
References: <20190319173759.4853-1-sanjana99reddy99@gmail.com> <20190320064815.GB11556@kroah.com>
In-Reply-To: <20190320064815.GB11556@kroah.com>
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
Date: Wed, 20 Mar 2019 13:12:34 +0530
Message-ID: <CAO-bXGA0d+V0gtb2gpfy=F8-HQ1vsdNArqHgbPVhSjiYPzh9nw@mail.gmail.com>
Subject: Re: [PATCH 17/17] staging: rtl8192u: ieee80211: ieee80211_tx.c:
 Adjust space around else.
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="00000000000090162e058481c4a3"

--00000000000090162e058481c4a3
Content-Type: text/plain; charset="UTF-8"

On Wed, 20 Mar 2019, 12:18 Greg KH, <gregkh@linuxfoundation.org> wrote:

> On Tue, Mar 19, 2019 at 11:07:59PM +0530, Sanjana Sanikommu wrote:
> > Fix the spacce around else.
> > Issue found by checkpatch.pl
> >
> > ERROR: spaces required before that open brace '{'
> > ERROR: spaces required before that close brace '}'
> >
> > Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
> > ---
> >  drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
>
> Where are the 16 other patches in this series?
>
There is only one patch . 17 was a typo.

>
> Please fix up and resend properly.
>
I send them in v2., You already picked up the one thank you :) :)
Sanjana

>
> thanks,
>
> greg k-h
>

--00000000000090162e058481c4a3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Wed, 20 Mar 2019, 12:18 Greg KH, &lt;<a href=3D"mai=
lto:gregkh@linuxfoundation.org">gregkh@linuxfoundation.org</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border=
-left:1px #ccc solid;padding-left:1ex">On Tue, Mar 19, 2019 at 11:07:59PM +=
0530, Sanjana Sanikommu wrote:<br>
&gt; Fix the spacce around else.<br>
&gt; Issue found by <a href=3D"http://checkpatch.pl" rel=3D"noreferrer nore=
ferrer" target=3D"_blank">checkpatch.pl</a><br>
&gt; <br>
&gt; ERROR: spaces required before that open brace &#39;{&#39;<br>
&gt; ERROR: spaces required before that close brace &#39;}&#39;<br>
&gt; <br>
&gt; Signed-off-by: Sanjana Sanikommu &lt;<a href=3D"mailto:sanjana99reddy9=
9@gmail.com" target=3D"_blank" rel=3D"noreferrer">sanjana99reddy99@gmail.co=
m</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c | 2 +-<br>
&gt;=C2=A0 1 file changed, 1 insertion(+), 1 deletion(-)<br>
<br>
Where are the 16 other patches in this series?<br></blockquote></div></div>=
<div dir=3D"auto">There is only one patch . 17 was a typo.</div><div dir=3D=
"auto"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
Please fix up and resend properly.<br></blockquote></div></div><div dir=3D"=
auto">I send them in v2., You already picked up the one thank you :) :)</di=
v><div dir=3D"auto">Sanjana</div><div dir=3D"auto"><div class=3D"gmail_quot=
e"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left=
:1px #ccc solid;padding-left:1ex">
<br>
thanks,<br>
<br>
greg k-h<br>
</blockquote></div></div></div>

--00000000000090162e058481c4a3--

