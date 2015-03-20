X-GM-THRID: 9011949731840
X-Received: by 10.182.18.67 with SMTP id u3mr94268266obd.38.1426889775677;
        Fri, 20 Mar 2015 15:16:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.89.48 with SMTP id u45ls1821654qgd.58.gmail; Fri, 20 Mar
 2015 15:16:15 -0700 (PDT)
X-Received: by 10.236.63.230 with SMTP id a66mr93697036yhd.51.1426889775465;
        Fri, 20 Mar 2015 15:16:15 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-pa0-x234.google.com (mail-pa0-x234.google.com. [2607:f8b0:400e:c03::234])
        by gmr-mx.google.com with ESMTPS id gb13si1011419pac.2.2015.03.20.15.16.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Mar 2015 15:16:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) client-ip=2607:f8b0:400e:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) smtp.mail=ciorneiioana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x234.google.com with SMTP id xg6so108690778pab.0
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Mar 2015 15:16:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=og2/eQUjHIaLV5Ij6I+F/ZD8019dURXN2Av7ktYVOVM=;
        b=ZKA0UC+opSuQu3rnfJZI9zJveTBGOdyOkaxuAjVjDmHHQlXYEp5MXTMqK9g+9uxtNc
         hSEyjsYJ2lnn7TkSLzpgawDs0F8TnljG3/sOb9G2xPFHeG3aez4lqE0W/0u1ee3MWP90
         LlNLe74i4Cpo3xc0c1m0kQhIgHrcCBVaBBWpvkZQ61CE5wDvuzToL2ia4qjAXEIKlcNS
         I+kNiSlIxOZPHs+fneJPVVdDQKQfsK3EXerTys7RTLinGMgmDF+Ryn7yC+d6z5u1Pogq
         l2u/T9OHST/sj9udwjNy01HaNbKfdtrxJFs7Fb/yXE0R7aPzX6XSmjlG17i+QBYf2Cuw
         3dWg==
MIME-Version: 1.0
X-Received: by 10.70.48.97 with SMTP id k1mr61919780pdn.159.1426889775313;
 Fri, 20 Mar 2015 15:16:15 -0700 (PDT)
Received: by 10.70.124.101 with HTTP; Fri, 20 Mar 2015 15:16:15 -0700 (PDT)
In-Reply-To: <20150320122158.GA4519@kroah.com>
References: <1426686607-11608-1-git-send-email-ciorneiioana@gmail.com>
	<20150320122158.GA4519@kroah.com>
Date: Sat, 21 Mar 2015 00:16:15 +0200
Message-ID: <CAHWJYFmFcM-HHk65muoQkzwzw1RsBz-xxyA1NRreVdc891V41A@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v3] staging: p80211conv: Replace memcpy
 with ether_addr_copy
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Fri, Mar 20, 2015 at 2:21 PM, Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Wed, Mar 18, 2015 at 03:50:07PM +0200, Ioana Ciornei wrote:
> > Replace memcpy() with ether_addr_copy() since addresses are __aligned(2).
> > The 2 structures are aligned to u16:
> >
> > struct p80211_hdr_a3 {
> >         __le16 fc;              /* 0    2 */
> >         u16 dur;                /* 2    2 */
> >         u8 a1[ETH_ALEN];        /* 4    6 */
> >         u8 a2[ETH_ALEN];        /* 10   6 */
> >         u8 a3[ETH_ALEN];        /* 16   6 */
> >         u16 seq;                /* 22   2 */
> > } __packed;
> >
> > Total size: 24
> >
> > struct wlan_ethhdr {
> >         u8 daddr[WLAN_ETHADDR_LEN];     /* 0    6 */
> >         u8 saddr[WLAN_ETHADDR_LEN];     /* 6    6 */
> >         u16 type;                       /* 12   2 */
> > } __packed;
> >
> > Total size: 14
> >
> > Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
> > ---
> >
> > Changes in v3:
> >       - fixed corrupted patch
>
> Please resend this again, after fixing the obvious build errors with it
> :(
>
> ALWAYS test build your patches, to not do so annoys the people you send
> them to, as it breaks their workflow, and is a bit rude.
>
> thanks,
>
> greg k-h

I am very sorry. I will resend the patch.

Ioana

