X-GM-THRID: 6330315371322540032
X-Received: by 10.194.126.165 with SMTP id mz5mr1805440wjb.5.1473967515658;
        Thu, 15 Sep 2016 12:25:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.167.66 with SMTP id q63ls422161wme.15.gmail; Thu, 15 Sep
 2016 12:25:14 -0700 (PDT)
X-Received: by 10.28.152.87 with SMTP id a84mr810075wme.7.1473967514893;
        Thu, 15 Sep 2016 12:25:14 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id c13si328038wme.3.2016.09.15.12.25.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 12:25:14 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,340,1470693600"; 
   d="scan'208";a="237011862"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 15 Sep 2016 21:25:14 +0200
Date: Thu, 15 Sep 2016 21:25:13 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Namrata A Shettar <namrataashettar@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, 
    Julia Lawall <julia.lawall@lip6.fr>
Subject: Re: [Outreachy kernel] [PATCH 2/6] staging: vt6656: main_usb: Remove
 unnecessary blank lines
In-Reply-To: <CAFrQyDF1qx890vw5Nuff2sZ8Z80N=Q6zPpGO674J-r=1oQ2+tg@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1609152124420.3364@hadrien>
References: <CAFrQyDHKq8Ktv05E5zpQfiDfQGgceZu5B19WXF1bdhJT=w6tYg@mail.gmail.com> <alpine.DEB.2.10.1609150717060.6078@hadrien> <20160915174614.GA6219@namrata-HP-Pavilion-g6-Notebook-PC> <CAFrQyDF1qx890vw5Nuff2sZ8Z80N=Q6zPpGO674J-r=1oQ2+tg@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-1591852676-1473967514=:3364"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1591852676-1473967514=:3364
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Thu, 15 Sep 2016, Namrata A Shettar wrote:

>
> On Thu, Sep 15, 2016 at 07:17:53AM +0200, Julia Lawall wrote:
> >
> >
> > On Thu, 15 Sep 2016, Namrata A Shettar wrote:
> >
> > > This patch resolves checkpatch issue of unnecessary blank lines.
> > >
> > > Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
> > > ---
> > >  int vnt_init(struct vnt_private *priv)
> > >  {
> > > -
> > > -       if (!(vnt_init_registers(priv)))
> > > +        if (!(vnt_init_registers(priv)))
> > >
> >
> > Here you seem to have added an extra space.  Actually all the spaces
> > should be removed, and there should be a tab.  But in any case it is not a
> > blank line change.
> >
> > julia
> >
>
> There is actually a blank line change but I added a space by mistake
> while deleting the blank line.So will I have to abandon this patch.If
> yes,then in the new version of the patchset I make ,do I have to change
> the numbering? Will be more careful the next time!

I'm not sure what you mean by abandon.  Just send the whole series again,
with any needed corrections, and indicate what has changed.

julia

>
> Thanks,
> Namrata
>
>
> On Thu, Sep 15, 2016 at 11:16 PM, Namrata A Shettar
> <namrataashettar@gmail.com> wrote:
>       There is actually a blank line change but I added a space by
>       mistake
>       while deleting the blank line.So will I have to abandon this
>       patch.If
>       yes,then in the new version of the patchset I make do I have to
>       change
>       the numbering.Once again thanks for your inputs!
>
>       -Namrata
>
>       On Thu, Sep 15, 2016 at 07:17:53AM +0200, Julia Lawall wrote:
>       >
>       >
>       > On Thu, 15 Sep 2016, Namrata A Shettar wrote:
>       >
>       > > This patch resolves checkpatch issue of unnecessary blank
>       lines.
>       > >
>       > > Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
>       > > ---
>       > >  drivers/staging/vt6656/main_usb.c | 5 +----
>       > >  1 file changed, 1 insertion(+), 4 deletions(-)
>       > >
>       > > diff --git a/drivers/staging/vt6656/main_usb.c
>       > > b/drivers/staging/vt6656/main_usb.c
>       > > index 0594828..d79f07f 100644
>       > > --- a/drivers/staging/vt6656/main_usb.c
>       > > +++ b/drivers/staging/vt6656/main_usb.c
>       > > @@ -692,7 +692,6 @@ static void vnt_bss_info_changed(struct
>       ieee80211_hw
>       > > *hw,
>       > >         if (changed & BSS_CHANGED_BSSID && conf->bssid)
>       > >                 vnt_mac_set_bssid_addr(priv, (u8
>       *)conf->bssid);
>       > >
>       > > -
>       > >         if (changed & BSS_CHANGED_BASIC_RATES) {
>       > >                 priv->basic_rates = conf->basic_rates;
>       > >
>       > > @@ -814,7 +813,6 @@ static void vnt_configure(struct
>       ieee80211_hw *hw,
>       > >                 } else {
>       > >                         rx_mode &= ~(RCR_MULTICAST |
>       RCR_BROADCAST);
>       > >                 }
>       > > -
>       > >         }
>       > >
>       > >         if (changed_flags & (FIF_OTHER_BSS |
>       FIF_BCN_PRBRESP_PROMISC)) {
>       > > @@ -925,8 +923,7 @@ static const struct ieee80211_ops
>       vnt_mac_ops = {
>       > >
>       > >  int vnt_init(struct vnt_private *priv)
>       > >  {
>       > > -
>       > > -       if (!(vnt_init_registers(priv)))
>       > > +        if (!(vnt_init_registers(priv)))
>       >
>       > Here you seem to have added an extra space.  Actually all the
>       spaces
>       > should be removed, and there should be a tab.  But in any case
>       it is not a
>       > blank line change.
>       >
>       > julia
>       >
>       > >                 return -EAGAIN;
>       > >
>       > >         SET_IEEE80211_PERM_ADDR(priv->hw,
>       > > priv->permanent_net_addr);[cleardot.gif]
>       > >
>       > > --
>       > > 2.7.4
>       > >
>       > > --
>       > > You received this message because you are subscribed to the
>       Google Groups
>       > > "outreachy-kernel" group.
>       > > To unsubscribe from this group and stop receiving emails
>       from it, send an
>       > > email to outreachy-kernel+unsubscribe@googlegroups.com.
>       > > To post to this group, send email to
>       outreachy-kernel@googlegroups.com.
>       > > To view this discussion on the webvisithttps://groups.google.com/d/msgid/outreachy-kernel/CAFrQyDHKq8Ktv05E5z
>       pQfiD
>       > > fQGgceZu5B19WXF1bdhJT%3Dw6tYg%40mail.gmail.com.
>       > > For more options, visit https://groups.google.com/d/optout.
>       > >
>       > >
>
>
>
>
--8323329-1591852676-1473967514=:3364--

