X-GM-THRID: 6200599277557776384
X-Received: by 10.140.150.206 with SMTP id 197mr29862737qhw.0.1444117822002;
        Tue, 06 Oct 2015 00:50:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.36.148 with SMTP id p20ls3434933qgp.46.gmail; Tue, 06 Oct
 2015 00:50:21 -0700 (PDT)
X-Received: by 10.31.154.19 with SMTP id c19mr29666012vke.13.1444117821221;
        Tue, 06 Oct 2015 00:50:21 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-yk0-x22a.google.com (mail-yk0-x22a.google.com. [2607:f8b0:4002:c07::22a])
        by gmr-mx.google.com with ESMTPS id o73si2703462ywd.6.2015.10.06.00.50.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Oct 2015 00:50:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2607:f8b0:4002:c07::22a as permitted sender) client-ip=2607:f8b0:4002:c07::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2607:f8b0:4002:c07::22a as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-yk0-x22a.google.com with SMTP id t14so195564329ykf.0
        for <outreachy-kernel@googlegroups.com>; Tue, 06 Oct 2015 00:50:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=t9Oo9Zbbt+ETfGVgWWd5AbLGC/ADYNp2tI7RligT5rc=;
        b=emuvb5BwkX5TuzkFZpX7ZaiUj+Pg3dqK7wsCyrgDE+9JjF/T78Af940W/rZNLKn55s
         PrVvVG3kQFYFL545N7pVizvd3BegPht3aHxQYz+rdM0ozK0f3wBUG3BibfnGIpTjYRwy
         y4iqMPNu4V+omc8ub6DmBtFl3fTp73jfOHep/TjFyYtOkIE0DqsclB0jm22Iq4VrdNqU
         1H554VQjP435KW5KV4Fgg227ivYh+ULb8tH3vNCMx55ETupmOVuYkUXBfTxo/7D065lC
         55CWnmcNMXpvltXb/uC/MzBBnvc+/j5h6kQEnujLL4aWHzDNsCk8b6MfPvXJ7T7LrFdZ
         wjgQ==
MIME-Version: 1.0
X-Received: by 10.170.133.144 with SMTP id z138mr27939584ykb.111.1444117821096;
 Tue, 06 Oct 2015 00:50:21 -0700 (PDT)
Received: by 10.37.107.66 with HTTP; Tue, 6 Oct 2015 00:50:21 -0700 (PDT)
In-Reply-To: <20151004072720.GA13645@kroah.com>
References: <1443783130-8548-1-git-send-email-ciorneiioana@gmail.com>
	<20151004072720.GA13645@kroah.com>
Date: Tue, 6 Oct 2015 10:50:21 +0300
Message-ID: <CAHWJYFk5JhYATN_ypgH1TF9ftMUhgRd06qWbHfvM_A+7dEHN1g@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v4] staging: wlan-ng: replace memcpy
 with ether_addr_copy
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary=001a11397a96bd8ba005216ae127

--001a11397a96bd8ba005216ae127
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Sun, Oct 4, 2015 at 10:27 AM, Greg KH <gregkh@linuxfoundation.org> wrote=
:
> On Fri, Oct 02, 2015 at 01:52:10PM +0300, Ioana Ciornei wrote:
>> Replace memcpy with ether_addr_copy since the output of pahole
>> shows that the addresses are aligned.
>>
>> struct p80211_hdr_a3 {
>>         __le16                     fc;                   /*     0     2
*/
>>         u16                        dur;                  /*     2     2
*/
>>         u8                         a1[6];                /*     4     6
*/
>>         u8                         a2[6];                /*    10     6
*/
>>         u8                         a3[6];                /*    16     6
*/
>>         u16                        seq;                  /*    22     2
*/
>>
>>         /* size: 24, cachelines: 1, members: 6 */
>>         /* last cacheline: 24 bytes */
>> };
>>
>> struct net_device {
>>         char                       name[16];             /*     0    16
*/
>>         struct hlist_node          name_hlist;           /*    16    16
*/
>>
>>      ...............
>>
>>  /* --- cacheline 12 boundary (768 bytes) --- */
>>         long unsigned int          last_rx;              /*   768     8
*/
>>         unsigned char *            dev_addr;             /*   776     8
*/
>>         struct netdev_rx_queue *   _rx;                  /*   784     8
*/
>>
>>     .................
>> };
>>
>> struct wlandevice {
>>         struct wlandevice *        next;                 /*     0     8
*/
>>     .................
>>         u8                         bssid[6];             /*   128     6
*/
>>     .................
>> };
>>
>> struct net_device {
>>         char                       name[16];             /*     0    16
*/
>>     .................
>>         unsigned char *            dev_addr;             /*   776     8
*/
>>     ................
>> };
>>
>> struct wlan_ethhdr {
>>         u8                         daddr[6];             /*     0     6
*/
>>         u8                         saddr[6];             /*     6     6
*/
>>         u16                        type;                 /*    12     2
*/
>>
>>         /* size: 14, cachelines: 1, members: 3 */
>>         /* last cacheline: 14 bytes */
>> };
>>
>> struct sockaddr {
>>         sa_family_t                sa_family;            /*     0     2
*/
>>         char                       sa_data[14];          /*     2    14
*/
>>
>>         /* size: 16, cachelines: 1, members: 2 */
>>         /* last cacheline: 16 bytes */
>> };
>>
>> struct p80211pstr6 {
>>         u8                         len;                  /*     0     1
*/
>>         u8                         data[6];              /*     1     6
*/
>>
>>         /* size: 7, cachelines: 1, members: 2 */
>>         /* last cacheline: 7 bytes */
>> };
>>
>> Coccinelle semantic patch:
>>
>> @@
>> expression E1,E2;
>> @@
>>
>> - memcpy(E1, E2, 6)
>> + ether_addr_copy(E1, E2)
>>
>> @@
>> expression E1,E2;
>> @@
>>
>> - memcpy(E1, E2, ETH_ALEN)
>> + ether_addr_copy(E1, E2)
>>
>> Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
>> ---
>> Changes in v2:
>>     - revised the cocci patch to be a more constrainting one
>>     - applied cocci patch on the entire wlan-ng folder
>>     - updated the patch description with further pahole output
>>
>> Changes in v3:
>>     - make an explicit cast from u8 (*)[6] to const u8 * to avoid
compile warning
>>
>> Changes in v4:
>>     - fix compile and checkpatch warnings introduced in v3
>>
>>  drivers/staging/wlan-ng/p80211conv.c   | 20 ++++++++++----------
>>  drivers/staging/wlan-ng/p80211netdev.c |  2 +-
>>  2 files changed, 11 insertions(+), 11 deletions(-)
>>
>> diff --git a/drivers/staging/wlan-ng/p80211conv.c
b/drivers/staging/wlan-ng/p80211conv.c
>> index 1b02cdf..87d323a 100644
>> --- a/drivers/staging/wlan-ng/p80211conv.c
>> +++ b/drivers/staging/wlan-ng/p80211conv.c
>> @@ -178,21 +178,21 @@ int skb_ether_to_p80211(wlandevice_t *wlandev, u32
ethconv,
>>
>>       switch (wlandev->macmode) {
>>       case WLAN_MACMODE_IBSS_STA:
>> -             memcpy(p80211_hdr->a3.a1, &e_hdr.daddr, ETH_ALEN);
>> -             memcpy(p80211_hdr->a3.a2, wlandev->netdev->dev_addr,
ETH_ALEN);
>> -             memcpy(p80211_hdr->a3.a3, wlandev->bssid, ETH_ALEN);
>> +             ether_addr_copy(p80211_hdr->a3.a1, (const u8
*)&e_hdr.daddr);
>
> When you have to add a cast like this, it's a good idea to try to figure
> out _why_ that cast is needed.
>
> I think you should just make the struct wlan_ethhdr daddr field be const
> and then you don't need to make any casts when you convert to
> ether_addr_copy().
>
> So can you turn this into a two patch series?  The first one change the
> structure variable type, and the second one this ether_addr_copy()
> change?
>

Changing the type of daddr and saddr fields from wlan_ethhdr to const is
not enough in this situation.
The type should be changed to const u8* from u8 (*) [6] but this introduces
other compile time warnings like 'discards =E2=80=98const=E2=80=99 qualifie=
r from pointer
target type'.
Also, if I make the change, every time a variable of wlan_ethhdr is used
memory should be allocated for daddr and saddr fields.
In this circumstance, should I continue with the patchset?

Thanks,
Ioana

--001a11397a96bd8ba005216ae127
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Sun, Oct 4, 2015 at 10:27 AM, Greg KH &lt;<a hr=
ef=3D"mailto:gregkh@linuxfoundation.org">gregkh@linuxfoundation.org</a>&gt;=
 wrote:<br>&gt; On Fri, Oct 02, 2015 at 01:52:10PM +0300, Ioana Ciornei wro=
te:<br>&gt;&gt; Replace memcpy with ether_addr_copy since the output of pah=
ole<br>&gt;&gt; shows that the addresses are aligned.<br>&gt;&gt;<br>&gt;&g=
t; struct p80211_hdr_a3 {<br>&gt;&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 __le16 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 fc; =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* =C2=A0 =
=C2=A0 0 =C2=A0 =C2=A0 2 */<br>&gt;&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 u16 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0dur; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/*=
 =C2=A0 =C2=A0 2 =C2=A0 =C2=A0 2 */<br>&gt;&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 u8 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 a1[6]; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0/* =C2=A0 =C2=A0 4 =C2=A0 =C2=A0 6 */<br>&gt;&gt; =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 u8 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 a2[6]; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0/* =C2=A0 =C2=A010 =C2=A0 =C2=A0 6 */<br>&gt;&gt; =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 u8 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 a3[6]; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0/* =C2=A0 =C2=A016 =C2=A0 =C2=A0 6 */<br>&gt;&gt; =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 u16 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0seq; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0/* =C2=A0 =C2=A022 =C2=A0 =C2=A0 2 */<br>&gt;&gt=
;<br>&gt;&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* size: 24, cachelines: 1, membe=
rs: 6 */<br>&gt;&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* last cacheline: 24 byte=
s */<br>&gt;&gt; };<br>&gt;&gt;<br>&gt;&gt; struct net_device {<br>&gt;&gt;=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 char =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 name[16]; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 /* =C2=A0 =C2=A0 0 =C2=A0 =C2=A016 */<br>&gt;&gt; =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 struct hlist_node =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0name_=
hlist; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* =C2=A0 =C2=A016 =C2=A0 =C2=A01=
6 */<br>&gt;&gt;<br>&gt;&gt; =C2=A0 =C2=A0 =C2=A0...............<br>&gt;&gt=
;<br>&gt;&gt; =C2=A0/* --- cacheline 12 boundary (768 bytes) --- */<br>&gt;=
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 long unsigned int =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0last_rx; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* =C2=
=A0 768 =C2=A0 =C2=A0 8 */<br>&gt;&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 unsigned=
 char * =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dev_addr; =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /* =C2=A0 776 =C2=A0 =C2=A0 8 */<br>&gt;&gt; =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 struct netdev_rx_queue * =C2=A0 _rx; =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* =C2=A0 784 =C2=A0 =
=C2=A0 8 */<br>&gt;&gt;<br>&gt;&gt; =C2=A0 =C2=A0 .................<br>&gt;=
&gt; };<br>&gt;&gt;<br>&gt;&gt; struct wlandevice {<br>&gt;&gt; =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 struct wlandevice * =C2=A0 =C2=A0 =C2=A0 =C2=A0next; =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* =C2=A0 =C2=A0 0 =C2=
=A0 =C2=A0 8 */<br>&gt;&gt; =C2=A0 =C2=A0 .................<br>&gt;&gt; =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 u8 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 bssid[6]; =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 /* =C2=A0 128 =C2=A0 =C2=A0 6 */<br>&gt;&gt; =C2=A0 =C2=
=A0 .................<br>&gt;&gt; };<br>&gt;&gt;<br>&gt;&gt; struct net_dev=
ice {<br>&gt;&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 char =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 name[16]; =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* =C2=A0 =C2=A0 0 =C2=A0 =C2=A016 */<br>&g=
t;&gt; =C2=A0 =C2=A0 .................<br>&gt;&gt; =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 unsigned char * =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dev_addr; =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* =C2=A0 776 =C2=A0 =C2=A0 8 */<br>=
&gt;&gt; =C2=A0 =C2=A0 ................<br>&gt;&gt; };<br>&gt;&gt;<br>&gt;&=
gt; struct wlan_ethhdr {<br>&gt;&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 u8 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 daddr[6]; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* =C2=A0 =C2=A0 0 =
=C2=A0 =C2=A0 6 */<br>&gt;&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 u8 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 sadd=
r[6]; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* =C2=A0 =C2=A0 6 =C2=A0 =
=C2=A0 6 */<br>&gt;&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 u16 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0type; =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* =C2=A0 =C2=A012 =C2=
=A0 =C2=A0 2 */<br>&gt;&gt;<br>&gt;&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* size=
: 14, cachelines: 1, members: 3 */<br>&gt;&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
/* last cacheline: 14 bytes */<br>&gt;&gt; };<br>&gt;&gt;<br>&gt;&gt; struc=
t sockaddr {<br>&gt;&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 sa_family_t =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0sa_family; =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0/* =C2=A0 =C2=A0 0 =C2=A0 =C2=A0 2 */<br>&gt;&gt; =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 char =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 sa_data[14]; =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0/* =C2=A0 =C2=A0 2 =C2=A0 =C2=A014 */<br>&gt;&gt;<br>&gt;&gt; =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 /* size: 16, cachelines: 1, members: 2 */<br>&gt;&gt;=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* last cacheline: 16 bytes */<br>&gt;&gt; };<=
br>&gt;&gt;<br>&gt;&gt; struct p80211pstr6 {<br>&gt;&gt; =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 u8 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 len; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0/* =C2=A0 =C2=A0 0 =C2=A0 =C2=A0 1 */<br>&gt;&gt; =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 u8 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 data[6]; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0/* =C2=A0 =C2=A0 1 =C2=A0 =C2=A0 6 */<br>&gt;&gt;<br>&gt;&=
gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* size: 7, cachelines: 1, members: 2 */<br=
>&gt;&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* last cacheline: 7 bytes */<br>&gt;=
&gt; };<br>&gt;&gt;<br>&gt;&gt; Coccinelle semantic patch:<br>&gt;&gt;<br>&=
gt;&gt; @@<br>&gt;&gt; expression E1,E2;<br>&gt;&gt; @@<br>&gt;&gt;<br>&gt;=
&gt; - memcpy(E1, E2, 6)<br>&gt;&gt; + ether_addr_copy(E1, E2)<br>&gt;&gt;<=
br>&gt;&gt; @@<br>&gt;&gt; expression E1,E2;<br>&gt;&gt; @@<br>&gt;&gt;<br>=
&gt;&gt; - memcpy(E1, E2, ETH_ALEN)<br>&gt;&gt; + ether_addr_copy(E1, E2)<b=
r>&gt;&gt;<br>&gt;&gt; Signed-off-by: Ioana Ciornei &lt;<a href=3D"mailto:c=
iorneiioana@gmail.com">ciorneiioana@gmail.com</a>&gt;<br>&gt;&gt; ---<br>&g=
t;&gt; Changes in v2:<br>&gt;&gt; =C2=A0 =C2=A0 - revised the cocci patch t=
o be a more constrainting one<br>&gt;&gt; =C2=A0 =C2=A0 - applied cocci pat=
ch on the entire wlan-ng folder<br>&gt;&gt; =C2=A0 =C2=A0 - updated the pat=
ch description with further pahole output<br>&gt;&gt;<br>&gt;&gt; Changes i=
n v3:<br>&gt;&gt; =C2=A0 =C2=A0 - make an explicit cast from u8 (*)[6] to c=
onst u8 * to avoid compile warning<br>&gt;&gt;<br>&gt;&gt; Changes in v4:<b=
r>&gt;&gt; =C2=A0 =C2=A0 - fix compile and checkpatch warnings introduced i=
n v3<br>&gt;&gt;<br>&gt;&gt; =C2=A0drivers/staging/wlan-ng/p80211conv.c =C2=
=A0 | 20 ++++++++++----------<br>&gt;&gt; =C2=A0drivers/staging/wlan-ng/p80=
211netdev.c | =C2=A02 +-<br>&gt;&gt; =C2=A02 files changed, 11 insertions(+=
), 11 deletions(-)<br>&gt;&gt;<br>&gt;&gt; diff --git a/drivers/staging/wla=
n-ng/p80211conv.c b/drivers/staging/wlan-ng/p80211conv.c<br>&gt;&gt; index =
1b02cdf..87d323a 100644<br>&gt;&gt; --- a/drivers/staging/wlan-ng/p80211con=
v.c<br>&gt;&gt; +++ b/drivers/staging/wlan-ng/p80211conv.c<br>&gt;&gt; @@ -=
178,21 +178,21 @@ int skb_ether_to_p80211(wlandevice_t *wlandev, u32 ethcon=
v,<br>&gt;&gt;<br>&gt;&gt; =C2=A0 =C2=A0 =C2=A0 switch (wlandev-&gt;macmode=
) {<br>&gt;&gt; =C2=A0 =C2=A0 =C2=A0 case WLAN_MACMODE_IBSS_STA:<br>&gt;&gt=
; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 memcpy(p80211_hdr-&gt;a3.a1, =
&amp;e_hdr.daddr, ETH_ALEN);<br>&gt;&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 memcpy(p80211_hdr-&gt;a3.a2, wlandev-&gt;netdev-&gt;dev_addr, ET=
H_ALEN);<br>&gt;&gt; - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 memcpy(p80=
211_hdr-&gt;a3.a3, wlandev-&gt;bssid, ETH_ALEN);<br>&gt;&gt; + =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ether_addr_copy(p80211_hdr-&gt;a3.a1, (cons=
t u8 *)&amp;e_hdr.daddr);<br>&gt;<br>&gt; When you have to add a cast like =
this, it&#39;s a good idea to try to figure<br>&gt; out _why_ that cast is =
needed.<br>&gt;<br>&gt; I think you should just make the struct wlan_ethhdr=
 daddr field be const<br>&gt; and then you don&#39;t need to make any casts=
 when you convert to<br>&gt; ether_addr_copy().<br>&gt;<br>&gt; So can you =
turn this into a two patch series?=C2=A0 The first one change the<br>&gt; s=
tructure variable type, and the second one this ether_addr_copy()<br>&gt; c=
hange?<br>&gt;<br><br><div>Changing the type of daddr and saddr fields from=
 wlan_ethhdr to const is not enough in this situation.</div><div>The type s=
hould be changed to const u8* from u8 (*) [6] but this introduces other com=
pile time warnings like &#39;discards =E2=80=98const=E2=80=99 qualifier fro=
m pointer target type&#39;.</div><div>Also, if I make the change, every tim=
e a variable of wlan_ethhdr is used memory should be allocated for daddr an=
d saddr fields.</div><div>In this circumstance, should I continue with the =
patchset?</div><div><br></div><div>Thanks,=C2=A0</div><div>Ioana=C2=A0</div=
><div>=C2=A0</div></div>

--001a11397a96bd8ba005216ae127--

