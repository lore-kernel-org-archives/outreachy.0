X-GM-THRID: 10218275602432
X-Received: by 10.182.104.37 with SMTP id gb5mr30323828obb.45.1427576852318;
        Sat, 28 Mar 2015 14:07:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.28.75 with SMTP id 69ls1635618qgy.7.gmail; Sat, 28 Mar
 2015 14:07:32 -0700 (PDT)
X-Received: by 10.236.4.100 with SMTP id 64mr30139988yhi.43.1427576852081;
        Sat, 28 Mar 2015 14:07:32 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id gu4si609084pac.1.2015.03.28.14.07.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Mar 2015 14:07:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mail=ciorneiioana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pacwz10 with SMTP id wz10so77698825pac.2
        for <outreachy-kernel@googlegroups.com>; Sat, 28 Mar 2015 14:07:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=tPo60f7gU++2voeDSf2PsaVj1MicGmj2w4EKmDWN6qY=;
        b=Y6re/jZb0NAcd40XcOwmG5EY1uFRwwZBE7yVtaHLv02FLjjrH3mJpNQCxzoWbva2xN
         CgDm6+h5/7P1+97Gz2+sCLv6XcmbLxVmM2vhKlmT44iryZn++edjwP0N6PUZaWe09Fds
         1xhz5loLalANeBdmSQHbmewOHOpk3V8pnbWZ9nmsT1TiSzMnTXbvIKQH1hJct6docVGe
         ardDY/eperXn313wXUu/F3OsQ+N0Cx5CXm/ijiq0/PrRTP6Pu0rrrNGFX4H+vvhagBFV
         w78SDaqXcN2SNpAuNN1mvtGR3LRsrQnkPzPKXcuXI63ND8JsCuUBdRWz/oGnHJqnX/+a
         9upQ==
MIME-Version: 1.0
X-Received: by 10.70.39.73 with SMTP id n9mr3387951pdk.159.1427576851925; Sat,
 28 Mar 2015 14:07:31 -0700 (PDT)
Received: by 10.70.124.101 with HTTP; Sat, 28 Mar 2015 14:07:31 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.02.1503282200250.1969@localhost6.localdomain6>
References: <1427576004-22684-1-git-send-email-ciorneiioana@gmail.com>
	<alpine.DEB.2.02.1503282200250.1969@localhost6.localdomain6>
Date: Sat, 28 Mar 2015 23:07:31 +0200
Message-ID: <CAHWJYFmAdgdO=BRN+zwGUYdLEP41Xk_u=57w_sucLgULUU0KYg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: r8192U_core: Remove
 unnecessary check
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=089e0158c2862610fe05125fa307

--089e0158c2862610fe05125fa307
Content-Type: text/plain; charset=UTF-8

On Sat, Mar 28, 2015 at 11:01 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> On Sat, 28 Mar 2015, Ioana Ciornei wrote:
>
>> Remove unnecessary check since kfree() handles NULL pointers fine.
>>
>> Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
>> ---
>>  drivers/staging/rtl8192u/r8192U_core.c | 13 ++++---------
>>  1 file changed, 4 insertions(+), 9 deletions(-)
>>
>> diff --git a/drivers/staging/rtl8192u/r8192U_core.c
b/drivers/staging/rtl8192u/r8192U_core.c
>> index 8834c23..bce44ba 100644
>> --- a/drivers/staging/rtl8192u/r8192U_core.c
>> +++ b/drivers/staging/rtl8192u/r8192U_core.c
>> @@ -1724,10 +1724,8 @@ static void rtl8192_usb_deleteendpoints(struct
net_device *dev)
>>       }
>>       kfree(priv->oldaddr);
>>       priv->oldaddr = NULL;
>> -     if (priv->pp_rxskb) {
>> -             kfree(priv->pp_rxskb);
>> -             priv->pp_rxskb = NULL;
>> -     }
>> +     kfree(priv->pp_rxskb);
>> +     priv->pp_rxskb = NULL;
>>  }
>>  #else
>>  void rtl8192_usb_deleteendpoints(struct net_device *dev)
>> @@ -1752,11 +1750,8 @@ void rtl8192_usb_deleteendpoints(struct
net_device *dev)
>>       priv->rx_urb = NULL;
>>       kfree(priv->oldaddr);
>>       priv->oldaddr = NULL;
>> -     if (priv->pp_rxskb) {
>> -             kfree(priv->pp_rxskb);
>> -             priv->pp_rxskb = 0;
>> -
>> -     }
>> +     kfree(priv->pp_rxskb);
>> +     priv->pp_rxskb = 0;
>
> I guess it should be a separate change, but since priv->pp_rxskb is an
> argument to kfree it presumably has pointer type, and thus 0 should be
> NULL like in the other assignments above.
>
> julia


I noticed that too but saved it for another patch. I will send it too.

Ioana

--089e0158c2862610fe05125fa307
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Sat, Mar 28, 2015 at 11:01 PM, Julia Lawall &lt=
;<a href=3D"mailto:julia.lawall@lip6.fr">julia.lawall@lip6.fr</a>&gt; wrote=
:<br>&gt; On Sat, 28 Mar 2015, Ioana Ciornei wrote:<br>&gt;<br>&gt;&gt; Rem=
ove unnecessary check since kfree() handles NULL pointers fine.<br>&gt;&gt;=
<br>&gt;&gt; Signed-off-by: Ioana Ciornei &lt;<a href=3D"mailto:ciorneiioan=
a@gmail.com">ciorneiioana@gmail.com</a>&gt;<br>&gt;&gt; ---<br>&gt;&gt; =C2=
=A0drivers/staging/rtl8192u/r8192U_core.c | 13 ++++---------<br>&gt;&gt; =
=C2=A01 file changed, 4 insertions(+), 9 deletions(-)<br>&gt;&gt;<br>&gt;&g=
t; diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rt=
l8192u/r8192U_core.c<br>&gt;&gt; index 8834c23..bce44ba 100644<br>&gt;&gt; =
--- a/drivers/staging/rtl8192u/r8192U_core.c<br>&gt;&gt; +++ b/drivers/stag=
ing/rtl8192u/r8192U_core.c<br>&gt;&gt; @@ -1724,10 +1724,8 @@ static void r=
tl8192_usb_deleteendpoints(struct net_device *dev)<br>&gt;&gt; =C2=A0 =C2=
=A0 =C2=A0 }<br>&gt;&gt; =C2=A0 =C2=A0 =C2=A0 kfree(priv-&gt;oldaddr);<br>&=
gt;&gt; =C2=A0 =C2=A0 =C2=A0 priv-&gt;oldaddr =3D NULL;<br>&gt;&gt; - =C2=
=A0 =C2=A0 if (priv-&gt;pp_rxskb) {<br>&gt;&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 kfree(priv-&gt;pp_rxskb);<br>&gt;&gt; - =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 priv-&gt;pp_rxskb =3D NULL;<br>&gt;&gt; - =C2=A0 =
=C2=A0 }<br>&gt;&gt; + =C2=A0 =C2=A0 kfree(priv-&gt;pp_rxskb);<br>&gt;&gt; =
+ =C2=A0 =C2=A0 priv-&gt;pp_rxskb =3D NULL;<br>&gt;&gt; =C2=A0}<br>&gt;&gt;=
 =C2=A0#else<br>&gt;&gt; =C2=A0void rtl8192_usb_deleteendpoints(struct net_=
device *dev)<br>&gt;&gt; @@ -1752,11 +1750,8 @@ void rtl8192_usb_deleteendp=
oints(struct net_device *dev)<br>&gt;&gt; =C2=A0 =C2=A0 =C2=A0 priv-&gt;rx_=
urb =3D NULL;<br>&gt;&gt; =C2=A0 =C2=A0 =C2=A0 kfree(priv-&gt;oldaddr);<br>=
&gt;&gt; =C2=A0 =C2=A0 =C2=A0 priv-&gt;oldaddr =3D NULL;<br>&gt;&gt; - =C2=
=A0 =C2=A0 if (priv-&gt;pp_rxskb) {<br>&gt;&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 kfree(priv-&gt;pp_rxskb);<br>&gt;&gt; - =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 priv-&gt;pp_rxskb =3D 0;<br>&gt;&gt; -<br>&gt;&gt;=
 - =C2=A0 =C2=A0 }<br>&gt;&gt; + =C2=A0 =C2=A0 kfree(priv-&gt;pp_rxskb);<br=
>&gt;&gt; + =C2=A0 =C2=A0 priv-&gt;pp_rxskb =3D 0;<br>&gt;<br>&gt; I guess =
it should be a separate change, but since priv-&gt;pp_rxskb is an<br>&gt; a=
rgument to kfree it presumably has pointer type, and thus 0 should be<br>&g=
t; NULL like in the other assignments above.<br>&gt;<br>&gt; julia<br><br><=
br><div>I noticed that too but saved it for another patch. I will send it t=
oo.</div><div><br></div><div>Ioana</div></div>

--089e0158c2862610fe05125fa307--

