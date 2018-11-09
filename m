X-GM-THRID: 6621495393645494272
X-Received: by 2002:a17:906:4ccb:: with SMTP id q11-v6mr431867ejt.8.1541771315773;
        Fri, 09 Nov 2018 05:48:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:d9c3:: with SMTP id v3-v6ls433206eds.6.gmail; Fri, 09
 Nov 2018 05:48:34 -0800 (PST)
X-Google-Smtp-Source: AJdET5cTNER2uEduAj6SppPrQiLCCYglRevu1NkKU1wkJJq+4gJURcayCcI1UN5Jyas2+eNk/ylh
X-Received: by 2002:aa7:c687:: with SMTP id n7-v6mr533056edq.11.1541771314816;
        Fri, 09 Nov 2018 05:48:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541771314; cv=pass;
        d=google.com; s=arc-20160816;
        b=X4DrrYQZ5WijHa8l6YgR98KSzdmru56JEKlisGotTJBykV/jAJEivLC01MmuejVp8t
         kLs/Vj5NBN4SlcgIl8CitjYQoKdrjbAPTiKW501mFiv6uZta0Fv2KOUaEKwQIj3EiQah
         xucKO8ctO58FiF6BIc3blhb5OsNQZoKXd2Z14ftrrq6Metiy+SKIVMvZsz6wSxLpFDof
         83DfEStFN9dpwzTVxpdNd8+T1BRWbG6lNodhzi/wB+Nrm0govRewOmZmE6/j5ApWB7KE
         qFrWBbPGShfUKiu95iBPIC0JpyOStcEkU4dxDlhoaZluc2aageF5OhArCqUWHrreRawt
         CX6A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=H5Wq93NFFt4qf74HqyHRdTck80M/Yt+nQTtdmW7pcN8=;
        b=nOzIClvJVgi0s9a2Zkf6hOTe3sPgYADkO5HkegDmUX+7CjIciFBhDkZtrPHnEJwV+3
         If5ET8h7oWu0ccPLzTRzlopk8+fFdaiOX1qieyMkqC06wafvxaMWQ0K+Z2DLtSl/Mxs6
         Ne5mjbZOnnu61D9bmNEKab2Pvs9K5L6OZRP6MKaDNmzZGjHCXIoRV3bMKNddlrK7asTa
         YsghKqWdgxptPppwKtBNXWN3Oywh2jqIwuZYORcm3dHXJcW/zvVBAprPD6o9Q+M0piiD
         CaoiuCvRHkY47fa8WYGJWDHZqIfr0RJrTug5RnL2+7fOUQtiVPk0scvW7IT12fcsBeBJ
         /KsA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=SJ7oSVII;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id b12-v6si278829edd.5.2018.11.09.05.48.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Nov 2018 05:48:34 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=SJ7oSVII;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541771312; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=XEWYVfAco+KVCYfcBoiv+XDtrVeka76eSpSzzayPylt8vnOWs27YqEJcaMNfpyyNRsm/b8FuiVZhTIDZ7NE7lWHck3aZ4kAxsTle9EXb3LiVWs9OJhC6Qoo3zcrzjYhq7HEAAcvbktLxGxigy4h8E6i1Aru4Zb2aYcc/BbQ4mNM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541771312; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=H5Wq93NFFt4qf74HqyHRdTck80M/Yt+nQTtdmW7pcN8=; 
	b=NvWRzGoeP+1/J8vdvU4uzM/vpI7EUX+ZkgNHvhyVWlFrAXPh7bUKWtGepyXKegW4x9BF8m5joavWrQigZ7YNLK8ramaQnLlCLxEgFK53jpGM7JQwWVa4h4raV3j+jynoUr4uxgJBZvxp55usEOLuMMuuAAoe9vc9Dpw1m06n7Pk=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541771312;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=804; bh=H5Wq93NFFt4qf74HqyHRdTck80M/Yt+nQTtdmW7pcN8=;
	b=SJ7oSVIIWj+pYBFSCIp9tLGs72iKE2WB+IQR8MMeL8gl9cCPvieS8qYpLMpWSVZk
	EZ+RU9AjsMXtO9qlU5kketaQTkSmY0uaIn2atD1H3Px4wui1hxYezzk+g8UFjiE6M+o
	B9ciGJPUSA+2jiD6qp2lEsyDEPsHWA15UzlRxETE=
Received: from kvasir.local (88.151.153.114 [88.151.153.114]) by mx.zoho.eu
	with SMTPS id 1541771311518301.0445015053666; Fri, 9 Nov 2018 14:48:31 +0100 (CET)
Date: Fri, 9 Nov 2018 13:48:29 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2 00/15] staging: greybus: fix coding style issues
Message-ID: <20181109134829.GA24642@kvasir.local>
References: <cover.1541686942.git.code@wizofe.uk>
 <20181108150238.GB10650@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20181108150238.GB10650@kroah.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

On Thu, Nov 08, 2018 at 07:02:38AM -0800, Greg KH wrote:
> On Thu, Nov 08, 2018 at 02:23:46PM +0000, Ioannis Valasakis wrote:
> > Changed in V2:
> > 	- Change the subject title
> 
> Are you sure?
> 
> > 
> > Ioannis Valasakis (15):
> >   staging: greybus: shorten comparison to NULL
> >   staging: greybus: align parameters to parentheses
> >   staging: greybus: add a blank line after declaration
> >   staging: greybus: fix SPDX License Identifier
> >   greybus: staging: align arguments with parentheses
> 
> Nope, still looks incorrect :(
> 
> Can you fix this up and resend a v3?
Showing the moon and looking at the finger. I didn't notice this as I
was looking for the main PATCH subject. Getting better every time :) 

Thanks greg for your time.

Best
ioannis
> 
> thanks,
> 
> greg k-h


