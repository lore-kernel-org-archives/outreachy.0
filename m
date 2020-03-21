X-GM-THRID: 6806516278512058368
X-Received: by 2002:a1c:7214:: with SMTP id n20mr14731739wmc.24.1584780363874;
        Sat, 21 Mar 2020 01:46:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:a799:: with SMTP id j25ls3557260wrc.7.gmail; Sat, 21 Mar
 2020 01:46:02 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtEiWiiwXULxGBNXQxNWs04dHxi44P9o7JO8QtckF7Z6bGCMY3htUtTtUk5vim4NISpZfWe
X-Received: by 2002:a05:6000:114f:: with SMTP id d15mr16725031wrx.143.1584780362611;
        Sat, 21 Mar 2020 01:46:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584780362; cv=none;
        d=google.com; s=arc-20160816;
        b=iDkX7Q5kZvaVH6qAtY3LQvcgpvvfStx2yz0550wg9dtcw+t9oC58fvQTq4kt2xGbOj
         KQF5G2zcaVlQ94mA9t98r7ZNxAfF86gP3klYXRppRJuuNZx7ovEKqOys2NX9RfOTmJYm
         Mk27MGbX4WWSnR23kwvrRy5oIKWCxt+Rft4pSpjsMpY/Nsei2E2SbQsFIbJg2ZXqOTDa
         qBCkwezrFQilV+ZSrSVf4gC471fNbu9yA+3aIWu9zWJ1zrJeHcxXSKzPslXsnAzpF8PT
         AdjrDajrsGrBqe09yvKyTgLRuikzvL2hmtjXNONA+aklWifA7DdBg6kZHSAOOdLSpa38
         an4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=PrIXjzEPoweNHTZ9PdCT2A3TUfo2bX28RIOOiIfUgNw=;
        b=qss2hWWEprgR1yIdYc9DpdvS/BTotg1pGR3AOZXFyB116MSAqv34rJNq4lRs1guRv0
         vwR2NAxiijwhX3MZmGd7FaI3iq6Jw4HKnJcHfFy26ddZnDjhr6Hvg7PwCswtzaRxNTfz
         VNIZ5FNB82DNsIcF3VQEL2JA9X2pVimHUWGaJawLIXP8CiztOUM9AkoKW2t1hGk1mXTO
         /mWIrgLPET3GrsJ4mATwC10vX8uBp13esRNmRkYlIGFLr+NkJCdwTqNrUWCYrmeMt3+/
         9FPBAzFMwR2/qBKeBc/6oPnmuflgbYrejLKz5LWdVYbYAeK5CtvxIQ65F0KXRHCpHPDX
         fgSg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id a18si376728wra.0.2020.03.21.01.46.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Mar 2020 01:46:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.72,287,1580770800"; 
   d="scan'208";a="343142064"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 21 Mar 2020 09:46:01 +0100
Date: Sat, 21 Mar 2020 09:46:01 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: R Veera Kumar <vkor@vkten.in>
cc: Julia Lawall <julia.lawall@inria.fr>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH v3 1/3] staging: rtl8723bs: os_dep:
 Remove commented out code lines
In-Reply-To: <20200321080741.GA1942@tulip.local>
Message-ID: <alpine.DEB.2.21.2003210945070.2522@hadrien>
References: <cover.1584764104.git.vkor@vkten.in> <a62d2fbb77990210b939a5ec99ee27cfa5749a09.1584764104.git.vkor@vkten.in> <alpine.DEB.2.21.2003210832000.2522@hadrien> <20200321080741.GA1942@tulip.local>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

On Sat, 21 Mar 2020, R Veera Kumar wrote:

> On Sat, Mar 21, 2020 at 08:32:49AM +0100, Julia Lawall wrote:
> >
> >
> > On Sat, 21 Mar 2020, R Veera Kumar wrote:
> >
> > > Remove multiple commented out code lines.
> > > Remove blank lines next to them.
> >
> > You don't have the change it, but mentioning removing the blank lines was
> > not really necessary.  It is normal that you should clean up the
> > adjacent whitespace when you clean up the code.
> >
>
> Sorry I can't make out: "You don't have the change it"
>
> So I keep those commented lines or remove them.

I was commenting on your log message, not on your changes.

There was no need to include "Remove blank lines next to them." in the log
message.

julia

>
> But Greg said in comment to patch:
> Again, this is not a long-line comment, it is a code line that is
> commented out. "Remove it in a patch previous to this one please."
>
> Veera
>
> > julia
> >
> > >
> > > Signed-off-by: R Veera Kumar <vkor@vkten.in>
> > > ---
> > >  drivers/staging/rtl8723bs/os_dep/recv_linux.c | 11 -----------
> > >  1 file changed, 11 deletions(-)
> > >
> > > diff --git a/drivers/staging/rtl8723bs/os_dep/recv_linux.c b/drivers/staging/rtl8723bs/os_dep/recv_linux.c
> > > index a6491f163272..271b680e4388 100644
> > > --- a/drivers/staging/rtl8723bs/os_dep/recv_linux.c
> > > +++ b/drivers/staging/rtl8723bs/os_dep/recv_linux.c
> > > @@ -109,11 +109,7 @@ void rtw_os_recv_indicate_pkt(struct adapter *padapter, _pkt *pkt, struct rx_pkt
> > >  			struct sta_priv *pstapriv = &padapter->stapriv;
> > >  			int bmcast = IS_MCAST(pattrib->dst);
> > >
> > > -			/* DBG_871X("bmcast =%d\n", bmcast); */
> > > -
> > >  			if (memcmp(pattrib->dst, myid(&padapter->eeprompriv), ETH_ALEN)) {
> > > -				/* DBG_871X("not ap psta =%p, addr =%pM\n", psta, pattrib->dst); */
> > > -
> > >  				if (bmcast) {
> > >  					psta = rtw_get_bcmc_stainfo(padapter);
> > >  					pskb2 = rtw_skb_clone(pkt);
> > > @@ -123,9 +119,6 @@ void rtw_os_recv_indicate_pkt(struct adapter *padapter, _pkt *pkt, struct rx_pkt
> > >
> > >  				if (psta) {
> > >  					struct net_device *pnetdev = (struct net_device*)padapter->pnetdev;
> > > -
> > > -					/* DBG_871X("directly forwarding to the rtw_xmit_entry\n"); */
> > > -
> > >  					/* skb->ip_summed = CHECKSUM_NONE; */
> > >  					pkt->dev = pnetdev;
> > >  					skb_set_queue_mapping(pkt, rtw_recv_select_queue(pkt));
> > > @@ -234,14 +227,10 @@ static void rtw_os_ksocket_send(struct adapter *padapter, union recv_frame *prec
> > >  		if (rx_pid == psta->pid) {
> > >  			int i;
> > >  			u16 len = *(u16*)(skb->data+ETH_HLEN+2);
> > > -			/* u16 ctrl_type = *(u16*)(skb->data+ETH_HLEN+4); */
> > > -
> > > -			/* DBG_871X("eth, RC: len = 0x%x, ctrl_type = 0x%x\n", len, ctrl_type); */
> > >  			DBG_871X("eth, RC: len = 0x%x\n", len);
> > >
> > >  			for (i = 0; i < len; i++)
> > >  				DBG_871X("0x%x\n", *(skb->data+ETH_HLEN+4+i));
> > > -				/* DBG_871X("0x%x\n", *(skb->data+ETH_HLEN+6+i)); */
> > >
> > >  			DBG_871X("eth, RC-end\n");
> > >  		}
> > > --
>

