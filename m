X-GM-THRID: 6802879895263248384
X-Received: by 2002:a92:af8e:: with SMTP id v14mr2769816ill.150.1583930696164;
        Wed, 11 Mar 2020 05:44:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:924d:: with SMTP id e13ls411576iol.0.gmail; Wed, 11 Mar
 2020 05:44:54 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsboUy338skNSeGjKCnP4zeVEuqxrF4ZOpysFtUYIGN4PiuWKy+JQaI7Bba72UVQv9wgitV
X-Received: by 2002:a6b:f60d:: with SMTP id n13mr545942ioh.147.1583930694730;
        Wed, 11 Mar 2020 05:44:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583930694; cv=none;
        d=google.com; s=arc-20160816;
        b=LSH55xxpDRdcTEgoz3onfQ6MJXHn2DRFxgJNqI6BEOcgp0WNUQzvsOKmrnLqkqGin6
         iM+Og+ylqjbascNIEP/QPetfDxnUduOkriOhRxFS+Er1NBgU4n8yb8JftelmjJmVEy24
         iYXTjuw45vHZuz3FkNGk0p8glig45yy/wY7ruBITCf8FGv3/vPvf44xETZoCdjtgFnTL
         78N2jpTjttmVi0txSNQGFOrn62tFUvftybYCWGYxJ9NrHcawBRd6W90G8TZkVLhF+8Nh
         Kzny8Ncol9vG0sepeBmKD4eKeXl5pz2si69rZi33P//DJAVCtySlEVboGbDUbSfgilib
         DmNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=JdpT0xDiu7P04T29/YZnc8WO35BGQsnDL0Yg8PQGwVQ=;
        b=dLewCdhob/6KbHxCeAPjA31bH1nkvCMXlP8YjXOme+iPDy/bQHJ4wYhdCWFLtbg5GK
         ZaaTVo3LHK6944wMgZBEp9crXzpUvB/AThD2RV7OOfXay02/b5ZSFuFRpWdJFMteBdTl
         g3cc//mZ6hmRoHZwLepgWaU9mTo00mNsnf29fJuf1TZkgsXgUXpoTXM75CaICDst81W/
         gQnd7Utrrc8A8Z49avhStqEmC7Pb5O+LrAPneYkpVDvm5arCEAHSrpilGPBFlJXY18Uy
         iO8vmR1gUB01S2Fpx8JD3wAHvKm8Pmi6S/XX/uV+gKvpiHeQkDZlxhYmabPfDqd0nJIZ
         QuBg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=YMKTZeyC;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by gmr-mx.google.com with ESMTPS id e7si67078iof.4.2020.03.11.05.44.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Mar 2020 05:44:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.120 as permitted sender) client-ip=207.211.31.120;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=YMKTZeyC;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1583930693;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=JdpT0xDiu7P04T29/YZnc8WO35BGQsnDL0Yg8PQGwVQ=;
	b=YMKTZeyCQbKHnT9wLVKSEC6ES14LoehkMkz+Oxh4bePDmt15LVwVFlMGare1cNrPmmqUSd
	m1wBAUrQRbuql1wT688emc7dxPi3DF3sQW8a8i0k/JWW/ibBXMZg6qcypPC93tr05kyoII
	OkXcPoW1VjxSQqGy9IYVxRVfVeT5zqI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-309-2tEJUi7RPouq5VshDyZa3w-1; Wed, 11 Mar 2020 08:44:40 -0400
X-MC-Unique: 2tEJUi7RPouq5VshDyZa3w-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 61A338010EB;
	Wed, 11 Mar 2020 12:44:39 +0000 (UTC)
Received: from elisabeth (ovpn-200-42.brq.redhat.com [10.40.200.42])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 34C68101D486;
	Wed, 11 Mar 2020 12:44:36 +0000 (UTC)
Date: Wed, 11 Mar 2020 13:44:18 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
Cc: manishc@marvell.com, GR-Linux-NIC-Dev@marvell.com,
 gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 4/4] [Outreachy kernel] staging: qlge: qlge_ethtool.c:
 remove an unneeded variable
Message-ID: <20200311134418.468f571a@elisabeth>
In-Reply-To: <CAJyzNhmYR0e2Z6YMsfcMdt81zDEn+ReapnPs=PpMaxOMVgANxA@mail.gmail.com>
References: <cover.1583918265.git.payalskshirsagar1234@gmail.com>
	<cf99101e09f79788fd87ad9ed455c5ef363b261f.1583918265.git.payalskshirsagar1234@gmail.com>
	<20200311130807.02e32fc8@elisabeth>
	<CAJyzNhmYR0e2Z6YMsfcMdt81zDEn+ReapnPs=PpMaxOMVgANxA@mail.gmail.com>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Wed, 11 Mar 2020 17:50:35 +0530
Payal Kshirsagar <payalskshirsagar1234@gmail.com> wrote:

> On Wed, Mar 11, 2020, 5:38 PM Stefano Brivio <sbrivio@redhat.com> wrote:
> 
> > On Wed, 11 Mar 2020 14:58:15 +0530
> > Payal Kshirsagar <payalskshirsagar1234@gmail.com> wrote:
> >  
> > > Remove unneeded temporary local variable, cleanup suggested by  
> > coccinelle.  
> > >
> > > Signed-off-by: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
> > > ---
> > >  drivers/staging/qlge/qlge_ethtool.c | 5 +----
> > >  1 file changed, 1 insertion(+), 4 deletions(-)
> > >
> > > diff --git a/drivers/staging/qlge/qlge_ethtool.c  
> > b/drivers/staging/qlge/qlge_ethtool.c  
> > > index 592ca7edfc44..e15f9723b5c0 100644
> > > --- a/drivers/staging/qlge/qlge_ethtool.c
> > > +++ b/drivers/staging/qlge/qlge_ethtool.c
> > > @@ -692,7 +692,6 @@ static int ql_set_pauseparam(struct net_device  
> > *netdev,  
> > >                            struct ethtool_pauseparam *pause)
> > >  {
> > >       struct ql_adapter *qdev = netdev_priv(netdev);
> > > -     int status = 0;
> > >
> > >       if ((pause->rx_pause) && (pause->tx_pause))
> > >               qdev->link_config |= CFG_PAUSE_STD;
> > > @@ -700,9 +699,7 @@ static int ql_set_pauseparam(struct net_device  
> > *netdev,  
> > >               qdev->link_config &= ~CFG_PAUSE_STD;
> > >       else
> > >               return -EINVAL;
> > > -
> > > -     status = ql_mb_set_port_cfg(qdev);
> > > -     return status;
> > > +     return ql_mb_set_port_cfg(qdev);  
> >
> > Here, you're also removing a newline that is typically inserted before
> > a second return (or the last one in a function) for readability, or
> > whenever there are two logically distinct branches, same in 3/4.
> >  
> 
> Thanks for the suggestion.
> I thought there is no need to keep the newline as is:D

Have a look at some "sane" examples (especially outside of
drivers/staging), maybe that helps getting a picture...

> But I did not understand what do you want me to do, patch is okay or need
> to be resend by adding a newline for readability:)

I would say you need to re-send the series, because 3/4 and 4/4
actually impair readability in their current form.

Note that I gave my Reviewed-by: on another patch of yours, not on
this series.

Another note: from the cover letter, it's apparent that "[Outreachy
kernel]" is part of commit titles. It shouldn't be, that's only a
prefix (git format-patch --subject-prefix) for email.

> 
> payal
> 
> And in 1/4, you might want to add one. In 2/4, there's no need.
> >
> > --
> > Stefano
> >  

One note about quoting: read above. Who wrote what?

I see you're using GMail, which is fine, by all means, but:

- you shouldn't send HTML emails to kernel lists. Especially with
  projects using patchwork
  (example: https://patchwork.ozlabs.org/project/netdev/list/) this
  has a big potential to mess things up

- you should fix your quoting: a sentence I wrote needs a "> >" prefix
  there, otherwise it seems to come from you, and I'll get confused.

That is, I suggest that you set up an email client as also covered by
the tutorial. The GMail web interface is probably not ideal. The
tutorial suggests 'mutt', but it's not mandatory. I'm using claws-mail
to send you this e-mail and for my work in general.

There are other graphical or text-based clients (Evolution, pine,
sylpheed, KMail, many others) that can also be used for this purpose. I
would suggest that you look at screenshots, maybe play with some of
them, find one you're comfortable with, and set it up.

-- 
Stefano


