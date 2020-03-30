X-GM-THRID: 6807590102219358208
X-Received: by 2002:a63:e053:: with SMTP id n19mr11907993pgj.64.1585549510314;
        Sun, 29 Mar 2020 23:25:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:150:: with SMTP id 77ls11386232pgb.0.gmail; Sun, 29 Mar
 2020 23:25:08 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vu/DRjOhQYXi9yUuMAKvWiXJkmRf/5LIWlgXkiOODMNf1UY7YJLXP5YN7tyebZA4kvL1r7h
X-Received: by 2002:a63:574c:: with SMTP id h12mr11756554pgm.424.1585549508657;
        Sun, 29 Mar 2020 23:25:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585549508; cv=none;
        d=google.com; s=arc-20160816;
        b=wIK6+5t62dMrMDALKbNJGtIrh131fD6RKYxFVrBr0eCKm/xznH6chzHUJGhecCXWJX
         HoE4MzpYszHxBZhyXWstT0wB688NegPMvykUCA2XXDr1fhEVkcpHuUaKoPqcimWQm9/l
         w+6cT5uvxIu28KdeCiMzXJxRnwNuoSyWxemw94fP3r0F2UK1udMG8FEfIJ+sURMOKQi1
         hEvRKfP6kD6fdoNr3Bdgqc6GYmZ/YU9gf1PcYJFDawvOTKPUaK+ea1oAYcDX6pWr3Hnz
         vwd8l2ue5k+klWu88mMYBty9wI2CkeWCme+Uzp5K/XLwVKS2K2ncGrxG+I1roFdzRj0m
         MIOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=tWjeZBbv/OwSihMkXRUj6nNS7pW+DPoM+taI/4PzwlU=;
        b=PifOClbUlUpEEgY93frExzjcaPZYDBl6PKAOvGMuM3yxHe83ddeSaGWYZUba2E+cxe
         Zr+knnA9QnwHSNu5ECmUUchYJcCOQF49S+CtHZiNJ1314KaQlEbTXSJ7YFxik6QmuttE
         Wb9cedaxMVUlkrnlpxXK+KE791tN/GbTl32ZLY615D/FwTP05rzYBHNmOwpjj6h6ejB4
         kGRZKXdygkJhZosRRAl8v37LjRyfRiXVpSYwoJtmwtft3uOHH40h6bNjSmVuhd+/AOHS
         mGkZZN762bB2xEKrnE27ERa0xQCCPEZsgCJzma3qUUmBlRETxUF7iwo7oPW4FVVDYq/E
         MbVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=CZaUkh4k;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [63.128.21.74])
        by gmr-mx.google.com with ESMTPS id 188si863886pfb.1.2020.03.29.23.25.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 29 Mar 2020 23:25:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) client-ip=63.128.21.74;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=CZaUkh4k;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585549507;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=tWjeZBbv/OwSihMkXRUj6nNS7pW+DPoM+taI/4PzwlU=;
	b=CZaUkh4kUYe/tNyeTYBuvAlM5elICzToAZ6GHsu5VNDpI3O9gMdaqF1ixHe16JlaDjNMq6
	yor3eiB2+JN04ZqI6shIFnUZWsWvE3OCRXMGUBKZQ4apabhv0kRlUhKB66FK1XxZl88b3e
	hHH21fdaoS9JWMNju/d0NZPGS0vWXZ0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-82-jPDtZJF-NHae7_9u3cQVvg-1; Mon, 30 Mar 2020 02:25:05 -0400
X-MC-Unique: jPDtZJF-NHae7_9u3cQVvg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D2A948017CC;
	Mon, 30 Mar 2020 06:25:04 +0000 (UTC)
Received: from elisabeth (unknown [10.40.208.4])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 01FB660BE2;
	Mon, 30 Mar 2020 06:25:02 +0000 (UTC)
Date: Mon, 30 Mar 2020 08:24:57 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: Briana Oursler <briana.oursler@gmail.com>
Cc: gregkh@linuxfoundation.org, forest@alittletooquiet.net,
 outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: vt6655: Break up
 function call with long line.
Message-ID: <20200330082457.3da782b2@elisabeth>
In-Reply-To: <86fdd60730d374a151aeabd092f571bc11e2f655.camel@gmail.com>
References: <20200324113525.GA2286293@kroah.com>
	<20200324183812.79411-1-briana.oursler@gmail.com>
	<20200330030229.2e4b468d@elisabeth>
	<86fdd60730d374a151aeabd092f571bc11e2f655.camel@gmail.com>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Sun, 29 Mar 2020 20:21:24 -0700
Briana Oursler <briana.oursler@gmail.com> wrote:

> On Mon, 2020-03-30 at 03:02 +0200, Stefano Brivio wrote:
> > On Tue, 24 Mar 2020 11:38:12 -0700
> > Briana Oursler <briana.oursler@gmail.com> wrote:
> >   
> > > Update matches style found elsewhere in file.
> > > Issue found by checkpatch: line over 80 characters.
> > > 
> > > Signed-off-by: Briana Oursler <briana.oursler@gmail.com>
> > > ---
> > >  Changes in v2:
> > > 	- Move '+' operator to end of line.
> > > 
> > >  drivers/staging/vt6655/device_main.c | 5 ++++-
> > >  1 file changed, 4 insertions(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/staging/vt6655/device_main.c
> > > b/drivers/staging/vt6655/device_main.c
> > > index 0442f71494b2..5c86cc60eb5c 100644
> > > --- a/drivers/staging/vt6655/device_main.c
> > > +++ b/drivers/staging/vt6655/device_main.c
> > > @@ -443,7 +443,10 @@ static bool device_init_rings(struct
> > > vnt_private *priv)
> > >  
> > >  	/*allocate all RD/TD rings a single pool*/
> > >  	vir_pool = dma_alloc_coherent(&priv->pcid->dev,
> > > -				      priv->opts.rx_descs0 *
> > > sizeof(struct vnt_rx_desc) + priv->opts.rx_descs1 * sizeof(struct
> > > vnt_rx_desc) + priv->opts.tx_descs[0] * sizeof(struct vnt_tx_desc)
> > > + priv->opts.tx_descs[1] * sizeof(struct vnt_tx_desc),
> > > +				      priv->opts.rx_descs0 *
> > > sizeof(struct vnt_rx_desc) +
> > > +				      priv->opts.rx_descs1 *
> > > sizeof(struct vnt_rx_desc) +
> > > +				      priv->opts.tx_descs[0] *
> > > sizeof(struct vnt_tx_desc) +
> > > +				      priv->opts.tx_descs[1] *
> > > sizeof(struct vnt_tx_desc),  
> > 
> > Reviewed-by: Stefano Brivio <sbrivio@redhat.com>
> > 
> > Two notes:
> > 
> > - it's a bit unusual to post a new patch version as a reply of a
> >   comment to a previous version -- did you read about this somewhere?  
> 
> I think I basically misunderstood the normal use case of 'in-reply-to'. 
> Rereading that section of the first patch tutorial, I definitely
> misread it. I've been resending all my patches as replies. I'll change
> that up.

Ah, I see now. By the way, you can also refer to
Documentation/process/submitting-patches.rst -- it might be more
explanatory than the first patch tutorial. This, in particular, is
covered by section:

	15) Explicit In-Reply-To headers

> > - a * x + b * x = (a + b) * x  
> 
> Wow, yes. I will try to think more critically about context, it seems
> so obvious now. Should I update it, or is it too late in the process?

No, I don't think you should update it, your patch is fine, that might
be perceived as an unrelated change, and that's also why I gave my
Reviewed-by. I was just suggesting a further clean-up.

> Is there a 'too late'? Thank you,

If the maintainer has already merged your patch, well, it's "too late"
in the sense that you simply need to post another patch.

Ideally, you would update your copy of the git tree just before you
restart working on it. If it's not there, reply to your patch asking
for it to be discarded, proceed updating it and re-post. It might also
be that the maintainer has merged it in the meantime, in which case
they will tell you and you'll need to rebase.

If the patch is already there and you find a mistake, post a follow-up
with a Fixes: tag (see submitting-patches.rst for that).

-- 
Stefano


