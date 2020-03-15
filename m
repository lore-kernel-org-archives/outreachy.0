X-GM-THRID: 6803023005726277632
X-Received: by 2002:aca:bc86:: with SMTP id m128mr15290457oif.11.1584303843884;
        Sun, 15 Mar 2020 13:24:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:b98a:: with SMTP id j132ls3767880oif.3.gmail; Sun, 15
 Mar 2020 13:24:02 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsKK52DzYMwHir5U2cKg1zCm0BfULOt8vImSHlsylTBlPR/XCRP0/lDKbyWRs45w9sG84W5
X-Received: by 2002:a54:4496:: with SMTP id v22mr15094378oiv.132.1584303842644;
        Sun, 15 Mar 2020 13:24:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584303842; cv=none;
        d=google.com; s=arc-20160816;
        b=ScT1MgLKc2DYWpP4PZG2DF1cfagfGhZSKJpb6NwQSWIfTGbJHbF0/FPbqchJeyO7Oq
         pcvJIS9ki7in6Uxt1wvlNF4bVeYqf5jITXIUDMdF41wAWpyQ1BWcOsH0XwwcwZmxmNRG
         4l2SzDDmQKzjC67w5OfNw7tfG9qWMekgoJVhinMjwhU1GUFx9XzZNWb7WjMEr/H7VhiN
         Z51QjCedOSbTPBHh0cSpoeUh+F41B+J8EwwS58bVmHh0IK7mdOIr1boJmgO6cOvUD2ty
         jn9MAjHCxJQXZOKGFsvNqzWaIZvJ2a1cx9S0KF53tZ1n2NakBx2ZU68ZGPG8M+xd7EAB
         03nA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=ntl0vj19b9p//ikBOqw2hGPl2Pwjrf6Wt+xh8EQy3/A=;
        b=E6GKPwOEdlzLhmDV/KJnrxsYbWQ28UMGMs2nsFFoE5GM7c81AjE55VkWEaS5XbEekC
         +4xXKHamq8EtcWHB4RVeCpY57PaUrqVEXdje9cw2/6g+wrtEehtWEaa6HQu+ITPwqpsE
         whZRY4Yp4YeVdI2DlGC4KtrhybQieWMi08qpRZw2GfNNgJbi1uqH/vboYJErBquMlEa8
         8GdVH8fAbuz4zhG1CKp8Uen6UjgTE07Lmorns3xFtYd6M9sz3+av+6Yg4I9HKlLk0x1j
         JTaU0A5+9UYcCN498A8ENDU2XqLgN85iEdM7hu60plBwZJ0URe2PkgFltMOgKptoYsAv
         pqcQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=FSFcuMCN;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by gmr-mx.google.com with ESMTPS id o11si966572otk.0.2020.03.15.13.24.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 15 Mar 2020 13:24:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.120 as permitted sender) client-ip=207.211.31.120;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=FSFcuMCN;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584303841;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ntl0vj19b9p//ikBOqw2hGPl2Pwjrf6Wt+xh8EQy3/A=;
	b=FSFcuMCNgv12iTZ8jScSn5r/GAijtriD61LeREPG83rbnByToFeIYmmoGhDUkBiF1mNYsD
	NQv6wbe7HSdSIRc9/QTI2BR6wPkLrdLzsSrfCs+7EBcg7ke85Xugw2g6t4PCqRVI+IrOaR
	8Z9oSm8uSPAbUYfF9E/P+Efixk3mf2Q=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-135-L6uNEMdGMMKZLSmoceZ-Cg-1; Sun, 15 Mar 2020 16:24:00 -0400
X-MC-Unique: L6uNEMdGMMKZLSmoceZ-Cg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DF64ADB30;
	Sun, 15 Mar 2020 20:23:56 +0000 (UTC)
Received: from elisabeth (ovpn-200-18.brq.redhat.com [10.40.200.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A820694967;
	Sun, 15 Mar 2020 20:23:51 +0000 (UTC)
Date: Sun, 15 Mar 2020 21:23:45 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: Kaaira Gupta <kgupta@es.iitr.ac.in>
Cc: Julia Lawall <julia.lawall@inria.fr>, Ian Abbott <abbotti@mev.co.uk>, H
 Hartley Sweeten <hsweeten@visionengravers.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 5/5] staging: comedi: drivers: use
 unsigned int
Message-ID: <20200315212345.611a20cd@elisabeth>
In-Reply-To: <20200311221122.GA29568@kaaira-HP-Pavilion-Notebook>
References: <20200311184327.25338-1-kgupta@es.iitr.ac.in>
	<20200311184327.25338-6-kgupta@es.iitr.ac.in>
	<alpine.DEB.2.21.2003112150260.6093@hadrien>
	<20200311221122.GA29568@kaaira-HP-Pavilion-Notebook>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Thu, 12 Mar 2020 03:41:22 +0530
Kaaira Gupta <kgupta@es.iitr.ac.in> wrote:

> On Wed, Mar 11, 2020 at 09:51:10PM +0100, Julia Lawall wrote:
> > 
> > 
> > On Thu, 12 Mar 2020, Kaaira Gupta wrote:
> >   
> > > Change i's type to unsigned instead of signed. It's always positive.
> > > Reported by coccinelle.
> > >
> > > Signed-off-by: Kaaira Gupta <kgupta@es.iitr.ac.in>
> > > ---
> > >  drivers/staging/comedi/drivers/ni_mio_common.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/staging/comedi/drivers/ni_mio_common.c b/drivers/staging/comedi/drivers/ni_mio_common.c
> > > index 06ed4b1dd875..034cf8dafaf0 100644
> > > --- a/drivers/staging/comedi/drivers/ni_mio_common.c
> > > +++ b/drivers/staging/comedi/drivers/ni_mio_common.c
> > > @@ -888,7 +888,7 @@ static void ni_sync_ai_dma(struct comedi_device *dev)
> > >  static int ni_ai_drain_dma(struct comedi_device *dev)
> > >  {
> > >  	struct ni_private *devpriv = dev->private;
> > > -	int i;
> > > +	unsigned int i;  
> > 
> > I'm not sure this is useful.  The value is not going to b lare enough to
> > require an unsigned.  And loop indices often have type int.  
> 
> Sorry, I didn't know that. I'll take care to see the largest value as
> well before making such changes. Thanks!
> 
> Should I resend the patchset by removing this patch or leave it as it
> is?

I think you should remove this patch, in the three cases where you have
that 'const int timeout = 10000' it's never needed to switch to an
unsigned value.

If you were to write that code from scratch, I would recommend that the
"10000" should be a #define, and all that register polling should be
consistent, I don't see any reason behind those differences, and the
udelay(5) feels like an abuse: Documentation/timers/timers-howto.rst is
a quick, nice read.

However, I'm quite sure you don't have that specific hardware to test
any change like that, so it's probably better to leave it alone :)

-- 
Stefano


