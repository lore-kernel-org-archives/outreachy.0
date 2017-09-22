X-GM-THRID: 6468535394097954816
X-Received: by 10.25.202.17 with SMTP id a17mr902358lfg.6.1506075764135;
        Fri, 22 Sep 2017 03:22:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.64.22 with SMTP id n22ls1262304lja.6.gmail; Fri, 22 Sep
 2017 03:22:43 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QD8DJNL6IIhozQvO+zv5FnLb9/vcv0KtWx4j9uNduqppv11bA23hdSyM85em1z8NyeYNoD5
X-Received: by 10.25.216.209 with SMTP id r78mr816105lfi.43.1506075763094;
        Fri, 22 Sep 2017 03:22:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506075763; cv=none;
        d=google.com; s=arc-20160816;
        b=tZfMdfyuxLaDeaNYPGzS13pPHq0aHBWeemUlzkCs63Z3txGZPDuGGmRL+S5iBMM0S/
         5JLytcyZjNwq7IoK6AWvAFsT8pq/mF0U1mbhIoZbl43jnsxDo/hzdwGOFo0lrZa2efau
         l/7uNW8hBKU3i9x4IWVLYVbThlTF5mzRO3YExxU+m+2vqGAJVev+TWgza/GImw4tmTAB
         VJWznwNJ/pbdK9lxLccXStEAaKB6DQUDwY+1dJZe8Y49IIasVTd094m9ccGNAktxbP6R
         NBfOvLVPiIDEp734rz91SWB7aaIgTiE80tBQ7mBWsH0R07Nh29NK3D6WFWDw4ryv5GCn
         6y8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=rokSwrhLArltwnb83LnRLl9OmdR+CMWg+JwRL666Tkg=;
        b=vGFpu9MvjvIM5h8BzJ9j4157iNm1p2IxxSAOesojwDuGfiarl2AqbakZVknpC78hgd
         3DT5DUn8cBh8rHl+jMR4HWdwtaHJj6ofhcfFh0uYCCFYOBzrzI94hJUjXLvgMTDLP2IG
         rWa6eI7U+MjEcRxHMF5gNH6XEr6rPq4hAcRsqzCoNlZsGcVUkmQbw/De3hJcemQbfsTQ
         B/CjMCiClD+fX1A7PGBiSXLuM8F0ZeRoy0zfuem4CgAqt3mA9Wgm/pn8wb7XBNP15oAd
         WUFu2gaekNVv8WmDb3yLN4ZR+Z9lAEx2kBGsSpfD3PchdEd9QpLJ5qyzgjt8H1MMAuoc
         HTSg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id t142si82360wmt.2.2017.09.22.03.22.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Sep 2017 03:22:43 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,427,1500933600"; 
   d="scan'208";a="238384531"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 22 Sep 2017 12:22:42 +0200
Date: Fri, 22 Sep 2017 12:22:06 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aishwarya Pant <aishpant@gmail.com>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8188eu: remove unneeded
 conversions to bool
In-Reply-To: <20170922102201.GB724@aishwarya>
Message-ID: <alpine.DEB.2.20.1709221221540.3170@hadrien>
References: <20170922094052.GA29313@aishwarya> <alpine.DEB.2.20.1709221147330.3170@hadrien> <20170922102201.GB724@aishwarya>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 22 Sep 2017, Aishwarya Pant wrote:

> On Fri, Sep 22, 2017 at 11:47:44AM +0200, Julia Lawall wrote:
> >
> >
> > On Fri, 22 Sep 2017, Aishwarya Pant wrote:
> >
> > > Patch suppresses the following warning issued by coccicheck:
> > > WARNING: conversion to bool not needed here
> > >
> > > Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
> >
> > Acked-by: Julia Lawall <julia.lawall@lip6.fr>
>
> Dropping this patch to include it in a clean up patch set.
>
> Julia, I can include this ack when I add it to the patch set?

Yes, that part of the patch was fine.

julia

>
> >
> >
> > > ---
> > >  drivers/staging/rtl8188eu/core/rtw_mlme_ext.c | 8 ++++----
> > >  1 file changed, 4 insertions(+), 4 deletions(-)
> > >
> > > diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
> > > index 52f31c7..2db2ca6 100644
> > > --- a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
> > > +++ b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
> > > @@ -707,7 +707,7 @@ static int issue_probereq_ex(struct adapter *padapter,
> > >  	unsigned long start = jiffies;
> > >
> > >  	do {
> > > -		ret = issue_probereq(padapter, pssid, da, wait_ms > 0 ? true : false);
> > > +		ret = issue_probereq(padapter, pssid, da, wait_ms > 0);
> > >
> > >  		i++;
> > >
> > > @@ -1283,7 +1283,7 @@ int issue_nulldata(struct adapter *padapter, unsigned char *da, unsigned int pow
> > >  		da = pnetwork->MacAddress;
> > >
> > >  	do {
> > > -		ret = _issue_nulldata(padapter, da, power_mode, wait_ms > 0 ? true : false);
> > > +		ret = _issue_nulldata(padapter, da, power_mode, wait_ms > 0);
> > >
> > >  		i++;
> > >
> > > @@ -1410,7 +1410,7 @@ int issue_qos_nulldata(struct adapter *padapter, unsigned char *da, u16 tid, int
> > >  		da = pnetwork->MacAddress;
> > >
> > >  	do {
> > > -		ret = _issue_qos_nulldata(padapter, da, tid, wait_ms > 0 ? true : false);
> > > +		ret = _issue_qos_nulldata(padapter, da, tid, wait_ms > 0);
> > >
> > >  		i++;
> > >
> > > @@ -1517,7 +1517,7 @@ static int issue_deauth_ex(struct adapter *padapter, u8 *da,
> > >  	unsigned long start = jiffies;
> > >
> > >  	do {
> > > -		ret = _issue_deauth(padapter, da, reason, wait_ms > 0 ? true : false);
> > > +		ret = _issue_deauth(padapter, da, reason, wait_ms > 0);
> > >
> > >  		i++;
> > >
> > > --
> > > 2.7.4
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170922094052.GA29313%40aishwarya.
> > > For more options, visit https://groups.google.com/d/optout.
> > >
>

