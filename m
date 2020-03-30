X-GM-THRID: 6807884729429262336
X-Received: by 2002:a37:a854:: with SMTP id r81mr44236qke.384.1585576556020;
        Mon, 30 Mar 2020 06:55:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aed:2ca1:: with SMTP id g30ls6915043qtd.1.gmail; Mon, 30 Mar
 2020 06:55:54 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vs5QYiG7LGpy+FfFY7nk3NPhoe8eEChIK7m4fhX7vZ96i1oN+040Pj5nMYMUohzMK7Sebrb
X-Received: by 2002:ac8:366d:: with SMTP id n42mr63773qtb.180.1585576553896;
        Mon, 30 Mar 2020 06:55:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585576553; cv=none;
        d=google.com; s=arc-20160816;
        b=tQGEgUBQeaFujBLFeyFame0gtEqj1yJZ/bD6cu+4x1V/KmV6zacl4cTpCRykqu8ejb
         VXxWoq+xEkaY5p0ecSID7fRDV2wgBSC+x1czfwCBlNZrIXKT3NAT/Lf/C1+imkdjYWMy
         kceCwaF3RRScXyzAhaV3Z2Klkqj+2nwWMgcv1oWgTUOZCltFdscBmTZ/5ejijzWSnkNL
         4u0Qv0xolFmR+vCE5U34m0Yzaq5zuTz2bI+C+Dbp4JgyW6DvDZDHySx3gpnnf/Y22Ujy
         7U4bfydabkeyDoW7TL5GV6v3TaFONMj8lOMQ+c9fJMG1MX5IQBguTWP8hkwkfew4Gwdv
         1eXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=bE0I9JNfskMsY0d+oVSss15e5oCK2MlSAiAJunOZLTU=;
        b=YhH+bGIZYlZ90sImIVAbpIw2vxttmac6PR+3r3nq5vWeSzzmplQGxosuCe3qe1VcON
         uPFfNsKVvKwCSGs83liimwbeDFde/hsXffp79ScLbUjBN03OhlYkZRppVCIk9VK/hl5J
         RuAXza6x6blhkuNsWEhpJeReRC99AC/72CyF7xsFrmczJ+6guHpsKaDdWc19aTF7CzBF
         JW008M3/RGf0YhthA1vUya3s+ADKb/xxJQCyGRyoXAvHBQL7GnDaRfkDxrosvc6WPt2y
         f1YC46gIMO/+EkVbxGhASL8OHz/BfeIiKzmvjZM9Exbp0bd/DkmCflYAIbiiB9wtxyGX
         gvKw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=GqQ4EbH4;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [63.128.21.74])
        by gmr-mx.google.com with ESMTPS id z126si896838qkd.2.2020.03.30.06.55.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Mar 2020 06:55:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) client-ip=63.128.21.74;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=GqQ4EbH4;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585576553;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=bE0I9JNfskMsY0d+oVSss15e5oCK2MlSAiAJunOZLTU=;
	b=GqQ4EbH4lwFs5Lo0og5e3Xjz5cGoOhqyUdskESS+mqC/UdRX7CgfUyzAHqkyLL4oG+vze/
	xCf8WxN+KKU2WuIHg2NE5nTA6QiMdrQsPt3+ES3EcfjudlEUUo4RCOu4lpLF1JzCwE45NY
	a/xdJF5cpnFs29Ga0wH1Tcms8BMGQ9w=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-122-N0VIcR-5Pg6CtTJSR7wX5A-1; Mon, 30 Mar 2020 09:55:51 -0400
X-MC-Unique: N0VIcR-5Pg6CtTJSR7wX5A-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 62902107ACCC;
	Mon, 30 Mar 2020 13:55:50 +0000 (UTC)
Received: from elisabeth (unknown [10.36.110.63])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B147D60BE2;
	Mon, 30 Mar 2020 13:55:48 +0000 (UTC)
Date: Mon, 30 Mar 2020 15:55:43 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: Sam Muhammed <jane.pnx9@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 outreachy-kernel@googlegroups.com, Julia Lawall <julia.lawall@inria.fr>
Subject: Re: [Outreachy kernel] [PATCH v2 1/7] Staging: kpc2000: kpc_dma:
 Remove comparison to NULL.
Message-ID: <20200330155543.5f52b955@elisabeth>
In-Reply-To: <415066fb503764a528fa5cf4d681c5cd25065d24.camel@gmail.com>
References: <cover.1585143581.git.jane.pnx9@gmail.com>
	<f344afba0a8bb0413941a63678688435f04a96b4.1585143581.git.jane.pnx9@gmail.com>
	<20200330030346.6420ddc6@elisabeth>
	<415066fb503764a528fa5cf4d681c5cd25065d24.camel@gmail.com>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Mon, 30 Mar 2020 06:48:21 -0400
Sam Muhammed <jane.pnx9@gmail.com> wrote:

> On Mon, 2020-03-30 at 03:04 +0200, Stefano Brivio wrote:
> > On Wed, 25 Mar 2020 10:26:36 -0400
> > Sam Muhammed <jane.pnx9@gmail.com> wrote:
> >   
> > > Comparison to NULL been used across the driver,
> > > remove them and use (!var) instead.
> > > 
> > > Checkpatch.pl: CHECK:
> > > Comparison to NULL could be written "!desc"... etc
> > > 
> > > Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
> > > ---
> > > Changes in v2:
> > > - None.
> > > 
> > >  drivers/staging/kpc2000/kpc_dma/dma.c            |  2 +-
> > >  drivers/staging/kpc2000/kpc_dma/fileops.c        | 12 ++++++------
> > >  drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.h |  4 ++--
> > >  3 files changed, 9 insertions(+), 9 deletions(-)
> > > 
> > > diff --git a/drivers/staging/kpc2000/kpc_dma/dma.c b/drivers/staging/kpc2000/kpc_dma/dma.c
> > > index 51a4dd534a0d..4bfbc717bc07 100644
> > > --- a/drivers/staging/kpc2000/kpc_dma/dma.c
> > > +++ b/drivers/staging/kpc2000/kpc_dma/dma.c
> > > @@ -236,7 +236,7 @@ int  count_descriptors_available(struct kpc_dma_device *eng)
> > >  	struct kpc_dma_descriptor *cur = eng->desc_next;
> > > 
> > >  	while (cur != eng->desc_completed) {
> > > -		BUG_ON(cur == NULL);
> > > +		BUG_ON(!cur);
> > >  		count++;
> > >  		cur = cur->Next;
> > >  	}
> > > diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c b/drivers/staging/kpc2000/kpc_dma/fileops.c
> > > index 40525540dde6..5eb6c5f24feb 100644
> > > --- a/drivers/staging/kpc2000/kpc_dma/fileops.c
> > > +++ b/drivers/staging/kpc2000/kpc_dma/fileops.c
> > > @@ -124,7 +124,7 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
> > >  		pcnt = count_parts_for_sge(sg);
> > >  		for (p = 0 ; p < pcnt ; p++) {
> > >  			// Fill out the descriptor
> > > -			BUG_ON(desc == NULL);
> > > +			BUG_ON(!desc);
> > >  			clear_desc(desc);
> > >  			if (p != pcnt-1) {
> > >  				desc->DescByteCount = 0x80000;
> > > @@ -203,11 +203,11 @@ void  transfer_complete_cb(struct aio_cb_data *acd, size_t xfr_count, u32 flags)
> > >  {
> > >  	unsigned int i;
> > > 
> > > -	BUG_ON(acd == NULL);
> > > -	BUG_ON(acd->user_pages == NULL);
> > > -	BUG_ON(acd->sgt.sgl == NULL);
> > > -	BUG_ON(acd->ldev == NULL);
> > > -	BUG_ON(acd->ldev->pldev == NULL);
> > > +	BUG_ON(!acd);
> > > +	BUG_ON(!acd->user_pages);
> > > +	BUG_ON(!acd->sgt.sgl);
> > > +	BUG_ON(!acd->ldev);
> > > +	BUG_ON(!acd->ldev->pldev);  
> > 
> > I've seen some tool reporting this (perhaps Coccinelle?): with
> > x == NULL, BUG_ON(!x) causes a kernel panic just like dereferencing x.
> > So the first statement in e.g.:
> > 
> > 	BUG_ON(!acd);
> > 	BUG_ON(!acd->user_pages);
> > 
> > is redundant. This change wouldn't be related to this patch, though.
> >   
> Please correct me if i got this wrong:
> 
> Does it mean that explicitly stating BUG_ON(!x) case to cause a kernel
> panic is not necessary since its already being dereferenced, and
> dereferencing it is stated to cause a kernel panic already?

Yes... it took me a bit longer to understand this compared to Julia's
explanation :) but I think it's correct.

-- 
Stefano


