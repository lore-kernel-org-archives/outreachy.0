X-GM-THRID: 7363344990208
X-Received: by 10.180.109.34 with SMTP id hp2mr3180760wib.4.1425969845341;
        Mon, 09 Mar 2015 23:44:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.80.68 with SMTP id p4ls3995wix.6.gmail; Mon, 09 Mar 2015
 23:44:05 -0700 (PDT)
X-Received: by 10.180.90.169 with SMTP id bx9mr1629484wib.6.1425969845056;
        Mon, 09 Mar 2015 23:44:05 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id cl5si949wib.3.2015.03.09.23.44.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Mon, 09 Mar 2015 23:44:05 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.11,373,1422918000"; 
   d="scan'208";a="125144753"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 10 Mar 2015 07:44:04 +0100
Date: Tue, 10 Mar 2015 07:44:03 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Cristina Opriceana <cristina.opriceana@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: Fix spelling
 error
In-Reply-To: <20150309230431.GA2219@Inspiron>
Message-ID: <alpine.DEB.2.02.1503100743190.2064@localhost6.localdomain6>
References: <20150309230431.GA2219@Inspiron>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Tue, 10 Mar 2015, Cristina Opriceana wrote:

> Fix spelling error in order to keep code clean and easy to read.
> Warning found by checkpatch.pl
> 
> Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
> ---
>  drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
> index d1cbddd..4dcda38 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
> @@ -2132,10 +2132,10 @@ ieee80211_rx_frame_softmac(struct ieee80211_device *ieee, struct sk_buff *skb,
>   * to have enought room to TX an entire packet.
>   * This might be useful if each fragment need it's own

it's -> its

>   * descriptor, thus just keep a total free memory > than
> - * the max fragmentation treshold is not enought.. If the
> + * the max fragmentation threshold is not enought.. If the

enought -> enough
.. -> .

julia

>   * ieee802.11 stack passed a TXB struct then you needed
>   * to keep N free descriptors where
> - * N = MAX_PACKET_SIZE / MIN_FRAG_TRESHOLD
> + * N = MAX_PACKET_SIZE / MIN_FRAG_THRESHOLD
>   * In this way you need just one and the 802.11 stack
>   * will take care of buffering fragments and pass them to
>   * to the driver later, when it wakes the queue.
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20150309230431.GA2219%40Inspiron.
> For more options, visit https://groups.google.com/d/optout.
> 

