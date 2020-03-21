X-GM-THRID: 6806098614327181312
X-Received: by 2002:adf:d4ce:: with SMTP id w14mr16319418wrk.101.1584776121433;
        Sat, 21 Mar 2020 00:35:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:56d2:: with SMTP id m18ls2554712wrw.3.gmail; Sat, 21 Mar
 2020 00:35:20 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vscCHmpxsffSZhwjW/0h4nht5UZ6P5pGu8JqqpTR9XMgLJEmYQr5dFtPVXSyDR/ZjCgBPve
X-Received: by 2002:a5d:414f:: with SMTP id c15mr17250650wrq.60.1584776120085;
        Sat, 21 Mar 2020 00:35:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584776120; cv=none;
        d=google.com; s=arc-20160816;
        b=HVLU0brSR/HMDXfEMpj+JHsdpWzFcdi5jDJ7cF+CApJRTAZqS8RhtbMLeEjLce1B1v
         9xQqqpFugG2d7ikl+gOWk1p3MP0wwW/fNvqk2tS5+wJJHcwlVD+5rx98x6pkvHJjG8iN
         FxOBwFxGDHsWRL/39MExq4whBIHadHn8wZ/kEvcFquGkMU9Z21V4wgn+T5FAW0asDsNk
         mVBTOT2l76pqpeRH7uUQ0z6XfagfOVHDTQwiCVKbyTufr5orhSjFjufTydCT60lgZtYc
         DP8vWhEu31UjapfcSCsnlD/PuCWTTRTtKQUUkgHFJsqDW9yK/C2jlY5iQAmSqLb1LyK5
         n3tQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=pZQDGMCIa6DQb3/EwSdCwrxyN/0fc3FixTzMBhuWuQQ=;
        b=PrUbAkP0JEauqoLPPqyZ4tbTZV0hBjhc5fhkeaiDJoGNef8bH8AFG7qIDb/U25Jsmk
         zSqpffBDOu7wAlsxlbLbTqSom5bw5T3qjJx7kGD2QJrVrZKeBuIGZrw6EAHM+TR8fTaR
         N0Bwk+CSeSOJ+Q0tDd4n2ZPYgsCj+g1K9SUi+rwcM59P4jhHcz43bFp1lRu7YkvlTfvM
         HUCNiV1/Cw6nQhpQS/H/CSbrP+Pur5Erkxg5WteQddQfzpZAVvYo9a7oIjSFpxz6CC1q
         apNQU9UWuC5xtnA8ffzzGZal8nPmhOApK486OqR2B9x5YSU++3AC/pF87CAJP55XU2+e
         mMJg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id n9si368349wmi.0.2020.03.21.00.35.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Mar 2020 00:35:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.72,287,1580770800"; 
   d="scan'208";a="441462339"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 21 Mar 2020 08:35:19 +0100
Date: Sat, 21 Mar 2020 08:35:19 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: R Veera Kumar <vkor@vkten.in>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: [PATCH 1/2] staging: rtl8723bs: os_dep:
 Correct long line comments
In-Reply-To: <20200321021416.GA569@tulip.local>
Message-ID: <alpine.DEB.2.21.2003210833310.2522@hadrien>
References: <cover.1584667932.git.vkor@vkten.in> <05a62157d9d940a15ea369cd3739bc0d084aeb3f.1584667932.git.vkor@vkten.in> <20200320140516.GA643325@kroah.com> <20200321021416.GA569@tulip.local>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 21 Mar 2020, R Veera Kumar wrote:

> On Fri, Mar 20, 2020 at 03:05:16PM +0100, Greg Kroah-Hartman wrote:
> > On Fri, Mar 20, 2020 at 07:08:22AM +0530, R Veera Kumar wrote:
> > > Correct long line comments to respect 80 character per
> > > line limit.
> > >
> > > diff --git a/drivers/staging/rtl8723bs/os_dep/recv_linux.c b/drivers/staging/rtl8723bs/os_dep/recv_linux.c
> > > index a6491f163272..87090af7d776 100644
> > > --- a/drivers/staging/rtl8723bs/os_dep/recv_linux.c
> > > +++ b/drivers/staging/rtl8723bs/os_dep/recv_linux.c
> > > @@ -35,7 +35,8 @@ void rtw_os_recv_resource_free(struct recv_priv *precvpriv)
> > >
> > >  			if (memcmp(pattrib->dst, myid(&padapter->eeprompriv), ETH_ALEN)) {
> > > -				/* DBG_871X("not ap psta =%p, addr =%pM\n", psta, pattrib->dst); */
> > > +				/*
> > > +				 * DBG_871X("not ap psta =%p, addr =%pM\n",
> > > +				 * psta, pattrib->dst);
> >
> > Again, this is not a long-line comment, it is a code line that is
> > commented out.  Remove it in a patch previous to this one please.
> >
>
> Okay I understand now that it is not a valid comment describing how
> it functions.
>
> But is not that the developers intention was to keep this to remind
> him of doing something.

In general, commented out code is not wanted.  It could be found in the
git history if needed.  You can also use git blame to see how long the
code has been there.  If it has been there a long time, it seems less
likely to be needed.  Finally, this is debugging code.  If someone needs
that in the future, they can easily re-add it, with precisely the
information that they are trying to debug for.

julia


>
> Or should he should have kept in his codebase and not here.
>
> Also should I create a patch to remove this commented out code lines
> in the same patch series or a new one.
>
> Veera
>
> > > +				 */
> > >
> > >  				if (bmcast) {
> > >  					psta = rtw_get_bcmc_stainfo(padapter);
> > > @@ -124,7 +131,10 @@ void rtw_os_recv_indicate_pkt(struct adapter *padapter, _pkt *pkt, struct rx_pkt
> > >  				if (psta) {
> > >  					struct net_device *pnetdev = (struct net_device*)padapter->pnetdev;
> > >
> > > -					/* DBG_871X("directly forwarding to the rtw_xmit_entry\n"); */
> > > +					/*
> > > +					 * DBG_871X("directly forwarding to the
> > > +					 * rtw_xmit_entry\n");
> >
> > Same here.
> >
> > thanks,
> >
> > greg k-h
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200321021416.GA569%40tulip.local.
>

