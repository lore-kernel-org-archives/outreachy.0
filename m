X-GM-THRID: 6230054810210533376
X-Gmail-Labels: Topic type: DISCUSSION
X-Received: by 10.141.1.4 with SMTP id c4mr1159035qhd.2.1453962612556;
        Wed, 27 Jan 2016 22:30:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.157.103 with SMTP id wl7ls118448igb.37.canary; Wed, 27 Jan
 2016 22:30:12 -0800 (PST)
X-Received: by 10.66.242.141 with SMTP id wq13mr1179131pac.8.1453962612174;
        Wed, 27 Jan 2016 22:30:12 -0800 (PST)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from mail-pf0-x229.google.com (mail-pf0-x229.google.com. [2607:f8b0:400e:c00::229])
        by gmr-mx.google.com with ESMTPS id u66si951153pfa.2.2016.01.27.22.30.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Jan 2016 22:30:12 -0800 (PST)
Received-SPF: pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c00::229 as permitted sender) client-ip=2607:f8b0:400e:c00::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c00::229 as permitted sender) smtp.mailfrom=sudipm.mukherjee@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x229.google.com with SMTP id 65so18282270pfd.2
        for <outreachy-kernel@googlegroups.com>; Wed, 27 Jan 2016 22:30:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=9yHDpATI5BTb6GP+7uYxSV2tkJl0oAC1K1DKFAEJsJE=;
        b=lMYMN93EXnEH5KUIzHtFTMR+5Q7n8EHhQVz+rJjitjAeYn9crqGcIbKJM+RDEgzz1o
         AnVeOkrbezwW+CWbD75BDEAUcekRAlvw9fJ7XmKdBJJKyDKa/KW6VZeO9RpNLx52ydnP
         sOqcYeVqw3B0zJ/KALtlDxl5eXfe5yJQ8dpseW3nJQpVyUo5ucbVxXcdfp+VEQSbcy41
         xRVcgWSkhn1ccJuqzKNscAHfbiGiyppAje675CD7h5U2K8EsxYhr2Z9Lfa0mMSVmbVlb
         OoUJMQ048fqWUMLFrEOvQP7f/s26kM0T7u0CJmZyd60C8hHBlShBaqjFExGH00TO0kbJ
         eSjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=9yHDpATI5BTb6GP+7uYxSV2tkJl0oAC1K1DKFAEJsJE=;
        b=JqNZEG0AHUBRmQMkTA/sBp2PBDKWreAqQsyIlOXa193sI+bQZmX/kO63elJfVJFWZ5
         jKaCpb+Uanwzq5RZLuWIp9O81qQvR1FhgVm9OS9ISQNJ1OIxoc3hAiarnhfQir0xMsxW
         un9mUXRh8tHdcgE201xeVyAVpAFvJg0Lr5cFGo71LVRls25p3QQquxToApgRpEX3opkT
         VJE3mcTKl8IrjqdPx6VR5I1vma9Yp+ZrzpRDiM3jhnRBJgDbKvl7YNsQ+qat5lQ9Nber
         Z6Re0FC2LRcrgNuvRajz7kw2uwNfEVGFrwdcHt16dfT4tJC9sRROwusQfPfow2UHSZ8d
         wNRA==
X-Gm-Message-State: AG10YOTk3q9MfjpI4MmRzq0i5d4wFOolR/G5VQHkn1NM+uq8u7CEblo92nIvzJZ+GAC2PA==
X-Received: by 10.98.72.200 with SMTP id q69mr2061053pfi.159.1453962612054;
        Wed, 27 Jan 2016 22:30:12 -0800 (PST)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from sudip-pc ([183.82.228.136])
        by smtp.gmail.com with ESMTPSA id 68sm13254964pfa.78.2016.01.27.22.30.10
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Wed, 27 Jan 2016 22:30:11 -0800 (PST)
Date: Thu, 28 Jan 2016 12:00:07 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Abhishek Naik <absnaik810@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Difficulties to install the kernel
Message-ID: <20160128063007.GB9938@sudip-pc>
References: <998e55bf-44ba-47e8-a832-62db5b09fc85@googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <998e55bf-44ba-47e8-a832-62db5b09fc85@googlegroups.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Sat, Dec 19, 2015 at 09:54:31AM -0800, Abhishek Naik wrote:
> Hi,
> 
> I just downloaded the kernel source code and currently I am trying to 
> install the same.  However, when I run the 'sudo make modules_install 
> install' command, I get an error 'make: *** No rule to make target 
> 'modules_install'.  Stop.'

you can find the steps at http://kernelnewbies.org/KernelBuild

regards
sudip

