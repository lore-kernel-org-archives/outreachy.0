X-GM-THRID: 6392252135167229952
Date: Fri, 3 Mar 2017 12:18:55 -0800 (PST)
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: georgiana.chelu93@gmail.com, gregkh@linuxfoundation.org
Message-Id: <c35613c8-a4c0-41c5-852e-56f226f81a24@googlegroups.com>
In-Reply-To: <alpine.DEB.2.20.1703022302430.2175@hadrien>
References: <20170302214748.GA9824@fireworks>
 <alpine.DEB.2.20.1703022302430.2175@hadrien>
Subject: Re: [Outreachy kernel] [PATCH v3] staging:rtl8192u: Check memory
 allocation
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1006_1407013570.1488572335262"
X-Google-Token: EK-f58UFRZ4m7N5xlTQ0
X-Google-IP: 81.196.254.171

------=_Part_1006_1407013570.1488572335262
Content-Type: multipart/alternative; 
	boundary="----=_Part_1007_369536952.1488572335263"

------=_Part_1007_369536952.1488572335263
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

I compared my local file with the git patch and it seems that something 
went wrong.
I would not expect something like this.

This is how the two functions (rtl8192_usb_initendpoints and 
rtl8192_usb_deleteendpoints)
from my local file look like: http://pastebin.com/9SJaYkdi .

Maybe I should create two commits. The first commit moves the delete 
function above
the init one, and the second commit makes my changes on checking the memory 
allocation.


What do you think?


Georgiana

On Friday, 3 March 2017 21:50:07 UTC+2, Julia Lawall wrote:
>
>
>
> On Thu, 2 Mar 2017, Georgiana Rodica Chelu wrote: 
>
> > Check if the allocation is not successful and 
> > return the error code -ENOMEM. 
> > 
> > Signed-off-by: Georgiana Rodica Chelu <georgian...@gmail.com 
> <javascript:>> 
> > --- 
> > 
> > Changes in v2: 
> >         - use a goto pattern to handle the allocation fails 
> >         - use exiting a function to free the memory in case of fail 
> >         - move the free function above the initialization 
> > 
> > Changes in v3: 
> >         - free the r8192_priv structure in case one of the urb 
> >           allocation fails 
> >         - break the loop when an uninitialized pointer is reached 
> > 
> >  drivers/staging/rtl8192u/r8192U_core.c | 120 
> +++++++++++++++++++-------------- 
> >  1 file changed, 70 insertions(+), 50 deletions(-) 
> > 
> > diff --git a/drivers/staging/rtl8192u/r8192U_core.c 
> b/drivers/staging/rtl8192u/r8192U_core.c 
> > index b631990..11210e3 100644 
> > --- a/drivers/staging/rtl8192u/r8192U_core.c 
> > +++ b/drivers/staging/rtl8192u/r8192U_core.c 
> > @@ -1677,11 +1677,68 @@ short rtl8192_tx(struct net_device *dev, struct 
> sk_buff *skb) 
> >          return -1; 
> >  } 
> > 
> > +#ifdef THOMAS_BEACON 
> > +static void rtl8192_usb_deleteendpoints(struct net_device *dev) 
> > +{ 
> > +        int i; 
> > +        struct r8192_priv *priv = ieee80211_priv(dev); 
> > + 
> > +        if (priv->rx_urb) { 
> > +                for (i = 0; i < (MAX_RX_URB + 1); i++) { 
> > +                        usb_kill_urb(priv->rx_urb[i]); 
> > +                        usb_free_urb(priv->rx_urb[i]); 
> > +                } 
> > +                kfree(priv->rx_urb); 
> > +                priv->rx_urb = NULL; 
> > +        } 
> > +        kfree(priv->oldaddr); 
> > +        priv->oldaddr = NULL; 
> > + 
> > +        kfree(priv->pp_rxskb); 
> > +        priv->pp_rxskb = NULL; 
> > +} 
> > +#else 
> > +void rtl8192_usb_deleteendpoints(struct net_device *dev) 
> > +{ 
> > +        int i; 
> > +        struct r8192_priv *priv = ieee80211_priv(dev); 
> > + 
> > +#ifndef JACKSON_NEW_RX 
> > + 
> > +        if (priv->rx_urb) { 
> > +                for (i = 0; i < (MAX_RX_URB + 1); i++) { 
> > +                        if(!priv->rx_urb[i]) 
> > +                                break; 
> > +                        usb_kill_urb(priv->rx_urb[i]); 
> > +                        if(!riv->rx_urb[i]->transfer_buffer) 
> > +                                break; 
> > +                        kfree(priv->rx_urb[i]->transfer_buffer); 
> > +                        usb_free_urb(priv->rx_urb[i]); 
> > +                } 
> > + 
> > +                if(i < (MAX_RX_URB + 1)) 
> > +                        usb_free_urb(priv->rx_urb[i]); 
> > +                kfree(priv->rx_urb); 
> > +                priv->rx_urb = NULL; 
> > +        } 
> > +#else 
> > +        kfree(priv->rx_urb); 
> > +        priv->rx_urb = NULL; 
> > +        kfree(priv->oldaddr); 
> > +        priv->oldaddr = NULL; 
> > + 
> > +        kfree(priv->pp_rxskb); 
> > +        priv->pp_rxskb = 0; 
>
> It's odd to kfree something, implying that there is a pointer, and then 
> set the same thing to 0 (rather than NULL). 
>
> > + 
> > +#endif 
> > +} 
> > +#endif 
> > + 
> >  static short rtl8192_usb_initendpoints(struct net_device *dev) 
> >  { 
> >          struct r8192_priv *priv = ieee80211_priv(dev); 
> > 
> > -        priv->rx_urb = kmalloc(sizeof(struct urb *) * (MAX_RX_URB + 1), 
> > +        priv->rx_urb = kzalloc(sizeof(struct urb *) * (MAX_RX_URB + 1), 
> >                                 GFP_KERNEL); 
> >          if (!priv->rx_urb) 
> >                  return -ENOMEM; 
> > @@ -1689,9 +1746,13 @@ static short rtl8192_usb_initendpoints(struct 
> net_device *dev) 
> >  #ifndef JACKSON_NEW_RX 
> >          for (i = 0; i < (MAX_RX_URB + 1); i++) { 
> >                  priv->rx_urb[i] = usb_alloc_urb(0, GFP_KERNEL); 
> > +                if(!priv->rx_urb[i]) 
> > +                        goto exit; 
> > 
> >                  priv->rx_urb[i]->transfer_buffer = 
> > -                        kmalloc(RX_URB_SIZE, GFP_KERNEL); 
> > +                        kzalloc(RX_URB_SIZE, GFP_KERNEL); 
>
> I don't think this one has to be kzalloc.  No one is looking in the 
> uninitialized parts of it. 
>
> > +                if(!priv->rx_urb[i]->transfer_buffer) 
> > +                        goto exit; 
> > 
> >                  priv->rx_urb[i]->transfer_buffer_length = RX_URB_SIZE; 
> >          } 
> > @@ -1704,6 +1765,9 @@ static short rtl8192_usb_initendpoints(struct 
> net_device *dev) 
> > 
> >                  priv->rx_urb[16] = usb_alloc_urb(0, GFP_KERNEL); 
> >                  priv->oldaddr = kmalloc(16, GFP_KERNEL); 
> > +                if(!priv->oldaddr) 
> > +                        goto exit; 
> > + 
> >                  oldaddr = priv->oldaddr; 
> >                  align = ((long)oldaddr) & 3; 
> >                  if (align) { 
> > @@ -1732,57 +1796,13 @@ static short rtl8192_usb_initendpoints(struct 
> net_device *dev) 
> > 
> >          netdev_dbg(dev, "End of initendpoints\n"); 
> >          return 0; 
> > -} 
> > - 
> > -#ifdef THOMAS_BEACON 
> > -static void rtl8192_usb_deleteendpoints(struct net_device *dev) 
> > -{ 
> > -        int i; 
> > -        struct r8192_priv *priv = ieee80211_priv(dev); 
> > - 
> > -        if (priv->rx_urb) { 
> > -                for (i = 0; i < (MAX_RX_URB + 1); i++) { 
> > -                        usb_kill_urb(priv->rx_urb[i]); 
> > -                        usb_free_urb(priv->rx_urb[i]); 
> > -                } 
> > -                kfree(priv->rx_urb); 
> > -                priv->rx_urb = NULL; 
> > -        } 
> > -        kfree(priv->oldaddr); 
> > -        priv->oldaddr = NULL; 
> > - 
> > -        kfree(priv->pp_rxskb); 
> > -        priv->pp_rxskb = NULL; 
> > -} 
> > -#else 
> > -void rtl8192_usb_deleteendpoints(struct net_device *dev) 
> > -{ 
> > -        int i; 
> > -        struct r8192_priv *priv = ieee80211_priv(dev); 
> > 
> > -#ifndef JACKSON_NEW_RX 
> > - 
> > -        if (priv->rx_urb) { 
> > -                for (i = 0; i < (MAX_RX_URB + 1); i++) { 
> > -                        usb_kill_urb(priv->rx_urb[i]); 
> > -                        kfree(priv->rx_urb[i]->transfer_buffer); 
> > -                        usb_free_urb(priv->rx_urb[i]); 
> > -                } 
> > -                kfree(priv->rx_urb); 
> > -                priv->rx_urb = NULL; 
> > -        } 
> > -#else 
> > +exit: 
> > +        rtl8192_usb_deleteendpoints(dev); 
> >          kfree(priv->rx_urb); 
> > -        priv->rx_urb = NULL; 
>
> It looks suspicious to keep the kfree but drop the NULL initization.  I 
> have the impression that the kfree should go to, but perhaps this is just 
> an artifact of the diff algorithm, and the kfree is doing filling a 
> different purpose in the transformed code than in the original code. 
>
> julia 
>
> > -        kfree(priv->oldaddr); 
> > -        priv->oldaddr = NULL; 
> > - 
> > -        kfree(priv->pp_rxskb); 
> > -        priv->pp_rxskb = 0; 
> > - 
> > -#endif 
> > +        DMESGE("Endpoint Alloc Failure"); 
> > +        return -ENOMEM; 
> >  } 
> > -#endif 
> > 
> >  static void rtl8192_update_ratr_table(struct net_device *dev); 
> >  static void rtl8192_link_change(struct net_device *dev) 
> > -- 
> > 2.7.4 
> > 
> > -- 
> > You received this message because you are subscribed to the Google 
> Groups "outreachy-kernel" group. 
> > To unsubscribe from this group and stop receiving emails from it, send 
> an email to outreachy-kern...@googlegroups.com <javascript:>. 
> > To post to this group, send email to outreach...@googlegroups.com 
> <javascript:>. 
> > To view this discussion on the web visit 
> https://groups.google.com/d/msgid/outreachy-kernel/20170302214748.GA9824%40fireworks. 
>
> > For more options, visit https://groups.google.com/d/optout. 
> > 
>

------=_Part_1007_369536952.1488572335263
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I compared my local file with the git patch and it seems t=
hat something went wrong.<br>I would not expect something like this.<br><br=
>This is how the two functions (rtl8192_usb_initendpoints and rtl8192_usb_d=
eleteendpoints)<br>from my local file look like: http://pastebin.com/9SJaYk=
di .<br><br>Maybe I should create two commits. The first commit moves the d=
elete function above<br>the init one, and the second commit makes my change=
s on checking the memory allocation.<br><br><br>What do you think?<br><br><=
br>Georgiana<br><br>On Friday, 3 March 2017 21:50:07 UTC+2, Julia Lawall  w=
rote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8e=
x;border-left: 1px #ccc solid;padding-left: 1ex;">
<br>
<br>On Thu, 2 Mar 2017, Georgiana Rodica Chelu wrote:
<br>
<br>&gt; Check if the allocation is not successful and
<br>&gt; return the error code -ENOMEM.
<br>&gt;
<br>&gt; Signed-off-by: Georgiana Rodica Chelu &lt;<a href=3D"javascript:" =
target=3D"_blank" gdf-obfuscated-mailto=3D"cKE31QgxBAAJ" rel=3D"nofollow" o=
nmousedown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"th=
is.href=3D&#39;javascript:&#39;;return true;">georgian...@gmail.com</a>&gt;
<br>&gt; ---
<br>&gt;
<br>&gt; Changes in v2:
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 - use a goto pattern to handle the all=
ocation fails
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0- use exiting a fu=
nction to free the memory in case of fail
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0- move the free fu=
nction above the initialization
<br>&gt;
<br>&gt; Changes in v3:
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0- free the r8192_p=
riv structure in case one of the urb
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0allocation =
fails
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0- break the loop w=
hen an uninitialized pointer is reached
<br>&gt;
<br>&gt; =C2=A0drivers/staging/rtl8192u/<wbr>r8192U_core.c | 120 ++++++++++=
+++++++++-----------<wbr>---
<br>&gt; =C2=A01 file changed, 70 insertions(+), 50 deletions(-)
<br>&gt;
<br>&gt; diff --git a/drivers/staging/rtl8192u/<wbr>r8192U_core.c b/drivers=
/staging/rtl8192u/<wbr>r8192U_core.c
<br>&gt; index b631990..11210e3 100644
<br>&gt; --- a/drivers/staging/rtl8192u/<wbr>r8192U_core.c
<br>&gt; +++ b/drivers/staging/rtl8192u/<wbr>r8192U_core.c
<br>&gt; @@ -1677,11 +1677,68 @@ short rtl8192_tx(struct net_device *dev, s=
truct sk_buff *skb)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return -1;
<br>&gt; =C2=A0}
<br>&gt;
<br>&gt; +#ifdef THOMAS_BEACON
<br>&gt; +static void rtl8192_usb_deleteendpoints(<wbr>struct net_device *d=
ev)
<br>&gt; +{
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0int i;
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct r8192_priv=
 *priv =3D ieee80211_priv(dev);
<br>&gt; +
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (priv-&gt;rx_u=
rb) {
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0for (i =3D 0; i &lt; (MAX_RX_URB + 1); i++=
) {
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0usb_<wbr>kill_urb(priv-&gt;rx_urb[i]);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0usb_<wbr>free_urb(priv-&gt;rx_urb[i]);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0kfree(priv-&gt;<wbr>rx_urb);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0priv-&gt;rx_urb =3D NULL;
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0kfree(priv-&gt;ol=
daddr);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0priv-&gt;oldaddr =
=3D NULL;
<br>&gt; +
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0kfree(priv-&gt;pp=
_rxskb)<wbr>;
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0priv-&gt;pp_rxskb=
 =3D NULL;
<br>&gt; +}
<br>&gt; +#else
<br>&gt; +void rtl8192_usb_deleteendpoints(<wbr>struct net_device *dev)
<br>&gt; +{
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0int i;
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct r8192_priv=
 *priv =3D ieee80211_priv(dev);
<br>&gt; +
<br>&gt; +#ifndef JACKSON_NEW_RX
<br>&gt; +
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (priv-&gt;rx_u=
rb) {
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0for (i =3D 0; i &lt; (MAX_RX_URB + 1); i++=
) {
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0if(!<wbr>priv-&gt;rx_urb[i])
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0break;
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0usb_<wbr>kill_urb(priv-&gt;rx_urb[i]);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0if(!<wbr>riv-&gt;rx_urb[i]-&gt;transfer_<wbr>buffer)
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0break;
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>kfree(priv-&gt;rx_urb[i]-&gt;<wbr>transfer_buffer);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0usb_<wbr>free_urb(priv-&gt;rx_urb[i]);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt; +
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if(i &lt; (MAX_RX_URB + 1))
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0usb_<wbr>free_urb(priv-&gt;rx_urb[i]);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0kfree(priv-&gt;<wbr>rx_urb);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0priv-&gt;rx_urb =3D NULL;
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt; +#else
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0kfree(priv-&gt;rx=
_urb);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0priv-&gt;rx_urb =
=3D NULL;
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0kfree(priv-&gt;ol=
daddr);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0priv-&gt;oldaddr =
=3D NULL;
<br>&gt; +
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0kfree(priv-&gt;pp=
_rxskb)<wbr>;
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0priv-&gt;pp_rxskb=
 =3D 0;
<br>
<br>It&#39;s odd to kfree something, implying that there is a pointer, and =
then
<br>set the same thing to 0 (rather than NULL).
<br>
<br>&gt; +
<br>&gt; +#endif
<br>&gt; +}
<br>&gt; +#endif
<br>&gt; +
<br>&gt; =C2=A0static short rtl8192_usb_initendpoints(<wbr>struct net_devic=
e *dev)
<br>&gt; =C2=A0{
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct r8192=
_priv *priv =3D ieee80211_priv(dev);
<br>&gt;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0priv-&gt;rx_urb =
=3D kmalloc(sizeof(struct urb *) * (MAX_RX_URB + 1),
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0priv-&gt;rx_urb =
=3D kzalloc(sizeof(struct urb *) * (MAX_RX_URB + 1),
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 GFP_KERNEL);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (!priv-&g=
t;rx_urb)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return -ENOMEM;
<br>&gt; @@ -1689,9 +1746,13 @@ static short rtl8192_usb_initendpoints(<wbr=
>struct net_device *dev)
<br>&gt; =C2=A0#ifndef JACKSON_NEW_RX
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0for (i =3D 0=
; i &lt; (MAX_RX_URB + 1); i++) {
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0priv-&gt;rx_urb[<wbr>i] =3D usb_alloc_u=
rb(0, GFP_KERNEL);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if(!priv-&gt;rx_<wbr>urb[i])
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0goto exit;
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0priv-&gt;rx_urb[<wbr>i]-&gt;transfer_bu=
ffer =3D
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>kmalloc(RX_URB_SIZE, GFP_KERNEL);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>kzalloc(RX_URB_SIZE, GFP_KERNEL);
<br>
<br>I don&#39;t think this one has to be kzalloc. =C2=A0No one is looking i=
n the
<br>uninitialized parts of it.
<br>
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if(!priv-&gt;rx_<wbr>urb[i]-&gt;transfer_b=
uffer)
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0goto exit;
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0priv-&gt;rx_urb[<wbr>i]-&gt;transfer_bu=
ffer_length =3D RX_URB_SIZE;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt; @@ -1704,6 +1765,9 @@ static short rtl8192_usb_initendpoints(<wbr>=
struct net_device *dev)
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0priv-&gt;rx_urb[<wbr>16] =3D usb_alloc_=
urb(0, GFP_KERNEL);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0priv-&gt;oldaddr =3D kmalloc(16, GFP_KE=
RNEL);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if(!priv-&gt;<wbr>oldaddr)
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0goto exit;
<br>&gt; +
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0oldaddr =3D priv-&gt;oldaddr;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0align =3D ((long)oldaddr) &amp; 3;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (align) {
<br>&gt; @@ -1732,57 +1796,13 @@ static short rtl8192_usb_initendpoints(<wb=
r>struct net_device *dev)
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0netdev_dbg(d=
ev, &quot;End of initendpoints\n&quot;);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
<br>&gt; -}
<br>&gt; -
<br>&gt; -#ifdef THOMAS_BEACON
<br>&gt; -static void rtl8192_usb_deleteendpoints(<wbr>struct net_device *d=
ev)
<br>&gt; -{
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0int i;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct r8192_priv=
 *priv =3D ieee80211_priv(dev);
<br>&gt; -
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (priv-&gt;rx_u=
rb) {
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0for (i =3D 0; i &lt; (MAX_RX_URB + 1); i++=
) {
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0usb_<wbr>kill_urb(priv-&gt;rx_urb[i]);
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0usb_<wbr>free_urb(priv-&gt;rx_urb[i]);
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0kfree(priv-&gt;<wbr>rx_urb);
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0priv-&gt;rx_urb =3D NULL;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0kfree(priv-&gt;ol=
daddr);
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0priv-&gt;oldaddr =
=3D NULL;
<br>&gt; -
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0kfree(priv-&gt;pp=
_rxskb)<wbr>;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0priv-&gt;pp_rxskb=
 =3D NULL;
<br>&gt; -}
<br>&gt; -#else
<br>&gt; -void rtl8192_usb_deleteendpoints(<wbr>struct net_device *dev)
<br>&gt; -{
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0int i;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct r8192_priv=
 *priv =3D ieee80211_priv(dev);
<br>&gt;
<br>&gt; -#ifndef JACKSON_NEW_RX
<br>&gt; -
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (priv-&gt;rx_u=
rb) {
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0for (i =3D 0; i &lt; (MAX_RX_URB + 1); i++=
) {
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0usb_<wbr>kill_urb(priv-&gt;rx_urb[i]);
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>kfree(priv-&gt;rx_urb[i]-&gt;<wbr>transfer_buffer);
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0usb_<wbr>free_urb(priv-&gt;rx_urb[i]);
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0kfree(priv-&gt;<wbr>rx_urb);
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0priv-&gt;rx_urb =3D NULL;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt; -#else
<br>&gt; +exit:
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0rtl8192_usb_<wbr>=
deleteendpoints(dev);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0kfree(priv-&=
gt;rx_urb);
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0priv-&gt;rx_urb =
=3D NULL;
<br>
<br>It looks suspicious to keep the kfree but drop the NULL initization. =
=C2=A0I
<br>have the impression that the kfree should go to, but perhaps this is ju=
st
<br>an artifact of the diff algorithm, and the kfree is doing filling a
<br>different purpose in the transformed code than in the original code.
<br>
<br>julia
<br>
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0kfree(priv-&gt;ol=
daddr);
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0priv-&gt;oldaddr =
=3D NULL;
<br>&gt; -
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0kfree(priv-&gt;pp=
_rxskb)<wbr>;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0priv-&gt;pp_rxskb=
 =3D 0;
<br>&gt; -
<br>&gt; -#endif
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0DMESGE(&quot;Endp=
oint Alloc Failure&quot;);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return -ENOMEM;
<br>&gt; =C2=A0}
<br>&gt; -#endif
<br>&gt;
<br>&gt; =C2=A0static void rtl8192_update_ratr_table(<wbr>struct net_device=
 *dev);
<br>&gt; =C2=A0static void rtl8192_link_change(struct net_device *dev)
<br>&gt; --
<br>&gt; 2.7.4
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google=
 Groups &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an email to <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-m=
ailto=3D"cKE31QgxBAAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;jav=
ascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#39;;re=
turn true;">outreachy-kern...@<wbr>googlegroups.com</a>.
<br>&gt; To post to this group, send email to <a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"cKE31QgxBAAJ" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;javascript:&#39;;return true;">outreach...@googlegroups.<wbr>com<=
/a>.
<br>&gt; To view this discussion on the web visit <a href=3D"https://groups=
.google.com/d/msgid/outreachy-kernel/20170302214748.GA9824%40fireworks" tar=
get=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;https://gro=
ups.google.com/d/msgid/outreachy-kernel/20170302214748.GA9824%40fireworks&#=
39;;return true;" onclick=3D"this.href=3D&#39;https://groups.google.com/d/m=
sgid/outreachy-kernel/20170302214748.GA9824%40fireworks&#39;;return true;">=
https://groups.google.com/d/<wbr>msgid/outreachy-kernel/<wbr>20170302214748=
.GA9824%<wbr>40fireworks</a>.
<br>&gt; For more options, visit <a href=3D"https://groups.google.com/d/opt=
out" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;htt=
ps://groups.google.com/d/optout&#39;;return true;" onclick=3D"this.href=3D&=
#39;https://groups.google.com/d/optout&#39;;return true;">https://groups.go=
ogle.com/d/<wbr>optout</a>.
<br>&gt;
<br></blockquote></div>
------=_Part_1007_369536952.1488572335263--

------=_Part_1006_1407013570.1488572335262--

