X-GM-THRID: 6466070722699591680
X-Received: by 10.25.205.75 with SMTP id d72mr272905lfg.19.1505504885726;
        Fri, 15 Sep 2017 12:48:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.25.200 with SMTP id 69ls411827ljz.37.gmail; Fri, 15 Sep
 2017 12:48:04 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QCgt4mEfb6ONvFq6j655qkO+GO82mgyShc0VmE83I/hZojGJRjCIyVE/uSS82sHt1R5Hv6h
X-Received: by 10.25.59.12 with SMTP id i12mr271929lfa.32.1505504884171;
        Fri, 15 Sep 2017 12:48:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505504884; cv=none;
        d=google.com; s=arc-20160816;
        b=jao2UKH9WXyjJrqioh4h+2IYuWbFTEQolQcWhUGnXQ8lfNlmMUlqmiDuM2nIpQvMDw
         tma3pvE+YGwKmZYWDCqyjdKD/LU68y11Y3pCK9QBSO5RYY4jRloKv0O5zuQb3mC7qFtz
         zMUBLdlrYB67vx14JQ3IzVhuqe/rANPbTag+RLa7jFiMzMEDYLC28WKtiOZlmY+mc/Mh
         wMEROu1SHYRgPU7Y9rVmf3M/Q1/b1Et3dcDt49AN9BSmeJOTsK4fUiGC44rIA6PVf37t
         BeO9/B7Nqprd779p6w9UzwGhc1GdWJJmSWeSAK+F7A0oSiZTMrJMdGKz2+3yNdf3CDZX
         oojA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=rSnPrr9vsE5+rCQQax3VaFiE13+EBL76g78QWEwMJdE=;
        b=GIaCx5Jc8G7P6JNaYIP+DjxJLkWriJiVJSfVQC8znrxMBpBiWGzan+7+thqFrBs5ly
         iW49iAwAykW+H1BMMhHxUU0I8WxFVCkUUM0co7i9+SONpz/ws+60ZmnWvpbqAJSQ+Ksr
         9Q5fOpI751lgqk/Ty+keAJXV9DnurWbiO65vHBAXowcHvxH/2ODWiWGLKNt3+YuECWnq
         Vi9Xs32kPbLLOUxF8R0/RL3NPfKe+bKYE1O0QICG1RZzz7r2sXEsf+CLHcT1qXAlYegr
         QcJevdF+j1vxW2pdz4eznwUDuT7EwlEBoUowijEGqwLtoOenI3qOOQOnidsCNUiKqKyO
         s02g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id p200si83676wmg.4.2017.09.15.12.48.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Sep 2017 12:48:04 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,398,1500933600"; 
   d="scan'208";a="291326742"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 15 Sep 2017 21:48:03 +0200
Date: Fri, 15 Sep 2017 21:48:03 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Keerthi Reddy <keerthigd4990@gmail.com>
cc: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH] staging: dgnc: use usleep_range
 instead of udelay
In-Reply-To: <CABfTi08XDoMB9BsCqO3A=Jr6u0RjO49i4z01HHH08hRp6MO28g@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1709152146510.2533@hadrien>
References: <20170915181639.GA19334@manoharreddy> <33fe8323-6697-4c37-beb1-5a38c076d8a2@googlegroups.com> <alpine.DEB.2.20.1709152105440.2533@hadrien> <CABfTi08XDoMB9BsCqO3A=Jr6u0RjO49i4z01HHH08hRp6MO28g@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-406283210-1505504883=:2533"

--8323329-406283210-1505504883=:2533
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Sat, 16 Sep 2017, Keerthi Reddy wrote:

> > Be sure that you have actually produced a .o file >for all of the files
> you have changed before sending a
> >patch
>
> after setting up configuration, 
>
> I did make -j4  in the root directory and the .o files 
> are created.
>
> The files that were added are driver/staging/dgnc/ are
> built-in.o  dgnc_cls.o     dgnc_driver.o  dgnc_mgmt.o  dgnc_neo.o
>
> Since these .o files are created, I assumed that the code compiles.
> But still, where the problem could be?

Very strange.  I just made your first change, im dgnc_cls, and I get:

  CC      drivers/staging/dgnc/dgnc_cls.o
drivers/staging/dgnc/dgnc_cls.c: In function ‘cls_assert_modem_signals’:
drivers/staging/dgnc/dgnc_cls.c:400:2: error: too few arguments to
function ‘usleep_range’
  usleep_range(10);
  ^
In file included from drivers/staging/dgnc/dgnc_cls.c:19:0:
./include/linux/delay.h:59:6: note: declared here
 void usleep_range(unsigned long min, unsigned long max);
      ^
make[1]: *** [drivers/staging/dgnc/dgnc_cls.o] Error 1
make: *** [drivers/staging/dgnc/dgnc_cls.o] Error 2

This was after make allyesconfig/  So the file is getting compiled, but
the compilation should not succeed.

julia

>
> >but to change one function to another you have to know what the old 
> >one does and how the new one can preserve the required behavior.
>
> Your suggestion is correct. From now on wards I will learn about the
> functions
> that I will modify. Really thanks on the suggestion. 
>
> Thanks,
> Keerthi.
>
> On Sat, Sep 16, 2017 at 12:36 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
>       On Fri, 15 Sep 2017, Keerthi Reddy wrote:
>
>       > I just checked. With the below changes, code compiles. :)
>
>       This does not seem possible.  Probably the files you changes
>       were not
>       selected in the configuration and so they were skipped by the
>       compiler.
>
>       julia
>
>       >
>       > On Friday, September 15, 2017 at 11:46:48 PM UTC+5:30, Keerthi
>       Reddy wrote:
>       >       This patch fixes the checkpatch.pl check
>       >
>       >       CHECK: usleep_range is preferred over udelay
>       >
>       >       Signed-off-by: Keerthi Reddy <keerthigd4990@gmail.com>
>       >       ---
>       >        drivers/staging/dgnc/dgnc_cls.c |  6 +++---
>       >        drivers/staging/dgnc/dgnc_neo.c | 10 +++++-----
>       >        2 files changed, 8 insertions(+), 8 deletions(-)
>       >
>       >       diff --git a/drivers/staging/dgnc/dgnc_cls.c
>       >       b/drivers/staging/dgnc/dgnc_cls.c
>       >       index 870ae3d..fb1df19 100644
>       >       --- a/drivers/staging/dgnc/dgnc_cls.c
>       >       +++ b/drivers/staging/dgnc/dgnc_cls.c
>       >       @@ -397,7 +397,7 @@ static void
>       cls_assert_modem_signals(struct
>       >       channel_t *ch)
>       >                writeb(out, &ch->ch_cls_uart->mcr);
>       >        
>       >                /* Give time for the UART to actually drop the
>       signals
>       >       */
>       >       -        udelay(10);
>       >       +        usleep_range(10);
>       >        }
>       >        
>       >        static void cls_copy_data_from_queue_to_uart(struct
>       channel_t
>       >       *ch)
>       >       @@ -587,7 +587,7 @@ static void
>       cls_flush_uart_write(struct
>       >       channel_t *ch)
>       >                       &ch->ch_cls_uart->isr_fcr);
>       >        
>       >                /* Must use *delay family functions in atomic
>       context
>       >       */
>       >       -        udelay(10);
>       >       +        usleep_range(10);
>       >        
>       >                ch->ch_flags |= (CH_TX_FIFO_EMPTY |
>       CH_TX_FIFO_LWM);
>       >        }
>       >       @@ -609,7 +609,7 @@ static void
>       cls_flush_uart_read(struct
>       >       channel_t *ch)
>       >                 * Presumably, this is a bug in this UART.
>       >                 */
>       >        
>       >       -        udelay(10);
>       >       +        usleep_range(10);
>       >        }
>       >        
>       >        /* Send any/all changes to the line to the UART. */
>       >       diff --git a/drivers/staging/dgnc/dgnc_neo.c
>       >       b/drivers/staging/dgnc/dgnc_neo.c
>       >       index c7cc490..5ec1026 100644
>       >       --- a/drivers/staging/dgnc/dgnc_neo.c
>       >       +++ b/drivers/staging/dgnc/dgnc_neo.c
>       >       @@ -1230,7 +1230,7 @@ static void
>       neo_flush_uart_write(struct
>       >       channel_t *ch)
>       >                         */
>       >                        tmp = readb(&ch->ch_neo_uart->isr_fcr);
>       >                        if (tmp & 4)
>       >       -                        udelay(10);
>       >       +                        usleep_range(10);
>       >                        else
>       >                                break;
>       >                }
>       >       @@ -1261,7 +1261,7 @@ static void
>       neo_flush_uart_read(struct
>       >       channel_t *ch)
>       >                         */
>       >                        tmp = readb(&ch->ch_neo_uart->isr_fcr);
>       >                        if (tmp & 2)
>       >       -                        udelay(10);
>       >       +                        usleep_range(10);
>       >                        else
>       >                                break;
>       >                }
>       >       @@ -1483,7 +1483,7 @@ static void
>       >       neo_assert_modem_signals(struct channel_t *ch)
>       >                neo_pci_posting_flush(ch->ch_bd);
>       >        
>       >                /* Give time for the UART to actually
>       raise/drop the
>       >       signals */
>       >       -        udelay(10);
>       >       +        usleep_range(10);
>       >        }
>       >        
>       >        static void neo_send_start_character(struct channel_t
>       *ch)
>       >       @@ -1495,7 +1495,7 @@ static void
>       >       neo_send_start_character(struct channel_t *ch)
>       >                        ch->ch_xon_sends++;
>       >                        writeb(ch->ch_startc,
>       &ch->ch_neo_uart->txrx);
>       >                        neo_pci_posting_flush(ch->ch_bd);
>       >       -                udelay(10);
>       >       +                usleep_range(10);
>       >                }
>       >        }
>       >        
>       >       @@ -1508,7 +1508,7 @@ static void
>       neo_send_stop_character(struct
>       >       channel_t *ch)
>       >                        ch->ch_xoff_sends++;
>       >                        writeb(ch->ch_stopc,
>       &ch->ch_neo_uart->txrx);
>       >                        neo_pci_posting_flush(ch->ch_bd);
>       >       -                udelay(10);
>       >       +                usleep_range(10);
>       >                }
>       >        }
>       >        
>       >       --
>       >       2.7.4
>       >
> > --
> > You received this message because you are subscribed to the Google
> Groups
> > "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it,
> send an
> > email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to
> outreachy-kernel@googlegroups.com.
> > To view this discussion on the webvisithttps://groups.google.com/d/msgid/outreachy-kernel/33fe8323-6697-4c37-
> beb1-
> > 5a38c076d8a2%40googlegroups.com.
> > For more options, visit https://groups.google.com/d/optout.
> >
> >
>
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CABfTi08XDoMB9BsCqO3A%3D
> Jr6u0RjO49i4z01HHH08hRp6MO28g%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-406283210-1505504883=:2533--

