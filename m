X-GM-THRID: 8800398475264
X-Received: by 10.66.157.129 with SMTP id wm1mr75234880pab.15.1426686688456;
        Wed, 18 Mar 2015 06:51:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.164.198 with SMTP id ys6ls488614igb.38.gmail; Wed, 18 Mar
 2015 06:51:28 -0700 (PDT)
X-Received: by 10.66.236.74 with SMTP id us10mr53296110pac.28.1426686688254;
        Wed, 18 Mar 2015 06:51:28 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-pd0-x234.google.com (mail-pd0-x234.google.com. [2607:f8b0:400e:c02::234])
        by gmr-mx.google.com with ESMTPS id gu4si3130122pac.1.2015.03.18.06.51.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Mar 2015 06:51:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2607:f8b0:400e:c02::234 as permitted sender) client-ip=2607:f8b0:400e:c02::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2607:f8b0:400e:c02::234 as permitted sender) smtp.mail=ciorneiioana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x234.google.com with SMTP id c3so43893050pdn.0
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Mar 2015 06:51:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=bK/H7wh5d7g9OyoQcWNvGFFItIolozkGpOKqXbwVyl0=;
        b=ME15XdFgvQmsUGpvPVYud3Y2Nlz64dD60WelTh2PHC6QU+oQhu9XqUY9rkPZMrASFq
         lDWt1QAMSEf47zU6o1rZw+iudXElU4cn1kjUzJAZ59Dn+Q0iBqQnmKIu5QOArR7tWCEK
         Di2J5LlzMr9N66u0WTB7TfELdi1q2jKVaWMwFpOux2h7ZD2oqIRGVYidLAizGF5yvfci
         70paMZT/jI4v2XtsBMUFuOBO7Cndy+OD0WP7xkevUuwORBsHSvceD2xRopjJDrk8pblp
         1nZyBsCLR99VLZRP4o6SxG5p1U9ELzx3tsq2iifKS9lJY93bUu2WwcP53Nie0fgaDHZw
         Vv5Q==
MIME-Version: 1.0
X-Received: by 10.66.224.164 with SMTP id rd4mr161051580pac.12.1426686688132;
 Wed, 18 Mar 2015 06:51:28 -0700 (PDT)
Received: by 10.70.124.101 with HTTP; Wed, 18 Mar 2015 06:51:28 -0700 (PDT)
In-Reply-To: <20150318101938.GA5422@kroah.com>
References: <1426633858-22689-1-git-send-email-ciorneiioana@gmail.com>
	<20150318101938.GA5422@kroah.com>
Date: Wed, 18 Mar 2015 15:51:28 +0200
Message-ID: <CAHWJYFmx9bZfg=mLOx9eGh=cBn97QVY--tDLGKWcr0gN9+zA-A@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: p80211conv: Replace memcpy
 with ether_addr_copy
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Wed, Mar 18, 2015 at 12:19 PM, Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Wed, Mar 18, 2015 at 01:10:58AM +0200, Ioana Ciornei wrote:
> > Replace memcpy() with ether_addr_copy() since addresses are __aligned(2).
> > The 2 structures are aligned to u16:
> >
> > struct p80211_hdr_a3 {
> >       __le16 fc;              /* 0    2 */
> >       u16 dur;                /* 2    2 */
> >       u8 a1[ETH_ALEN];        /* 4    6 */
> >       u8 a2[ETH_ALEN];        /* 10   6 */
> >       u8 a3[ETH_ALEN];        /* 16   6 */
> >       u16 seq;                /* 22   2 */
> > } __packed;
> >
> > Total size: 24
> >
> > struct wlan_ethhdr {
> >       u8 daddr[WLAN_ETHADDR_LEN];     /* 0    6 */
> >       u8 saddr[WLAN_ETHADDR_LEN];     /* 6    6 */
> >       u16 type;                       /* 12   2 */
> > } __packed;
> >
> > Total size: 14
> >
> > Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
> > ---
> >
> > Changes in v2:
> >       - added explanations on why the addresses are aligned
> >
> >  drivers/staging/wlan-ng/p80211conv.c | 21 +++++++++++----------
> >  1 file changed, 11 insertions(+), 10 deletions(-)
> >
> > diff --git a/drivers/staging/wlan-ng/p80211conv.c b/drivers/staging/wlan-ng/p80211conv.c
> > index bd69e8c..a51fbfe 100644
> > --- a/drivers/staging/wlan-ng/p80211conv.c
> > +++ b/drivers/staging/wlan-ng/p80211conv.c
> > @@ -62,6 +62,7 @@
> >  #include <linux/etherdevice.h>
> >  #include <linux/if_ether.h>
> >  #include <linux/byteorder/generic.h>
> >
> >  #include <asm/byteorder.h>
> >
> > @@ -178,21 +179,21 @@ int skb_ether_to_p80211(wlandevice_t *wlandev, u32 ethconv,
>
> This patch is corrupted, it looks like you edited it by hand, which is
> fine if you know the format, but when you don't, it breaks the tool and
> can not be applied.
>
> Look at that hunk above, it doesn't do anything, which is a hint that
> something bad went wrong :(
>
> Please fix up and resend.
>
> thanks,
>
> greg k-h

Sorry for that. I fixed it and resent the patch.

Ioana

