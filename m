X-GM-THRID: 6667588004037525504
X-Received: by 2002:a05:620a:14ad:: with SMTP id x13mr22343012qkj.34.1552420118692;
        Tue, 12 Mar 2019 12:48:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:cf84:: with SMTP id v4ls2490404qkl.2.gmail; Tue, 12 Mar
 2019 12:48:38 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxK+dPF2NF/q/fJYKYOPuCzUOgLlL5eLbCw9SdPfnI8XM0apdcXFwDFykOwJbffnhZsNmPz
X-Received: by 2002:a37:d150:: with SMTP id s77mr22174435qki.35.1552420118099;
        Tue, 12 Mar 2019 12:48:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552420118; cv=none;
        d=google.com; s=arc-20160816;
        b=ztCq8Mge4MMAY2Izd1YL2eJdzwoHSeZJhECWKv9B9K6FNaOZJpFqz7jCcRm10ruuoa
         3mEikCzIvmZL81wfUwFlEhwbwYVg1+yzh4//+7m0J/ZGE5whLvQ1aulze/pWIXo/O+3g
         8WE31mTudlSCO8nhU1xLRoax9R0vXJHik3iRBk5DvU8kPGSV2bzhS2VyVbndQE4iNkMU
         sJmAHIUb1MMqPr6kapIPDSOpBcC9hhWRaGsjIc7cuE1o7bMDRG6dzG96+DOPB68KZ0TL
         tUwPjXZnOt98OsXCApUgEDoIeP9aD6rynk0D0sziItrtNSq0EGSR7zqUvV2WqTW+ovU7
         /ukg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=99cDTj3jTsDIjarl2hAL53I7KH2IxAWQ8t1B+x2cPqY=;
        b=ziAuVRDA+JZds1DmZEf9GCIHiXh5W+5GVlByqehKhzAXa785ZnK75rN+lC9H6d46NY
         5RR4XMrBv1II8/MFT5XH9XqHFNQno6JDejHPdW8u0G86JtjzPS5Lf3/Ldsunhi+HPC0n
         AlJSIKohFqdLONRXtVHzgw+CF+GSzi+vMwoFe3e4fY3YtlVkUrRoAvCzlZchv9oMo3Xz
         OFG85PC2Uh88zEnMjhOCGyR2bdNTUKUIzz1HncvZm1DQ9GKNW/Q1R7SqTTaY+jgkRf3/
         xuB/1DrdzeJ7ZUaM0nFEOlBzRNc/62GsXVFk7M0SeQk1Dp0GHc/TYpXYCwyNkQ/b8XSC
         X6EA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=H6sC0nRh;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e12si272199qtg.5.2019.03.12.12.48.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Mar 2019 12:48:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=H6sC0nRh;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [104.133.8.98])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 0440B2087C;
	Tue, 12 Mar 2019 19:48:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1552420117;
	bh=cx0smOEhKGszTZ8xCSg4tXDbdCfyaPVtjTNqgq9mDTo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=H6sC0nRhYogK2RPHeVBlKWlbU2HUJmaUV+uu5krScQIH27l7onT9ZJ/fdlgLq87b9
	 jFm4gPeO2R8scFgKZCZ3fsbgFvUXbjgYqjGN9g1kdXCB7QScQaE2z2Z1sVJIoadnv4
	 9T9y1eaDIldgx62ToZSIu6sKSbIhW6nxeQW8yYRs=
Date: Tue, 12 Mar 2019 12:48:36 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Sanjana Reddy <sanjana99reddy99@gmail.com>
Cc: outreachy-kernel@googlegroups.com, Julia Lawall <julia.lawall@lip6.fr>,
	sanjana99reddy99@gmail.con
Subject: Re: [Outreachy kernel] Re: [PATCH] Staging: rtl8188eu: rtw_recv.c:
 fixed a space indentation issue
Message-ID: <20190312194836.GB6580@kroah.com>
References: <CAO-bXGAEHi=_uf7jD+1_+iNhx594rRAak_OBfTVpGenhVUJ2Xg@mail.gmail.com>
 <20190312194137.GA29260@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190312194137.GA29260@kroah.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Tue, Mar 12, 2019 at 12:41:37PM -0700, Greg KH wrote:
> On Wed, Mar 13, 2019 at 12:56:34AM +0530, Sanjana Reddy wrote:
> > Fixed a space in 2 lines which removed warnings.
> > Signed-off-by: Sanjana <sanjana99reddy99@gmail.com>
> 
> Please put a blank line between the changelog text and your
> signed-off-by: line, otherwise the tools will choke :(

Also we need a "real" name here, not just a first name.  And your email
address should be correct, it's bouncing right now :(

thanks,

greg k-h

