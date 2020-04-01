X-GM-THRID: 6809167002234519552
X-Received: by 2002:a05:6830:11d7:: with SMTP id v23mr16691854otq.216.1585733624515;
        Wed, 01 Apr 2020 02:33:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:6750:: with SMTP id w16ls8844892otm.4.gmail; Wed, 01 Apr
 2020 02:33:43 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vveSUYeeP2PBAm9VqyZWfadTXzLMVm5BpSz4BxpbXHQJ4WXsjLJihRS814MPk62E+pCjytm
X-Received: by 2002:a9d:2aca:: with SMTP id e68mr16517074otb.324.1585733623522;
        Wed, 01 Apr 2020 02:33:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585733623; cv=none;
        d=google.com; s=arc-20160816;
        b=xhKp1aTGrThjJmRO1zD/mMqFcaHeA/Ri6HjQIxI/V53t+sjDVTyFruAl8S18LJHnoy
         VGVXD9B4ARcWMzJkayjqxQZvZGXgGQllOhFPVuiyFDhP50pz5BZik+KM+Z6CmJvMVFYq
         Yd9Ma/G8gH26e6neVcv8uvVWKLJvCDT+GewmiEIYwUu1/BiwB6VmAUdXtv1t/YnPDisn
         9atqz74DTJiWFtaCi1323LkAO5TavgLByzsaqgtKxyXfrltrAb8A7b5AUiBFyXNueb5L
         ah4RfIO6+RbOsXM2Nb8p0YzSK6Q2yx0U8gjn2McdozCzHgpwBEWvgd1/5OQBKmrUPhcO
         pYrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=b4e4w9qTN8qoig8YjlPlfpIn0843B9X2LMMCrkl2v2I=;
        b=juanRGThgm0iGmE8w78OggxK0ZcJ+MJz2wx1a1E36hNigeHZMGiHtuVg5f6+B3ofii
         V3JXJ/0W4numyqLaQ82Jyf5w64FuXKMpgYzlFCxZsv+95d2msYzNzU49yygSROHcFYaf
         tVPDYawMK+3c5320rQPnfeLx9EHYAbljmzFC2W759Pi7gA/GYtv1+3mGrG3ulp4ibFhA
         GZaTdk+0Vk43j7vkcKg0FiS1sggo1YiShS6Q4Vi5wCC5BNkY+3xY4zBkizx4xwSI8R7b
         Wd/AWJQc86odApJACabvbo8f54hNHK8JhFmyN2VU3oCoApbBuuM65N23vnsNaHTg2veg
         cC9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=FauALmFC;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m19si150406otn.4.2020.04.01.02.33.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Apr 2020 02:33:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=FauALmFC;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 12AF52077D;
	Wed,  1 Apr 2020 09:33:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1585733622;
	bh=1GaeltaGzdmJiaT4wz3bwdofuxbvAjTsXknmB7MduDA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FauALmFCYGEeqoUM74N9xfQ1W1XVXkU2Y8kQxpRWRy47EzjLzsHZotD6gpbdd4Ztx
	 7c09+qUM9puFWcWxi2XTs+KRbq6WHP2V4p0BlDDSO84THDAgKTgYdKgtazG1AWrItk
	 51ZOCeGMdR+fyaiA+e9Su8vC36DoH+jEQOWzDa5w=
Date: Wed, 1 Apr 2020 11:33:39 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Soumyajit Deb <debsoumyajit100@gmail.com>
Cc: outreachy-kernel@googlegroups.com, manishc@marvell.com,
	GR-Linux-NIC-Dev@marvell.com
Subject: Re: [Outreachy] [PATCH 0/3] staging: qlge: Resolve various warnings
 issued by checkpatch.pl
Message-ID: <20200401093339.GC2055942@kroah.com>
References: <20200328080254.6692-1-debsoumyajit100@gmail.com>
 <20200401085810.GA19697@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200401085810.GA19697@ubuntu>

On Wed, Apr 01, 2020 at 02:28:12PM +0530, Soumyajit Deb wrote:
> On Sat, Mar 28, 2020 at 01:32:51PM +0530, Soumyajit Deb wrote:
> > This patchset resolve coding style and indentation issues reported by
> > checkpatch.pl
> > This patchset add space around various binary operators, remove extra
> > unnecessary blank lines and properly indent a multiline comment for the
> > same file qlge_main.c present under drivers/staging/qlge directory.
> > 
> > Soumyajit Deb (3):
> >   staging: qlge: Add space around operators
> >   staging: qlge: Remove extra blank lines
> >   staging: qlge: Properly indent a multiline comment
> > 
> >  drivers/staging/qlge/qlge_main.c | 30 +++++++++++-------------------
> >  1 file changed, 11 insertions(+), 19 deletions(-)
> > 
> > -- 
> > 2.17.1
> 
> I have submitted this patcset on 28 March but I haven't recieved any
> review on this.
> Is there anything wrong with this patchset?
> 
> Please let me know, so I can correct them and resend the patches if
> needed.

2 days response time is _very_ fast for patches.  Please note that this
is the middle of the merge window upstream, so my response time will be
longer...

thanks,

greg k-h

