X-GM-THRID: 6466070722699591680
X-Received: by 10.28.29.8 with SMTP id d8mr408466wmd.27.1505502385859;
        Fri, 15 Sep 2017 12:06:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.150.151 with SMTP id y145ls493340wmd.4.gmail; Fri, 15 Sep
 2017 12:06:24 -0700 (PDT)
X-Google-Smtp-Source: ADKCNb7SC0XOku3KYjvoLXEQTapxfP/9IQ5ln2Vz9rG/WN83hs2DJPpQ/HRrBKUjdm+jieRC++wM
X-Received: by 10.223.160.199 with SMTP id n7mr1628416wrn.15.1505502384758;
        Fri, 15 Sep 2017 12:06:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505502384; cv=none;
        d=google.com; s=arc-20160816;
        b=eIpLQDuZtGtjBEE1RZ6NIVovAo/gu6yyu0mQyCco0DjYv+50buk+J6f+kMyLPTFKbh
         pmJJT32ML350P9kiE/zTxn/jBc3hJQ/hvT1t+e9+lYzOvwPhGamDJzKnNcdAWmjU2zxV
         kZ+QnoCPrMO+8ur6nrTlG07FhPNixqcifkjxPaXDu2fXb013BHxnF0BiF6wINBZA74V+
         30BzmT9aOcIAk1XPjL7XqhA5pI0Q1gicQRN0hw2ZGc121a1ll3twmPcwNro8kcQCWtxU
         sdY5uVQxd7qCvAdbsLAIiAh5VTUrh4sgcS664Q9P4Kpcl3kBNQUmk5LOV8xu9daD5Lx1
         pgNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=1/X/+Sd0enEo7rQ6df5MEBtFAILk1UrrRujRFEmih/g=;
        b=hRma9R34fn3eoJPQFnUshMM96OcXxThvVDRWLXN77VfHe3qoh0OrKvEwpKHNBv49eR
         EYU0/76GHDeWc/oGbC1l4CZzs4kigpWLmrVfdv1fwSJOI7W01UFLjpwujMLF7bMN5zh6
         +T04JjkOCt4Nyru3gkOFeksOuxtRSrJAD0JIsLnEJCd8AwZXcRw/SyUfOCbaeHuZfm3w
         oXpkZ7YyLlKWLC9BJyjkqp7PpIZHrTxeNVtqRtxqw18ioB4QTMcyBQQ/n5ADW8bqOpN/
         gfYofAKt3xwG6BR/7y7zbPSaWSUaIiKhFV5/fIUIy67G1/UH6yf/5qYECnOUld9DFTTi
         N6dQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 200si19696wmj.0.2017.09.15.12.06.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Sep 2017 12:06:24 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,398,1500933600"; 
   d="scan'208";a="291324611"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 15 Sep 2017 21:06:17 +0200
Date: Fri, 15 Sep 2017 21:06:17 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Keerthi Reddy <keerthigd4990@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: [PATCH] staging: dgnc: use usleep_range
 instead of udelay
In-Reply-To: <33fe8323-6697-4c37-beb1-5a38c076d8a2@googlegroups.com>
Message-ID: <alpine.DEB.2.20.1709152105440.2533@hadrien>
References: <20170915181639.GA19334@manoharreddy> <33fe8323-6697-4c37-beb1-5a38c076d8a2@googlegroups.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-1194627944-1505502377=:2533"

--8323329-1194627944-1505502377=:2533
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Fri, 15 Sep 2017, Keerthi Reddy wrote:

> I just checked. With the below changes, code compiles. :)

This does not seem possible.  Probably the files you changes were not
selected in the configuration and so they were skipped by the compiler.

julia

>
> On Friday, September 15, 2017 at 11:46:48 PM UTC+5:30, Keerthi Reddy wrote:
>       This patch fixes the checkpatch.pl check
>
>       CHECK: usleep_range is preferred over udelay
>
>       Signed-off-by: Keerthi Reddy <keerthigd4990@gmail.com>
>       ---
>        drivers/staging/dgnc/dgnc_cls.c |  6 +++---
>        drivers/staging/dgnc/dgnc_neo.c | 10 +++++-----
>        2 files changed, 8 insertions(+), 8 deletions(-)
>
>       diff --git a/drivers/staging/dgnc/dgnc_cls.c
>       b/drivers/staging/dgnc/dgnc_cls.c
>       index 870ae3d..fb1df19 100644
>       --- a/drivers/staging/dgnc/dgnc_cls.c
>       +++ b/drivers/staging/dgnc/dgnc_cls.c
>       @@ -397,7 +397,7 @@ static void cls_assert_modem_signals(struct
>       channel_t *ch)
>                writeb(out, &ch->ch_cls_uart->mcr);
>        
>                /* Give time for the UART to actually drop the signals
>       */
>       -        udelay(10);
>       +        usleep_range(10);
>        }
>        
>        static void cls_copy_data_from_queue_to_uart(struct channel_t
>       *ch)
>       @@ -587,7 +587,7 @@ static void cls_flush_uart_write(struct
>       channel_t *ch)
>                       &ch->ch_cls_uart->isr_fcr);
>        
>                /* Must use *delay family functions in atomic context
>       */
>       -        udelay(10);
>       +        usleep_range(10);
>        
>                ch->ch_flags |= (CH_TX_FIFO_EMPTY | CH_TX_FIFO_LWM);
>        }
>       @@ -609,7 +609,7 @@ static void cls_flush_uart_read(struct
>       channel_t *ch)
>                 * Presumably, this is a bug in this UART.
>                 */
>        
>       -        udelay(10);
>       +        usleep_range(10);
>        }
>        
>        /* Send any/all changes to the line to the UART. */
>       diff --git a/drivers/staging/dgnc/dgnc_neo.c
>       b/drivers/staging/dgnc/dgnc_neo.c
>       index c7cc490..5ec1026 100644
>       --- a/drivers/staging/dgnc/dgnc_neo.c
>       +++ b/drivers/staging/dgnc/dgnc_neo.c
>       @@ -1230,7 +1230,7 @@ static void neo_flush_uart_write(struct
>       channel_t *ch)
>                         */
>                        tmp = readb(&ch->ch_neo_uart->isr_fcr);
>                        if (tmp & 4)
>       -                        udelay(10);
>       +                        usleep_range(10);
>                        else
>                                break;
>                }
>       @@ -1261,7 +1261,7 @@ static void neo_flush_uart_read(struct
>       channel_t *ch)
>                         */
>                        tmp = readb(&ch->ch_neo_uart->isr_fcr);
>                        if (tmp & 2)
>       -                        udelay(10);
>       +                        usleep_range(10);
>                        else
>                                break;
>                }
>       @@ -1483,7 +1483,7 @@ static void
>       neo_assert_modem_signals(struct channel_t *ch)
>                neo_pci_posting_flush(ch->ch_bd);
>        
>                /* Give time for the UART to actually raise/drop the
>       signals */
>       -        udelay(10);
>       +        usleep_range(10);
>        }
>        
>        static void neo_send_start_character(struct channel_t *ch)
>       @@ -1495,7 +1495,7 @@ static void
>       neo_send_start_character(struct channel_t *ch)
>                        ch->ch_xon_sends++;
>                        writeb(ch->ch_startc, &ch->ch_neo_uart->txrx);
>                        neo_pci_posting_flush(ch->ch_bd);
>       -                udelay(10);
>       +                usleep_range(10);
>                }
>        }
>        
>       @@ -1508,7 +1508,7 @@ static void neo_send_stop_character(struct
>       channel_t *ch)
>                        ch->ch_xoff_sends++;
>                        writeb(ch->ch_stopc, &ch->ch_neo_uart->txrx);
>                        neo_pci_posting_flush(ch->ch_bd);
>       -                udelay(10);
>       +                usleep_range(10);
>                }
>        }
>        
>       --
>       2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/33fe8323-6697-4c37-beb1-
> 5a38c076d8a2%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-1194627944-1505502377=:2533--

