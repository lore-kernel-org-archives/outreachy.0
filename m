X-GM-THRID: 6806516278512058368
X-Received: by 2002:a2e:8119:: with SMTP id d25mr7922340ljg.39.1584778074339;
        Sat, 21 Mar 2020 01:07:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:b042:: with SMTP id d2ls1863827ljl.3.gmail; Sat, 21 Mar
 2020 01:07:52 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuYpE3Sk//tera3REqcWVVxoZUF54E5UOm+ORdwCFZvkWVc0ij+QRuGQ7QoPZ17lsAtYiVv
X-Received: by 2002:a2e:9290:: with SMTP id d16mr7809243ljh.31.1584778072848;
        Sat, 21 Mar 2020 01:07:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584778072; cv=none;
        d=google.com; s=arc-20160816;
        b=dsNPZ6ynqDkYcTbBTcWVY+7AdLA7nzsIzruqn+tWtP1QgUvLvnM0oo10Cb8z/BpZPF
         Vul1N3Y3MpIHX8Bs0+2O7pf5SYLemDhOr40lMZzeylRYaYCEddZf1SYzF3uU+7d38u8y
         ksowPxKLpZCHKhhX9ygIedNji4Kqae22SgdT5u9mXqDzbYhKgxqGjJv9zEa9/MQPGnSY
         7t7XisqN6/7aoyZJXogSdFipo7lfhRWtX9l/7nr8/r8TQE3LAi9Wlqu3C4y9Mqbsoi6O
         RzuecFdiqh+7lYeFMVlrYqwiOqNxqydqOgjytb6GzJzMnPjHci4oxEHDQEhG2NZ9GJIC
         QzxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=PvBkut+GURTH8wCB4vnDedc0ErTP+q69vLzhU+Jr8Es=;
        b=t4+Ugke8cjlQWrRdkPw4skxmsAWrptENVG8nuPg1W0JxJWO2i+9lLwfv3twmJnkUVT
         kK10d+rOE29G1d7Ur0mMzr2/bnlcr3H4ys1tXN0CZLwP9Io0NFPc0U+Z2wWSHs+mXRaZ
         Oov0DjP0AOpLxwyRKU3OkwdS+yKbt26dPKTMy9YIlizf7Efn6kInzs3nzn0TthHbXF+1
         QgdJ6fCcVNxvRl03iqxx+ZkWHjh0dcAc+Ym1ciHCgtYs5y4+ogu4sm2neX19wqpzIiTk
         HmsWkJ9C02azkLnJMrcOYRxDZNzRNo/9+VjfPbsoAfBzMW/stJU1avd5xLczO9yG2WNZ
         cuOg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id m11si314659ljj.2.2020.03.21.01.07.52
        for <outreachy-kernel@googlegroups.com>;
        Sat, 21 Mar 2020 01:07:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 26764 invoked from network); 21 Mar 2020 08:07:50 -0000
Received: from unknown (HELO tulip.local) (vkor@vkten.in@117.249.250.241)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 21 Mar 2020 08:07:50 -0000
Date: Sat, 21 Mar 2020 13:37:43 +0530
From: R Veera Kumar <vkor@vkten.in>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH v3 1/3] staging: rtl8723bs: os_dep:
 Remove commented out code lines
Message-ID: <20200321080741.GA1942@tulip.local>
References: <cover.1584764104.git.vkor@vkten.in>
 <a62d2fbb77990210b939a5ec99ee27cfa5749a09.1584764104.git.vkor@vkten.in>
 <alpine.DEB.2.21.2003210832000.2522@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.2003210832000.2522@hadrien>
User-Agent: Mutt/1.10.1 (2018-07-13)

On Sat, Mar 21, 2020 at 08:32:49AM +0100, Julia Lawall wrote:
> 
> 
> On Sat, 21 Mar 2020, R Veera Kumar wrote:
> 
> > Remove multiple commented out code lines.
> > Remove blank lines next to them.
> 
> You don't have the change it, but mentioning removing the blank lines was
> not really necessary.  It is normal that you should clean up the
> adjacent whitespace when you clean up the code.
> 

Sorry I can't make out: "You don't have the change it"

So I keep those commented lines or remove them.

But Greg said in comment to patch:
Again, this is not a long-line comment, it is a code line that is
commented out. "Remove it in a patch previous to this one please."

Veera

> julia
> 
> >
> > Signed-off-by: R Veera Kumar <vkor@vkten.in>
> > ---
> >  drivers/staging/rtl8723bs/os_dep/recv_linux.c | 11 -----------
> >  1 file changed, 11 deletions(-)
> >
> > diff --git a/drivers/staging/rtl8723bs/os_dep/recv_linux.c b/drivers/staging/rtl8723bs/os_dep/recv_linux.c
> > index a6491f163272..271b680e4388 100644
> > --- a/drivers/staging/rtl8723bs/os_dep/recv_linux.c
> > +++ b/drivers/staging/rtl8723bs/os_dep/recv_linux.c
> > @@ -109,11 +109,7 @@ void rtw_os_recv_indicate_pkt(struct adapter *padapter, _pkt *pkt, struct rx_pkt
> >  			struct sta_priv *pstapriv = &padapter->stapriv;
> >  			int bmcast = IS_MCAST(pattrib->dst);
> >
> > -			/* DBG_871X("bmcast =%d\n", bmcast); */
> > -
> >  			if (memcmp(pattrib->dst, myid(&padapter->eeprompriv), ETH_ALEN)) {
> > -				/* DBG_871X("not ap psta =%p, addr =%pM\n", psta, pattrib->dst); */
> > -
> >  				if (bmcast) {
> >  					psta = rtw_get_bcmc_stainfo(padapter);
> >  					pskb2 = rtw_skb_clone(pkt);
> > @@ -123,9 +119,6 @@ void rtw_os_recv_indicate_pkt(struct adapter *padapter, _pkt *pkt, struct rx_pkt
> >
> >  				if (psta) {
> >  					struct net_device *pnetdev = (struct net_device*)padapter->pnetdev;
> > -
> > -					/* DBG_871X("directly forwarding to the rtw_xmit_entry\n"); */
> > -
> >  					/* skb->ip_summed = CHECKSUM_NONE; */
> >  					pkt->dev = pnetdev;
> >  					skb_set_queue_mapping(pkt, rtw_recv_select_queue(pkt));
> > @@ -234,14 +227,10 @@ static void rtw_os_ksocket_send(struct adapter *padapter, union recv_frame *prec
> >  		if (rx_pid == psta->pid) {
> >  			int i;
> >  			u16 len = *(u16*)(skb->data+ETH_HLEN+2);
> > -			/* u16 ctrl_type = *(u16*)(skb->data+ETH_HLEN+4); */
> > -
> > -			/* DBG_871X("eth, RC: len = 0x%x, ctrl_type = 0x%x\n", len, ctrl_type); */
> >  			DBG_871X("eth, RC: len = 0x%x\n", len);
> >
> >  			for (i = 0; i < len; i++)
> >  				DBG_871X("0x%x\n", *(skb->data+ETH_HLEN+4+i));
> > -				/* DBG_871X("0x%x\n", *(skb->data+ETH_HLEN+6+i)); */
> >
> >  			DBG_871X("eth, RC-end\n");
> >  		}
> > --

