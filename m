X-GM-THRID: 6675179920364142592
X-Received: by 2002:ac2:4856:: with SMTP id 22mr2041945lfy.12.1554187453514;
        Mon, 01 Apr 2019 23:44:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:43af:: with SMTP id t15ls1058574lfl.8.gmail; Mon, 01 Apr
 2019 23:44:12 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxqh3ulcov4tdnllRxOCw2gwmwKNi1I45uWpoD6zIlaXTs3eABhaIWG3ebUtthAdRWN5pW/
X-Received: by 2002:ac2:4219:: with SMTP id y25mr2047221lfh.16.1554187452957;
        Mon, 01 Apr 2019 23:44:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554187452; cv=none;
        d=google.com; s=arc-20160816;
        b=VrS48AQUzuCfbiF1lBJpmnCbUte73E8A2xJHax3e0IdM9p5Q4X07HHgpc3wFngv1ia
         BmFQuiMm4p1zOXhm2M3vL62X6PXrYjtP+Sj59MzWwnrlFMQ0XMea7LxkVox46fRGVl/f
         QGFYvMIprKCO0h659mg3rcBHIVldcUzDOLUVduDFjng80QqND65mTE0hQEyfmRp6CjuJ
         7s9f9lgF7EgfPdsE94W48LlNpzvXek5gEDyckoYPNJDZFe4S1Mu442bcXDZPHo6lUHZp
         euVR0twfvSwA0q480iXD0PyJkusMmSeB1bQAh+cdIYVgNWOO95ahNk5lX2XofLS/3RWf
         ckog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=18r7hg+Yr2+cRNuuVApgo63iPYRiGoBTvnpWJsUiWdg=;
        b=DMImKNtindDhvUhH7HinvlNfW3UqxLZlcAlQpS7AN3tqQL4dQ+LnEj6eytlkNF4qfv
         6gAxeyyJXnKLpssG+Ti0WyGKgAEP1dWUXrc5NbuTK8pVH24Glr9GSIXB5ByWwz7F4RFY
         Vju8J5mSLHinVfmsVSzEJHUv5/jC2NUOzsdGsB9yVBfZOw4XTwm3em2cdB7RNiltiXnH
         C+HJ0Z18RSRW0d12YSsALSrfwuz/78j2dZlPh93FpJ5BQPbHupDysaodJqulM5LDOVmy
         sXLZQyt0lbQbhuCXnOkYADbtTSm8LizKQkrFa2ryC7P/6zoHB/vM63n4eNEI6XWwQCoE
         ZHXQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lxBiovBS;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2a00:1450:4864:20::541 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com. [2a00:1450:4864:20::541])
        by gmr-mx.google.com with ESMTPS id c25si522083lfh.2.2019.04.01.23.44.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Apr 2019 23:44:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2a00:1450:4864:20::541 as permitted sender) client-ip=2a00:1450:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lxBiovBS;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2a00:1450:4864:20::541 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x541.google.com with SMTP id p20so10575607eds.6
        for <outreachy-kernel@googlegroups.com>; Mon, 01 Apr 2019 23:44:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=18r7hg+Yr2+cRNuuVApgo63iPYRiGoBTvnpWJsUiWdg=;
        b=lxBiovBS3UteOBAWBrPME8fxHhUCn7IvsUFFtYw9IbjaiZIO5u9APoll0DgLC5B7hw
         biAEk0Gc/ge6qB0MACxjhsc7XhtKTXYeofZAiJdvuZJKqVA9OWCyMztb2V3P1FCHpsAM
         WNpcXMoge/uTre3QC6zwrkqNkFEP4fjmviopNimjYF64gQiX/B0KuOclyT4Va313HjhO
         ZjzB/pYHrnCi3wbadVOfXrj9gjM5gQ6ADf1V/0tHSapyCdDuxu5KgehNs2WDy/K9svuv
         7Uk2uiDxmtX7EvI1A7scuqJHo56B5VMseVtvmD5foPGS02ZsTHgs88vJcxTx22sZMhy2
         AEfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=18r7hg+Yr2+cRNuuVApgo63iPYRiGoBTvnpWJsUiWdg=;
        b=kMa0cqGptu+6qbtk+ays42OX/l/8nkF36Iukmx1V2wv3i4/ycLHqwO80e08ILo5Zg4
         oXVXe6fSMdZDBzUNYDbAxJONLvmZzJ9J1J+Ew5lqvKx7DC/Gv4zWUXjBeEIAibHb8uWB
         q4OCArxrV3EaxHMivHZZzIwIncP0TSeQOBgB5xeFMCP9RTlL1mjxwOOm4d5nC6lAjgUa
         3VibtCBaZDTfiyBiGQYvlMI3pSw6sUwWM0D3cusZwHvnlLg6qc7PXSJlnFUI8SGZROSj
         8Ekwhl5XwcLRkv6EJuhJw8sRUUmT6WWtRUVJotA8lUs9TSSnoqk4BB4+OZijRLgaxkh0
         30wg==
X-Gm-Message-State: APjAAAVZge/FyEk3CIoa0QwuvE17eBUr9q0Q4lS5DIYyu5W27+WB19+Q
	zpnOVwb1YCU8ZFSHL4zfynLx15in7vzucpYXajrYORzp
X-Received: by 2002:a50:898e:: with SMTP id g14mr43915462edg.36.1554187452623;
 Mon, 01 Apr 2019 23:44:12 -0700 (PDT)
MIME-Version: 1.0
References: <20190402062706.13340-1-sanjana99reddy99@gmail.com> <20190402064214.GA8270@kroah.com>
In-Reply-To: <20190402064214.GA8270@kroah.com>
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
Date: Tue, 2 Apr 2019 12:14:00 +0530
Message-ID: <CAO-bXGCJG6vfzC1imX3dTz6xOOuBwF3i8tKqwJvdNT5O57d8hA@mail.gmail.com>
Subject: Re: [PATCH] staging: rtl8723bs: include: Remove typedef for struct.
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000072ede05858677cc"

--000000000000072ede05858677cc
Content-Type: text/plain; charset="UTF-8"

On Tue, 2 Apr 2019, 12:12 Greg KH, <gregkh@linuxfoundation.org> wrote:

> On Tue, Apr 02, 2019 at 11:57:06AM +0530, Sanjana Sanikommu wrote:
> > Challenge suggested by coccinelle.
> >
> > Linux kernel coding style guidelines suggest not using typedefs for
> > structure.
> >
> > Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
> > ---
> >  drivers/staging/rtl8723bs/include/ieee80211.h | 12 ++++++------
> >  1 file changed, 6 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/staging/rtl8723bs/include/ieee80211.h
> b/drivers/staging/rtl8723bs/include/ieee80211.h
> > index 9efb4dcb9d3a..ce523dfb6faf 100644
> > --- a/drivers/staging/rtl8723bs/include/ieee80211.h
> > +++ b/drivers/staging/rtl8723bs/include/ieee80211.h
> > @@ -202,7 +202,7 @@ enum NETWORK_TYPE
> >  #define IsSupportedVHT(NetType) (((NetType) & (WIRELESS_11AC)) ? true :
> false)
> >
> >
> > -typedef struct ieee_param {
> > +struct ieee_param {
> >       u32 cmd;
> >       u8 sta_addr[ETH_ALEN];
> >       union {
> > @@ -240,13 +240,13 @@ typedef struct ieee_param {
> >                       u8 buf[0];
> >               } bcn_ie;
> >       } u;
> > -}ieee_param;
> > +};
> >
> > -typedef struct ieee_param_ex {
> > +struct ieee_param_ex {
> >       u32 cmd;
> >       u8 sta_addr[ETH_ALEN];
> >       u8 data[0];
> > -}ieee_param_ex;
> > +};
> >
> >  struct sta_data{
> >       u16 aid;
> > @@ -870,10 +870,10 @@ static inline int is_zero_mac_addr(const u8 *addr)
> >  #define CFG_IEEE80211_RESERVE_FCS (1<<0)
> >  #define CFG_IEEE80211_COMPUTE_FCS (1<<1)
> >
> > -typedef struct tx_pending_t{
> > +struct tx_pending_t {
> >       int frag;
> >       struct ieee80211_txb *txb;
> > -}tx_pending_t;
> > +};
>
> This structure isn't used anywhere, right?  So why not just submit a
> patch to delete it?
>

   Sure, I will remove and sumbit again :)
  Thanks
   Sanjana

>
> thanks,
>
> greg k-h
>

--000000000000072ede05858677cc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Tue, 2 Apr 2019, 12:12 Greg KH, &lt;<a href=3D"mail=
to:gregkh@linuxfoundation.org">gregkh@linuxfoundation.org</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex">On Tue, Apr 02, 2019 at 11:57:06AM +0=
530, Sanjana Sanikommu wrote:<br>
&gt; Challenge suggested by coccinelle.<br>
&gt; <br>
&gt; Linux kernel coding style guidelines suggest not using typedefs for<br=
>
&gt; structure.<br>
&gt; <br>
&gt; Signed-off-by: Sanjana Sanikommu &lt;<a href=3D"mailto:sanjana99reddy9=
9@gmail.com" target=3D"_blank" rel=3D"noreferrer">sanjana99reddy99@gmail.co=
m</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/rtl8723bs/include/ieee80211.h | 12 ++++++------<=
br>
&gt;=C2=A0 1 file changed, 6 insertions(+), 6 deletions(-)<br>
&gt; <br>
&gt; diff --git a/drivers/staging/rtl8723bs/include/ieee80211.h b/drivers/s=
taging/rtl8723bs/include/ieee80211.h<br>
&gt; index 9efb4dcb9d3a..ce523dfb6faf 100644<br>
&gt; --- a/drivers/staging/rtl8723bs/include/ieee80211.h<br>
&gt; +++ b/drivers/staging/rtl8723bs/include/ieee80211.h<br>
&gt; @@ -202,7 +202,7 @@ enum NETWORK_TYPE<br>
&gt;=C2=A0 #define IsSupportedVHT(NetType) (((NetType) &amp; (WIRELESS_11AC=
)) ? true : false)<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 <br>
&gt; -typedef struct ieee_param {<br>
&gt; +struct ieee_param {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u32 cmd;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u8 sta_addr[ETH_ALEN];<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0union {<br>
&gt; @@ -240,13 +240,13 @@ typedef struct ieee_param {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0u8 buf[0];<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0} bcn_ie;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0} u;<br>
&gt; -}ieee_param;<br>
&gt; +};<br>
&gt;=C2=A0 <br>
&gt; -typedef struct ieee_param_ex {<br>
&gt; +struct ieee_param_ex {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u32 cmd;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u8 sta_addr[ETH_ALEN];<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u8 data[0];<br>
&gt; -}ieee_param_ex;<br>
&gt; +};<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 struct sta_data{<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u16 aid;<br>
&gt; @@ -870,10 +870,10 @@ static inline int is_zero_mac_addr(const u8 *add=
r)<br>
&gt;=C2=A0 #define CFG_IEEE80211_RESERVE_FCS (1&lt;&lt;0)<br>
&gt;=C2=A0 #define CFG_IEEE80211_COMPUTE_FCS (1&lt;&lt;1)<br>
&gt;=C2=A0 <br>
&gt; -typedef struct tx_pending_t{<br>
&gt; +struct tx_pending_t {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0int frag;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ieee80211_txb *txb;<br>
&gt; -}tx_pending_t;<br>
&gt; +};<br>
<br>
This structure isn&#39;t used anywhere, right?=C2=A0 So why not just submit=
 a<br>
patch to delete it?<br></blockquote></div></div><div dir=3D"auto"><br></div=
><div dir=3D"auto"><div class=3D"gmail_quote"><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex=
"></blockquote></div></div><div dir=3D"auto">=C2=A0 =C2=A0Sure, I will remo=
ve and sumbit again :)</div><div dir=3D"auto">=C2=A0 Thanks=C2=A0</div><div=
 dir=3D"auto">=C2=A0 =C2=A0Sanjana</div><div dir=3D"auto"><div class=3D"gma=
il_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex">
<br>
thanks,<br>
<br>
greg k-h<br>
</blockquote></div></div></div>

--000000000000072ede05858677cc--

