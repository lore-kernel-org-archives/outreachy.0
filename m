X-GM-THRID: 6467212349549838336
X-Received: by 10.46.43.93 with SMTP id q90mr27543lje.3.1505801420508;
        Mon, 18 Sep 2017 23:10:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.2.28 with SMTP id 28ls364726ljc.5.gmail; Mon, 18 Sep 2017
 23:10:19 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QCElgdocbf2bLeQUVpuSSaWSlBARt0PAN7+3PCbw+1QO1JfP+DSwMAFdov1D7IBS+kjNOdu
X-Received: by 10.25.155.140 with SMTP id d134mr34254lfe.28.1505801419243;
        Mon, 18 Sep 2017 23:10:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505801419; cv=none;
        d=google.com; s=arc-20160816;
        b=QD7dhJFzBzSTS/tnvucoaBX4mRD/yJjAEeg71YGEVBMvlm7r0IX9F8HqhDKPHSGuxD
         d4FmkRrlbcxracbU4TRdUc9Yf92a7SHEHVbMLQtkgapZ+TsrBvkxrCyIFO5sqkoYzCjF
         gLWFGeb5pyVFmL8kjwBcLlsju2t2yySH3KPXG39ajdT+4ZjzVa9iEGFZ6evJQrUDn0SK
         pOoEWDbViawGXa2Hezjlui1D3mKjwz1T3517VxpRSfkGZgx+qprynovR2Vs8Z09f/XrZ
         RI306YSxcawl2GTT3VU1/L48Xyc1J+FGs7AXH0QtP3L25kf6V4QHcaHYOvwZNSxMgL3w
         ea/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=DyLKn0vZ5TWKA5u3ds0im/h/8WYpww4nGmzcvDkdLmY=;
        b=ovSBvN3xqXYSf3+EKWJqbH3N8Zf1kicL1DlMtrJE/tcK9m691y9a5jiKHoaXhQu8t9
         QZpdjmwd48kvyBwbdfpVJRIeQEa5B4RguajYs9TbWCAtDc6NuocjwnVCtLWVjw3kVh0j
         vVYIkKATolgH/2pIK4KoxrbAjhI7AufurQ+b/FO/nlILNdMpbAjYSzv6Mrvp+hPjy8vW
         nIOOG6fDWcOadYpWLrWK2Nq+UIttFJLMkQiaQziyEjqnmyqsHjq2oQfS0v2k7F70myY6
         TE6bEb1LLOcwtinNOwWNFRciPv97dsp2Z9w7SdWp4Q8ggYOetJg9zJAj1Q3Wd2kDb7+Q
         VbyQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id l133si73069wmb.3.2017.09.18.23.10.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Sep 2017 23:10:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12253-150.w90-92.abo.wanadoo.fr [90.92.67.150])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id C5C8D8FF;
	Tue, 19 Sep 2017 06:10:14 +0000 (UTC)
Date: Tue, 19 Sep 2017 08:10:19 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Georgiana Chelu <georgiana.chelu93@gmail.com>
Cc: outreachy-kernel@googlegroups.com, mchehab@kernel.org
Subject: Re: [PATCH] Staging: media: atomisp: pci: Fix style issues
Message-ID: <20170919061019.GB1628@kroah.com>
References: <20170918200649.vpfscgyeuibkvifi@fireworks>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170918200649.vpfscgyeuibkvifi@fireworks>
User-Agent: Mutt/1.9.0 (2017-09-02)

On Mon, Sep 18, 2017 at 11:06:49PM +0300, Georgiana Chelu wrote:
> Improve the coding style by fixing the following warnings/errors:
> 	* Space prohibited before that ','
> 	* Missing a blank line after declarations
> 	* Prefer 'unsigned int' to bare use of 'unsigned'
> 	* Open brace '{' following function definitions
> 	  go on the next line
> 	* Comparisons should place the constant on the
> 	  right side of the test

That's a lot of different "things" to be doing all in one patch.  I
don't normally accept patches like this, please break it up into "only
do one type of thing" per patch, just like the rest of the patches on
this mailing list.

thanks,

greg k-h

