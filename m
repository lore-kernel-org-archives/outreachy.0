X-GM-THRID: 6529194595681566720
X-Received: by 10.80.141.16 with SMTP id s16mr5356140eds.7.1520337575944;
        Tue, 06 Mar 2018 03:59:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.80.206.28 with SMTP id y28ls786685edi.0.gmail; Tue, 06 Mar
 2018 03:59:34 -0800 (PST)
X-Google-Smtp-Source: AG47ELuVsLluDCwmzLSSvvlTRFUdkEaLt55K++LxZp9roAtSJLVx2Tm4XFma6h09TA33Pqb8HIka
X-Received: by 10.80.220.141 with SMTP id r13mr722754edk.4.1520337574253;
        Tue, 06 Mar 2018 03:59:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520337574; cv=none;
        d=google.com; s=arc-20160816;
        b=m5ey+BVap5imTKOykGPNkswTe8+JJbrvGVqlAVdVT4PYMvSEQA9sbTEe6UdPA4poHn
         Rk9nMQ3Muwyczdj6hRT4zL03FcplNEPCQgyiRsxI4KA324nySjRZdL+JAcs+SpGiXhjA
         5hRYlNDTKR3xyF0ZwlwcOizl+ikLX3Iy8Q4wITgggFqXL5YBeanHCN32Ihfy6rjAerMb
         fDLSBwIDwC+V0djkPgF6bfegnabw6CIuL3L+NA8ziifEofJAThw1l8nL97Nre5LvNSfW
         IaAe0wVcMb7vc9X6j2tL3ouL7fVQOG0GSAkCR0kbCrjXZtiuxhElAELGpz4S4iwBdcq6
         rWWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=f73ZQ45jvmv4gJmIAmTd8IGLA7Yz6SILXaJr88FzVtg=;
        b=seilddLLIfGYt0Zn4hshz127Q+HAlugoubB51pj7X8Q5u80d8dg/wUUvnMDplUGC2C
         QFqkKdNL3/6/pQSb9C7CtOhx6crmBs0kOpOs7KjGIjcrE9t/kLlPOK30J8/rpX4CCHMq
         0uFzITwuaf3+udFc/knj/4A5ZIPDJPKCgGlPjdiIddIgzCCGnekH/AagG6ppauJUvQsd
         Ep12Tn5XBkTPe0PPdQfrMrAEip17gTIDjzv3h3M79XUl5vjaWaRACuuWYHvR5pvMeBTu
         6S9Rz9BhuAKI4GFlz1bXg3eR6ozl0Vt0VrJAJXOIlmjFFxSeBivwAF2uFlREXWun1r9m
         x7rQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id g21si286379edj.5.2018.03.06.03.59.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Mar 2018 03:59:34 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [185.236.200.248])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 86608114A;
	Tue,  6 Mar 2018 11:59:32 +0000 (UTC)
Date: Tue, 6 Mar 2018 03:59:35 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: netdev@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] staging: Replace printk() with appropriate
 net_*macro_ratelimited()
Message-ID: <20180306115935.GA17888@kroah.com>
References: <20180304204910.GA4840@seema-Inspiron-15-3567>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180304204910.GA4840@seema-Inspiron-15-3567>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Mon, Mar 05, 2018 at 02:19:11AM +0530, Arushi Singhal wrote:
> Replace printk having a log level with the appropriate
> net_*macro_ratelimited.
> It's better to use actual device name as a prefix in error messages.
> Indentation is also changed, to fix the  checkpatch issue.
> 
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---
> changes in v2
> *In previous version printk was changed to pr_*macro(), which is used
> in kernel instead of calling printk() directly. And for drivers,
> dev_*macro() or net_*macro_ratelimited() should be used for calling
> printk() directly.
> 
>  drivers/staging/ipx/af_ipx.c | 14 +++++++-------

Please read drivers/staging/ipx/TODO

thanks,

greg k-h

