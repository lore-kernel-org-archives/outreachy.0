X-GM-THRID: 6617780359505379328
X-Received: by 2002:a1c:8ecb:: with SMTP id q194-v6mr2768695wmd.11.1540907123680;
        Tue, 30 Oct 2018 06:45:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:9152:: with SMTP id t79-v6ls546113wmd.7.gmail; Tue, 30
 Oct 2018 06:45:22 -0700 (PDT)
X-Google-Smtp-Source: AJdET5c4QbLIFte81t5BsUWGQVoIHPIhXdeecHOQ3rgCVnL8qFL0pBSUzKPbiV4Q2rfJZcPaStbM
X-Received: by 2002:a1c:5813:: with SMTP id m19-v6mr1222383wmb.5.1540907122712;
        Tue, 30 Oct 2018 06:45:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1540907122; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ue2OMPUpgfrr/QOJ6JolRHqfgJYpgq5GHQSlC9ks2NWRV5gxGHQmF1K6XEDtxdEf9a
         ReUdFN+UoXnmGyHbfnNqXkF8OSylPKRVRmwLjt1PsEXGY2way8kb/yHIFdOwi0iphl57
         35V3gQRE9Fm3VEvUC8RLExj5jKtA4oqc4+ShRG/e49xnhUxKIxHAsCo9/6yGPUkbSbSG
         +1xkR956Ihy3BVG4Jf17chsrqCfW0ewGaDbqr6J49lDhL2XOocPMHST0nI7xq4/pDscb
         9/NRE8YUPwA5c72+i5ZX9DERr2TJ3VzRx+0yFU+PUo7ZBz54hMQvvJzgfcg+C+VkVkTk
         uAww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=J6/tEjDNkMbybzQS0Zov3mJbsW10uq8VoHtD0bfXEy0=;
        b=ELnUMK4FebPc66ZlscXOcQJ7+yGZ0PBkldXVPPQjdaEthr+TJ01zljn2RCYJB+zrTQ
         xJhR+wQLAqDKo3qyIQM9xOEpl2gTMXTrfziTykI2KTragoHo9vd40t27qM74OdhUWCIp
         WcFpf8u46PwxhNtLxm3FbMjDPeqaf0D5a2ttaUobbLDbwG7zgYJpmzEsea/JB93gRZ2Q
         33C6w2lrabYAXPKAlsxQ2mHx1ZndnWLsyrYhHemvBLCwOuNsuEEylaUW7IgnuaNOItCg
         111t99EauJup0E97ZOJiqnWzJF4UbUz0nzkDyuMMfeHHm4VwcUmAWanhM7vwgOtJ6p0T
         pBQQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=BxybdRAv;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id z62-v6si293196wmc.2.2018.10.30.06.45.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 30 Oct 2018 06:45:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=BxybdRAv;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1540907118; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=JGu/w4TnZw7Zt35YSINrwrIl0+X+YXOKp2MJ1RBU6KtgqAYKlx6raStcoTGVhoev7q1qs2vto54dORcAGYQOMAagnXlEpBMFKUMqqo8+785YStlZOou8+6H5pXOiM+HwKlQFER+Ao/4EUfkGAqzklCr7p1fRiMQaUicrvQSnQXg=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1540907118; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=J6/tEjDNkMbybzQS0Zov3mJbsW10uq8VoHtD0bfXEy0=; 
	b=WTlDxhaWtEsb0/G2cbwNOZpSwCaNswlUsDTfL3+oVBWnyqQ7JljUfawXjY9GG62iufbxBFUUCnfNzlbawdEai130bZgBhw7g10a64wzAPm94Tpk8Sd4zvFB2z/ri4GBIRe9RyNXIpwLAlLPIKPBqMk7n8l3WCNW675+ZTQg6x1Q=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1540907118;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=600; bh=J6/tEjDNkMbybzQS0Zov3mJbsW10uq8VoHtD0bfXEy0=;
	b=BxybdRAvB0ZwPpXf2aWzkpkKkp6eUC2ZMeCHy8SEuqTeibJzsSmJGzWhO+y2CZR+
	J6FB7vAtVSSdwtZnbkzQz1Ydhy2Y7t36yemkkHX3Jk98+0Gn9nBW2Ic9tmw7gd/eXiA
	uCnDyL66wMDPnoPTLd1xxe13mvESlvO0NwS500wM=
Received: from kvasir.local (90.242.56.176 [90.242.56.176]) by mx.zoho.eu
	with SMTPS id 1540906896679640.7023145249391; Tue, 30 Oct 2018 14:41:36 +0100 (CET)
Date: Tue, 30 Oct 2018 13:41:35 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: gasket Create a memory allocation path
Message-ID: <20181030134135.GA13686@kvasir.local>
References: <20181029140731.GA18826@kvasir.local>
 <20181029143116.GA558@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20181029143116.GA558@kroah.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

On Mon, Oct 29, 2018 at 03:31:16PM +0100, Greg KH wrote:
> On Mon, Oct 29, 2018 at 02:07:31PM +0000, Ioannis Valasakis wrote:
> > +err_alloc:
> > +	kfree(interrupt_data);
> > +	kfree(interrupt_data->msix_entries);
> > +	kfree(interrupt_data->eventfd_ctxs);
> 
> Think about the three lines here, and try to find the bug :)

Right, I'll check this. The article from Dan was very useful. Thanks
Julia, Greg and Sasha!

> This is not going to work at all, sorry, please look up what kfree()
> does.
> 
> thanks,
> 
> greg k-h

I am going to resubmit this when corrected. 

ta
ioannis



