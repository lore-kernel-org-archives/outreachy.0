X-GM-THRID: 6667588004037525504
X-Received: by 2002:aa7:c64a:: with SMTP id z10mr1089902edr.0.1552468962087;
        Wed, 13 Mar 2019 02:22:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6402:1258:: with SMTP id l24ls313993edw.3.gmail; Wed, 13
 Mar 2019 02:22:41 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyTeAHyy1JovhCIDDXx0/IdR3KPulYsJih4QO8QvB9TDtf17YArH3wyKgksZFJusa1wCD3z
X-Received: by 2002:a50:eb05:: with SMTP id y5mr1117967edp.5.1552468961140;
        Wed, 13 Mar 2019 02:22:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552468961; cv=none;
        d=google.com; s=arc-20160816;
        b=CKxlxkSSNMBuN8D+bNyD1CLJLvTEoxgy7Gl8yXRpLWOjE1f1WpEiB32Y6dMDiYA8X0
         3QX2gb0R/BSW+5qfawSgpsry/fSSJv9ixjtdKvtWwhYVCZPTc703w5fj05gCrlARmAwR
         mPXh0fgrT86QURAhII1HvmZ+kQAET2Wq2JYURJY0/PFgI0EqLdtbbEtKgaEwxuVQ85Aw
         YMzugc7OP/MKwirEWzVQZQy9BL6FaFcC8S8ZiT3DKP6/B/ERoJk/ZkIZAVq4HWAEld/E
         06wqPb9wJ1IV7mBmsno70vadTsawvMxEvplqOjra58h6aaM7QmfwSCLFMBVWrrDVF73T
         s6qQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=CH/kR9qF/hdtSEpeEQC33aPX3xXJOww2T9LlqokWut4=;
        b=QmklSFjBecgxASzswHdfEYrNICt6Cue3uG0IbaDe3DCQW+ZdgBZVtLl/SD+PoVoK0U
         kPLDOdUrPFOHwZSrTQlJ5i0CHrkgcRes5CeewaZAK369jsQQ8NWeoA0yCgJJZhX4EJP1
         xMG9fyGoiOz4tbq6tinqM68yhrXD16vwZEs98P6XywYL+sPLW0FgjnDtiwe3fv/AfiCP
         nMYKqRKwDGP0b/yFEuy4zEj4ODfFEKq+WmbF5xJni7A7kzklX0b/gT32oup28KjAgBBg
         +OQ360j74bCn/887I9USFIoxLDvpOGlZXwoj2uAb1fq8k17g7cc9JKc0Uy4pEG7gmDog
         z4Vw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ONtJ4T0Z;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2a00:1450:4864:20::542 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com. [2a00:1450:4864:20::542])
        by gmr-mx.google.com with ESMTPS id r37si34060edd.2.2019.03.13.02.22.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Mar 2019 02:22:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2a00:1450:4864:20::542 as permitted sender) client-ip=2a00:1450:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ONtJ4T0Z;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2a00:1450:4864:20::542 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x542.google.com with SMTP id d12so860451edp.0
        for <outreachy-kernel@googlegroups.com>; Wed, 13 Mar 2019 02:22:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=CH/kR9qF/hdtSEpeEQC33aPX3xXJOww2T9LlqokWut4=;
        b=ONtJ4T0ZG66a9kz9Y8+KG5/HUfRLv0lPoSL4e69ZqdDevCG6mycGpbuOweNuDWZrK9
         aHbWygXLDzKfAc2F7i7LLeUkYvu1LVI+EWOWtw9xQpCPPLalB1KuDi3olThg23egdW2/
         0i7tDykJCjwB3ZpzNUtlnPvO9hM4vXkWNJtf85lfXboVAAqfrVE7b1OWFRSc7jlPQmRh
         runLAY5fkgKGJ8aekt/9jbcfN2/o2fG4IBGJ/Qid0iecIRzTdCJCIP8rEJhhH5OE7ejx
         oHJC//eIZSaWtlaJ2Yn8d3JOHGEBJuyK6a6dc1cbGFyJuH/27uM6GcgbmlLfwnTqOo//
         vcyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=CH/kR9qF/hdtSEpeEQC33aPX3xXJOww2T9LlqokWut4=;
        b=ZcK4Osoilhz9vB+CVE7/amAO92ZaJoeOUPeIUCXONMDDjxFD1FfjKMgb2WFrWMtweG
         Gt0dl9iyrVtrX+4tzSqQ0q2neoV5XvG7y5RF5sTrZVMmA5dad4xzAqx0clXdmWT3u20y
         4EK6TJGy7wMa52qXCT9K8K1y0iPUQvQRQHcVdPc/hdjHm5E31LPYu5v2qVCd3P1qkOOf
         FrfrnAdM/YHo4LznalpSe2L716Sbz2EZHUbJ9Ffs6Mk7vlaiec5Fq4zh7MvIg+9K6kXE
         qNsplN1s1XCpHvhvWpl1VQjPk/Wpvvx3EzEYLNTJPvzO/LHvZAgkICFqmB0+/T++kEHe
         SBoA==
X-Gm-Message-State: APjAAAURmRI3fJCOO+CpPI7TWin7QusRawmcRD4agunUZQy59GqPMe/i
	SR9Peul8yC5AhlrUWwJFH6kFE1h67qzjYNQciyc=
X-Received: by 2002:a50:b482:: with SMTP id w2mr7046692edd.41.1552468960862;
 Wed, 13 Mar 2019 02:22:40 -0700 (PDT)
MIME-Version: 1.0
References: <CAO-bXGAEHi=_uf7jD+1_+iNhx594rRAak_OBfTVpGenhVUJ2Xg@mail.gmail.com>
 <20190312194137.GA29260@kroah.com> <20190312194836.GB6580@kroah.com>
 <CAO-bXGBSvngtL5dF+njH3QpLZfme6UWxNkLdS64FETSXQ+cmJg@mail.gmail.com> <CAO-bXGD2WYekE6pT-6DM-4W7ZMWEw6jpk4qLaiRY_nfSzc4RmA@mail.gmail.com>
In-Reply-To: <CAO-bXGD2WYekE6pT-6DM-4W7ZMWEw6jpk4qLaiRY_nfSzc4RmA@mail.gmail.com>
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
Date: Wed, 13 Mar 2019 14:52:28 +0530
Message-ID: <CAO-bXGAZXP2zCUKymYTWG5_ijtsbGqyi6j4LVx3vHr7Qs7kxqw@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: [PATCH] Staging: rtl8188eu: rtw_recv.c:
 fixed a space indentation issue
To: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com, 
	Julia Lawall <Julia.Lawall@lip6.fr>
Content-Type: multipart/alternative; boundary="000000000000efe7df0583f658a9"

--000000000000efe7df0583f658a9
Content-Type: text/plain; charset="UTF-8"

1.Could you please review this patch and suggest me any changes?

2. How do I know whether this patch is approved or not?

Thanks
Sanjana.


On Wed, 13 Mar 2019, 08:39 Sanjana Sanikommu, <sanjana99reddy99@gmail.com>
wrote:

> Subject: [PATCH] Staging: rtl8188eu: rtw_recv.c: fix a tab indent issue
>
> Fix a tab issue in 2 lines which removed no extra space before starting
> a line warning. This warning appeared when I compiled checkpatch.pl in
> rtw_recv.c,
>
> Signed-off-by: Sanjana Sanikommu<sanjana99reddy99@gmail.com>
>
> ---
>  drivers/staging/rtl8188eu/core/rtw_recv.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/rtl8188eu/core/rtw_recv.c
> b/drivers/staging/rtl8188eu/core/rtw_recv.c
> index 1d83affc08ce..cc6f1a23da01 100644
> --- a/drivers/staging/rtl8188eu/core/rtw_recv.c
> +++ b/drivers/staging/rtl8188eu/core/rtw_recv.c
> @@ -24,11 +24,11 @@ static u8 SNAP_ETH_TYPE_APPLETALK_AARP[2] = {0x80,
> 0xf3};
>
>  /* Bridge-Tunnel header (for EtherTypes ETH_P_AARP and ETH_P_IPX) */
>  static u8 rtw_bridge_tunnel_header[] = {
> -       0xaa, 0xaa, 0x03, 0x00, 0x00, 0xf8
> +        0xaa, 0xaa, 0x03, 0x00, 0x00, 0xf8
>  };
>
>  static u8 rtw_rfc1042_header[] = {
> -       0xaa, 0xaa, 0x03, 0x00, 0x00, 0x00
> +       0xaa, 0xaa, 0x03, 0x00, 0x00, 0x00
>  };
>
>  static void rtw_signal_stat_timer_hdl(struct timer_list *t);
> --
> 2.17.1
>
>
> On Wed, Mar 13, 2019 at 8:36 AM Sanjana Sanikommu <
> sanjana99reddy99@gmail.com> wrote:
>
>> I reedited the file by taking note of the above mentioned mistakes. I
>> would be resending the patch as this has lot of mistakes :)
>>
>> On Wed, Mar 13, 2019 at 1:18 AM Greg KH <gregkh@linuxfoundation.org>
>> wrote:
>>
>>> On Tue, Mar 12, 2019 at 12:41:37PM -0700, Greg KH wrote:
>>> > On Wed, Mar 13, 2019 at 12:56:34AM +0530, Sanjana Reddy wrote:
>>> > > Fixed a space in 2 lines which removed warnings.
>>> > > Signed-off-by: Sanjana <sanjana99reddy99@gmail.com>
>>> >
>>> > Please put a blank line between the changelog text and your
>>> > signed-off-by: line, otherwise the tools will choke :(
>>>
>>> Also we need a "real" name here, not just a first name.  And your email
>>> address should be correct, it's bouncing right now :(
>>>
>>> thanks,
>>>
>>> greg k-h
>>>
>>

--000000000000efe7df0583f658a9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">1.Could you please review this patch and suggest me any c=
hanges?=C2=A0<div dir=3D"auto"><br></div><div dir=3D"auto">2. How do I know=
 whether this patch is approved or not?</div><div dir=3D"auto">=C2=A0</div>=
<div dir=3D"auto">Thanks=C2=A0</div><div dir=3D"auto">Sanjana.<br><div dir=
=3D"auto"><br></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"=
ltr" class=3D"gmail_attr">On Wed, 13 Mar 2019, 08:39 Sanjana Sanikommu, &lt=
;<a href=3D"mailto:sanjana99reddy99@gmail.com">sanjana99reddy99@gmail.com</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div=
 dir=3D"ltr"><div>Subject: [PATCH] Staging: rtl8188eu: rtw_recv.c: fix a ta=
b indent issue</div><div><br></div><div>Fix a tab issue in 2 lines which re=
moved no extra space before starting</div><div>a line warning. This warning=
 appeared when I compiled <a href=3D"http://checkpatch.pl" target=3D"_blank=
" rel=3D"noreferrer">checkpatch.pl</a> in</div><div>rtw_recv.c,</div><div><=
br></div><div>Signed-off-by: Sanjana Sanikommu&lt;<a href=3D"mailto:sanjana=
99reddy99@gmail.com" target=3D"_blank" rel=3D"noreferrer">sanjana99reddy99@=
gmail.com</a>&gt;</div><div><br></div><div>---</div><div>=C2=A0drivers/stag=
ing/rtl8188eu/core/rtw_recv.c | 4 ++--</div><div>=C2=A01 file changed, 2 in=
sertions(+), 2 deletions(-)</div><div><br></div><div>diff --git a/drivers/s=
taging/rtl8188eu/core/rtw_recv.c b/drivers/staging/rtl8188eu/core/rtw_recv.=
c</div><div>index 1d83affc08ce..cc6f1a23da01 100644</div><div>--- a/drivers=
/staging/rtl8188eu/core/rtw_recv.c</div><div>+++ b/drivers/staging/rtl8188e=
u/core/rtw_recv.c</div><div>@@ -24,11 +24,11 @@ static u8 SNAP_ETH_TYPE_APP=
LETALK_AARP[2] =3D {0x80, 0xf3};</div><div><br></div><div>=C2=A0/* Bridge-T=
unnel header (for EtherTypes ETH_P_AARP and ETH_P_IPX) */</div><div>=C2=A0s=
tatic u8 rtw_bridge_tunnel_header[] =3D {</div><div>-=C2=A0 =C2=A0 =C2=A0 =
=C2=A00xaa, 0xaa, 0x03, 0x00, 0x00, 0xf8</div><div>+=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 0xaa, 0xaa, 0x03, 0x00, 0x00, 0xf8</div><div>=C2=A0};</div><div><br>=
</div><div>=C2=A0static u8 rtw_rfc1042_header[] =3D {</div><div>-=C2=A0 =C2=
=A0 =C2=A0 =C2=A00xaa, 0xaa, 0x03, 0x00, 0x00, 0x00</div><div>+=C2=A0 =C2=
=A0 =C2=A0 =C2=A00xaa, 0xaa, 0x03, 0x00, 0x00, 0x00</div><div>=C2=A0};</div=
><div><br></div><div>=C2=A0static void rtw_signal_stat_timer_hdl(struct tim=
er_list *t);</div><div>--=C2=A0</div><div>2.17.1</div><div><br></div></div>=
</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=
On Wed, Mar 13, 2019 at 8:36 AM Sanjana Sanikommu &lt;<a href=3D"mailto:san=
jana99reddy99@gmail.com" target=3D"_blank" rel=3D"noreferrer">sanjana99redd=
y99@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex"><div dir=3D"ltr">I reedited the file by taking note of the abo=
ve mentioned mistakes. I would be resending the patch as this has lot of mi=
stakes :)=C2=A0</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Wed, Mar 13, 2019 at 1:18 AM Greg KH &lt;<a href=3D"mail=
to:gregkh@linuxfoundation.org" target=3D"_blank" rel=3D"noreferrer">gregkh@=
linuxfoundation.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex">On Tue, Mar 12, 2019 at 12:41:37PM -0700, Greg KH wrote:=
<br>
&gt; On Wed, Mar 13, 2019 at 12:56:34AM +0530, Sanjana Reddy wrote:<br>
&gt; &gt; Fixed a space in 2 lines which removed warnings.<br>
&gt; &gt; Signed-off-by: Sanjana &lt;<a href=3D"mailto:sanjana99reddy99@gma=
il.com" target=3D"_blank" rel=3D"noreferrer">sanjana99reddy99@gmail.com</a>=
&gt;<br>
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
</blockquote></div>

--000000000000efe7df0583f658a9--

