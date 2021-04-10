X-GM-THRID: 6949457058068430848
X-Received: by 2002:a37:597:: with SMTP id 145mr231863qkf.384.1618047125139;
        Sat, 10 Apr 2021 02:32:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:c207:: with SMTP id i7ls6581262qkm.9.gmail; Sat, 10 Apr
 2021 02:32:04 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwwmrajyAsWtnRVcdfGRP5yc3yy73Z/oHZB3sz9A4jD0wuh8xm4tn6JD7ThUXAFVNIW9Vp2
X-Received: by 2002:a05:620a:13b4:: with SMTP id m20mr18011273qki.24.1618047124390;
        Sat, 10 Apr 2021 02:32:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618047124; cv=none;
        d=google.com; s=arc-20160816;
        b=EYOOQoLPdw9it8Eor9ah8rOtCUkDYIkPjYGEjDVisNEVtwItWwCfXSG0aI1YkU0Cdi
         wvzyCLOFcLVVpqP6VOd0Hx6sTJV5Qo4Iatj8eNRhw4b5AxNsOwb6aueUsJ7R4j9lht26
         I2se/W7Cxgng9dVDHK1hy8f/7s+NQlu2EhqO0IiP37hiPUFu+8/x4DiqO/YNtHXRo1Vi
         tUjuwEqINF4GVgOF9arkZ4K7DVLb5jZu5Y+lkfbH2u4iEvRWV+bvfi1QrqC2DqDjR3We
         NPoZX202g+oMXDZscduI3jVO6qNW3VUSrsm74xa+y1ahMeZkz+hxvbBiLcPwXZzQLb30
         Px+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=CrmB7URWAdjSNm8uLpAXV21BVTqleyBT69mfkJiGo+w=;
        b=XhYTWUdzE3Cu4dHHAaVo3MfAwon3Q9LW/ia1NL8n/BWnW9HT/hJ3gF5W5xMTpHkxUv
         4Zev96mfNxqafFwpVduOFtrIPmPO57DHztEYvN0W2j3aOhcvk9rWh4YLs5hndyECSqc6
         tVHpONorKQz+IFlq2GxWXESwMDlHXu0LJmS6nezFnut52f3ozu6V44EmTIdrOs03spha
         24AqnQgQGDuFa2qrW4oHuY4B2S503HmW+/DX9MxvbBTwZEGEWZodQNr3r1gIJn/J07kO
         c63jab0mCWLWsZpC++BLbXl3sYVaMqDg0NamwARxBF5BQtl3WVIupTF4h28BOcGnOfl4
         gm2Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=vDy4zFcl;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w22si718348qtt.0.2021.04.10.02.32.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Apr 2021 02:32:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=vDy4zFcl;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9A65D61165;
	Sat, 10 Apr 2021 09:32:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1618047123;
	bh=JC1u+XwPQ0Lk3zOdvJDmOnjpgGCwEAkzpUo3n6Lz3oo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=vDy4zFclyPeMotI2iwg5qx2MH4OGSC2hflgkl5gdGMrigRHMsGZxYkRLMtcSmCs2/
	 8V7F0sQtS5rYS1vy6S7KhlHoafqsVKimHncvKwc5NEvJppov/HTwSAwBmtuIeijiJL
	 7yoFpNnvW0IdXPzdtL100Kz2tPLQhs6M1aZg51l4=
Date: Sat, 10 Apr 2021 11:32:00 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: outreachy-kernel@googlegroups.com, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH v7 1/3] staging: rtl8723bs: Remove
 camelcase in several files
Message-ID: <YHFwkJlTNxQwPyN3@kroah.com>
References: <20210410092232.15155-1-fmdefrancesco@gmail.com>
 <20210410092232.15155-2-fmdefrancesco@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210410092232.15155-2-fmdefrancesco@gmail.com>

On Sat, Apr 10, 2021 at 11:22:29AM +0200, Fabio M. De Francesco wrote:
> Remove camelcase in bFwCurrentInPSMode, a variable used by code
> of several subdirectories/files of the driver. Issue detected by
> checkpatch.pl. Delete the unnecessary "b" (that stands for "byte") from
> the beginning of the name.
> 
> Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> ---
> 

Why is there a "v7" in this subject line, but not all the other lines?

It should be in all of them, including the 0/X email, git format-patch
will create it automatically if you tell it to.

thanks,

greg k-h

