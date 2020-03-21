X-GM-THRID: 6806516278512058368
X-Received: by 2002:a05:651c:2045:: with SMTP id t5mr179079ljo.126.1584775971960;
        Sat, 21 Mar 2020 00:32:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:8189:: with SMTP id e9ls1639426ljg.4.gmail; Sat, 21 Mar
 2020 00:32:50 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvxNELMH8aq2cCKHBYcYmXMxkQOpOaQ4/u6UT7VSqnp0iSmRaCYTP6MF97qw83W/U54c06D
X-Received: by 2002:a05:651c:1058:: with SMTP id x24mr7820416ljm.248.1584775970347;
        Sat, 21 Mar 2020 00:32:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584775970; cv=none;
        d=google.com; s=arc-20160816;
        b=wFyy2UnU1WVpLxrRbMQqVu8VryLYI0Iz5nS5N2Kr60YyVSkb3xZbTvRcRSooYfnudM
         wV4tsf3dzoyHg3TrPDaeYdYQxz2eUEekyTHlK+cH3aGLeKmmFzCtCRkHLv0yUCGNQO5h
         mrUXZmKYUfrQhv/yckvPumiqz9aEokDUrupD3vLKY6FwFzeoDF1UDyCm1RN8C+kmjHdd
         Y+/OYuMf5sG5+FqdqGhOzRCh5d+P8zCbDuNOa9GRTuBkAMSWiSdu7fevXeKUPX3wSi2k
         wqKxSlIe5byoPzHKAI3kVJ7cHAHmLvXfgY19IKvwEjNT2+Vu+aORJwmdKSLcXjzpwFiX
         aAjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=EQ9yPbLLpjKDlnHNg79T6vcx25dM6FnXrS4lhuX4dpQ=;
        b=beDok1g2acPsCZ2851dBPrk6z5big75upZvom1Xt3zWBaOZkGzpGnQ6UPu/en08/ya
         yg551js3JpwdHdu1bOsEyWuMkhbFLKq0CdAVNQ/tk5fWxyW+DeeSgaqd+KaXWEcEBjEK
         d4xjZJKIv6Y4AHxi56vngxwDVnL4kDuBQynw5fryzvjvAVDwp3qVyoTD4hlarcESS1YV
         XPSfBidCt8TjVL8CGGwSBI+juyqdCpWmMRbyVC8L3bwlFZSUrohpDWn8WgQ00J9cgfkH
         j9hp4AInx6/NNKhZuebcVdF8N9rLpv3K+iuS7Y16AhxELFkemWFX+lkemOLbggNZk2VP
         VnHw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id b26si530289ljk.4.2020.03.21.00.32.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Mar 2020 00:32:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.72,287,1580770800"; 
   d="scan'208";a="441462235"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 21 Mar 2020 08:32:49 +0100
Date: Sat, 21 Mar 2020 08:32:49 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: R Veera Kumar <vkor@vkten.in>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH v3 1/3] staging: rtl8723bs: os_dep:
 Remove commented out code lines
In-Reply-To: <a62d2fbb77990210b939a5ec99ee27cfa5749a09.1584764104.git.vkor@vkten.in>
Message-ID: <alpine.DEB.2.21.2003210832000.2522@hadrien>
References: <cover.1584764104.git.vkor@vkten.in> <a62d2fbb77990210b939a5ec99ee27cfa5749a09.1584764104.git.vkor@vkten.in>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 21 Mar 2020, R Veera Kumar wrote:

> Remove multiple commented out code lines.
> Remove blank lines next to them.

You don't have the change it, but mentioning removing the blank lines was
not really necessary.  It is normal that you should clean up the
adjacent whitespace when you clean up the code.

julia

>
> Signed-off-by: R Veera Kumar <vkor@vkten.in>
> ---
>  drivers/staging/rtl8723bs/os_dep/recv_linux.c | 11 -----------
>  1 file changed, 11 deletions(-)
>
> diff --git a/drivers/staging/rtl8723bs/os_dep/recv_linux.c b/drivers/staging/rtl8723bs/os_dep/recv_linux.c
> index a6491f163272..271b680e4388 100644
> --- a/drivers/staging/rtl8723bs/os_dep/recv_linux.c
> +++ b/drivers/staging/rtl8723bs/os_dep/recv_linux.c
> @@ -109,11 +109,7 @@ void rtw_os_recv_indicate_pkt(struct adapter *padapter, _pkt *pkt, struct rx_pkt
>  			struct sta_priv *pstapriv = &padapter->stapriv;
>  			int bmcast = IS_MCAST(pattrib->dst);
>
> -			/* DBG_871X("bmcast =%d\n", bmcast); */
> -
>  			if (memcmp(pattrib->dst, myid(&padapter->eeprompriv), ETH_ALEN)) {
> -				/* DBG_871X("not ap psta =%p, addr =%pM\n", psta, pattrib->dst); */
> -
>  				if (bmcast) {
>  					psta = rtw_get_bcmc_stainfo(padapter);
>  					pskb2 = rtw_skb_clone(pkt);
> @@ -123,9 +119,6 @@ void rtw_os_recv_indicate_pkt(struct adapter *padapter, _pkt *pkt, struct rx_pkt
>
>  				if (psta) {
>  					struct net_device *pnetdev = (struct net_device*)padapter->pnetdev;
> -
> -					/* DBG_871X("directly forwarding to the rtw_xmit_entry\n"); */
> -
>  					/* skb->ip_summed = CHECKSUM_NONE; */
>  					pkt->dev = pnetdev;
>  					skb_set_queue_mapping(pkt, rtw_recv_select_queue(pkt));
> @@ -234,14 +227,10 @@ static void rtw_os_ksocket_send(struct adapter *padapter, union recv_frame *prec
>  		if (rx_pid == psta->pid) {
>  			int i;
>  			u16 len = *(u16*)(skb->data+ETH_HLEN+2);
> -			/* u16 ctrl_type = *(u16*)(skb->data+ETH_HLEN+4); */
> -
> -			/* DBG_871X("eth, RC: len = 0x%x, ctrl_type = 0x%x\n", len, ctrl_type); */
>  			DBG_871X("eth, RC: len = 0x%x\n", len);
>
>  			for (i = 0; i < len; i++)
>  				DBG_871X("0x%x\n", *(skb->data+ETH_HLEN+4+i));
> -				/* DBG_871X("0x%x\n", *(skb->data+ETH_HLEN+6+i)); */
>
>  			DBG_871X("eth, RC-end\n");
>  		}
> --
> 2.20.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/a62d2fbb77990210b939a5ec99ee27cfa5749a09.1584764104.git.vkor%40vkten.in.
>

