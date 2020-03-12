X-GM-THRID: 6802937311305662464
X-Received: by 2002:ad4:49c6:: with SMTP id j6mr6814413qvy.68.1584009783482;
        Thu, 12 Mar 2020 03:43:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:5b41:: with SMTP id p62ls2632085qkb.9.gmail; Thu, 12 Mar
 2020 03:43:01 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuBiR+6Qn03ueS7t6RZBnm5CmV7lLzEyavaMs/wupda21g2UaFiqCMkDxr5R6RQbLNuQgxD
X-Received: by 2002:ae9:dec7:: with SMTP id s190mr6511836qkf.303.1584009781795;
        Thu, 12 Mar 2020 03:43:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584009781; cv=none;
        d=google.com; s=arc-20160816;
        b=HcO6wWj+A+St3njoDtrvfKgi7uPK5SqCJ7036sqXolgiMQh0reBzfpwtAGYmppd/8M
         Rw3ovwY4wT3pE5/VM+nL13PLIX7Xi9FyPj8O0rJYK/Nd16fHZT+djXPX6TyBWrdCa/P0
         AhnZlheTeg03HMBC9vq024vEBE6NddA7jhW63a270tjlSG+pO8IIzf5XPnM53pZCP+Np
         tk29bBfLdTWjpl5OUah/seJWjkcJAimvTSAgFhhRhWFtMe64t6YW4NfjQXAH2hQ96nqQ
         MovDbSXueEP2OIHSVw/2mqE71uPNSf00+bui8i/rPUaCJobuU4KFlpFokkeKHBzgGJ5H
         5m8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=fbddB2iO5FQ0fkBZ0rgLKlx7XTDocpEFEreQV0vSsw8=;
        b=jP2oOD10FNMDLW1d9/aucesNpUoT2PpHyhW+IkvpyypW/prmCUCRyJXLlw4e6TKVpB
         N6MAc3j10SQ4eSdeLV5oslOUyXVrtzFr/E3v/MTOY5PGDrxyux0veMWmi3pU8NdLjXoX
         kSJMHrZc3eWVFclyfoI1CfJq2cPcuB11Y3KzrimpwiPu2NHK5s1yqqZgIk5UZirAib5Z
         m/5V1sqSU/wRi08nHtDPmtKoMqnSpCP3YOFOs4YCcZWi0r524/BlEO9S8YDj6pHKotpm
         2YXZCWcXD0HUXM0WH2z1kpdbtnKACBxL+HfFjUYP6SgsxNoJ9syAj87Iytf7x9ugM4Pc
         8UWA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=YNSzFl1S;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by gmr-mx.google.com with ESMTPS id 198si248933qkh.7.2020.03.12.03.43.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Mar 2020 03:43:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.120 as permitted sender) client-ip=205.139.110.120;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=YNSzFl1S;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584009781;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=fbddB2iO5FQ0fkBZ0rgLKlx7XTDocpEFEreQV0vSsw8=;
	b=YNSzFl1SzEiVViaKqzGyBZ/Gq6w5a1P5upN+9hAYIxJRL2QyHcXSKTPuEt4F2sUHgaDFFG
	Mg9Xb2HHLeSRuMxz4dVV0fAbwWAvfEd5Rfupo6e/Dbr3IIWyeUTSU7WCRSsG1RM6qju2um
	zu18WAdE3tGXxGnNh5ore9H6/YeecJ0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-406-uTyO-JpKNzKN1F3_ZYAEwg-1; Thu, 12 Mar 2020 06:43:00 -0400
X-MC-Unique: uTyO-JpKNzKN1F3_ZYAEwg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A7C0D189F760;
	Thu, 12 Mar 2020 10:42:58 +0000 (UTC)
Received: from elisabeth (ovpn-200-18.brq.redhat.com [10.40.200.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C265791D87;
	Thu, 12 Mar 2020 10:42:54 +0000 (UTC)
Date: Thu, 12 Mar 2020 11:42:48 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: Veera <vkor@vkten.in>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Sudip Mukherjee
 <sudipm.mukherjee@gmail.com>, Teddy Wang <teddy.wang@siliconmotion.com>,
 outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: sm750fb: makefile variable
 longline fix
Message-ID: <20200312114248.547750ef@elisabeth>
In-Reply-To: <20200312011444.GA1928@localhost>
References: <20200311131056.GA4361@tulip.local>
	<20200311175839.24085e54@elisabeth>
	<20200312011444.GA1928@localhost>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Thu, 12 Mar 2020 06:44:46 +0530
Veera <vkor@vkten.in> wrote:

> On Wed, Mar 11, 2020 at 05:58:39PM +0100, Stefano Brivio wrote:
> > 
> > On Wed, 11 Mar 2020 18:41:02 +0530
> > R Veera Kumar <vkor@vkten.in> wrote:
> >   
> > > -sm750fb-objs		:= sm750.o sm750_hw.o sm750_accel.o sm750_cursor.o ddk750_chip.o ddk750_power.o ddk750_mode.o
> > > -sm750fb-objs		+= ddk750_display.o ddk750_swi2c.o ddk750_sii164.o ddk750_dvi.o ddk750_hwi2c.o
> > > +sm750fb-objs		:= sm750.o sm750_hw.o sm750_accel.o sm750_cursor.o
> > > +sm750fb-objs		+= ddk750_chip.o ddk750_power.o ddk750_mode.o
> > > +sm750fb-objs		+= ddk750_display.o ddk750_swi2c.o ddk750_sii164.o
> > > +sm750fb-objs		+= ddk750_dvi.o ddk750_hwi2c.o  
> > 
> > ...and while this fixes the long lines for sure, a more common way is
> > to use backslashes at the end of the lines. Compare it with other
> > similar cases: you don't need to do something like:
> > 	drivers/staging/wfx/Makefile
> > 
> > but what's done for example in:
> > 	drivers/staging/comedi/Makefile
> >   
> 
> Yes. I knew it. But thought preserving maintainer style may be right.

As a general rule, absolutely, but I wonder if we can even define a
"style" here at all. It's also the single occurrence of this, in this
file, and for this driver altogether.

-- 
Stefano


