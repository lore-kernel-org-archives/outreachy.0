X-GM-THRID: 6659640267598987264
X-Received: by 2002:a0c:d486:: with SMTP id u6mr15999436qvh.56.1550571401123;
        Tue, 19 Feb 2019 02:16:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:92c7:: with SMTP id c7ls7798514qvc.7.gmail; Tue, 19 Feb
 2019 02:16:40 -0800 (PST)
X-Google-Smtp-Source: AHgI3IbevHA96edPM7MUR4zoCSYwz4QB46oVKBamnVl6RrI6tpG2eg9XW4Z/rEwU0H6NW8wVnYvr
X-Received: by 2002:a0c:9b8a:: with SMTP id o10mr15244134qve.8.1550571400533;
        Tue, 19 Feb 2019 02:16:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550571400; cv=none;
        d=google.com; s=arc-20160816;
        b=iqDaxZZRVZV8WntZjeDVl7ZNBgdoJZCLD1hLNwyv8ve6wkNe2PTylQ8jhQV90ECGjA
         u2Ch632/wyWm+wtpV17CiFOQ+ZBZbhtZsMCEpKF45i0mR1t9vnpolUiqBkHG3a2QPvJ/
         9sH1dr3oKZJPTVdPFPEeU1jtEoLAg1GgR8fDsfyf9gtBJ38U2F5isMzoTHDpNalb9gAL
         sIihKMkrp8GPO4AF4AR49d6YkE8QZ63bM6r4YRW25LzZDfyr9TZkjTpSoYh0V8JrbSTc
         n61WPKqDRDdhgveEzH9vzB6C6f86qcWHNLNoebQTMb7BHz/oyx2X7nXYJzLzwiDJVf9U
         2TkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=dRx072G+RsyRgTYd923PXpkl84MxRT1mpCqQQS+i2Cg=;
        b=JI4jZ1LVx1DMj1fJ6EdJ+13SxoOaYxmBMakLGGELdr3gEpBXdhefVzvx8NPIFMvEIf
         VDAeoZhJWR8Ap1rBZYZN+u2rFIldecKcezisuRnGBUdEyvziUJfnrelG9c68MiypHGQl
         mQCUtD0y8/Nb9EAVhxYm9f9Wdfl5M3WnaJC3Cf9n7EMJ4bd7rKPTtFyHm0rr4mmt3DDI
         3Wpfn40cW5ZoKf+7zFaOHIjsuHLaee3zks7wckmdYZWl7HTS+t+wF17yoaEhSr3/x78X
         8WtcIfq5cOpa4y1SCebukGg9bGbe0dLIO9dJ0jLIt+0TUNXA3SWEXgh9ttnLT/SRxB8c
         kUPg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=zuRGFUMQ;
       spf=pass (google.com: domain of srs0=z1b0=q2=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=Z1B0=Q2=linuxfoundation.org=gregkh@kernel.org"
Return-Path: <SRS0=Z1B0=Q2=linuxfoundation.org=gregkh@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o7si715744qte.3.2019.02.19.02.16.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Feb 2019 02:16:40 -0800 (PST)
Received-SPF: pass (google.com: domain of srs0=z1b0=q2=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=zuRGFUMQ;
       spf=pass (google.com: domain of srs0=z1b0=q2=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=Z1B0=Q2=linuxfoundation.org=gregkh@kernel.org"
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id E94502177E;
	Tue, 19 Feb 2019 10:16:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1550571399;
	bh=vCW/Pecfs9J6/CJ5YtKv2yOsCkbyqqoh2InIhLM20qI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=zuRGFUMQ74TBxOVSrEj0LuY3Q8mO0csAMGcqBawoOYzbRzVrwlriO/KrccKWCtJMI
	 cO6lxFrtj/RQyda7rkOK7r+ZMMCyuzyjd9gM+4DnBSF1KgIwe5iO91q2sGKbFZwEdt
	 SjacD92NDV6CmaU0w5wO+vMNTAMaW/ncnPkJXQAk=
Date: Tue, 19 Feb 2019 11:16:36 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Bhanusree Pola <bhanusreemahesh@gmail.com>,
	outreachy-kernel@googlegroups.com,
	Gao Xiang <gaoxiang25@huawei.com>, Chao Yu <yuchao0@huawei.com>
Subject: Re: [Outreachy kernel] [Outreachy Kernel][PATCH v2] staging: erofs:
 match alignment with open parentheses
Message-ID: <20190219101636.GA31241@kroah.com>
References: <20190219092525.GA4474@bhanusree-MacBookAir>
 <alpine.DEB.2.21.1902191027150.8574@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1902191027150.8574@hadrien>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Tue, Feb 19, 2019 at 10:27:47AM +0100, Julia Lawall wrote:
> 
> 
> On Tue, 19 Feb 2019, Bhanusree Pola wrote:
> 
> > Align code with open parantheses to improve the readability.
> > Issue found using checkpatch.pl
> 
> The subject line and loge message look better now, but I wonder why you
> still have [Outreachy kernel] twice?

It looks like it was added by both the poster, and the mailing list :(

The one I got only had one copy, so I can take it as-is.

thanks,

greg k-h

