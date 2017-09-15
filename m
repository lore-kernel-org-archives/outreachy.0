X-GM-THRID: 6466070722699591680
X-Received: by 10.202.212.202 with SMTP id l193mr14749431oig.125.1505504619402;
        Fri, 15 Sep 2017 12:43:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.18.151 with SMTP id 23ls7591259ios.1.gmail; Fri, 15 Sep
 2017 12:43:22 -0700 (PDT)
X-Received: by 10.107.134.167 with SMTP id q39mr3615185ioi.6.1505504602531;
        Fri, 15 Sep 2017 12:43:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505504602; cv=none;
        d=google.com; s=arc-20160816;
        b=Z0ZbLx8uxrENruHvmRnBrnyylJzkf3IOaIhRxWLt7zmH2n97vDpuFBEt/SUJejiEIJ
         edPGvkcHXLyOzrASWEb6fVYxUt+7nBt0RQiKZ0P+eRw2+lOA/U+Vd4Viio1Uos8MSu3i
         WoeHw+BZsYikgE3vbs1ncLseaL7N05X3+pDxlyALUGr0wNlA95wwjNyZSrG4WcnNLD9U
         SXPIxo93AArkIutVivc6sTtfyRU8z3Lj8SaeaEwpcEQKTHBoCBYCfxD0BNuHrhuKLEga
         0odJiKS7w8H4/4mD43NnMy9eL3T3A6GMpdy8Nj7l2bAPyI8DTuOF/TgcHM5JvjFmswmw
         DcDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:mime-version
         :dkim-signature:arc-authentication-results;
        bh=m+bnr37vYGRpGA1SaJdFhYM0vsZCAD3fqfkmVRG4iHM=;
        b=HXspVVivNlu2ZnVc2Z+5lCY1VlQrbw9vOUfZglIVxwAxISCOE6sr/RxifzK4DV0x0F
         aNmLAcnI9rNHqBZLXVXK0Iz9QBUp3CUsJ251VVxue2OuNuX9Pwhwl+vktTATAJi/5+Lz
         bKS9W94YBqjetiwHifQ0+xfDEwbQMapR1oyraYs7N0O201W8BQPlUvJIXjV0zEtc/bP2
         DASrLiPotbtFJsMdCzaKeY3JmAq48m6l6KiSKXO/BokZzrO6pjcPRVgd2fWuHXmiCaSn
         gfnh64eJXsAb9/5mEkUo0PSKu2X867uwiizjtvL9bTaLk9rvpHqByaarkjFdwRdNEkuq
         DLug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SBKaYRzp;
       spf=pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400d:c0d::241 as permitted sender) smtp.mailfrom=keerthigd4990@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <keerthigd4990@gmail.com>
Received: from mail-qt0-x241.google.com (mail-qt0-x241.google.com. [2607:f8b0:400d:c0d::241])
        by gmr-mx.google.com with ESMTPS id z184si58822ywb.32.2017.09.15.12.43.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Sep 2017 12:43:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400d:c0d::241 as permitted sender) client-ip=2607:f8b0:400d:c0d::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SBKaYRzp;
       spf=pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400d:c0d::241 as permitted sender) smtp.mailfrom=keerthigd4990@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-qt0-x241.google.com with SMTP id u48so2108508qtc.4
        for <outreachy-kernel@googlegroups.com>; Fri, 15 Sep 2017 12:43:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=m+bnr37vYGRpGA1SaJdFhYM0vsZCAD3fqfkmVRG4iHM=;
        b=SBKaYRzpnnohPPioU1lSlE6MOrr5SV//TSsX6IJMNksNo8oWYAt9sUPN04GSguqf3g
         WLOe5nVE+H6/ij0TkuGl9lBTe3By/IIblK78SnqGwzaCoEzhbM5arSWuXMpLjYfMG35u
         EzQ6bp047hJPCzXIB5IaRreOmt8iRrMatnQUmxgt6t7UJYuQ90oz77tvcqF+0KmUKdgR
         /CGvj2etvf37YDXyy0O4acSjy5gKL6XzxZNrbif9/vh1bhweeSkUu3a0awjfOE9UzQHV
         a+GkQgfzN8EAWtXEotRLk+eIQS5KRHcUpg6GZ4D/GaoQ5ryeNQ607nBDRIKdm/gGMFGw
         yHRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=m+bnr37vYGRpGA1SaJdFhYM0vsZCAD3fqfkmVRG4iHM=;
        b=iHGwG+35IDI06yaLJ0Kn536EULc8o7QPieZz18dPAGhYudAdsrD4Bj5W7yzSY36J9y
         zF3SeCcY4CpFsyTzycFB1qEnRRgteZuWafiOKI5ftWWrRROE8PL1g8ZsD2Xg5pHooOgD
         8CNhG/L11JpJgQk6dDfSyopsbuUoEmAiwmDGQyDrIYirdunWmG3bjHUwNFAaiJUPZ8Ug
         IXscE0XZhxjyFr6BmZ+7FcmKFj/g0G6UvAczkGQjhTuImVhGx7JjiqprrKhDM2IBX9bm
         s2sYG6OudqlvgEsPuh26eHti8/5p01yRG2H+VhQYikWxm+BhCJrz/Ly9fBznsV9QfpJg
         D6aA==
X-Gm-Message-State: AHPjjUhb50ZwP7qrndGMkWo0l023d2396fS1wXtKv9S0L/BQ/EZEeV3q
	OP/xiSqd+w1Nk/cPr7mE93nJ9POj81FIJxU/6Ng=
X-Google-Smtp-Source: AOwi7QDLyO5a+0RuZhauK4l4qxrLGpVmDbWbKcdHWRQaJlJ2uIBDLQpYyiEzNgjr9jCMrwaqAHpuOjSLVjlDdAQO1ok=
X-Received: by 10.200.54.3 with SMTP id m3mr40629775qtb.197.1505504602237;
 Fri, 15 Sep 2017 12:43:22 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.12.154.193 with HTTP; Fri, 15 Sep 2017 12:43:21 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.20.1709152105440.2533@hadrien>
References: <20170915181639.GA19334@manoharreddy> <33fe8323-6697-4c37-beb1-5a38c076d8a2@googlegroups.com>
 <alpine.DEB.2.20.1709152105440.2533@hadrien>
From: Keerthi Reddy <keerthigd4990@gmail.com>
Date: Sat, 16 Sep 2017 01:13:21 +0530
Message-ID: <CABfTi08XDoMB9BsCqO3A=Jr6u0RjO49i4z01HHH08hRp6MO28g@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: [PATCH] staging: dgnc: use usleep_range
 instead of udelay
To: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="001a1137b054064a4d05593f9b92"

--001a1137b054064a4d05593f9b92
Content-Type: text/plain; charset="UTF-8"

> Be sure that you have actually produced a .o file
>for all of the files you have changed before sending a
>patch

after setting up configuration,

I did *make -j4 * in the root directory and the .o files
are created.

The files that were added are driver/staging/dgnc/ are
*built-in.o  dgnc_cls.o     dgnc_driver.o  dgnc_mgmt.o  dgnc_neo.o*

Since these .o files are created, I assumed that the code compiles.
But still, where the problem could be?

>but to change one function to another you have to know what the old
>one does and how the new one can preserve the required behavior.

Your suggestion is correct. From now on wards I will learn about the
functions
that I will modify. Really thanks on the suggestion.

Thanks,
Keerthi.

On Sat, Sep 16, 2017 at 12:36 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:

>
>
> On Fri, 15 Sep 2017, Keerthi Reddy wrote:
>
> > I just checked. With the below changes, code compiles. :)
>
> This does not seem possible.  Probably the files you changes were not
> selected in the configuration and so they were skipped by the compiler.
>
> julia
>
> >
> > On Friday, September 15, 2017 at 11:46:48 PM UTC+5:30, Keerthi Reddy
> wrote:
> >       This patch fixes the checkpatch.pl check
> >
> >       CHECK: usleep_range is preferred over udelay
> >
> >       Signed-off-by: Keerthi Reddy <keerthigd4990@gmail.com>
> >       ---
> >        drivers/staging/dgnc/dgnc_cls.c |  6 +++---
> >        drivers/staging/dgnc/dgnc_neo.c | 10 +++++-----
> >        2 files changed, 8 insertions(+), 8 deletions(-)
> >
> >       diff --git a/drivers/staging/dgnc/dgnc_cls.c
> >       b/drivers/staging/dgnc/dgnc_cls.c
> >       index 870ae3d..fb1df19 100644
> >       --- a/drivers/staging/dgnc/dgnc_cls.c
> >       +++ b/drivers/staging/dgnc/dgnc_cls.c
> >       @@ -397,7 +397,7 @@ static void cls_assert_modem_signals(struct
> >       channel_t *ch)
> >                writeb(out, &ch->ch_cls_uart->mcr);
> >
> >                /* Give time for the UART to actually drop the signals
> >       */
> >       -        udelay(10);
> >       +        usleep_range(10);
> >        }
> >
> >        static void cls_copy_data_from_queue_to_uart(struct channel_t
> >       *ch)
> >       @@ -587,7 +587,7 @@ static void cls_flush_uart_write(struct
> >       channel_t *ch)
> >                       &ch->ch_cls_uart->isr_fcr);
> >
> >                /* Must use *delay family functions in atomic context
> >       */
> >       -        udelay(10);
> >       +        usleep_range(10);
> >
> >                ch->ch_flags |= (CH_TX_FIFO_EMPTY | CH_TX_FIFO_LWM);
> >        }
> >       @@ -609,7 +609,7 @@ static void cls_flush_uart_read(struct
> >       channel_t *ch)
> >                 * Presumably, this is a bug in this UART.
> >                 */
> >
> >       -        udelay(10);
> >       +        usleep_range(10);
> >        }
> >
> >        /* Send any/all changes to the line to the UART. */
> >       diff --git a/drivers/staging/dgnc/dgnc_neo.c
> >       b/drivers/staging/dgnc/dgnc_neo.c
> >       index c7cc490..5ec1026 100644
> >       --- a/drivers/staging/dgnc/dgnc_neo.c
> >       +++ b/drivers/staging/dgnc/dgnc_neo.c
> >       @@ -1230,7 +1230,7 @@ static void neo_flush_uart_write(struct
> >       channel_t *ch)
> >                         */
> >                        tmp = readb(&ch->ch_neo_uart->isr_fcr);
> >                        if (tmp & 4)
> >       -                        udelay(10);
> >       +                        usleep_range(10);
> >                        else
> >                                break;
> >                }
> >       @@ -1261,7 +1261,7 @@ static void neo_flush_uart_read(struct
> >       channel_t *ch)
> >                         */
> >                        tmp = readb(&ch->ch_neo_uart->isr_fcr);
> >                        if (tmp & 2)
> >       -                        udelay(10);
> >       +                        usleep_range(10);
> >                        else
> >                                break;
> >                }
> >       @@ -1483,7 +1483,7 @@ static void
> >       neo_assert_modem_signals(struct channel_t *ch)
> >                neo_pci_posting_flush(ch->ch_bd);
> >
> >                /* Give time for the UART to actually raise/drop the
> >       signals */
> >       -        udelay(10);
> >       +        usleep_range(10);
> >        }
> >
> >        static void neo_send_start_character(struct channel_t *ch)
> >       @@ -1495,7 +1495,7 @@ static void
> >       neo_send_start_character(struct channel_t *ch)
> >                        ch->ch_xon_sends++;
> >                        writeb(ch->ch_startc, &ch->ch_neo_uart->txrx);
> >                        neo_pci_posting_flush(ch->ch_bd);
> >       -                udelay(10);
> >       +                usleep_range(10);
> >                }
> >        }
> >
> >       @@ -1508,7 +1508,7 @@ static void neo_send_stop_character(struct
> >       channel_t *ch)
> >                        ch->ch_xoff_sends++;
> >                        writeb(ch->ch_stopc, &ch->ch_neo_uart->txrx);
> >                        neo_pci_posting_flush(ch->ch_bd);
> >       -                udelay(10);
> >       +                usleep_range(10);
> >                }
> >        }
> >
> >       --
> >       2.7.4
> >
> > --
> > You received this message because you are subscribed to the Google Groups
> > "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an
> > email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visithttps://groups.google.com
> /d/msgid/outreachy-kernel/33fe8323-6697-4c37-beb1-
> > 5a38c076d8a2%40googlegroups.com.
> > For more options, visit https://groups.google.com/d/optout.
> >
> >
>

--001a1137b054064a4d05593f9b92
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: base64

PGRpdiBkaXI9Imx0ciI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMi44cHgiPiZndDsgQmUgc3Vy
ZSB0aGF0IHlvdSBoYXZlIGFjdHVhbGx5wqA8L3NwYW4+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTox
Mi44cHgiPnByb2R1Y2VkIGEgLm8gZmlsZcKgPC9zcGFuPjxkaXY+PHNwYW4gc3R5bGU9ImZvbnQt
c2l6ZToxMi44cHgiPiZndDtmb3IgYWxsIG9mIHRoZSBmaWxlcyB5b3UgaGF2ZSBjaGFuZ2VkIGJl
Zm9yZSBzZW5kaW5nIGE8L3NwYW4+PGJyIHN0eWxlPSJmb250LXNpemU6MTIuOHB4Ij48c3BhbiBz
dHlsZT0iZm9udC1zaXplOjEyLjhweCI+Jmd0O3BhdGNoPC9zcGFuPjxicj48L2Rpdj48ZGl2Pjxz
cGFuIHN0eWxlPSJmb250LXNpemU6MTIuOHB4Ij48YnI+PC9zcGFuPjwvZGl2PjxkaXY+PHNwYW4g
c3R5bGU9ImZvbnQtc2l6ZToxMi44cHgiPmFmdGVyIHNldHRpbmcgdXAgY29uZmlndXJhdGlvbizC
oDwvc3Bhbj48L2Rpdj48ZGl2Pjxicj48L2Rpdj48ZGl2PjxzcGFuIHN0eWxlPSJmb250LXNpemU6
MTIuOHB4Ij5JIGRpZCA8Yj5tYWtlIC1qNMKgPC9iPsKgaW4gdGhlIHJvb3QgZGlyZWN0b3J5IGFu
ZCB0aGUgLm8gZmlsZXPCoDwvc3Bhbj48L2Rpdj48ZGl2PjxzcGFuIHN0eWxlPSJmb250LXNpemU6
MTIuOHB4Ij5hcmUgY3JlYXRlZC48L3NwYW4+PC9kaXY+PGRpdj48c3BhbiBzdHlsZT0iZm9udC1z
aXplOjEyLjhweCI+PGJyPjwvc3Bhbj48L2Rpdj48ZGl2PjxzcGFuIHN0eWxlPSJmb250LXNpemU6
MTIuOHB4Ij5UaGUgZmlsZXMgdGhhdCB3ZXJlIGFkZGVkIGFyZSBkcml2ZXIvc3RhZ2luZy9kZ25j
LyBhcmU8L3NwYW4+PC9kaXY+PGRpdj48YiBzdHlsZT0iZm9udC1zaXplOjEyLjhweCI+YnVpbHQt
aW4ub8KgIGRnbmNfY2xzLm/CoCDCoCDCoGRnbmNfZHJpdmVyLm/CoCBkZ25jX21nbXQub8KgIGRn
bmNfbmVvLm88L2I+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMi44cHgiPjxicj48L3NwYW4+PC9k
aXY+PGRpdj48YiBzdHlsZT0iZm9udC1zaXplOjEyLjhweCI+PGJyPjwvYj48L2Rpdj48ZGl2Pjxz
cGFuIHN0eWxlPSJmb250LXNpemU6MTIuOHB4Ij5TaW5jZSB0aGVzZSAubyBmaWxlcyBhcmUgY3Jl
YXRlZCwgSSBhc3N1bWVkIHRoYXQgdGhlIGNvZGUgY29tcGlsZXMuPC9zcGFuPjwvZGl2PjxkaXY+
PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMi44cHgiPkJ1dCBzdGlsbCwgd2hlcmUgdGhlIHByb2Js
ZW0gY291bGQgYmU/PC9zcGFuPjwvZGl2PjxkaXY+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMi44
cHgiPjxicj48L3NwYW4+PC9kaXY+PGRpdj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjEyLjhweCI+
Jmd0Ozwvc3Bhbj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjEyLjhweCI+YnV0IHRvIGNoYW5nZSBv
bmUgZnVuY3Rpb24gdG/CoDwvc3Bhbj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjEyLjhweCI+YW5v
dGhlciB5b3UgaGF2ZSB0byBrbm93IHdoYXQgdGhlIG9sZMKgPC9zcGFuPjwvZGl2PjxkaXY+PHNw
YW4gc3R5bGU9ImZvbnQtc2l6ZToxMi44cHgiPiZndDtvbmUgZG9lcyBhbmQgaG93IHRoZSBuZXcg
b25lIGNhbsKgPC9zcGFuPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTIuOHB4Ij5wcmVzZXJ2ZSB0
aGUgcmVxdWlyZWQgYmVoYXZpb3IuPC9zcGFuPjwvZGl2PjxkaXY+PHNwYW4gc3R5bGU9ImZvbnQt
c2l6ZToxMi44cHgiPjxicj48L3NwYW4+PC9kaXY+PGRpdj48c3BhbiBzdHlsZT0iZm9udC1zaXpl
OjEyLjhweCI+WW91ciBzdWdnZXN0aW9uIGlzIGNvcnJlY3QuIEZyb20gbm93IG9uIHdhcmRzIEkg
d2lsbCBsZWFybiBhYm91dCB0aGUgZnVuY3Rpb25zPC9zcGFuPjwvZGl2PjxkaXY+PHNwYW4gc3R5
bGU9ImZvbnQtc2l6ZToxMi44cHgiPnRoYXQgSSB3aWxsIG1vZGlmeS4gUmVhbGx5IHRoYW5rcyBv
biB0aGUgc3VnZ2VzdGlvbi7CoDwvc3Bhbj48L2Rpdj48ZGl2PjxzcGFuIHN0eWxlPSJmb250LXNp
emU6MTIuOHB4Ij48YnI+PC9zcGFuPjwvZGl2PjxkaXY+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTox
Mi44cHgiPlRoYW5rcyw8L3NwYW4+PC9kaXY+PGRpdj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjEy
LjhweCI+S2VlcnRoaS48L3NwYW4+PC9kaXY+PGRpdiBjbGFzcz0iZ21haWxfZXh0cmEiPjxicj48
ZGl2IGNsYXNzPSJnbWFpbF9xdW90ZSI+T24gU2F0LCBTZXAgMTYsIDIwMTcgYXQgMTI6MzYgQU0s
IEp1bGlhIExhd2FsbCA8c3BhbiBkaXI9Imx0ciI+Jmx0OzxhIGhyZWY9Im1haWx0bzpqdWxpYS5s
YXdhbGxAbGlwNi5mciIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhLmxhd2FsbEBsaXA2LmZyPC9hPiZn
dDs8L3NwYW4+IHdyb3RlOjxicj48YmxvY2txdW90ZSBjbGFzcz0iZ21haWxfcXVvdGUiIHN0eWxl
PSJtYXJnaW46MCAwIDAgLjhleDtib3JkZXItbGVmdDoxcHggI2NjYyBzb2xpZDtwYWRkaW5nLWxl
ZnQ6MWV4Ij48c3Bhbj48YnI+DQo8YnI+DQpPbiBGcmksIDE1IFNlcCAyMDE3LCBLZWVydGhpIFJl
ZGR5IHdyb3RlOjxicj4NCjxicj4NCjwvc3Bhbj4mZ3Q7IEkganVzdCBjaGVja2VkLiBXaXRoIHRo
ZSBiZWxvdyBjaGFuZ2VzLCBjb2RlIGNvbXBpbGVzLiA6KTxicj4NCjxicj4NClRoaXMgZG9lcyBu
b3Qgc2VlbSBwb3NzaWJsZS7CoCBQcm9iYWJseSB0aGUgZmlsZXMgeW91IGNoYW5nZXMgd2VyZSBu
b3Q8YnI+DQpzZWxlY3RlZCBpbiB0aGUgY29uZmlndXJhdGlvbiBhbmQgc28gdGhleSB3ZXJlIHNr
aXBwZWQgYnkgdGhlIGNvbXBpbGVyLjxicj4NCjxicj4NCmp1bGlhPGJyPg0KPGRpdj48ZGl2IGNs
YXNzPSJtXy00ODA0OTI5Nzg0NjU0MTU2ODQxaDUiPjxicj4NCiZndDs8YnI+DQomZ3Q7IE9uIEZy
aWRheSwgU2VwdGVtYmVyIDE1LCAyMDE3IGF0IDExOjQ2OjQ4IFBNIFVUQys1OjMwLCBLZWVydGhp
IFJlZGR5IHdyb3RlOjxicj4NCiZndDvCoCDCoCDCoCDCoFRoaXMgcGF0Y2ggZml4ZXMgdGhlIDxh
IGhyZWY9Imh0dHA6Ly9jaGVja3BhdGNoLnBsIiByZWw9Im5vcmVmZXJyZXIiIHRhcmdldD0iX2Js
YW5rIj5jaGVja3BhdGNoLnBsPC9hPiBjaGVjazxicj4NCiZndDs8YnI+DQomZ3Q7wqAgwqAgwqAg
wqBDSEVDSzogdXNsZWVwX3JhbmdlIGlzIHByZWZlcnJlZCBvdmVyIHVkZWxheTxicj4NCiZndDs8
YnI+DQomZ3Q7wqAgwqAgwqAgwqBTaWduZWQtb2ZmLWJ5OiBLZWVydGhpIFJlZGR5ICZsdDs8YSBo
cmVmPSJtYWlsdG86a2VlcnRoaWdkNDk5MEBnbWFpbC5jb20iIHRhcmdldD0iX2JsYW5rIj5rZWVy
dGhpZ2Q0OTkwQGdtYWlsLmNvbTwvYT4mZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgLS0tPGJyPg0K
Jmd0O8KgIMKgIMKgIMKgwqBkcml2ZXJzL3N0YWdpbmcvZGduYy9kZ25jX2NsPHdicj5zLmMgfCDC
oDYgKysrLS0tPGJyPg0KJmd0O8KgIMKgIMKgIMKgwqBkcml2ZXJzL3N0YWdpbmcvZGduYy9kZ25j
X25lPHdicj5vLmMgfCAxMCArKysrKy0tLS0tPGJyPg0KJmd0O8KgIMKgIMKgIMKgwqAyIGZpbGVz
IGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgOCBkZWxldGlvbnMoLSk8YnI+DQomZ3Q7PGJyPg0K
Jmd0O8KgIMKgIMKgIMKgZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9kZ25jL2RnbmNfY2w8
d2JyPnMuYzxicj4NCiZndDvCoCDCoCDCoCDCoGIvZHJpdmVycy9zdGFnaW5nL2RnbmMvZGduY19j
PHdicj5scy5jPGJyPg0KJmd0O8KgIMKgIMKgIMKgaW5kZXggODcwYWUzZC4uZmIxZGYxOSAxMDA2
NDQ8YnI+DQomZ3Q7wqAgwqAgwqAgwqAtLS0gYS9kcml2ZXJzL3N0YWdpbmcvZGduYy9kZ25jX2Ns
PHdicj5zLmM8YnI+DQomZ3Q7wqAgwqAgwqAgwqArKysgYi9kcml2ZXJzL3N0YWdpbmcvZGduYy9k
Z25jX2NsPHdicj5zLmM8YnI+DQomZ3Q7wqAgwqAgwqAgwqBAQCAtMzk3LDcgKzM5Nyw3IEBAIHN0
YXRpYyB2b2lkIGNsc19hc3NlcnRfbW9kZW1fc2lnbmFscyhzdHJ1Yzx3YnI+dDxicj4NCiZndDvC
oCDCoCDCoCDCoGNoYW5uZWxfdCAqY2gpPGJyPg0KJmd0O8KgIMKgIMKgIMKgwqDCoMKgwqDCoMKg
wqDCoMKgd3JpdGViKG91dCwgJmFtcDtjaC0mZ3Q7Y2hfY2xzX3VhcnQtJmd0O21jcik7PGJyPg0K
Jmd0O8KgIMKgIMKgIMKgwqA8YnI+DQomZ3Q7wqAgwqAgwqAgwqDCoMKgwqDCoMKgwqDCoMKgwqAv
KiBHaXZlIHRpbWUgZm9yIHRoZSBVQVJUIHRvIGFjdHVhbGx5IGRyb3AgdGhlIHNpZ25hbHM8YnI+
DQomZ3Q7wqAgwqAgwqAgwqAqLzxicj4NCiZndDvCoCDCoCDCoCDCoC3CoMKgwqDCoMKgwqDCoMKg
dWRlbGF5KDEwKTs8YnI+DQomZ3Q7wqAgwqAgwqAgwqArwqDCoMKgwqDCoMKgwqDCoHVzbGVlcF9y
YW5nZSgxMCk7PGJyPg0KJmd0O8KgIMKgIMKgIMKgwqB9PGJyPg0KJmd0O8KgIMKgIMKgIMKgwqA8
YnI+DQomZ3Q7wqAgwqAgwqAgwqDCoHN0YXRpYyB2b2lkIGNsc19jb3B5X2RhdGFfZnJvbV9xdWV1
ZV90b191YTx3YnI+cnQoc3RydWN0IGNoYW5uZWxfdDxicj4NCiZndDvCoCDCoCDCoCDCoCpjaCk8
YnI+DQomZ3Q7wqAgwqAgwqAgwqBAQCAtNTg3LDcgKzU4Nyw3IEBAIHN0YXRpYyB2b2lkIGNsc19m
bHVzaF91YXJ0X3dyaXRlKHN0cnVjdDxicj4NCiZndDvCoCDCoCDCoCDCoGNoYW5uZWxfdCAqY2gp
PGJyPg0KJmd0O8KgIMKgIMKgIMKgwqDCoMKgwqDCoMKgwqDCoMKgIMKgIMKgIMKgICZhbXA7Y2gt
Jmd0O2NoX2Nsc191YXJ0LSZndDtpc3JfZmNyKTs8YnI+DQomZ3Q7wqAgwqAgwqAgwqDCoDxicj4N
CiZndDvCoCDCoCDCoCDCoMKgwqDCoMKgwqDCoMKgwqDCoC8qIE11c3QgdXNlICpkZWxheSBmYW1p
bHkgZnVuY3Rpb25zIGluIGF0b21pYyBjb250ZXh0PGJyPg0KJmd0O8KgIMKgIMKgIMKgKi88YnI+
DQomZ3Q7wqAgwqAgwqAgwqAtwqDCoMKgwqDCoMKgwqDCoHVkZWxheSgxMCk7PGJyPg0KJmd0O8Kg
IMKgIMKgIMKgK8KgwqDCoMKgwqDCoMKgwqB1c2xlZXBfcmFuZ2UoMTApOzxicj4NCiZndDvCoCDC
oCDCoCDCoMKgPGJyPg0KJmd0O8KgIMKgIMKgIMKgwqDCoMKgwqDCoMKgwqDCoMKgY2gtJmd0O2No
X2ZsYWdzIHw9IChDSF9UWF9GSUZPX0VNUFRZIHwgQ0hfVFhfRklGT19MV00pOzxicj4NCiZndDvC
oCDCoCDCoCDCoMKgfTxicj4NCiZndDvCoCDCoCDCoCDCoEBAIC02MDksNyArNjA5LDcgQEAgc3Rh
dGljIHZvaWQgY2xzX2ZsdXNoX3VhcnRfcmVhZChzdHJ1Y3Q8YnI+DQomZ3Q7wqAgwqAgwqAgwqBj
aGFubmVsX3QgKmNoKTxicj4NCiZndDvCoCDCoCDCoCDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqIFBy
ZXN1bWFibHksIHRoaXMgaXMgYSBidWcgaW4gdGhpcyBVQVJULjxicj4NCiZndDvCoCDCoCDCoCDC
oMKgwqDCoMKgwqDCoMKgwqDCoCAqLzxicj4NCiZndDvCoCDCoCDCoCDCoMKgPGJyPg0KJmd0O8Kg
IMKgIMKgIMKgLcKgwqDCoMKgwqDCoMKgwqB1ZGVsYXkoMTApOzxicj4NCiZndDvCoCDCoCDCoCDC
oCvCoMKgwqDCoMKgwqDCoMKgdXNsZWVwX3JhbmdlKDEwKTs8YnI+DQomZ3Q7wqAgwqAgwqAgwqDC
oH08YnI+DQomZ3Q7wqAgwqAgwqAgwqDCoDxicj4NCiZndDvCoCDCoCDCoCDCoMKgLyogU2VuZCBh
bnkvYWxsIGNoYW5nZXMgdG8gdGhlIGxpbmUgdG8gdGhlIFVBUlQuICovPGJyPg0KJmd0O8KgIMKg
IMKgIMKgZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9kZ25jL2RnbmNfbmU8d2JyPm8uYzxi
cj4NCiZndDvCoCDCoCDCoCDCoGIvZHJpdmVycy9zdGFnaW5nL2RnbmMvZGduY19uPHdicj5lby5j
PGJyPg0KJmd0O8KgIMKgIMKgIMKgaW5kZXggYzdjYzQ5MC4uNWVjMTAyNiAxMDA2NDQ8YnI+DQom
Z3Q7wqAgwqAgwqAgwqAtLS0gYS9kcml2ZXJzL3N0YWdpbmcvZGduYy9kZ25jX25lPHdicj5vLmM8
YnI+DQomZ3Q7wqAgwqAgwqAgwqArKysgYi9kcml2ZXJzL3N0YWdpbmcvZGduYy9kZ25jX25lPHdi
cj5vLmM8YnI+DQomZ3Q7wqAgwqAgwqAgwqBAQCAtMTIzMCw3ICsxMjMwLDcgQEAgc3RhdGljIHZv
aWQgbmVvX2ZsdXNoX3VhcnRfd3JpdGUoc3RydWN0PGJyPg0KJmd0O8KgIMKgIMKgIMKgY2hhbm5l
bF90ICpjaCk8YnI+DQomZ3Q7wqAgwqAgwqAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgICovPGJyPg0KJmd0O8KgIMKgIMKgIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoHRtcCA9IHJlYWRiKCZhbXA7Y2gtJmd0O2NoX25lb191YXJ0LSZndDtpc3JfZmM8d2Jy
PnIpOzxicj4NCiZndDvCoCDCoCDCoCDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqBpZiAodG1wICZhbXA7IDQpPGJyPg0KJmd0O8KgIMKgIMKgIMKgLcKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHVkZWw8d2JyPmF5KDEwKTs8YnI+DQomZ3Q7
wqAgwqAgwqAgwqArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgdXNsZTx3YnI+ZXBfcmFuZ2UoMTApOzxicj4NCiZndDvCoCDCoCDCoCDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBlbHNlPGJyPg0KJmd0O8KgIMKgIMKgIMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBicmVhPHdicj5rOzxicj4N
CiZndDvCoCDCoCDCoCDCoMKgwqDCoMKgwqDCoMKgwqDCoH08YnI+DQomZ3Q7wqAgwqAgwqAgwqBA
QCAtMTI2MSw3ICsxMjYxLDcgQEAgc3RhdGljIHZvaWQgbmVvX2ZsdXNoX3VhcnRfcmVhZChzdHJ1
Y3Q8YnI+DQomZ3Q7wqAgwqAgwqAgwqBjaGFubmVsX3QgKmNoKTxicj4NCiZndDvCoCDCoCDCoCDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKi88YnI+DQomZ3Q7wqAgwqAgwqAg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgdG1wID0gcmVhZGIoJmFtcDtjaC0m
Z3Q7Y2hfbmVvX3VhcnQtJmd0O2lzcl9mYzx3YnI+cik7PGJyPg0KJmd0O8KgIMKgIMKgIMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGlmICh0bXAgJmFtcDsgMik8YnI+DQomZ3Q7
wqAgwqAgwqAgwqAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgdWRlbDx3YnI+YXkoMTApOzxicj4NCiZndDvCoCDCoCDCoCDCoCvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB1c2xlPHdicj5lcF9yYW5nZSgxMCk7PGJy
Pg0KJmd0O8KgIMKgIMKgIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGVsc2U8
YnI+DQomZ3Q7wqAgwqAgwqAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoGJyZWE8d2JyPms7PGJyPg0KJmd0O8KgIMKgIMKgIMKgwqDCoMKgwqDCoMKg
wqDCoMKgfTxicj4NCiZndDvCoCDCoCDCoCDCoEBAIC0xNDgzLDcgKzE0ODMsNyBAQCBzdGF0aWMg
dm9pZDxicj4NCiZndDvCoCDCoCDCoCDCoG5lb19hc3NlcnRfbW9kZW1fc2lnbmFscyhzdHJ1PHdi
cj5jdCBjaGFubmVsX3QgKmNoKTxicj4NCiZndDvCoCDCoCDCoCDCoMKgwqDCoMKgwqDCoMKgwqDC
oG5lb19wY2lfcG9zdGluZ19mbHVzPHdicj5oKGNoLSZndDtjaF9iZCk7PGJyPg0KJmd0O8KgIMKg
IMKgIMKgwqA8YnI+DQomZ3Q7wqAgwqAgwqAgwqDCoMKgwqDCoMKgwqDCoMKgwqAvKiBHaXZlIHRp
bWUgZm9yIHRoZSBVQVJUIHRvIGFjdHVhbGx5IHJhaXNlL2Ryb3AgdGhlPGJyPg0KJmd0O8KgIMKg
IMKgIMKgc2lnbmFscyAqLzxicj4NCiZndDvCoCDCoCDCoCDCoC3CoMKgwqDCoMKgwqDCoMKgdWRl
bGF5KDEwKTs8YnI+DQomZ3Q7wqAgwqAgwqAgwqArwqDCoMKgwqDCoMKgwqDCoHVzbGVlcF9yYW5n
ZSgxMCk7PGJyPg0KJmd0O8KgIMKgIMKgIMKgwqB9PGJyPg0KJmd0O8KgIMKgIMKgIMKgwqA8YnI+
DQomZ3Q7wqAgwqAgwqAgwqDCoHN0YXRpYyB2b2lkIG5lb19zZW5kX3N0YXJ0X2NoYXJhY3Rlcihz
dHJ1Yzx3YnI+dCBjaGFubmVsX3QgKmNoKTxicj4NCiZndDvCoCDCoCDCoCDCoEBAIC0xNDk1LDcg
KzE0OTUsNyBAQCBzdGF0aWMgdm9pZDxicj4NCiZndDvCoCDCoCDCoCDCoG5lb19zZW5kX3N0YXJ0
X2NoYXJhY3RlcihzdHJ1PHdicj5jdCBjaGFubmVsX3QgKmNoKTxicj4NCiZndDvCoCDCoCDCoCDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBjaC0mZ3Q7Y2hfeG9uX3M8d2JyPmVu
ZHMrKzs8YnI+DQomZ3Q7wqAgwqAgwqAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgd3JpdGViKGNoLSZndDtjPHdicj5oX3N0YXJ0YywgJmFtcDtjaC0mZ3Q7Y2hfbmVvX3VhcnQt
Jmd0O3R4cngpOzxicj4NCiZndDvCoCDCoCDCoCDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqBuZW9fcGNpX3Bvc3Q8d2JyPmluZ19mbHVzaChjaC0mZ3Q7Y2hfYmQpOzxicj4NCiZn
dDvCoCDCoCDCoCDCoC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHVkZWxheSgxMCk7
PGJyPg0KJmd0O8KgIMKgIMKgIMKgK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgdXNs
ZWVwXzx3YnI+cmFuZ2UoMTApOzxicj4NCiZndDvCoCDCoCDCoCDCoMKgwqDCoMKgwqDCoMKgwqDC
oH08YnI+DQomZ3Q7wqAgwqAgwqAgwqDCoH08YnI+DQomZ3Q7wqAgwqAgwqAgwqDCoDxicj4NCiZn
dDvCoCDCoCDCoCDCoEBAIC0xNTA4LDcgKzE1MDgsNyBAQCBzdGF0aWMgdm9pZCBuZW9fc2VuZF9z
dG9wX2NoYXJhY3RlcihzdHJ1Y3Q8YnI+DQomZ3Q7wqAgwqAgwqAgwqBjaGFubmVsX3QgKmNoKTxi
cj4NCiZndDvCoCDCoCDCoCDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBjaC0m
Z3Q7Y2hfeG9mZl88d2JyPnNlbmRzKys7PGJyPg0KJmd0O8KgIMKgIMKgIMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoHdyaXRlYihjaC0mZ3Q7Yzx3YnI+aF9zdG9wYywgJmFtcDtj
aC0mZ3Q7Y2hfbmVvX3VhcnQtJmd0O3R4cngpOzxicj4NCiZndDvCoCDCoCDCoCDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBuZW9fcGNpX3Bvc3Q8d2JyPmluZ19mbHVzaChjaC0m
Z3Q7Y2hfYmQpOzxicj4NCiZndDvCoCDCoCDCoCDCoC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoHVkZWxheSgxMCk7PGJyPg0KJmd0O8KgIMKgIMKgIMKgK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgdXNsZWVwXzx3YnI+cmFuZ2UoMTApOzxicj4NCiZndDvCoCDCoCDCoCDC
oMKgwqDCoMKgwqDCoMKgwqDCoH08YnI+DQomZ3Q7wqAgwqAgwqAgwqDCoH08YnI+DQomZ3Q7wqAg
wqAgwqAgwqDCoDxicj4NCiZndDvCoCDCoCDCoCDCoC0tPGJyPg0KJmd0O8KgIMKgIMKgIMKgMi43
LjQ8YnI+DQomZ3Q7PGJyPg0KPC9kaXY+PC9kaXY+PHNwYW4+Jmd0OyAtLTxicj4NCiZndDsgWW91
IHJlY2VpdmVkIHRoaXMgbWVzc2FnZSBiZWNhdXNlIHlvdSBhcmUgc3Vic2NyaWJlZCB0byB0aGUg
R29vZ2xlIEdyb3Vwczxicj4NCiZndDsgJnF1b3Q7b3V0cmVhY2h5LWtlcm5lbCZxdW90OyBncm91
cC48YnI+DQomZ3Q7IFRvIHVuc3Vic2NyaWJlIGZyb20gdGhpcyBncm91cCBhbmQgc3RvcCByZWNl
aXZpbmcgZW1haWxzIGZyb20gaXQsIHNlbmQgYW48YnI+DQomZ3Q7IGVtYWlsIHRvIDxhIGhyZWY9
Im1haWx0bzpvdXRyZWFjaHkta2VybmVsJTJCdW5zdWJzY3JpYmVAZ29vZ2xlZ3JvdXBzLmNvbSIg
dGFyZ2V0PSJfYmxhbmsiPm91dHJlYWNoeS1rZXJuZWwrdW5zdWJzY3JpYmVAZzx3YnI+b29nbGVn
cm91cHMuY29tPC9hPi48YnI+DQomZ3Q7IFRvIHBvc3QgdG8gdGhpcyBncm91cCwgc2VuZCBlbWFp
bCB0byA8YSBocmVmPSJtYWlsdG86b3V0cmVhY2h5LWtlcm5lbEBnb29nbGVncm91cHMuY29tIiB0
YXJnZXQ9Il9ibGFuayI+b3V0cmVhY2h5LWtlcm5lbEBnb29nbGVncm91cHMuPHdicj5jb208L2E+
Ljxicj4NCjwvc3Bhbj4mZ3Q7IFRvIHZpZXcgdGhpcyBkaXNjdXNzaW9uIG9uIHRoZSB3ZWIgdmlz
aXRodHRwczovLzxhIGhyZWY9Imh0dHA6Ly9ncm91cHMuZ29vZ2xlLmNvbS9kL21zZ2lkL291dHJl
YWNoeS1rZXJuZWwvMzNmZTgzMjMtNjY5Ny00YzM3LWJlYjEtIiByZWw9Im5vcmVmZXJyZXIiIHRh
cmdldD0iX2JsYW5rIj5ncm91cHMuZ29vZ2xlLmNvbTx3YnI+L2QvbXNnaWQvb3V0cmVhY2h5LWtl
cm5lbC8zM2ZlPHdicj44MzIzLTY2OTctNGMzNy1iZWIxLTwvYT48YnI+DQomZ3Q7IDVhMzhjMDc2
ZDhhMiU8YSBocmVmPSJodHRwOi8vNDBnb29nbGVncm91cHMuY29tIiByZWw9Im5vcmVmZXJyZXIi
IHRhcmdldD0iX2JsYW5rIj40MGdvb2dsZWdyb3Vwcy5jbzx3YnI+bTwvYT4uPGJyPg0KPGRpdiBj
bGFzcz0ibV8tNDgwNDkyOTc4NDY1NDE1Njg0MUhPRW5aYiI+PGRpdiBjbGFzcz0ibV8tNDgwNDky
OTc4NDY1NDE1Njg0MWg1Ij4mZ3Q7IEZvciBtb3JlIG9wdGlvbnMsIHZpc2l0IDxhIGhyZWY9Imh0
dHBzOi8vZ3JvdXBzLmdvb2dsZS5jb20vZC9vcHRvdXQiIHJlbD0ibm9yZWZlcnJlciIgdGFyZ2V0
PSJfYmxhbmsiPmh0dHBzOi8vZ3JvdXBzLmdvb2dsZS5jb20vZC9vcDx3YnI+dG91dDwvYT4uPGJy
Pg0KJmd0Ozxicj4NCiZndDs8L2Rpdj48L2Rpdj48L2Jsb2NrcXVvdGU+PC9kaXY+PGJyPjwvZGl2
PjwvZGl2Pg0K
--001a1137b054064a4d05593f9b92--

