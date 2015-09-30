X-GM-THRID: 6200064367824732160
X-Received: by 10.152.29.132 with SMTP id k4mr779109lah.8.1443636430591;
        Wed, 30 Sep 2015 11:07:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.181.29.103 with SMTP id jv7ls219532wid.16.gmail; Wed, 30 Sep
 2015 11:07:10 -0700 (PDT)
X-Received: by 10.180.12.170 with SMTP id z10mr886459wib.1.1443636430230;
        Wed, 30 Sep 2015 11:07:10 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-wi0-x22d.google.com (mail-wi0-x22d.google.com. [2a00:1450:400c:c05::22d])
        by gmr-mx.google.com with ESMTPS id c1si54909wiv.3.2015.09.30.11.07.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Sep 2015 11:07:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) client-ip=2a00:1450:400c:c05::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22d.google.com with SMTP id lk2so73684872wic.1
        for <outreachy-kernel@googlegroups.com>; Wed, 30 Sep 2015 11:07:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :content-type;
        bh=/3vB4JMiDolEMFhcshgrxlrtXMRXHWkcH4zt083ek9M=;
        b=jKNHR+hHjbPsapfMOEnmertDrSJITV4inl/y5J9onyThmOu+KgUmb0+E162KE3oXFn
         bb5MA2SPzc4KiV3WFG8j+LBC4tTzEp+RpJk444Ga3oEvqotIfq+eTlFOe/r41sSOXJh5
         JZKSm2/9DuTN5fcpW8+Xdg+Tn1Jkrdwpc5mourKypNnfuT/xCLbEbs/OESSxu6puQqdw
         bp1prBNEMLZK7bzZbtU0FMfRfTQWVIsauA9cawPvufHAOaBSco5ROpL1+t2+Cv4rBLg+
         ZnyKFU4IYaGC22bNziecMUwh7hgor3NrbQ/Mivk0jwu3TWvVaTDKIJxaugACYAPVifCb
         m3jg==
MIME-Version: 1.0
X-Received: by 10.194.52.6 with SMTP id p6mr6594023wjo.119.1443636430125; Wed,
 30 Sep 2015 11:07:10 -0700 (PDT)
Received: by 10.27.186.66 with HTTP; Wed, 30 Sep 2015 11:07:10 -0700 (PDT)
In-Reply-To: <CAKHNQQFv07V3NZdJk3CQQBjmUgdr-3viHh-pG-r7vfHidTKkdg@mail.gmail.com>
References: <20150929221607.GA15184@ubuntu>
	<alpine.DEB.2.02.1509300715010.1984@localhost6.localdomain6>
	<CAKHNQQFv07V3NZdJk3CQQBjmUgdr-3viHh-pG-r7vfHidTKkdg@mail.gmail.com>
Date: Wed, 30 Sep 2015 23:37:10 +0530
Message-ID: <CAKHNQQFf3T_WjNF2JoPvapmizg8B_ph=JgsumvDi3Ez5bJk-MQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Drivers: staging: wlan-ng: p80211conv:
 replaced functions for copying/comparing ethernet addresses
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=047d7bae473e9a3daf0520facc37

--047d7bae473e9a3daf0520facc37
Content-Type: text/plain; charset=UTF-8

Thanks Greg, Julia! I'll keep in mind.

On Wed, Sep 30, 2015 at 11:36 PM, Shivani Bhardwaj <shivanib134@gmail.com>
wrote:

> Thanks Greg, Julia! I'll keep in mind.
>
> On Wed, Sep 30, 2015 at 10:46 AM, Julia Lawall <julia.lawall@lip6.fr>
> wrote:
>
>> If you look at git log --oneline for this file, it seems that Staging:
>> wlan-ng: is preferred for this file, rather than Drivers: staging:
>> wlan-ng: p80211conv:.
>>
>> On Wed, 30 Sep 2015, Shivani Bhardwaj wrote:
>>
>> > Replaced the function memcpy() by ether_addr_copy() and, memcmp() by
>> > ether_addr_equal() as these functions are more preferable for copying
>> > and comparing the ethernet addresses respectively.
>> > Also fixed the issue of character limit of 80 per line and removed
>> > one unnecessary statement.
>>
>> The removed statement is related to logging on kzalloc.  It has nothing to
>> do with the other changes, so it should not be in the same patch.
>>
>> julia
>>
>> > Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
>> > ---
>> >  drivers/staging/wlan-ng/p80211conv.c | 26 +++++++++++++-------------
>> >  1 file changed, 13 insertions(+), 13 deletions(-)
>> >
>> > diff --git a/drivers/staging/wlan-ng/p80211conv.c
>> b/drivers/staging/wlan-ng/p80211conv.c
>> > index 49f2ef8..9c4dba6 100644
>> > --- a/drivers/staging/wlan-ng/p80211conv.c
>> > +++ b/drivers/staging/wlan-ng/p80211conv.c
>> > @@ -178,21 +178,23 @@ int skb_ether_to_p80211(wlandevice_t *wlandev,
>> u32 ethconv,
>> >
>> >       switch (wlandev->macmode) {
>> >       case WLAN_MACMODE_IBSS_STA:
>> > -             memcpy(p80211_hdr->a3.a1, &e_hdr.daddr, ETH_ALEN);
>> > -             memcpy(p80211_hdr->a3.a2, wlandev->netdev->dev_addr,
>> ETH_ALEN);
>> > -             memcpy(p80211_hdr->a3.a3, wlandev->bssid, ETH_ALEN);
>> > +             ether_addr_copy(p80211_hdr->a3.a1, &e_hdr.daddr,
>> ETH_ALEN);
>> > +             ether_addr_copy(p80211_hdr->a3.a2,
>> wlandev->netdev->dev_addr,
>> > +                             ETH_ALEN);
>> > +             ether_addr_copy(p80211_hdr->a3.a3, wlandev->bssid,
>> ETH_ALEN);
>> >               break;
>> >       case WLAN_MACMODE_ESS_STA:
>> >               fc |= cpu_to_le16(WLAN_SET_FC_TODS(1));
>> > -             memcpy(p80211_hdr->a3.a1, wlandev->bssid, ETH_ALEN);
>> > -             memcpy(p80211_hdr->a3.a2, wlandev->netdev->dev_addr,
>> ETH_ALEN);
>> > -             memcpy(p80211_hdr->a3.a3, &e_hdr.daddr, ETH_ALEN);
>> > +             ether_addr_copy(p80211_hdr->a3.a1, wlandev->bssid,
>> ETH_ALEN);
>> > +             ether_addr_copy(p80211_hdr->a3.a2,
>> wlandev->netdev->dev_addr,
>> > +                             ETH_ALEN);
>> > +             ether_addr_copy(p80211_hdr->a3.a3, &e_hdr.daddr,
>> ETH_ALEN);
>> >               break;
>> >       case WLAN_MACMODE_ESS_AP:
>> >               fc |= cpu_to_le16(WLAN_SET_FC_FROMDS(1));
>> > -             memcpy(p80211_hdr->a3.a1, &e_hdr.daddr, ETH_ALEN);
>> > -             memcpy(p80211_hdr->a3.a2, wlandev->bssid, ETH_ALEN);
>> > -             memcpy(p80211_hdr->a3.a3, &e_hdr.saddr, ETH_ALEN);
>> > +             ether_addr_copy(p80211_hdr->a3.a1, &e_hdr.daddr,
>> ETH_ALEN);
>> > +             ether_addr_copy(p80211_hdr->a3.a2, wlandev->bssid,
>> ETH_ALEN);
>> > +             ether_addr_copy(p80211_hdr->a3.a3, &e_hdr.saddr,
>> ETH_ALEN);
>> >               break;
>> >       default:
>> >               netdev_err(wlandev->netdev,
>> > @@ -242,8 +244,8 @@ static void orinoco_spy_gather(wlandevice_t
>> *wlandev, char *mac,
>> >
>> >       for (i = 0; i < wlandev->spy_number; i++) {
>> >
>> > -             if (!memcmp(wlandev->spy_address[i], mac, ETH_ALEN)) {
>> > -                     memcpy(wlandev->spy_address[i], mac, ETH_ALEN);
>> > +             if (!ether_addr_equal(wlandev->spy_address[i], mac,
>> ETH_ALEN)) {
>> > +                     ether_addr_copy(wlandev->spy_address[i], mac,
>> ETH_ALEN);
>> >                       wlandev->spy_stat[i].level = rxmeta->signal;
>> >                       wlandev->spy_stat[i].noise = rxmeta->noise;
>> >                       wlandev->spy_stat[i].qual =
>> > @@ -614,8 +616,6 @@ int p80211skb_rxmeta_attach(struct wlandevice
>> *wlandev, struct sk_buff *skb)
>> >       rxmeta = kzalloc(sizeof(struct p80211_rxmeta), GFP_ATOMIC);
>> >
>> >       if (rxmeta == NULL) {
>> > -             netdev_err(wlandev->netdev,
>> > -                        "%s: Failed to allocate rxmeta.\n",
>> wlandev->name);
>> >               result = 1;
>> >               goto exit;
>> >       }
>> > --
>> > 2.1.0
>> >
>> > --
>> > You received this message because you are subscribed to the Google
>> Groups "outreachy-kernel" group.
>> > To unsubscribe from this group and stop receiving emails from it, send
>> an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> > To post to this group, send email to outreachy-kernel@googlegroups.com.
>> > To view this discussion on the web visit
>> https://groups.google.com/d/msgid/outreachy-kernel/20150929221607.GA15184%40ubuntu
>> .
>> > For more options, visit https://groups.google.com/d/optout.
>> >
>>
>
>

--047d7bae473e9a3daf0520facc37
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks Greg, Julia! I&#39;ll keep in mind.</div><div class=
=3D"gmail_extra"><br><div class=3D"gmail_quote">On Wed, Sep 30, 2015 at 11:=
36 PM, Shivani Bhardwaj <span dir=3D"ltr">&lt;<a href=3D"mailto:shivanib134=
@gmail.com" target=3D"_blank">shivanib134@gmail.com</a>&gt;</span> wrote:<b=
r><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:=
1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">Thanks Greg, Julia! I&#39=
;ll keep in mind.<br></div><div class=3D"HOEnZb"><div class=3D"h5"><div cla=
ss=3D"gmail_extra"><br><div class=3D"gmail_quote">On Wed, Sep 30, 2015 at 1=
0:46 AM, Julia Lawall <span dir=3D"ltr">&lt;<a href=3D"mailto:julia.lawall@=
lip6.fr" target=3D"_blank">julia.lawall@lip6.fr</a>&gt;</span> wrote:<br><b=
lockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px =
#ccc solid;padding-left:1ex">If you look at git log --oneline for this file=
, it seems that Staging:<br>
wlan-ng: is preferred for this file, rather than Drivers: staging:<br>
wlan-ng: p80211conv:.<br>
<span><br>
On Wed, 30 Sep 2015, Shivani Bhardwaj wrote:<br>
<br>
&gt; Replaced the function memcpy() by ether_addr_copy() and, memcmp() by<b=
r>
&gt; ether_addr_equal() as these functions are more preferable for copying<=
br>
&gt; and comparing the ethernet addresses respectively.<br>
&gt; Also fixed the issue of character limit of 80 per line and removed<br>
&gt; one unnecessary statement.<br>
<br>
</span>The removed statement is related to logging on kzalloc.=C2=A0 It has=
 nothing to<br>
do with the other changes, so it should not be in the same patch.<br>
<br>
julia<br>
<div><div><br>
&gt; Signed-off-by: Shivani Bhardwaj &lt;<a href=3D"mailto:shivanib134@gmai=
l.com" target=3D"_blank">shivanib134@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/staging/wlan-ng/p80211conv.c | 26 +++++++++++++---------=
----<br>
&gt;=C2=A0 1 file changed, 13 insertions(+), 13 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/wlan-ng/p80211conv.c b/drivers/staging/wl=
an-ng/p80211conv.c<br>
&gt; index 49f2ef8..9c4dba6 100644<br>
&gt; --- a/drivers/staging/wlan-ng/p80211conv.c<br>
&gt; +++ b/drivers/staging/wlan-ng/p80211conv.c<br>
&gt; @@ -178,21 +178,23 @@ int skb_ether_to_p80211(wlandevice_t *wlandev, u=
32 ethconv,<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0switch (wlandev-&gt;macmode) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0case WLAN_MACMODE_IBSS_STA:<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0memcpy(p80211_hdr-&gt=
;a3.a1, &amp;e_hdr.daddr, ETH_ALEN);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0memcpy(p80211_hdr-&gt=
;a3.a2, wlandev-&gt;netdev-&gt;dev_addr, ETH_ALEN);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0memcpy(p80211_hdr-&gt=
;a3.a3, wlandev-&gt;bssid, ETH_ALEN);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ether_addr_copy(p8021=
1_hdr-&gt;a3.a1, &amp;e_hdr.daddr, ETH_ALEN);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ether_addr_copy(p8021=
1_hdr-&gt;a3.a2, wlandev-&gt;netdev-&gt;dev_addr,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ETH_ALEN);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ether_addr_copy(p8021=
1_hdr-&gt;a3.a3, wlandev-&gt;bssid, ETH_ALEN);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0break;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0case WLAN_MACMODE_ESS_STA:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0fc |=3D cpu_to_l=
e16(WLAN_SET_FC_TODS(1));<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0memcpy(p80211_hdr-&gt=
;a3.a1, wlandev-&gt;bssid, ETH_ALEN);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0memcpy(p80211_hdr-&gt=
;a3.a2, wlandev-&gt;netdev-&gt;dev_addr, ETH_ALEN);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0memcpy(p80211_hdr-&gt=
;a3.a3, &amp;e_hdr.daddr, ETH_ALEN);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ether_addr_copy(p8021=
1_hdr-&gt;a3.a1, wlandev-&gt;bssid, ETH_ALEN);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ether_addr_copy(p8021=
1_hdr-&gt;a3.a2, wlandev-&gt;netdev-&gt;dev_addr,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ETH_ALEN);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ether_addr_copy(p8021=
1_hdr-&gt;a3.a3, &amp;e_hdr.daddr, ETH_ALEN);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0break;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0case WLAN_MACMODE_ESS_AP:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0fc |=3D cpu_to_l=
e16(WLAN_SET_FC_FROMDS(1));<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0memcpy(p80211_hdr-&gt=
;a3.a1, &amp;e_hdr.daddr, ETH_ALEN);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0memcpy(p80211_hdr-&gt=
;a3.a2, wlandev-&gt;bssid, ETH_ALEN);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0memcpy(p80211_hdr-&gt=
;a3.a3, &amp;e_hdr.saddr, ETH_ALEN);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ether_addr_copy(p8021=
1_hdr-&gt;a3.a1, &amp;e_hdr.daddr, ETH_ALEN);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ether_addr_copy(p8021=
1_hdr-&gt;a3.a2, wlandev-&gt;bssid, ETH_ALEN);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ether_addr_copy(p8021=
1_hdr-&gt;a3.a3, &amp;e_hdr.saddr, ETH_ALEN);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0break;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0default:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0netdev_err(wland=
ev-&gt;netdev,<br>
&gt; @@ -242,8 +244,8 @@ static void orinoco_spy_gather(wlandevice_t *wland=
ev, char *mac,<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0for (i =3D 0; i &lt; wlandev-&gt;spy_number;=
 i++) {<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (!memcmp(wlandev-&=
gt;spy_address[i], mac, ETH_ALEN)) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0memcpy(wlandev-&gt;spy_address[i], mac, ETH_ALEN);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (!ether_addr_equal=
(wlandev-&gt;spy_address[i], mac, ETH_ALEN)) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0ether_addr_copy(wlandev-&gt;spy_address[i], mac, ETH_ALEN);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0wlandev-&gt;spy_stat[i].level =3D rxmeta-&gt;signal;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0wlandev-&gt;spy_stat[i].noise =3D rxmeta-&gt;noise;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0wlandev-&gt;spy_stat[i].qual =3D<br>
&gt; @@ -614,8 +616,6 @@ int p80211skb_rxmeta_attach(struct wlandevice *wla=
ndev, struct sk_buff *skb)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0rxmeta =3D kzalloc(sizeof(struct p80211_rxme=
ta), GFP_ATOMIC);<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (rxmeta =3D=3D NULL) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0netdev_err(wlandev-&g=
t;netdev,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 &quot;%s: Failed to allocate rxmeta.\n&quot;, wlandev-&gt;na=
me);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0result =3D 1;<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0goto exit;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; --<br>
&gt; 2.1.0<br>
&gt;<br>
</div></div><span>&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.=
com" target=3D"_blank">outreachy-kernel+unsubscribe@googlegroups.com</a>.<b=
r>
&gt; To post to this group, send email to <a href=3D"mailto:outreachy-kerne=
l@googlegroups.com" target=3D"_blank">outreachy-kernel@googlegroups.com</a>=
.<br>
</span>&gt; To view this discussion on the web visit <a href=3D"https://gro=
ups.google.com/d/msgid/outreachy-kernel/20150929221607.GA15184%40ubuntu" re=
l=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/msgid/outrea=
chy-kernel/20150929221607.GA15184%40ubuntu</a>.<br>
<div><div>&gt; For more options, visit <a href=3D"https://groups.google.com=
/d/optout" rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d=
/optout</a>.<br>
&gt;<br>
</div></div></blockquote></div><br></div>
</div></div></blockquote></div><br></div>

--047d7bae473e9a3daf0520facc37--

