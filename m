X-GM-THRID: 6200599277557776384
X-Received: by 10.182.117.225 with SMTP id kh1mr30658748obb.12.1444141171913;
        Tue, 06 Oct 2015 07:19:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.10.161 with SMTP id 33ls1851821iok.1.gmail; Tue, 06 Oct
 2015 07:19:31 -0700 (PDT)
X-Received: by 10.107.9.212 with SMTP id 81mr31104762ioj.19.1444141171289;
        Tue, 06 Oct 2015 07:19:31 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id u67si2804172ywf.5.2015.10.06.07.19.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Oct 2015 07:19:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [89.101.192.72])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 9BB5A1DC3;
	Tue,  6 Oct 2015 14:19:29 +0000 (UTC)
Date: Tue, 6 Oct 2015 15:15:58 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Ioana Ciornei <ciorneiioana@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH v4] staging: wlan-ng: replace memcpy
 with ether_addr_copy
Message-ID: <20151006141558.GA16625@kroah.com>
References: <1443783130-8548-1-git-send-email-ciorneiioana@gmail.com>
 <20151004072720.GA13645@kroah.com>
 <CAHWJYFk5JhYATN_ypgH1TF9ftMUhgRd06qWbHfvM_A+7dEHN1g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAHWJYFk5JhYATN_ypgH1TF9ftMUhgRd06qWbHfvM_A+7dEHN1g@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Tue, Oct 06, 2015 at 10:50:21AM +0300, Ioana Ciornei wrote:
> 
> 
> On Sun, Oct 4, 2015 at 10:27 AM, Greg KH <gregkh@linuxfoundation.org> wrote:
> > On Fri, Oct 02, 2015 at 01:52:10PM +0300, Ioana Ciornei wrote:
> >> Replace memcpy with ether_addr_copy since the output of pahole
> >> shows that the addresses are aligned.
> >>
> >> struct p80211_hdr_a3 {
> >>         __le16                     fc;                   /*     0     2 */
> >>         u16                        dur;                  /*     2     2 */
> >>         u8                         a1[6];                /*     4     6 */
> >>         u8                         a2[6];                /*    10     6 */
> >>         u8                         a3[6];                /*    16     6 */
> >>         u16                        seq;                  /*    22     2 */
> >>
> >>         /* size: 24, cachelines: 1, members: 6 */
> >>         /* last cacheline: 24 bytes */
> >> };
> >>
> >> struct net_device {
> >>         char                       name[16];             /*     0    16 */
> >>         struct hlist_node          name_hlist;           /*    16    16 */
> >>
> >>      ...............
> >>
> >>  /* --- cacheline 12 boundary (768 bytes) --- */
> >>         long unsigned int          last_rx;              /*   768     8 */
> >>         unsigned char *            dev_addr;             /*   776     8 */
> >>         struct netdev_rx_queue *   _rx;                  /*   784     8 */
> >>
> >>     .................
> >> };
> >>
> >> struct wlandevice {
> >>         struct wlandevice *        next;                 /*     0     8 */
> >>     .................
> >>         u8                         bssid[6];             /*   128     6 */
> >>     .................
> >> };
> >>
> >> struct net_device {
> >>         char                       name[16];             /*     0    16 */
> >>     .................
> >>         unsigned char *            dev_addr;             /*   776     8 */
> >>     ................
> >> };
> >>
> >> struct wlan_ethhdr {
> >>         u8                         daddr[6];             /*     0     6 */
> >>         u8                         saddr[6];             /*     6     6 */
> >>         u16                        type;                 /*    12     2 */
> >>
> >>         /* size: 14, cachelines: 1, members: 3 */
> >>         /* last cacheline: 14 bytes */
> >> };
> >>
> >> struct sockaddr {
> >>         sa_family_t                sa_family;            /*     0     2 */
> >>         char                       sa_data[14];          /*     2    14 */
> >>
> >>         /* size: 16, cachelines: 1, members: 2 */
> >>         /* last cacheline: 16 bytes */
> >> };
> >>
> >> struct p80211pstr6 {
> >>         u8                         len;                  /*     0     1 */
> >>         u8                         data[6];              /*     1     6 */
> >>
> >>         /* size: 7, cachelines: 1, members: 2 */
> >>         /* last cacheline: 7 bytes */
> >> };
> >>
> >> Coccinelle semantic patch:
> >>
> >> @@
> >> expression E1,E2;
> >> @@
> >>
> >> - memcpy(E1, E2, 6)
> >> + ether_addr_copy(E1, E2)
> >>
> >> @@
> >> expression E1,E2;
> >> @@
> >>
> >> - memcpy(E1, E2, ETH_ALEN)
> >> + ether_addr_copy(E1, E2)
> >>
> >> Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
> >> ---
> >> Changes in v2:
> >>     - revised the cocci patch to be a more constrainting one
> >>     - applied cocci patch on the entire wlan-ng folder
> >>     - updated the patch description with further pahole output
> >>
> >> Changes in v3:
> >>     - make an explicit cast from u8 (*)[6] to const u8 * to avoid compile
> warning
> >>
> >> Changes in v4:
> >>     - fix compile and checkpatch warnings introduced in v3
> >>
> >>  drivers/staging/wlan-ng/p80211conv.c   | 20 ++++++++++----------
> >>  drivers/staging/wlan-ng/p80211netdev.c |  2 +-
> >>  2 files changed, 11 insertions(+), 11 deletions(-)
> >>
> >> diff --git a/drivers/staging/wlan-ng/p80211conv.c b/drivers/staging/wlan-ng/
> p80211conv.c
> >> index 1b02cdf..87d323a 100644
> >> --- a/drivers/staging/wlan-ng/p80211conv.c
> >> +++ b/drivers/staging/wlan-ng/p80211conv.c
> >> @@ -178,21 +178,21 @@ int skb_ether_to_p80211(wlandevice_t *wlandev, u32
> ethconv,
> >>
> >>       switch (wlandev->macmode) {
> >>       case WLAN_MACMODE_IBSS_STA:
> >> -             memcpy(p80211_hdr->a3.a1, &e_hdr.daddr, ETH_ALEN);
> >> -             memcpy(p80211_hdr->a3.a2, wlandev->netdev->dev_addr,
> ETH_ALEN);
> >> -             memcpy(p80211_hdr->a3.a3, wlandev->bssid, ETH_ALEN);
> >> +             ether_addr_copy(p80211_hdr->a3.a1, (const u8 *)&e_hdr.daddr);
> >
> > When you have to add a cast like this, it's a good idea to try to figure
> > out _why_ that cast is needed.
> >
> > I think you should just make the struct wlan_ethhdr daddr field be const
> > and then you don't need to make any casts when you convert to
> > ether_addr_copy().
> >
> > So can you turn this into a two patch series?  The first one change the
> > structure variable type, and the second one this ether_addr_copy()
> > change?
> >
> 
> Changing the type of daddr and saddr fields from wlan_ethhdr to const is not
> enough in this situation.
> The type should be changed to const u8* from u8 (*) [6] but this introduces
> other compile time warnings like 'discards ‘const’ qualifier from pointer
> target type'.

Then fix those up :)

> Also, if I make the change, every time a variable of wlan_ethhdr is used memory
> should be allocated for daddr and saddr fields.

Hm, no, that shouldn't be needed at all.

> In this circumstance, should I continue with the patchset?

I don't really know, that's up to you.

greg k-h

