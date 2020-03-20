X-GM-THRID: 6806104906273914880
X-Received: by 2002:aca:d645:: with SMTP id n66mr5122636oig.66.1584687619138;
        Fri, 20 Mar 2020 00:00:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:c441:: with SMTP id u62ls1699713oif.9.gmail; Fri, 20 Mar
 2020 00:00:17 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vt3WeJuRTnbpia5+6tqzEuBgZXHraQtNpvxmCSM1DerYcriS7dcJbmzwp2QApergqy4uSlZ
X-Received: by 2002:aca:3089:: with SMTP id w131mr5421354oiw.121.1584687617868;
        Fri, 20 Mar 2020 00:00:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584687617; cv=none;
        d=google.com; s=arc-20160816;
        b=Pv8LjYkkYx2IUwNQsDFE6Yg0D4wQIVgt798fpTbWM/hNVkxHEvYAT+bLMLHepBjbh/
         4QAVsEDPEePfkFYY29EnJ7/VpqC8pTP3vnoC0EUy78My1ySZvoZ1uT/HuorylbY9Yrvs
         MmNFYwWDyevQ5G8Wfrr5Z/9b5dOkC22pS5I1cwMforCQM59wiQRp9zBaJb4dCyW72Ccn
         /+4abuTkOff2s+f7JtfRxEBcgAkMHVzscPQtjj8nbJqhir/UFjxSUwhOvdkyH/mSph6x
         IMMty49hLZSYATe3Fn/jguMSTnP+s3NKS/rkUSIXBqXoKkeAhNUj9Ptaok/P+yvn2P4r
         q9QQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=RQsohB4weXpwqp5YyZVY0Z93hwQ4aNQkGJC0oYkAaJs=;
        b=Z4mYj1IWgw6gK/2vvnYZue8PzsSgG2bZOs5fyuEsi2RE1HGYKR0kbo2z3I/i2rOXlX
         IxIpTsuHeMb1IcBuh3vpuQ13Uv2Jp9R+bUZuhekyPxBcQiX1esq+jgjOSEFJBD8+ctHZ
         tmRkvGy4nztJkyl+yJtXM1uWm0617fUD/OkRVjCHeuEML6EHGR+/MPycH/Jjj4FRGvop
         ZNTx32q/gV3UGF4NNsZFVutsuyUoLCIxSbSeq5Pa+LO6VFbMTpY5nrkW9S3yuovgGYmN
         1X3giCoyuEBT67iWDcI75dOqhCwX0OvDQbpXFBE49BepbbRvzwsp4Ka5zOi6xHP4sTr1
         bYmA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=T3GLF4Re;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w2si317320otl.3.2020.03.20.00.00.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Mar 2020 00:00:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=T3GLF4Re;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 674D320774;
	Fri, 20 Mar 2020 07:00:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1584687616;
	bh=Wx2NDRaC1QOdWxleWTMWNTMNxcUwA7KWDbnvfFS0LDQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=T3GLF4ReYRXEGtgMaJH6bIWeZqh4swar4eDyLwC1tXgWSsnJZq7axU4qvLBeq2fUj
	 oiMhPMNaNCZDFLKTAuhwwjDR6442ZZ/+RQG8b5Q3/t4TA0yhiLqtF6wuHr8WZ9es7L
	 KNzfddH4n/Etw6SyXHgGDTpsC1TWFp6RyAivoZio=
Date: Fri, 20 Mar 2020 07:59:50 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Gokce Kuler <gokcekuler@gmail.com>
Cc: outreachy-kernel@googlegroups.com, linux-usb@vger.kernel.org
Subject: Re: [PATCH 0/2] Avoid multiple line dereference
Message-ID: <20200320065950.GC307955@kroah.com>
References: <cover.1584668081.git.gokcekuler@gmail.com>
 <20200320065906.GB307955@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200320065906.GB307955@kroah.com>

On Fri, Mar 20, 2020 at 07:59:06AM +0100, Greg KH wrote:
> On Fri, Mar 20, 2020 at 05:03:03AM +0300, Gokce Kuler wrote:
> > merge a line -> with a line ending with a sign
> > 
> > merge a line -> with a line ending with a sign
> > 
> > Gokce Kuler (2):
> >   staging: rtl8712: Avoid multiple line dereference
> >   staging: rtl8712: Avoid multiple line dereference
> 
> You should put the subsystem and driver in this 0/2 email subject as
> well.
> 
> But the big problem of this (have you been reading other patch
> submissions here?) is that you sent 2 patches that did different things,
> yet had the same subject line, which is not ok.
> 
> Please make them unique.

And why is this 2 patches anyway?  SHouldn't it just be 1 patch as you
are doing 1 logical thing to the file?

Do not make multiple patches were a single one is all that is needed.

thanks,

greg k-h

