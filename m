X-GM-THRID: 6466070722699591680
Date: Fri, 15 Sep 2017 11:18:24 -0700 (PDT)
From: Keerthi Reddy <keerthigd4990@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <33fe8323-6697-4c37-beb1-5a38c076d8a2@googlegroups.com>
In-Reply-To: <20170915181639.GA19334@manoharreddy>
References: <20170915181639.GA19334@manoharreddy>
Subject: Re: [PATCH] staging: dgnc: use usleep_range instead of udelay
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1989_1942986491.1505499504349"
X-Google-Token: EPCy8M0FfKf2wgwUpQs0
X-Google-IP: 14.139.122.139

------=_Part_1989_1942986491.1505499504349
Content-Type: multipart/alternative; 
	boundary="----=_Part_1990_1975186370.1505499504349"

------=_Part_1990_1975186370.1505499504349
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

I just checked. With the below changes, code compiles. :)

On Friday, September 15, 2017 at 11:46:48 PM UTC+5:30, Keerthi Reddy wrote:
>
> This patch fixes the checkpatch.pl check 
>
> CHECK: usleep_range is preferred over udelay 
>
> Signed-off-by: Keerthi Reddy <keerthigd4990@gmail.com> 
> --- 
>  drivers/staging/dgnc/dgnc_cls.c |  6 +++--- 
>  drivers/staging/dgnc/dgnc_neo.c | 10 +++++----- 
>  2 files changed, 8 insertions(+), 8 deletions(-) 
>
> diff --git a/drivers/staging/dgnc/dgnc_cls.c 
> b/drivers/staging/dgnc/dgnc_cls.c 
> index 870ae3d..fb1df19 100644 
> --- a/drivers/staging/dgnc/dgnc_cls.c 
> +++ b/drivers/staging/dgnc/dgnc_cls.c 
> @@ -397,7 +397,7 @@ static void cls_assert_modem_signals(struct channel_t 
> *ch) 
>          writeb(out, &ch->ch_cls_uart->mcr); 
>   
>          /* Give time for the UART to actually drop the signals */ 
> -        udelay(10); 
> +        usleep_range(10); 
>  } 
>   
>  static void cls_copy_data_from_queue_to_uart(struct channel_t *ch) 
> @@ -587,7 +587,7 @@ static void cls_flush_uart_write(struct channel_t *ch) 
>                 &ch->ch_cls_uart->isr_fcr); 
>   
>          /* Must use *delay family functions in atomic context */ 
> -        udelay(10); 
> +        usleep_range(10); 
>   
>          ch->ch_flags |= (CH_TX_FIFO_EMPTY | CH_TX_FIFO_LWM); 
>  } 
> @@ -609,7 +609,7 @@ static void cls_flush_uart_read(struct channel_t *ch) 
>           * Presumably, this is a bug in this UART. 
>           */ 
>   
> -        udelay(10); 
> +        usleep_range(10); 
>  } 
>   
>  /* Send any/all changes to the line to the UART. */ 
> diff --git a/drivers/staging/dgnc/dgnc_neo.c 
> b/drivers/staging/dgnc/dgnc_neo.c 
> index c7cc490..5ec1026 100644 
> --- a/drivers/staging/dgnc/dgnc_neo.c 
> +++ b/drivers/staging/dgnc/dgnc_neo.c 
> @@ -1230,7 +1230,7 @@ static void neo_flush_uart_write(struct channel_t 
> *ch) 
>                   */ 
>                  tmp = readb(&ch->ch_neo_uart->isr_fcr); 
>                  if (tmp & 4) 
> -                        udelay(10); 
> +                        usleep_range(10); 
>                  else 
>                          break; 
>          } 
> @@ -1261,7 +1261,7 @@ static void neo_flush_uart_read(struct channel_t 
> *ch) 
>                   */ 
>                  tmp = readb(&ch->ch_neo_uart->isr_fcr); 
>                  if (tmp & 2) 
> -                        udelay(10); 
> +                        usleep_range(10); 
>                  else 
>                          break; 
>          } 
> @@ -1483,7 +1483,7 @@ static void neo_assert_modem_signals(struct 
> channel_t *ch) 
>          neo_pci_posting_flush(ch->ch_bd); 
>   
>          /* Give time for the UART to actually raise/drop the signals */ 
> -        udelay(10); 
> +        usleep_range(10); 
>  } 
>   
>  static void neo_send_start_character(struct channel_t *ch) 
> @@ -1495,7 +1495,7 @@ static void neo_send_start_character(struct 
> channel_t *ch) 
>                  ch->ch_xon_sends++; 
>                  writeb(ch->ch_startc, &ch->ch_neo_uart->txrx); 
>                  neo_pci_posting_flush(ch->ch_bd); 
> -                udelay(10); 
> +                usleep_range(10); 
>          } 
>  } 
>   
> @@ -1508,7 +1508,7 @@ static void neo_send_stop_character(struct channel_t 
> *ch) 
>                  ch->ch_xoff_sends++; 
>                  writeb(ch->ch_stopc, &ch->ch_neo_uart->txrx); 
>                  neo_pci_posting_flush(ch->ch_bd); 
> -                udelay(10); 
> +                usleep_range(10); 
>          } 
>  } 
>   
> -- 
> 2.7.4 
>
>
------=_Part_1990_1975186370.1505499504349
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I just checked. With the below changes, code compiles. :)<=
br><br>On Friday, September 15, 2017 at 11:46:48 PM UTC+5:30, Keerthi Reddy=
 wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.=
8ex;border-left: 1px #ccc solid;padding-left: 1ex;">This patch fixes the <a=
 href=3D"http://checkpatch.pl" target=3D"_blank" rel=3D"nofollow" onmousedo=
wn=3D"this.href=3D&#39;http://www.google.com/url?q\x3dhttp%3A%2F%2Fcheckpat=
ch.pl\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNGoRgUgHq29dhmk72L974NI3_mFug&=
#39;;return true;" onclick=3D"this.href=3D&#39;http://www.google.com/url?q\=
x3dhttp%3A%2F%2Fcheckpatch.pl\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNGoRgU=
gHq29dhmk72L974NI3_mFug&#39;;return true;">checkpatch.pl</a> check
<br>
<br>CHECK: usleep_range is preferred over udelay
<br>
<br>Signed-off-by: Keerthi Reddy &lt;<a href=3D"mailto:keerthigd4990@gmail.=
com" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;mai=
lto:keerthigd4990@gmail.com&#39;;return true;" onclick=3D"this.href=3D&#39;=
mailto:keerthigd4990@gmail.com&#39;;return true;">keerthigd4990@gmail.com</=
a>&gt;
<br>---
<br>=C2=A0drivers/staging/dgnc/dgnc_<wbr>cls.c | =C2=A06 +++---
<br>=C2=A0drivers/staging/dgnc/dgnc_<wbr>neo.c | 10 +++++-----
<br>=C2=A02 files changed, 8 insertions(+), 8 deletions(-)
<br>
<br>diff --git a/drivers/staging/dgnc/dgnc_<wbr>cls.c b/drivers/staging/dgn=
c/dgnc_<wbr>cls.c
<br>index 870ae3d..fb1df19 100644
<br>--- a/drivers/staging/dgnc/dgnc_<wbr>cls.c
<br>+++ b/drivers/staging/dgnc/dgnc_<wbr>cls.c
<br>@@ -397,7 +397,7 @@ static void cls_assert_modem_signals(<wbr>struct ch=
annel_t *ch)
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0writeb(out, &amp;=
ch-&gt;ch_cls_uart-&gt;mcr);
<br>=C2=A0
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Give time for =
the UART to actually drop the signals */
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0udelay(10);
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0usleep_range(10);
<br>=C2=A0}
<br>=C2=A0
<br>=C2=A0static void cls_copy_data_from_queue_to_<wbr>uart(struct channel_=
t *ch)
<br>@@ -587,7 +587,7 @@ static void cls_flush_uart_write(struct channel_t *=
ch)
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 &amp;ch-&gt;ch_cls_uart-&gt;isr_fcr);
<br>=C2=A0
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Must use *dela=
y family functions in atomic context */
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0udelay(10);
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0usleep_range(10);
<br>=C2=A0
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ch-&gt;ch_flags |=
=3D (CH_TX_FIFO_EMPTY | CH_TX_FIFO_LWM);
<br>=C2=A0}
<br>@@ -609,7 +609,7 @@ static void cls_flush_uart_read(struct channel_t *c=
h)
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * Presumably, th=
is is a bug in this UART.
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 */
<br>=C2=A0
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0udelay(10);
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0usleep_range(10);
<br>=C2=A0}
<br>=C2=A0
<br>=C2=A0/* Send any/all changes to the line to the UART. */
<br>diff --git a/drivers/staging/dgnc/dgnc_<wbr>neo.c b/drivers/staging/dgn=
c/dgnc_<wbr>neo.c
<br>index c7cc490..5ec1026 100644
<br>--- a/drivers/staging/dgnc/dgnc_<wbr>neo.c
<br>+++ b/drivers/staging/dgnc/dgnc_<wbr>neo.c
<br>@@ -1230,7 +1230,7 @@ static void neo_flush_uart_write(struct channel_t=
 *ch)
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 */
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0tmp =3D readb(&amp;ch-&gt;ch_neo_uart-&gt;=
isr_<wbr>fcr);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (tmp &amp; 4)
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
<wbr>udelay(10);
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
<wbr>usleep_range(10);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0else
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>break;
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>@@ -1261,7 +1261,7 @@ static void neo_flush_uart_read(struct channel_t =
*ch)
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 */
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0tmp =3D readb(&amp;ch-&gt;ch_neo_uart-&gt;=
isr_<wbr>fcr);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (tmp &amp; 2)
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
<wbr>udelay(10);
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
<wbr>usleep_range(10);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0else
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>break;
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>@@ -1483,7 +1483,7 @@ static void neo_assert_modem_signals(<wbr>struct =
channel_t *ch)
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0neo_pci_posting_<=
wbr>flush(ch-&gt;ch_bd);
<br>=C2=A0
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Give time for =
the UART to actually raise/drop the signals */
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0udelay(10);
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0usleep_range(10);
<br>=C2=A0}
<br>=C2=A0
<br>=C2=A0static void neo_send_start_character(<wbr>struct channel_t *ch)
<br>@@ -1495,7 +1495,7 @@ static void neo_send_start_character(<wbr>struct =
channel_t *ch)
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ch-&gt;ch_xon_<wbr>sends++;
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0writeb(ch-&gt;<wbr>ch_startc, &amp;ch-&gt;=
ch_neo_uart-&gt;txrx);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0neo_pci_<wbr>posting_flush(ch-&gt;ch_bd);
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0udelay(10);
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0usleep_range(<wbr>10);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>=C2=A0}
<br>=C2=A0
<br>@@ -1508,7 +1508,7 @@ static void neo_send_stop_character(struct channe=
l_t *ch)
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ch-&gt;ch_xoff_<wbr>sends++;
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0writeb(ch-&gt;<wbr>ch_stopc, &amp;ch-&gt;c=
h_neo_uart-&gt;txrx);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0neo_pci_<wbr>posting_flush(ch-&gt;ch_bd);
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0udelay(10);
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0usleep_range(<wbr>10);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>=C2=A0}
<br>=C2=A0
<br>--=20
<br>2.7.4
<br>
<br></blockquote></div>
------=_Part_1990_1975186370.1505499504349--

------=_Part_1989_1942986491.1505499504349--

