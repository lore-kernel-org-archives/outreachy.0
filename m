X-GM-THRID: 6667588004037525504
X-Received: by 2002:a05:6402:1659:: with SMTP id s25mr934271edx.2.1552446556746;
        Tue, 12 Mar 2019 20:09:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:1909:: with SMTP id a9ls97047eje.3.gmail; Tue, 12
 Mar 2019 20:09:15 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx3zmb31y6WusBJUkEgRQorhy2qLxsVYGi5KRZwY/KQQnym5PUH/+m21AY+yHFgiPLUawk5
X-Received: by 2002:a17:906:228b:: with SMTP id p11mr4732403eja.1.1552446555467;
        Tue, 12 Mar 2019 20:09:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552446555; cv=none;
        d=google.com; s=arc-20160816;
        b=KoN2hlLNIuRQP2byeDwrQNHnd9CklfkY048slWpLscqnLjZijfxSHbCHPrX4J90M3J
         b/oc7wD3l6X10ZQFRFQ5VG1Rvw8LbKunrO+BHfzF64D1o6rSSq+jEu5tVjQEF0yqs+K6
         VoC5Z8e7/0JFUdE1UidlY9n1v/j6sq6kPLulKLZSFcveCbiXpM37DaWlJ1H89hznFF7F
         yL/UcNw1twXEcRpI189ywuHD7ASDM9T3d3ZldHzy4xtETO/AGE+80GEsWCn3q4UEDLgP
         eoJ+H4vs0LjfE+xvTBTHF+66W4C9c9Yu2bZmfEN+32hNJzln/AoBBLxMkiFKoV/uVCoD
         hccg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=GPPiRrnJp+/Rzqv1GEz3jqf3ZK1K2tio6sd1jC9iMPA=;
        b=NJaGa8M7Ik9hawwR3jHhmCVNQDlg2tiju//S8hNCyUUaEPrmgohsBTYt9+E2m6rmwY
         FxFhV2Jjp158R+IXkWRxsYEYH4597Ed4v9IQ4e0iktKwB1EugOg84OP4UXZIYOe04gOH
         DJR9f7fVDZXqzARVZetSJ7zkYIwBqAuPy5VFWHagxdcj1YfcCg5aKkWQo1t6HnUBiCsg
         lsw+j37oFNjbsDQrYwsTzBOXUF/MX+ybPl7E2GstW/iqBNRo6BZlwpV1T0NHGfYwGBwF
         aoIaQ60OY+h9acCK0WMtgRq/6EPcaetlHipYA7/4iX+NSA9vEJor5qJMMGVexAyUMozI
         1bHA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Jcdp6iGq;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2a00:1450:4864:20::541 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com. [2a00:1450:4864:20::541])
        by gmr-mx.google.com with ESMTPS id h5si29134ejq.0.2019.03.12.20.09.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Mar 2019 20:09:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2a00:1450:4864:20::541 as permitted sender) client-ip=2a00:1450:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Jcdp6iGq;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2a00:1450:4864:20::541 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x541.google.com with SMTP id n17so165935edt.13
        for <outreachy-kernel@googlegroups.com>; Tue, 12 Mar 2019 20:09:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=GPPiRrnJp+/Rzqv1GEz3jqf3ZK1K2tio6sd1jC9iMPA=;
        b=Jcdp6iGq/RGuupE82FAf7nA7kWvZjiPPCnwUXHPex8HYdqij5M3icL8GCSkG/7Ozzh
         MMMY4HuI2YpGPY5XKHOQR2JR/3fzI6lhdMoUE5jrjJn9BdzIZQFWWUOOUIvbR+s5+P/r
         sAqwRzGT7wJhXhtPxsflHC4uCylR9DkJ1pd+Il+CYKL2RrD5YFOZRO0D7BfU3gsFd0mv
         q+YI1Be7jgOaOtmmROvgVcjjFVA8eX7jOD9INwd/d4ezmmns64PzcDY+Le6Lsro26bKo
         WZMaAhD/ErzKuI6fxZzGRq5ifYIzYguGS5MRV3zvMzkeavgIbi4vnTjq9nyTJxpN1nrX
         5kig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=GPPiRrnJp+/Rzqv1GEz3jqf3ZK1K2tio6sd1jC9iMPA=;
        b=U4VJi87r36SECRDeW0L/h+5fvxTJRaqKYPFhbNb9uK4qqsqap8n+XDQPviydpO/a9l
         woLYKedSBH9/isnoQSLcil1trN9YW2ypag9V8PrklccRj06LzjUiT/1W1okGJPxnbFtf
         /AM4Ln4IaoNuD7zb5BS/p8jSNpWMfJ5nWQTOhPRHzWz+lpXaU0robCN1eZygHgTzaIwP
         X4aM0+DmtTHgV4G8XqznS2HukEmbGl1KG0J5W6MTQmrJJWXH8rwNRq+V5f9maOeE9w/9
         ZTQYa5wzKFPDDgSeU6tN5CtDY2kJDxuRrgY9ZAj0SIdfPit0b8YNndS0qv6QnKAaNHKN
         ajJg==
X-Gm-Message-State: APjAAAV+i+QuSIqMx57LS71xkj3/kbaWWvgJ06Hw1PGjgqxp3UWDWBKz
	ty0f15OOZ5FUi/gjROYrWmE89BdeZMvqaIf6Iw4=
X-Received: by 2002:aa7:da0f:: with SMTP id r15mr5905512eds.34.1552446555203;
 Tue, 12 Mar 2019 20:09:15 -0700 (PDT)
MIME-Version: 1.0
References: <CAO-bXGAEHi=_uf7jD+1_+iNhx594rRAak_OBfTVpGenhVUJ2Xg@mail.gmail.com>
 <20190312194137.GA29260@kroah.com> <20190312194836.GB6580@kroah.com> <CAO-bXGBSvngtL5dF+njH3QpLZfme6UWxNkLdS64FETSXQ+cmJg@mail.gmail.com>
In-Reply-To: <CAO-bXGBSvngtL5dF+njH3QpLZfme6UWxNkLdS64FETSXQ+cmJg@mail.gmail.com>
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
Date: Wed, 13 Mar 2019 08:39:04 +0530
Message-ID: <CAO-bXGD2WYekE6pT-6DM-4W7ZMWEw6jpk4qLaiRY_nfSzc4RmA@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: [PATCH] Staging: rtl8188eu: rtw_recv.c:
 fixed a space indentation issue
To: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com, 
	Julia Lawall <Julia.Lawall@lip6.fr>
Content-Type: multipart/alternative; boundary="00000000000074aafa0583f12110"

--00000000000074aafa0583f12110
Content-Type: text/plain; charset="UTF-8"

Subject: [PATCH] Staging: rtl8188eu: rtw_recv.c: fix a tab indent issue

Fix a tab issue in 2 lines which removed no extra space before starting
a line warning. This warning appeared when I compiled checkpatch.pl in
rtw_recv.c,

Signed-off-by: Sanjana Sanikommu<sanjana99reddy99@gmail.com>

---
 drivers/staging/rtl8188eu/core/rtw_recv.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_recv.c
b/drivers/staging/rtl8188eu/core/rtw_recv.c
index 1d83affc08ce..cc6f1a23da01 100644
--- a/drivers/staging/rtl8188eu/core/rtw_recv.c
+++ b/drivers/staging/rtl8188eu/core/rtw_recv.c
@@ -24,11 +24,11 @@ static u8 SNAP_ETH_TYPE_APPLETALK_AARP[2] = {0x80,
0xf3};

 /* Bridge-Tunnel header (for EtherTypes ETH_P_AARP and ETH_P_IPX) */
 static u8 rtw_bridge_tunnel_header[] = {
-       0xaa, 0xaa, 0x03, 0x00, 0x00, 0xf8
+        0xaa, 0xaa, 0x03, 0x00, 0x00, 0xf8
 };

 static u8 rtw_rfc1042_header[] = {
-       0xaa, 0xaa, 0x03, 0x00, 0x00, 0x00
+       0xaa, 0xaa, 0x03, 0x00, 0x00, 0x00
 };

 static void rtw_signal_stat_timer_hdl(struct timer_list *t);
-- 
2.17.1


On Wed, Mar 13, 2019 at 8:36 AM Sanjana Sanikommu <
sanjana99reddy99@gmail.com> wrote:

> I reedited the file by taking note of the above mentioned mistakes. I
> would be resending the patch as this has lot of mistakes :)
>
> On Wed, Mar 13, 2019 at 1:18 AM Greg KH <gregkh@linuxfoundation.org>
> wrote:
>
>> On Tue, Mar 12, 2019 at 12:41:37PM -0700, Greg KH wrote:
>> > On Wed, Mar 13, 2019 at 12:56:34AM +0530, Sanjana Reddy wrote:
>> > > Fixed a space in 2 lines which removed warnings.
>> > > Signed-off-by: Sanjana <sanjana99reddy99@gmail.com>
>> >
>> > Please put a blank line between the changelog text and your
>> > signed-off-by: line, otherwise the tools will choke :(
>>
>> Also we need a "real" name here, not just a first name.  And your email
>> address should be correct, it's bouncing right now :(
>>
>> thanks,
>>
>> greg k-h
>>
>

--00000000000074aafa0583f12110
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Subject: [PATCH] Staging: rtl8188eu:=
 rtw_recv.c: fix a tab indent issue</div><div><br></div><div>Fix a tab issu=
e in 2 lines which removed no extra space before starting</div><div>a line =
warning. This warning appeared when I compiled <a href=3D"http://checkpatch=
.pl">checkpatch.pl</a> in</div><div>rtw_recv.c,</div><div><br></div><div>Si=
gned-off-by: Sanjana Sanikommu&lt;<a href=3D"mailto:sanjana99reddy99@gmail.=
com">sanjana99reddy99@gmail.com</a>&gt;</div><div><br></div><div>---</div><=
div>=C2=A0drivers/staging/rtl8188eu/core/rtw_recv.c | 4 ++--</div><div>=C2=
=A01 file changed, 2 insertions(+), 2 deletions(-)</div><div><br></div><div=
>diff --git a/drivers/staging/rtl8188eu/core/rtw_recv.c b/drivers/staging/r=
tl8188eu/core/rtw_recv.c</div><div>index 1d83affc08ce..cc6f1a23da01 100644<=
/div><div>--- a/drivers/staging/rtl8188eu/core/rtw_recv.c</div><div>+++ b/d=
rivers/staging/rtl8188eu/core/rtw_recv.c</div><div>@@ -24,11 +24,11 @@ stat=
ic u8 SNAP_ETH_TYPE_APPLETALK_AARP[2] =3D {0x80, 0xf3};</div><div><br></div=
><div>=C2=A0/* Bridge-Tunnel header (for EtherTypes ETH_P_AARP and ETH_P_IP=
X) */</div><div>=C2=A0static u8 rtw_bridge_tunnel_header[] =3D {</div><div>=
-=C2=A0 =C2=A0 =C2=A0 =C2=A00xaa, 0xaa, 0x03, 0x00, 0x00, 0xf8</div><div>+=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 0xaa, 0xaa, 0x03, 0x00, 0x00, 0xf8</div><div>=
=C2=A0};</div><div><br></div><div>=C2=A0static u8 rtw_rfc1042_header[] =3D =
{</div><div>-=C2=A0 =C2=A0 =C2=A0 =C2=A00xaa, 0xaa, 0x03, 0x00, 0x00, 0x00<=
/div><div>+=C2=A0 =C2=A0 =C2=A0 =C2=A00xaa, 0xaa, 0x03, 0x00, 0x00, 0x00</d=
iv><div>=C2=A0};</div><div><br></div><div>=C2=A0static void rtw_signal_stat=
_timer_hdl(struct timer_list *t);</div><div>--=C2=A0</div><div>2.17.1</div>=
<div><br></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Wed, Mar 13, 2019 at 8:36 AM Sanjana Sanikommu &lt;=
<a href=3D"mailto:sanjana99reddy99@gmail.com">sanjana99reddy99@gmail.com</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><di=
v dir=3D"ltr">I reedited the file by taking note of the above mentioned mis=
takes. I would be resending the patch as this has lot of mistakes :)=C2=A0<=
/div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">O=
n Wed, Mar 13, 2019 at 1:18 AM Greg KH &lt;<a href=3D"mailto:gregkh@linuxfo=
undation.org" target=3D"_blank">gregkh@linuxfoundation.org</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">On Tue, Mar 12, 2=
019 at 12:41:37PM -0700, Greg KH wrote:<br>
&gt; On Wed, Mar 13, 2019 at 12:56:34AM +0530, Sanjana Reddy wrote:<br>
&gt; &gt; Fixed a space in 2 lines which removed warnings.<br>
&gt; &gt; Signed-off-by: Sanjana &lt;<a href=3D"mailto:sanjana99reddy99@gma=
il.com" target=3D"_blank">sanjana99reddy99@gmail.com</a>&gt;<br>
&gt; <br>
&gt; Please put a blank line between the changelog text and your<br>
&gt; signed-off-by: line, otherwise the tools will choke :(<br>
<br>
Also we need a &quot;real&quot; name here, not just a first name.=C2=A0 And=
 your email<br>
address should be correct, it&#39;s bouncing right now :(<br>
<br>
thanks,<br>
<br>
greg k-h<br>
</blockquote></div>
</blockquote></div>

--00000000000074aafa0583f12110--

