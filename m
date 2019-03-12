X-GM-THRID: 6667435589118197760
Date: Tue, 12 Mar 2019 08:30:26 -0700 (PDT)
From: etsai042@gmail.com
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <c09680e5-0bce-4c70-b601-4dd1a6b0d215@googlegroups.com>
In-Reply-To: <alpine.DEB.2.20.1903121117030.4097@hadrien>
References: <20190312093511.3789-1-etsai042@gmail.com>
 <alpine.DEB.2.20.1903121117030.4097@hadrien>
Subject: Re: [Outreachy kernel] [PATCH] Staging: netlogic: Remove
 unnecessary 'out of memory' message
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_2812_1907279965.1552404626738"
X-Google-Token: EJKhn-QFPr6grSdL5dc0
X-Google-IP: 128.199.125.193

------=_Part_2812_1907279965.1552404626738
Content-Type: multipart/alternative; 
	boundary="----=_Part_2813_434680656.1552404626738"

------=_Part_2813_434680656.1552404626738
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Tuesday, March 12, 2019 at 5:14:30 AM UTC-7, Julia Lawall wrote:
>
>
>
> A better log message would explain why the message is not necessary.  I 
> guess that if you unfold this, you will end up at kmalloc, which provides 
> a backtrace on failure, so the message is not very useful.  But you should 
> trace thrugh the definition to see that this is actually what happens. 
>

I traced down the memory alloc function to alloc_skb (network buffer 
alloc), all the way down to kmem_cache_alloc, which had 
a trace_kmem_cache_alloc function to provide a skb alloc trace.
I understand that "out of memory" message can be found in the stack dump 
done by the memory subsystem. Thus this "out of memory" error is 
unnecessary. But I don't know how to present this in log message.
Is "Delete netdev_err since generic message can be found in stack dump" 
good for this?

Wentao
   
 

> julia 
>
> > 
> > Signed-off-by: Wentao Cai <etsa...@gmail.com <javascript:>> 
> > --- 
> >  drivers/staging/netlogic/xlr_net.c | 4 +--- 
> >  1 file changed, 1 insertion(+), 3 deletions(-) 
> > 
> > diff --git a/drivers/staging/netlogic/xlr_net.c 
> b/drivers/staging/netlogic/xlr_net.c 
> > index 8554fcf4321b..10f14a5cf490 100644 
> > --- a/drivers/staging/netlogic/xlr_net.c 
> > +++ b/drivers/staging/netlogic/xlr_net.c 
> > @@ -185,10 +185,8 @@ static int xlr_net_fill_rx_ring(struct net_device 
> *ndev) 
> > 
> >          for (i = 0; i < MAX_FRIN_SPILL / 4; i++) { 
> >                  skb_data = xlr_alloc_skb(); 
> > -                if (!skb_data) { 
> > -                        netdev_err(ndev, "SKB allocation failed\n"); 
> > +                if (!skb_data) 
> >                          return -ENOMEM; 
> > -                } 
> >                  send_to_rfr_fifo(priv, skb_data); 
> >          } 
> >          netdev_info(ndev, "Rx ring setup done\n"); 
> > -- 
> > 2.11.0 
> > 
> > -- 
> > You received this message because you are subscribed to the Google 
> Groups "outreachy-kernel" group. 
> > To unsubscribe from this group and stop receiving emails from it, send 
> an email to outreachy-kern...@googlegroups.com <javascript:>. 
> > To post to this group, send email to outreach...@googlegroups.com 
> <javascript:>. 
> > To view this discussion on the web visit 
> https://groups.google.com/d/msgid/outreachy-kernel/20190312093511.3789-1-etsai042%40gmail.com. 
>
> > For more options, visit https://groups.google.com/d/optout. 
> > 
>

------=_Part_2813_434680656.1552404626738
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Tuesday, March 12, 2019 at 5:14:30 AM UTC-7, Ju=
lia Lawall wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margi=
n-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;"><br>
<br>A better log message would explain why the message is not necessary. =
=C2=A0I
<br>guess that if you unfold this, you will end up at kmalloc, which provid=
es
<br>a backtrace on failure, so the message is not very useful. =C2=A0But yo=
u should
<br>trace thrugh the definition to see that this is actually what happens.=
=C2=A0<br></blockquote><div><br></div><div>I traced down the memory alloc f=
unction to=C2=A0alloc_skb (network buffer alloc), all the way down to kmem_=
cache_alloc, which had a=C2=A0trace_kmem_cache_alloc function to provide a =
skb alloc trace.</div><div>I understand that &quot;out of memory&quot; mess=
age can be found in the stack dump done by the memory subsystem. Thus this =
&quot;out of memory&quot; error is unnecessary. But I don&#39;t know how to=
 present this in log message.</div><div>Is &quot;Delete=C2=A0<font color=3D=
"#000000">netdev_err</font>=C2=A0since generic message can be found in stac=
k dump&quot; good for this?</div><div><br></div><div>Wentao</div><div>=C2=
=A0=C2=A0=C2=A0</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" sty=
le=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left=
: 1ex;">julia
<br>
<br>&gt;
<br>&gt; Signed-off-by: Wentao Cai &lt;<a href=3D"javascript:" target=3D"_b=
lank" gdf-obfuscated-mailto=3D"hiUpCmINCgAJ" rel=3D"nofollow" onmousedown=
=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.href=3D=
&#39;javascript:&#39;;return true;">etsa...@gmail.com</a>&gt;
<br>&gt; ---
<br>&gt; =C2=A0drivers/staging/netlogic/xlr_<wbr>net.c | 4 +---
<br>&gt; =C2=A01 file changed, 1 insertion(+), 3 deletions(-)
<br>&gt;
<br>&gt; diff --git a/drivers/staging/netlogic/<wbr>xlr_net.c b/drivers/sta=
ging/netlogic/<wbr>xlr_net.c
<br>&gt; index 8554fcf4321b..10f14a5cf490 100644
<br>&gt; --- a/drivers/staging/netlogic/<wbr>xlr_net.c
<br>&gt; +++ b/drivers/staging/netlogic/<wbr>xlr_net.c
<br>&gt; @@ -185,10 +185,8 @@ static int xlr_net_fill_rx_ring(struct net_de=
vice *ndev)
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0for (i =3D 0=
; i &lt; MAX_FRIN_SPILL / 4; i++) {
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0skb_data =3D xlr_alloc_skb();
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (!skb_data) {
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>netdev_err(ndev, &quot;SKB allocation failed\n&quot;);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (!skb_data)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0<wbr>return -ENOMEM;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0send_to_rfr_<wbr>fifo(priv, skb_data);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0netdev_info(=
ndev, &quot;Rx ring setup done\n&quot;);
<br>&gt; --
<br>&gt; 2.11.0
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google=
 Groups &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an email to <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-m=
ailto=3D"hiUpCmINCgAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;jav=
ascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#39;;re=
turn true;">outreachy-kern...@<wbr>googlegroups.com</a>.
<br>&gt; To post to this group, send email to <a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"hiUpCmINCgAJ" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;javascript:&#39;;return true;">outreach...@googlegroups.<wbr>com<=
/a>.
<br>&gt; To view this discussion on the web visit <a href=3D"https://groups=
.google.com/d/msgid/outreachy-kernel/20190312093511.3789-1-etsai042%40gmail=
.com" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;ht=
tps://groups.google.com/d/msgid/outreachy-kernel/20190312093511.3789-1-etsa=
i042%40gmail.com&#39;;return true;" onclick=3D"this.href=3D&#39;https://gro=
ups.google.com/d/msgid/outreachy-kernel/20190312093511.3789-1-etsai042%40gm=
ail.com&#39;;return true;">https://groups.google.com/d/<wbr>msgid/outreachy=
-kernel/<wbr>20190312093511.3789-1-<wbr>etsai042%40gmail.com</a>.
<br>&gt; For more options, visit <a href=3D"https://groups.google.com/d/opt=
out" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;htt=
ps://groups.google.com/d/optout&#39;;return true;" onclick=3D"this.href=3D&=
#39;https://groups.google.com/d/optout&#39;;return true;">https://groups.go=
ogle.com/d/<wbr>optout</a>.
<br>&gt;
<br></blockquote></div>
------=_Part_2813_434680656.1552404626738--

------=_Part_2812_1907279965.1552404626738--

