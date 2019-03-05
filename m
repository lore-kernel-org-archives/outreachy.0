X-GM-THRID: 6664854131840122880
Date: Tue, 5 Mar 2019 02:47:33 -0800 (PST)
From: Dana Mormocea <daniela.mormocea@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <a559ec1d-21a3-473d-9d32-1b77d820605b@googlegroups.com>
In-Reply-To: <alpine.DEB.2.20.1903051141410.3701@hadrien>
References: <20190305103753.GA15177@pthm>
 <alpine.DEB.2.20.1903051141410.3701@hadrien>
Subject: Re: [Outreachy kernel] [PATCH] staging: ralink-gdma: Fix various
 warnings in ralink-gdma
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_898_501516015.1551782853354"
X-Google-Token: EMWn-eMFraku9bNxDeM0
X-Google-IP: 5.12.179.61

------=_Part_898_501516015.1551782853354
Content-Type: multipart/alternative; 
	boundary="----=_Part_899_1440558791.1551782853355"

------=_Part_899_1440558791.1551782853355
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Tuesday, March 5, 2019 at 12:43:14 PM UTC+2, Julia Lawall wrote:
>
>
>
> On Tue, 5 Mar 2019, Daniela Mormocea wrote: 
>
> > Fix warnings regarding uint32_t, unsigned int, and 
> > unnecessary line continuations 
>
> You should cut this up into a series.  Don't fix multiple types of 
> warnings in a single patch.  First, you may make a mistake, and it is 
> easier to revert a whole patch than part of one.  Second, bigger patches 
> are harder to review, especially when one has to look for different things 
> in different places. 
>
> julia 
>
> > 
> > Signed-off-by: Daniela Mormocea <daniela....@gmail.com <javascript:>> 
> > --- 
> >  drivers/staging/ralink-gdma/ralink-gdma.c | 52 
> ++++++++++++++++--------------- 
> >  1 file changed, 27 insertions(+), 25 deletions(-) 
> > 
> > diff --git a/drivers/staging/ralink-gdma/ralink-gdma.c 
> b/drivers/staging/ralink-gdma/ralink-gdma.c 
> > index d78042e..d3afe5d 100644 
> > --- a/drivers/staging/ralink-gdma/ralink-gdma.c 
> > +++ b/drivers/staging/ralink-gdma/ralink-gdma.c 
> > @@ -164,7 +164,7 @@ static inline uint32_t gdma_dma_read(struct 
> gdma_dma_dev *dma_dev, 
> >  } 
> > 
> >  static inline void gdma_dma_write(struct gdma_dma_dev *dma_dev, 
> > -                                  unsigned reg, uint32_t val) 
> > +                                  unsigned int reg, uint32_t val) 
> >  { 
> >          writel(val, dma_dev->base + reg); 
> >  } 
> > @@ -268,7 +268,7 @@ static int gdma_dma_terminate_all(struct dma_chan 
> *c) 
> > 
> >  static void rt305x_dump_reg(struct gdma_dma_dev *dma_dev, int id) 
> >  { 
> > -        dev_dbg(dma_dev->ddev.dev, "chan %d, src %08x, dst %08x, ctr0 
> %08x, " \ 
> > +        dev_dbg(dma_dev->ddev.dev, "chan %d, src %08x, dst %08x, ctr0 
> %08x, " 
> >                          "ctr1 %08x, intr %08x, signal %08x\n", id, 
> >                          gdma_dma_read(dma_dev, GDMA_REG_SRC_ADDR(id)), 
> >                          gdma_dma_read(dma_dev, GDMA_REG_DST_ADDR(id)), 
> > @@ -283,7 +283,7 @@ static int rt305x_gdma_start_transfer(struct 
> gdma_dmaengine_chan *chan) 
> >          struct gdma_dma_dev *dma_dev = gdma_dma_chan_get_dev(chan); 
> >          dma_addr_t src_addr, dst_addr; 
> >          struct gdma_dma_sg *sg; 
> > -        uint32_t ctrl0, ctrl1; 
> > +        u32 ctrl0, ctrl1; 
> > 
> >          /* verify chan is already stopped */ 
> >          ctrl0 = gdma_dma_read(dma_dev, GDMA_REG_CTRL0(chan->id)); 
> > @@ -298,14 +298,14 @@ static int rt305x_gdma_start_transfer(struct 
> gdma_dmaengine_chan *chan) 
> >          if (chan->desc->direction == DMA_MEM_TO_DEV) { 
> >                  src_addr = sg->src_addr; 
> >                  dst_addr = chan->fifo_addr; 
> > -                ctrl0 = GDMA_REG_CTRL0_DST_ADDR_FIXED | \ 
> > -                        (8 << GDMA_RT305X_CTRL0_SRC_REQ_SHIFT) | \ 
> > +                ctrl0 = GDMA_REG_CTRL0_DST_ADDR_FIXED | 
> > +                        (8 << GDMA_RT305X_CTRL0_SRC_REQ_SHIFT) | 
> >                          (chan->slave_id << 
> GDMA_RT305X_CTRL0_DST_REQ_SHIFT); 
> >          } else if (chan->desc->direction == DMA_DEV_TO_MEM) { 
> >                  src_addr = chan->fifo_addr; 
> >                  dst_addr = sg->dst_addr; 
> > -                ctrl0 = GDMA_REG_CTRL0_SRC_ADDR_FIXED | \ 
> > -                        (chan->slave_id << 
> GDMA_RT305X_CTRL0_SRC_REQ_SHIFT) | \ 
> > +                ctrl0 = GDMA_REG_CTRL0_SRC_ADDR_FIXED | 
> > +                        (chan->slave_id << 
> GDMA_RT305X_CTRL0_SRC_REQ_SHIFT) | 
> >                          (8 << GDMA_RT305X_CTRL0_DST_REQ_SHIFT); 
> >          } else if (chan->desc->direction == DMA_MEM_TO_MEM) { 
> >                  /* 
> > @@ -314,8 +314,8 @@ static int rt305x_gdma_start_transfer(struct 
> gdma_dmaengine_chan *chan) 
> >                   */ 
> >                  src_addr = sg->src_addr; 
> >                  dst_addr = sg->dst_addr; 
> > -                ctrl0 = GDMA_REG_CTRL0_SW_MODE | \ 
> > -                        (8 << GDMA_REG_CTRL1_SRC_REQ_SHIFT) | \ 
> > +                ctrl0 = GDMA_REG_CTRL0_SW_MODE | 
> > +                        (8 << GDMA_REG_CTRL1_SRC_REQ_SHIFT) | 
> >                          (8 << GDMA_REG_CTRL1_DST_REQ_SHIFT); 
> >          } else { 
> >                  dev_err(dma_dev->ddev.dev, "direction type %d error\n", 
> > @@ -323,8 +323,8 @@ static int rt305x_gdma_start_transfer(struct 
> gdma_dmaengine_chan *chan) 
> >                  return -EINVAL; 
> >          } 
> > 
> > -        ctrl0 |= (sg->len << GDMA_REG_CTRL0_TX_SHIFT) | \ 
> > -                 (chan->burst_size << GDMA_REG_CTRL0_BURST_SHIFT) | \ 
> > +        ctrl0 |= (sg->len << GDMA_REG_CTRL0_TX_SHIFT) | 
> > +                 (chan->burst_size << GDMA_REG_CTRL0_BURST_SHIFT) | 
> >                   GDMA_REG_CTRL0_DONE_INT | GDMA_REG_CTRL0_ENABLE; 
> >          ctrl1 = chan->id << GDMA_REG_CTRL1_NEXT_SHIFT; 
> > 
> > @@ -342,8 +342,8 @@ static int rt305x_gdma_start_transfer(struct 
> gdma_dmaengine_chan *chan) 
> > 
> >  static void rt3883_dump_reg(struct gdma_dma_dev *dma_dev, int id) 
> >  { 
> > -        dev_dbg(dma_dev->ddev.dev, "chan %d, src %08x, dst %08x, ctr0 
> %08x, " \ 
> > -                        "ctr1 %08x, unmask %08x, done %08x, " \ 
> > +        dev_dbg(dma_dev->ddev.dev, "chan %d, src %08x, dst %08x, ctr0 
> %08x, " 
> > +                        "ctr1 %08x, unmask %08x, done %08x, " 
> >                          "req %08x, ack %08x, fin %08x\n", id, 
> >                          gdma_dma_read(dma_dev, GDMA_REG_SRC_ADDR(id)), 
> >                          gdma_dma_read(dma_dev, GDMA_REG_DST_ADDR(id)), 
> > @@ -361,7 +361,7 @@ static int rt3883_gdma_start_transfer(struct 
> gdma_dmaengine_chan *chan) 
> >          struct gdma_dma_dev *dma_dev = gdma_dma_chan_get_dev(chan); 
> >          dma_addr_t src_addr, dst_addr; 
> >          struct gdma_dma_sg *sg; 
> > -        uint32_t ctrl0, ctrl1; 
> > +        u32 ctrl0, ctrl1; 
> > 
> >          /* verify chan is already stopped */ 
> >          ctrl0 = gdma_dma_read(dma_dev, GDMA_REG_CTRL0(chan->id)); 
> > @@ -377,21 +377,21 @@ static int rt3883_gdma_start_transfer(struct 
> gdma_dmaengine_chan *chan) 
> >                  src_addr = sg->src_addr; 
> >                  dst_addr = chan->fifo_addr; 
> >                  ctrl0 = GDMA_REG_CTRL0_DST_ADDR_FIXED; 
> > -                ctrl1 = (32 << GDMA_REG_CTRL1_SRC_REQ_SHIFT) | \ 
> > +                ctrl1 = (32 << GDMA_REG_CTRL1_SRC_REQ_SHIFT) | 
> >                          (chan->slave_id << 
> GDMA_REG_CTRL1_DST_REQ_SHIFT); 
> >          } else if (chan->desc->direction == DMA_DEV_TO_MEM) { 
> >                  src_addr = chan->fifo_addr; 
> >                  dst_addr = sg->dst_addr; 
> >                  ctrl0 = GDMA_REG_CTRL0_SRC_ADDR_FIXED; 
> > -                ctrl1 = (chan->slave_id << 
> GDMA_REG_CTRL1_SRC_REQ_SHIFT) | \ 
> > -                        (32 << GDMA_REG_CTRL1_DST_REQ_SHIFT) | \ 
> > +                ctrl1 = (chan->slave_id << 
> GDMA_REG_CTRL1_SRC_REQ_SHIFT) | 
> > +                        (32 << GDMA_REG_CTRL1_DST_REQ_SHIFT) | 
> >                          GDMA_REG_CTRL1_COHERENT; 
> >          } else if (chan->desc->direction == DMA_MEM_TO_MEM) { 
> >                  src_addr = sg->src_addr; 
> >                  dst_addr = sg->dst_addr; 
> >                  ctrl0 = GDMA_REG_CTRL0_SW_MODE; 
> > -                ctrl1 = (32 << GDMA_REG_CTRL1_SRC_REQ_SHIFT) | \ 
> > -                        (32 << GDMA_REG_CTRL1_DST_REQ_SHIFT) | \ 
> > +                ctrl1 = (32 << GDMA_REG_CTRL1_SRC_REQ_SHIFT) | 
> > +                        (32 << GDMA_REG_CTRL1_DST_REQ_SHIFT) | 
> >                          GDMA_REG_CTRL1_COHERENT; 
> >          } else { 
> >                  dev_err(dma_dev->ddev.dev, "direction type %d error\n", 
> > @@ -399,8 +399,8 @@ static int rt3883_gdma_start_transfer(struct 
> gdma_dmaengine_chan *chan) 
> >                  return -EINVAL; 
> >          } 
> > 
> > -        ctrl0 |= (sg->len << GDMA_REG_CTRL0_TX_SHIFT) | \ 
> > -                 (chan->burst_size << GDMA_REG_CTRL0_BURST_SHIFT) | \ 
> > +        ctrl0 |= (sg->len << GDMA_REG_CTRL0_TX_SHIFT) | 
> > +                 (chan->burst_size << GDMA_REG_CTRL0_BURST_SHIFT) | 
> >                   GDMA_REG_CTRL0_DONE_INT | GDMA_REG_CTRL0_ENABLE; 
> >          ctrl1 |= chan->id << GDMA_REG_CTRL1_NEXT_SHIFT; 
> > 
> > @@ -741,7 +741,9 @@ static void gdma_dma_tasklet(unsigned long arg) 
> >                                  atomic_inc(&dma_dev->cnt); 
> >                                  gdma_start_transfer(dma_dev, chan); 
> >                          } else { 
> > -                                dev_dbg(dma_dev->ddev.dev, "chan %d no 
> desc to issue\n", chan->id); 
> > +                                dev_dbg(dma_dev->ddev.dev, 
> > +                                        "chan %d no desc to issue\n", 
> > +                                        chan->id); 
> >                          } 
> >                          if (!dma_dev->chan_issued) 
> >                                  break; 
> > @@ -753,7 +755,7 @@ static void gdma_dma_tasklet(unsigned long arg) 
> > 
> >  static void rt305x_gdma_init(struct gdma_dma_dev *dma_dev) 
> >  { 
> > -        uint32_t gct; 
> > +        u32 gct; 
> > 
> >          /* all chans round robin */ 
> >          gdma_dma_write(dma_dev, GDMA_RT305X_GCT, 
> GDMA_REG_GCT_ARBIT_RR); 
> > @@ -767,7 +769,7 @@ static void rt305x_gdma_init(struct gdma_dma_dev 
> *dma_dev) 
> > 
> >  static void rt3883_gdma_init(struct gdma_dma_dev *dma_dev) 
> >  { 
> > -        uint32_t gct; 
> > +        u32 gct; 
> > 
> >          /* all chans round robin */ 
> >          gdma_dma_write(dma_dev, GDMA_REG_GCT, GDMA_REG_GCT_ARBIT_RR); 
> > @@ -819,7 +821,7 @@ static int gdma_dma_probe(struct platform_device 
> *pdev) 
> >          match = of_match_device(gdma_of_match_table, &pdev->dev); 
> >          if (!match) 
> >                  return -EINVAL; 
> > -        data = (struct gdma_data *) match->data; 
> > +        data = (struct gdma_data *)match->data; 
> > 
> >          dma_dev = devm_kzalloc(&pdev->dev, 
> >                                 struct_size(dma_dev, chan, 
> data->chancnt), 
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
> https://groups.google.com/d/msgid/outreachy-kernel/20190305103753.GA15177%40pthm. 
>
> > For more options, visit https://groups.google.com/d/optout. 
> > 
>


Ok, I will revert these and mail them back
I'm wondering if I should delete the '\' at the end of strings 
(and by doing this to get a "quoted string split across lines" warning)
or should I leave them as they were? (with the '\' symbol at the
end of the line?

thank you

------=_Part_899_1440558791.1551782853355
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Tuesday, March 5, 2019 at 12:43:14 PM UTC+2, Ju=
lia Lawall wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margi=
n-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">
<br>
<br>On Tue, 5 Mar 2019, Daniela Mormocea wrote:
<br>
<br>&gt; Fix warnings regarding uint32_t, unsigned int, and
<br>&gt; unnecessary line continuations
<br>
<br>You should cut this up into a series. =C2=A0Don&#39;t fix multiple type=
s of
<br>warnings in a single patch. =C2=A0First, you may make a mistake, and it=
 is
<br>easier to revert a whole patch than part of one. =C2=A0Second, bigger p=
atches
<br>are harder to review, especially when one has to look for different thi=
ngs
<br>in different places.
<br>
<br>julia
<br>
<br>&gt;
<br>&gt; Signed-off-by: Daniela Mormocea &lt;<a href=3D"javascript:" target=
=3D"_blank" gdf-obfuscated-mailto=3D"vGWBL6ffCQAJ" rel=3D"nofollow" onmouse=
down=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hre=
f=3D&#39;javascript:&#39;;return true;">daniela....@gmail.com</a>&gt;
<br>&gt; ---
<br>&gt; =C2=A0drivers/staging/ralink-gdma/<wbr>ralink-gdma.c | 52 ++++++++=
++++++++--------------<wbr>-
<br>&gt; =C2=A01 file changed, 27 insertions(+), 25 deletions(-)
<br>&gt;
<br>&gt; diff --git a/drivers/staging/ralink-gdma/<wbr>ralink-gdma.c b/driv=
ers/staging/ralink-gdma/<wbr>ralink-gdma.c
<br>&gt; index d78042e..d3afe5d 100644
<br>&gt; --- a/drivers/staging/ralink-gdma/<wbr>ralink-gdma.c
<br>&gt; +++ b/drivers/staging/ralink-gdma/<wbr>ralink-gdma.c
<br>&gt; @@ -164,7 +164,7 @@ static inline uint32_t gdma_dma_read(struct gd=
ma_dma_dev *dma_dev,
<br>&gt; =C2=A0}
<br>&gt;
<br>&gt; =C2=A0static inline void gdma_dma_write(struct gdma_dma_dev *dma_d=
ev,
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0 =C2=A0unsigned =
reg, uint32_t val)
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0 =C2=A0unsigned =
int reg, uint32_t val)
<br>&gt; =C2=A0{
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0writel(val, =
dma_dev-&gt;base + reg);
<br>&gt; =C2=A0}
<br>&gt; @@ -268,7 +268,7 @@ static int gdma_dma_terminate_all(struct dma_c=
han *c)
<br>&gt;
<br>&gt; =C2=A0static void rt305x_dump_reg(struct gdma_dma_dev *dma_dev, in=
t id)
<br>&gt; =C2=A0{
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0dev_dbg(dma_dev-&=
gt;<wbr>ddev.dev, &quot;chan %d, src %08x, dst %08x, ctr0 %08x, &quot; \
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0dev_dbg(dma_dev-&=
gt;<wbr>ddev.dev, &quot;chan %d, src %08x, dst %08x, ctr0 %08x, &quot;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0&quot;ctr1 %08x, intr %08x, signal %08x\n&quot;, id,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0gdma_<wbr>dma_read(dma_dev, GDMA_REG_SRC_ADDR(id)),
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0gdma_<wbr>dma_read(dma_dev, GDMA_REG_DST_ADDR(id)),
<br>&gt; @@ -283,7 +283,7 @@ static int rt305x_gdma_start_transfer(<wbr>str=
uct gdma_dmaengine_chan *chan)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct gdma_=
dma_dev *dma_dev =3D gdma_dma_chan_get_dev(chan);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0dma_addr_t s=
rc_addr, dst_addr;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct gdma_=
dma_sg *sg;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0uint32_t ctrl0, c=
trl1;
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u32 ctrl0, ctrl1;
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* verify ch=
an is already stopped */
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ctrl0 =3D gd=
ma_dma_read(dma_dev, GDMA_REG_CTRL0(chan-&gt;id));
<br>&gt; @@ -298,14 +298,14 @@ static int rt305x_gdma_start_transfer(<wbr>s=
truct gdma_dmaengine_chan *chan)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (chan-&gt=
;desc-&gt;direction =3D=3D DMA_MEM_TO_DEV) {
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0src_addr =3D sg-&gt;src_addr;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0dst_addr =3D chan-&gt;fifo_addr;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ctrl0 =3D GDMA_REG_CTRL0_DST_ADDR_FIXED | =
\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0(8 &lt;&lt; GDMA_RT305X_CTRL0_SRC_REQ_<wbr>SHIFT) | \
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ctrl0 =3D GDMA_REG_CTRL0_DST_ADDR_FIXED |
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0(8 &lt;&lt; GDMA_RT305X_CTRL0_SRC_REQ_<wbr>SHIFT) |
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0(<wbr>chan-&gt;slave_id &lt;&lt; GDMA_RT305X_CTRL0_DST_REQ_<wbr>SH=
IFT);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0} else if (c=
han-&gt;desc-&gt;direction =3D=3D DMA_DEV_TO_MEM) {
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0src_addr =3D chan-&gt;fifo_addr;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0dst_addr =3D sg-&gt;dst_addr;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ctrl0 =3D GDMA_REG_CTRL0_SRC_ADDR_FIXED | =
\
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0(<wbr>chan-&gt;slave_id &lt;&lt; GDMA_RT305X_CTRL0_SRC_REQ_<wbr>SHIFT=
) | \
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ctrl0 =3D GDMA_REG_CTRL0_SRC_ADDR_FIXED |
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0(<wbr>chan-&gt;slave_id &lt;&lt; GDMA_RT305X_CTRL0_SRC_REQ_<wbr>SHIFT=
) |
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0(8 &lt;&lt; GDMA_RT305X_CTRL0_DST_REQ_<wbr>SHIFT);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0} else if (c=
han-&gt;desc-&gt;direction =3D=3D DMA_MEM_TO_MEM) {
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/*
<br>&gt; @@ -314,8 +314,8 @@ static int rt305x_gdma_start_transfer(<wbr>str=
uct gdma_dmaengine_chan *chan)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 */
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0src_addr =3D sg-&gt;src_addr;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0dst_addr =3D sg-&gt;dst_addr;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ctrl0 =3D GDMA_REG_CTRL0_SW_MODE | \
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0(8 &lt;&lt; GDMA_REG_CTRL1_SRC_REQ_SHIFT) | \
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ctrl0 =3D GDMA_REG_CTRL0_SW_MODE |
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0(8 &lt;&lt; GDMA_REG_CTRL1_SRC_REQ_SHIFT) |
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0(8 &lt;&lt; GDMA_REG_CTRL1_DST_REQ_SHIFT);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0} else {
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0dev_err(dma_<wbr>dev-&gt;ddev.dev, &quo=
t;direction type %d error\n&quot;,
<br>&gt; @@ -323,8 +323,8 @@ static int rt305x_gdma_start_transfer(<wbr>str=
uct gdma_dmaengine_chan *chan)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return -EINVAL;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ctrl0 |=3D (sg-&g=
t;len &lt;&lt; GDMA_REG_CTRL0_TX_SHIFT) | \
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 (chan-&gt;burst_size &lt;&lt; GDMA_REG_CT=
RL0_BURST_SHIFT) | \
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ctrl0 |=3D (sg-&g=
t;len &lt;&lt; GDMA_REG_CTRL0_TX_SHIFT) |
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 (chan-&gt;burst_size &lt;&lt; GDMA_REG_CT=
RL0_BURST_SHIFT) |
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 GDMA_REG_CTRL0_DONE_INT | GDMA_REG_CTR=
L0_ENABLE;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ctrl1 =3D ch=
an-&gt;id &lt;&lt; GDMA_REG_CTRL1_NEXT_SHIFT;
<br>&gt;
<br>&gt; @@ -342,8 +342,8 @@ static int rt305x_gdma_start_transfer(<wbr>str=
uct gdma_dmaengine_chan *chan)
<br>&gt;
<br>&gt; =C2=A0static void rt3883_dump_reg(struct gdma_dma_dev *dma_dev, in=
t id)
<br>&gt; =C2=A0{
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0dev_dbg(dma_dev-&=
gt;<wbr>ddev.dev, &quot;chan %d, src %08x, dst %08x, ctr0 %08x, &quot; \
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0&quot;ctr1 %08x, unmask %08x, done %08x, &quot; \
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0dev_dbg(dma_dev-&=
gt;<wbr>ddev.dev, &quot;chan %d, src %08x, dst %08x, ctr0 %08x, &quot;
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0&quot;ctr1 %08x, unmask %08x, done %08x, &quot;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0&quot;req %08x, ack %08x, fin %08x\n&quot;, id,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0gdma_<wbr>dma_read(dma_dev, GDMA_REG_SRC_ADDR(id)),
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0gdma_<wbr>dma_read(dma_dev, GDMA_REG_DST_ADDR(id)),
<br>&gt; @@ -361,7 +361,7 @@ static int rt3883_gdma_start_transfer(<wbr>str=
uct gdma_dmaengine_chan *chan)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct gdma_=
dma_dev *dma_dev =3D gdma_dma_chan_get_dev(chan);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0dma_addr_t s=
rc_addr, dst_addr;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct gdma_=
dma_sg *sg;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0uint32_t ctrl0, c=
trl1;
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u32 ctrl0, ctrl1;
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* verify ch=
an is already stopped */
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ctrl0 =3D gd=
ma_dma_read(dma_dev, GDMA_REG_CTRL0(chan-&gt;id));
<br>&gt; @@ -377,21 +377,21 @@ static int rt3883_gdma_start_transfer(<wbr>s=
truct gdma_dmaengine_chan *chan)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0src_addr =3D sg-&gt;src_addr;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0dst_addr =3D chan-&gt;fifo_addr;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ctrl0 =3D GDMA_REG_CTRL0_DST_ADDR_FIXED=
;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ctrl1 =3D (32 &lt;&lt; GDMA_REG_CTRL1_SRC_=
REQ_SHIFT) | \
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ctrl1 =3D (32 &lt;&lt; GDMA_REG_CTRL1_SRC_=
REQ_SHIFT) |
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0(<wbr>chan-&gt;slave_id &lt;&lt; GDMA_REG_CTRL1_DST_REQ_SHIFT);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0} else if (c=
han-&gt;desc-&gt;direction =3D=3D DMA_DEV_TO_MEM) {
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0src_addr =3D chan-&gt;fifo_addr;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0dst_addr =3D sg-&gt;dst_addr;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ctrl0 =3D GDMA_REG_CTRL0_SRC_ADDR_FIXED=
;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ctrl1 =3D (chan-&gt;slave_id &lt;&lt; GDMA=
_REG_CTRL1_SRC_REQ_SHIFT) | \
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0(32 &lt;&lt; GDMA_REG_CTRL1_DST_REQ_SHIFT) | \
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ctrl1 =3D (chan-&gt;slave_id &lt;&lt; GDMA=
_REG_CTRL1_SRC_REQ_SHIFT) |
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0(32 &lt;&lt; GDMA_REG_CTRL1_DST_REQ_SHIFT) |
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0GDMA_<wbr>REG_CTRL1_COHERENT;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0} else if (c=
han-&gt;desc-&gt;direction =3D=3D DMA_MEM_TO_MEM) {
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0src_addr =3D sg-&gt;src_addr;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0dst_addr =3D sg-&gt;dst_addr;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ctrl0 =3D GDMA_REG_CTRL0_SW_MODE;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ctrl1 =3D (32 &lt;&lt; GDMA_REG_CTRL1_SRC_=
REQ_SHIFT) | \
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0(32 &lt;&lt; GDMA_REG_CTRL1_DST_REQ_SHIFT) | \
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ctrl1 =3D (32 &lt;&lt; GDMA_REG_CTRL1_SRC_=
REQ_SHIFT) |
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0(32 &lt;&lt; GDMA_REG_CTRL1_DST_REQ_SHIFT) |
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0GDMA_<wbr>REG_CTRL1_COHERENT;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0} else {
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0dev_err(dma_<wbr>dev-&gt;ddev.dev, &quo=
t;direction type %d error\n&quot;,
<br>&gt; @@ -399,8 +399,8 @@ static int rt3883_gdma_start_transfer(<wbr>str=
uct gdma_dmaengine_chan *chan)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return -EINVAL;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ctrl0 |=3D (sg-&g=
t;len &lt;&lt; GDMA_REG_CTRL0_TX_SHIFT) | \
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 (chan-&gt;burst_size &lt;&lt; GDMA_REG_CT=
RL0_BURST_SHIFT) | \
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ctrl0 |=3D (sg-&g=
t;len &lt;&lt; GDMA_REG_CTRL0_TX_SHIFT) |
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 (chan-&gt;burst_size &lt;&lt; GDMA_REG_CT=
RL0_BURST_SHIFT) |
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 GDMA_REG_CTRL0_DONE_INT | GDMA_REG_CTR=
L0_ENABLE;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ctrl1 |=3D c=
han-&gt;id &lt;&lt; GDMA_REG_CTRL1_NEXT_SHIFT;
<br>&gt;
<br>&gt; @@ -741,7 +741,9 @@ static void gdma_dma_tasklet(unsigned long arg=
)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0atomic_inc(&a=
mp;dma_dev-&gt;cnt);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0gdma_start_tr=
ansfer(dma_<wbr>dev, chan);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0} else {
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0dev_dbg(dma_dev-=
&gt;ddev.dev, &quot;chan %d no desc to issue\n&quot;, chan-&gt;id);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0dev_dbg(dma_dev-=
&gt;ddev.dev,
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0&quot;chan %d no desc to issue\n&quot;,
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0chan-&gt;id);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0}
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0if (!dma_dev-&gt;chan_issued)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0break;
<br>&gt; @@ -753,7 +755,7 @@ static void gdma_dma_tasklet(unsigned long arg=
)
<br>&gt;
<br>&gt; =C2=A0static void rt305x_gdma_init(struct gdma_dma_dev *dma_dev)
<br>&gt; =C2=A0{
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0uint32_t gct;
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u32 gct;
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* all chans=
 round robin */
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0gdma_dma_wri=
te(dma_<wbr>dev, GDMA_RT305X_GCT, GDMA_REG_GCT_ARBIT_RR);
<br>&gt; @@ -767,7 +769,7 @@ static void rt305x_gdma_init(struct gdma_dma_d=
ev *dma_dev)
<br>&gt;
<br>&gt; =C2=A0static void rt3883_gdma_init(struct gdma_dma_dev *dma_dev)
<br>&gt; =C2=A0{
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0uint32_t gct;
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u32 gct;
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* all chans=
 round robin */
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0gdma_dma_wri=
te(dma_<wbr>dev, GDMA_REG_GCT, GDMA_REG_GCT_ARBIT_RR);
<br>&gt; @@ -819,7 +821,7 @@ static int gdma_dma_probe(struct platform_devi=
ce *pdev)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0match =3D of=
_match_device(gdma_of_match_<wbr>table, &amp;pdev-&gt;dev);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (!match)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return -EINVAL;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0data =3D (struct =
gdma_data *) match-&gt;data;
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0data =3D (struct =
gdma_data *)match-&gt;data;
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0dma_dev =3D =
devm_kzalloc(&amp;pdev-&gt;dev,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 struct_size(dma_dev, chan, data-&gt;chancnt)=
,
<br>&gt; --
<br>&gt; 2.7.4
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google=
 Groups &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an email to <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-m=
ailto=3D"vGWBL6ffCQAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;jav=
ascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#39;;re=
turn true;">outreachy-kern...@<wbr>googlegroups.com</a>.
<br>&gt; To post to this group, send email to <a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"vGWBL6ffCQAJ" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;javascript:&#39;;return true;">outreach...@googlegroups.<wbr>com<=
/a>.
<br>&gt; To view this discussion on the web visit <a href=3D"https://groups=
.google.com/d/msgid/outreachy-kernel/20190305103753.GA15177%40pthm" target=
=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;https://groups=
.google.com/d/msgid/outreachy-kernel/20190305103753.GA15177%40pthm&#39;;ret=
urn true;" onclick=3D"this.href=3D&#39;https://groups.google.com/d/msgid/ou=
treachy-kernel/20190305103753.GA15177%40pthm&#39;;return true;">https://gro=
ups.google.com/d/<wbr>msgid/outreachy-kernel/<wbr>20190305103753.GA15177%40=
pthm</a>.
<br>&gt; For more options, visit <a href=3D"https://groups.google.com/d/opt=
out" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;htt=
ps://groups.google.com/d/optout&#39;;return true;" onclick=3D"this.href=3D&=
#39;https://groups.google.com/d/optout&#39;;return true;">https://groups.go=
ogle.com/d/<wbr>optout</a>.
<br>&gt;
<br></blockquote><div><br></div><div><br></div><div>Ok, I will revert these=
 and mail them back</div><div>I&#39;m wondering if I should delete the &#39=
;\&#39; at the end of strings <br></div><div>(and by doing this to get a &q=
uot;quoted string split across lines&quot; warning)</div><div>or should I l=
eave them as they were? (with the &#39;\&#39; symbol at the</div><div>end o=
f the line?</div><div><br></div><div>thank you<br></div></div>
------=_Part_899_1440558791.1551782853355--

------=_Part_898_501516015.1551782853354--

