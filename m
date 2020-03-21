X-GM-THRID: 6806098614327181312
X-Received: by 2002:a2e:9e16:: with SMTP id e22mr7548725ljk.220.1584756867326;
        Fri, 20 Mar 2020 19:14:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:3188:: with SMTP id i8ls1301792lfe.4.gmail; Fri, 20
 Mar 2020 19:14:25 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvHHZTOGqBs8alasO1lwsghVbmwyJarIK53O2yarB0jpw35rcRYsizhrYEpNSvBAa41+kM5
X-Received: by 2002:ac2:5508:: with SMTP id j8mr6969123lfk.31.1584756865636;
        Fri, 20 Mar 2020 19:14:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584756865; cv=none;
        d=google.com; s=arc-20160816;
        b=kptHs0z0lTTATZvf/KJYpO2ewt9agLR3teSY1Pf9/LhZgpsnqc/dw4HM6yPlSjgHoT
         mA6lbAmWIeQr4XXfmEKcRGbkXhluH8JUcantUTqlXrRoByJGorqwbNYVaFuer2rpnWNj
         RfROlpqWwo10qihR/vjBRQUKqYO3HjCStIEmKzkFhVMHIi5KOyg3BnOcbTSNNQkc/0Zl
         78KJX6uJb7MVvEwvtx0iX8+voMbR3pa7ofAJgMzEPRxceDJfAxyTqIAl6mGrienZfXlZ
         xo/hdZqEdrwK2QvpZQTNVRa0HkdT5FYFfbyANGNN52SPOLXPy2KU2cm5YQPev14eCqZm
         QI1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=lBFSK5utBRI0S/zog6UxJ/8LO7U81mmHxoy708j0p4Y=;
        b=yL5XXDcbXQXhdWjFH4wslz3YFKJK+hdxh9O9PIjFt9FFDuSj+m9slvXbsu+RVZWgkc
         zN7QjGvwSTG45gX/UJvhXhVLUTXJ4TPFcPxeq3bVXook7J/cfctKVwfSb+JcVNd9BKL9
         ScqP18sUc1koYyOge4Nh8T8gKXhKT57iq8F9wexFnNhr8Xv/POZK9khj097IXDFq3Yte
         EwddEc346Emh8azCMsZRMPP2VDMBOuJfvxg238TZx33TZFYV/PFmT0sOigSk5SHhNyeq
         piw9/XWMGs+MHrmCyE5Z6LBpLB0WQ5kaq2/DUwfl0A7if0Kc0CZLHm0frWw8wUpL52j/
         hw2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id q17si208811lfe.4.2020.03.20.19.14.25
        for <outreachy-kernel@googlegroups.com>;
        Fri, 20 Mar 2020 19:14:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 22815 invoked from network); 21 Mar 2020 02:14:23 -0000
Received: from unknown (HELO tulip.local) (vkor@vkten.in@117.249.250.241)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 21 Mar 2020 02:14:23 -0000
Date: Sat, 21 Mar 2020 07:44:18 +0530
From: R Veera Kumar <vkor@vkten.in>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH 1/2] staging: rtl8723bs: os_dep: Correct long line
 comments
Message-ID: <20200321021416.GA569@tulip.local>
References: <cover.1584667932.git.vkor@vkten.in>
 <05a62157d9d940a15ea369cd3739bc0d084aeb3f.1584667932.git.vkor@vkten.in>
 <20200320140516.GA643325@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200320140516.GA643325@kroah.com>
User-Agent: Mutt/1.10.1 (2018-07-13)

On Fri, Mar 20, 2020 at 03:05:16PM +0100, Greg Kroah-Hartman wrote:
> On Fri, Mar 20, 2020 at 07:08:22AM +0530, R Veera Kumar wrote:
> > Correct long line comments to respect 80 character per
> > line limit.
> > 
> > diff --git a/drivers/staging/rtl8723bs/os_dep/recv_linux.c b/drivers/staging/rtl8723bs/os_dep/recv_linux.c
> > index a6491f163272..87090af7d776 100644
> > --- a/drivers/staging/rtl8723bs/os_dep/recv_linux.c
> > +++ b/drivers/staging/rtl8723bs/os_dep/recv_linux.c
> > @@ -35,7 +35,8 @@ void rtw_os_recv_resource_free(struct recv_priv *precvpriv)
> >  
> >  			if (memcmp(pattrib->dst, myid(&padapter->eeprompriv), ETH_ALEN)) {
> > -				/* DBG_871X("not ap psta =%p, addr =%pM\n", psta, pattrib->dst); */
> > +				/*
> > +				 * DBG_871X("not ap psta =%p, addr =%pM\n",
> > +				 * psta, pattrib->dst);
> 
> Again, this is not a long-line comment, it is a code line that is
> commented out.  Remove it in a patch previous to this one please.
>

Okay I understand now that it is not a valid comment describing how
it functions.

But is not that the developers intention was to keep this to remind
him of doing something.

Or should he should have kept in his codebase and not here.

Also should I create a patch to remove this commented out code lines
in the same patch series or a new one.

Veera

> > +				 */
> >  
> >  				if (bmcast) {
> >  					psta = rtw_get_bcmc_stainfo(padapter);
> > @@ -124,7 +131,10 @@ void rtw_os_recv_indicate_pkt(struct adapter *padapter, _pkt *pkt, struct rx_pkt
> >  				if (psta) {
> >  					struct net_device *pnetdev = (struct net_device*)padapter->pnetdev;
> >  
> > -					/* DBG_871X("directly forwarding to the rtw_xmit_entry\n"); */
> > +					/*
> > +					 * DBG_871X("directly forwarding to the
> > +					 * rtw_xmit_entry\n");
> 
> Same here.
> 
> thanks,
> 
> greg k-h

