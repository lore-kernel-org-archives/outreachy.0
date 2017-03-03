X-GM-THRID: 6392252135167229952
X-Received: by 10.46.87.27 with SMTP id l27mr806786ljb.28.1488572842028;
        Fri, 03 Mar 2017 12:27:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.0.22 with SMTP id 22ls710164lja.32.gmail; Fri, 03 Mar 2017
 12:27:21 -0800 (PST)
X-Received: by 10.25.17.102 with SMTP id g99mr686544lfi.6.1488572841367;
        Fri, 03 Mar 2017 12:27:21 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id v70si334420wmf.0.2017.03.03.12.27.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 12:27:21 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,238,1484002800"; 
   d="scan'208";a="263055542"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 03 Mar 2017 21:27:20 +0100
Date: Fri, 3 Mar 2017 21:27:20 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Georgiana Chelu <georgiana.chelu93@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, 
    gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH v3] staging:rtl8192u: Check memory
 allocation
In-Reply-To: <c35613c8-a4c0-41c5-852e-56f226f81a24@googlegroups.com>
Message-ID: <alpine.DEB.2.20.1703032124150.2133@hadrien>
References: <20170302214748.GA9824@fireworks> <alpine.DEB.2.20.1703022302430.2175@hadrien> <c35613c8-a4c0-41c5-852e-56f226f81a24@googlegroups.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-1482141772-1488572840=:2133"

--8323329-1482141772-1488572840=:2133
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Fri, 3 Mar 2017, Georgiana Chelu wrote:

> I compared my local file with the git patch and it seems that something went
> wrong.
> I would not expect something like this.
>
> This is how the two functions (rtl8192_usb_initendpoints and
> rtl8192_usb_deleteendpoints)
> from my local file look like: http://pastebin.com/9SJaYkdi .
>
> Maybe I should create two commits. The first commit moves the delete
> function above
> the init one, and the second commit makes my changes on checking the memory
> allocation.
>
>
> What do you think?

Don't top post :)  I'm guessing that this refers to the kfree issue, but
it would be clearer if this comment were next to the code that it is
referring to.

In your paste, you have a kfree on line 123 just below a call to
rtl8192_usb_deleteendpoints, and that function also appears to free the
same value, if it is not NULL.

Also, I wonder why you don't use the rtl8192_usb_deleteendpoints function
in the case that the final kcalloc fails (lines 108-116 in the paste.

julia

>
>
> Georgiana
>
> On Friday, 3 March 2017 21:50:07 UTC+2, Julia Lawall wrote:
>
>
>       On Thu, 2 Mar 2017, Georgiana Rodica Chelu wrote:
>
>       > Check if the allocation is not successful and
>       > return the error code -ENOMEM.
>       >
>       > Signed-off-by: Georgiana Rodica Chelu <georgian...@gmail.com>
>       > ---
>       >
>       > Changes in v2:
>       >         - use a goto pattern to handle the allocation fails
>       >         - use exiting a function to free the memory in case of
>       fail
>       >         - move the free function above the initialization
>       >
>       > Changes in v3:
>       >         - free the r8192_priv structure in case one of the urb
>       >           allocation fails
>       >         - break the loop when an uninitialized pointer is
>       reached
>       >
>       >  drivers/staging/rtl8192u/r8192U_core.c | 120
>       +++++++++++++++++++--------------
>       >  1 file changed, 70 insertions(+), 50 deletions(-)
>       >
>       > diff --git a/drivers/staging/rtl8192u/r8192U_core.c
>       b/drivers/staging/rtl8192u/r8192U_core.c
>       > index b631990..11210e3 100644
>       > --- a/drivers/staging/rtl8192u/r8192U_core.c
>       > +++ b/drivers/staging/rtl8192u/r8192U_core.c
>       > @@ -1677,11 +1677,68 @@ short rtl8192_tx(struct net_device
>       *dev, struct sk_buff *skb)
>       >          return -1;
>       >  }
>       >
>       > +#ifdef THOMAS_BEACON
>       > +static void rtl8192_usb_deleteendpoints(struct net_device
>       *dev)
>       > +{
>       > +        int i;
>       > +        struct r8192_priv *priv = ieee80211_priv(dev);
>       > +
>       > +        if (priv->rx_urb) {
>       > +                for (i = 0; i < (MAX_RX_URB + 1); i++) {
>       > +                        usb_kill_urb(priv->rx_urb[i]);
>       > +                        usb_free_urb(priv->rx_urb[i]);
>       > +                }
>       > +                kfree(priv->rx_urb);
>       > +                priv->rx_urb = NULL;
>       > +        }
>       > +        kfree(priv->oldaddr);
>       > +        priv->oldaddr = NULL;
>       > +
>       > +        kfree(priv->pp_rxskb);
>       > +        priv->pp_rxskb = NULL;
>       > +}
>       > +#else
>       > +void rtl8192_usb_deleteendpoints(struct net_device *dev)
>       > +{
>       > +        int i;
>       > +        struct r8192_priv *priv = ieee80211_priv(dev);
>       > +
>       > +#ifndef JACKSON_NEW_RX
>       > +
>       > +        if (priv->rx_urb) {
>       > +                for (i = 0; i < (MAX_RX_URB + 1); i++) {
>       > +                        if(!priv->rx_urb[i])
>       > +                                break;
>       > +                        usb_kill_urb(priv->rx_urb[i]);
>       > +                        if(!riv->rx_urb[i]->transfer_buffer)
>       > +                                break;
>       >
>       +                        kfree(priv->rx_urb[i]->transfer_buffer);
>       > +                        usb_free_urb(priv->rx_urb[i]);
>       > +                }
>       > +
>       > +                if(i < (MAX_RX_URB + 1))
>       > +                        usb_free_urb(priv->rx_urb[i]);
>       > +                kfree(priv->rx_urb);
>       > +                priv->rx_urb = NULL;
>       > +        }
>       > +#else
>       > +        kfree(priv->rx_urb);
>       > +        priv->rx_urb = NULL;
>       > +        kfree(priv->oldaddr);
>       > +        priv->oldaddr = NULL;
>       > +
>       > +        kfree(priv->pp_rxskb);
>       > +        priv->pp_rxskb = 0;
>
>       It's odd to kfree something, implying that there is a pointer,
>       and then
>       set the same thing to 0 (rather than NULL).
>
>       > +
>       > +#endif
>       > +}
>       > +#endif
>       > +
>       >  static short rtl8192_usb_initendpoints(struct net_device
>       *dev)
>       >  {
>       >          struct r8192_priv *priv = ieee80211_priv(dev);
>       >
>       > -        priv->rx_urb = kmalloc(sizeof(struct urb *) *
>       (MAX_RX_URB + 1),
>       > +        priv->rx_urb = kzalloc(sizeof(struct urb *) *
>       (MAX_RX_URB + 1),
>       >                                 GFP_KERNEL);
>       >          if (!priv->rx_urb)
>       >                  return -ENOMEM;
>       > @@ -1689,9 +1746,13 @@ static short
>       rtl8192_usb_initendpoints(struct net_device *dev)
>       >  #ifndef JACKSON_NEW_RX
>       >          for (i = 0; i < (MAX_RX_URB + 1); i++) {
>       >                  priv->rx_urb[i] = usb_alloc_urb(0,
>       GFP_KERNEL);
>       > +                if(!priv->rx_urb[i])
>       > +                        goto exit;
>       >
>       >                  priv->rx_urb[i]->transfer_buffer =
>       > -                        kmalloc(RX_URB_SIZE, GFP_KERNEL);
>       > +                        kzalloc(RX_URB_SIZE, GFP_KERNEL);
>
>       I don't think this one has to be kzalloc.  No one is looking in
>       the
>       uninitialized parts of it.
>
>       > +                if(!priv->rx_urb[i]->transfer_buffer)
>       > +                        goto exit;
>       >
>       >                  priv->rx_urb[i]->transfer_buffer_length =
>       RX_URB_SIZE;
>       >          }
>       > @@ -1704,6 +1765,9 @@ static short
>       rtl8192_usb_initendpoints(struct net_device *dev)
>       >
>       >                  priv->rx_urb[16] = usb_alloc_urb(0,
>       GFP_KERNEL);
>       >                  priv->oldaddr = kmalloc(16, GFP_KERNEL);
>       > +                if(!priv->oldaddr)
>       > +                        goto exit;
>       > +
>       >                  oldaddr = priv->oldaddr;
>       >                  align = ((long)oldaddr) & 3;
>       >                  if (align) {
>       > @@ -1732,57 +1796,13 @@ static short
>       rtl8192_usb_initendpoints(struct net_device *dev)
>       >
>       >          netdev_dbg(dev, "End of initendpoints\n");
>       >          return 0;
>       > -}
>       > -
>       > -#ifdef THOMAS_BEACON
>       > -static void rtl8192_usb_deleteendpoints(struct net_device
>       *dev)
>       > -{
>       > -        int i;
>       > -        struct r8192_priv *priv = ieee80211_priv(dev);
>       > -
>       > -        if (priv->rx_urb) {
>       > -                for (i = 0; i < (MAX_RX_URB + 1); i++) {
>       > -                        usb_kill_urb(priv->rx_urb[i]);
>       > -                        usb_free_urb(priv->rx_urb[i]);
>       > -                }
>       > -                kfree(priv->rx_urb);
>       > -                priv->rx_urb = NULL;
>       > -        }
>       > -        kfree(priv->oldaddr);
>       > -        priv->oldaddr = NULL;
>       > -
>       > -        kfree(priv->pp_rxskb);
>       > -        priv->pp_rxskb = NULL;
>       > -}
>       > -#else
>       > -void rtl8192_usb_deleteendpoints(struct net_device *dev)
>       > -{
>       > -        int i;
>       > -        struct r8192_priv *priv = ieee80211_priv(dev);
>       >
>       > -#ifndef JACKSON_NEW_RX
>       > -
>       > -        if (priv->rx_urb) {
>       > -                for (i = 0; i < (MAX_RX_URB + 1); i++) {
>       > -                        usb_kill_urb(priv->rx_urb[i]);
>       >
>       -                        kfree(priv->rx_urb[i]->transfer_buffer);
>       > -                        usb_free_urb(priv->rx_urb[i]);
>       > -                }
>       > -                kfree(priv->rx_urb);
>       > -                priv->rx_urb = NULL;
>       > -        }
>       > -#else
>       > +exit:
>       > +        rtl8192_usb_deleteendpoints(dev);
>       >          kfree(priv->rx_urb);
>       > -        priv->rx_urb = NULL;
>
>       It looks suspicious to keep the kfree but drop the NULL
>       initization.  I
>       have the impression that the kfree should go to, but perhaps
>       this is just
>       an artifact of the diff algorithm, and the kfree is doing
>       filling a
>       different purpose in the transformed code than in the original
>       code.
>
>       julia
>
>       > -        kfree(priv->oldaddr);
>       > -        priv->oldaddr = NULL;
>       > -
>       > -        kfree(priv->pp_rxskb);
>       > -        priv->pp_rxskb = 0;
>       > -
>       > -#endif
>       > +        DMESGE("Endpoint Alloc Failure");
>       > +        return -ENOMEM;
>       >  }
>       > -#endif
>       >
>       >  static void rtl8192_update_ratr_table(struct net_device
>       *dev);
>       >  static void rtl8192_link_change(struct net_device *dev)
>       > --
>       > 2.7.4
>       >
>       > --
>       > You received this message because you are subscribed to the
>       Google Groups "outreachy-kernel" group.
>       > To unsubscribe from this group and stop receiving emails from
>       it, send an email to outreachy-kern...@googlegroups.com.
>       > To post to this group, send email to
>       outreach...@googlegroups.com.
>       > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/20170302214748.GA9824%40
>       fireworks.
>       > For more options, visit https://groups.google.com/d/optout.
>       >
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/c35613c8-a4c0-41c5-852e-
> 56f226f81a24%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-1482141772-1488572840=:2133--

