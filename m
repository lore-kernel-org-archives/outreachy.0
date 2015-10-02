X-GM-THRID: 6200599277557776384
X-Received: by 10.182.128.69 with SMTP id nm5mr11715529obb.46.1443780253922;
        Fri, 02 Oct 2015 03:04:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.46.99 with SMTP id i96ls810586ioo.37.gmail; Fri, 02 Oct
 2015 03:04:13 -0700 (PDT)
X-Received: by 10.68.165.5 with SMTP id yu5mr12124222pbb.1.1443780253353;
        Fri, 02 Oct 2015 03:04:13 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-yk0-x230.google.com (mail-yk0-x230.google.com. [2607:f8b0:4002:c07::230])
        by gmr-mx.google.com with ESMTPS id j22si1081100ywg.2.2015.10.02.03.04.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Oct 2015 03:04:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2607:f8b0:4002:c07::230 as permitted sender) client-ip=2607:f8b0:4002:c07::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2607:f8b0:4002:c07::230 as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-yk0-x230.google.com with SMTP id z138so105693669ykd.2
        for <outreachy-kernel@googlegroups.com>; Fri, 02 Oct 2015 03:04:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=+v2rQMSTaWBFVNtn3MeH7QoaVC8zl/Got1afXkxyu/E=;
        b=fAbMP61w6TcQmjc2xCJ+PIuLRiP5gZQ2qweBNpCqxxKQsnDgxyWqmOIhdJHPWsSuWo
         F19wKKhjHXP97n559+ls/rJmgAcygI0YJGPHcnEurf5iOaftrPQIeoxSKqoXaQ80sGLr
         oFA7aRlYVpZkyE+jD1Fy/8tEYZ3a3DtR3gE1nGnVjOvtuhpOUxxDCJzkg2lhGwfPwnIo
         3EXP852BZ6KZu94wvk898SCgptkNh2HL9oMYZ7mUF++j681bIGwVkQIVc7+muJHGjn/d
         /PRuHrmyJ/j0NBGWDsa0YTzMo6BXBooIQasWD7rSORTUlKwwZHVOyeNW51Fk+0LHP2wr
         mFrQ==
MIME-Version: 1.0
X-Received: by 10.129.42.196 with SMTP id q187mr12816471ywq.84.1443780253113;
 Fri, 02 Oct 2015 03:04:13 -0700 (PDT)
Received: by 10.37.107.66 with HTTP; Fri, 2 Oct 2015 03:04:13 -0700 (PDT)
In-Reply-To: <20151002092919.GA27839@kroah.com>
References: <1443709407-14430-1-git-send-email-ciorneiioana@gmail.com>
	<20151002092919.GA27839@kroah.com>
Date: Fri, 2 Oct 2015 13:04:13 +0300
Message-ID: <CAHWJYFkcqF4Hs8JF9bn+qWEmzS1aMRcw-edn_5Xc8mTecACYsQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: wlan-ng: replace memcpy
 with ether_addr_copy
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: Greg KH <greg@kroah.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Fri, Oct 2, 2015 at 12:29 PM, Greg KH <greg@kroah.com> wrote:
>
> On Thu, Oct 01, 2015 at 05:23:27PM +0300, Ioana Ciornei wrote:
> > Replace memcpy with ether_addr_copy since the output of pahole
> > shows that the addresses are aligned.
> >
> > struct p80211_hdr_a3 {
> >         __le16                     fc;                   /*     0     2 */
> >         u16                        dur;                  /*     2     2 */
> >         u8                         a1[6];                /*     4     6 */
> >         u8                         a2[6];                /*    10     6 */
> >         u8                         a3[6];                /*    16     6 */
> >         u16                        seq;                  /*    22     2 */
> >
> >         /* size: 24, cachelines: 1, members: 6 */
> >         /* last cacheline: 24 bytes */
> > };
> >
> > struct net_device {
> >         char                       name[16];             /*     0    16 */
> >         struct hlist_node          name_hlist;           /*    16    16 */
> >
> >      ...............
> >
> >  /* --- cacheline 12 boundary (768 bytes) --- */
> >         long unsigned int          last_rx;              /*   768     8 */
> >         unsigned char *            dev_addr;             /*   776     8 */
> >         struct netdev_rx_queue *   _rx;                  /*   784     8 */
> >
> >     .................
> > };
> >
> > struct wlandevice {
> >         struct wlandevice *        next;                 /*     0     8 */
> >     .................
> >         u8                         bssid[6];             /*   128     6 */
> >     .................
> > };
> >
> > struct net_device {
> >         char                       name[16];             /*     0    16 */
> >     .................
> >         unsigned char *            dev_addr;             /*   776     8 */
> >     ................
> > };
> >
> > struct wlan_ethhdr {
> >         u8                         daddr[6];             /*     0     6 */
> >         u8                         saddr[6];             /*     6     6 */
> >         u16                        type;                 /*    12     2 */
> >
> >         /* size: 14, cachelines: 1, members: 3 */
> >         /* last cacheline: 14 bytes */
> > };
> >
> > struct sockaddr {
> >         sa_family_t                sa_family;            /*     0     2 */
> >         char                       sa_data[14];          /*     2    14 */
> >
> >         /* size: 16, cachelines: 1, members: 2 */
> >         /* last cacheline: 16 bytes */
> > };
> >
> > struct p80211pstr6 {
> >         u8                         len;                  /*     0     1 */
> >         u8                         data[6];              /*     1     6 */
> >
> >         /* size: 7, cachelines: 1, members: 2 */
> >         /* last cacheline: 7 bytes */
> > };
> >
> > Coccinelle semantic patch:
> >
> > @@
> > expression E1,E2;
> > @@
> >
> > - memcpy(E1, E2, 6)
> > + ether_addr_copy(E1, E2)
> >
> > @@
> > expression E1,E2;
> > @@
> >
> > - memcpy(E1, E2, ETH_ALEN)
> > + ether_addr_copy(E1, E2)
> >
> > Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
> > ---
> >
> > Changes in v2:
> >     - revised the cocci patch to be a more constrainting one
> >     - applied cocci patch on the entire wlan-ng folder
> >     - updated the patch description with further pahole output
>
> Please always test-build your patches, to not do so makes my job much
> more difficult :(
>
> Please fix this and resend.
>

Sorry for that. I made that exact same fix in v1 and somehow forgot in v2.
I fixed it and resent the patch.

Ioana

