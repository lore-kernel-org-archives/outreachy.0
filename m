X-GM-THRID: 6476685007232434176
X-Received: by 10.46.84.93 with SMTP id y29mr207579ljd.7.1508336087442;
        Wed, 18 Oct 2017 07:14:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.99.220 with SMTP id s89ls639412lje.14.gmail; Wed, 18 Oct
 2017 07:14:46 -0700 (PDT)
X-Google-Smtp-Source: ABhQp+RCMO7eZnGBTzfV9eKPT7JxoCQQGboGA/fezq2HjJoGbLJIKMORmit5M7BGxnWklew+N2U7
X-Received: by 10.25.113.1 with SMTP id m1mr491660lfc.28.1508336086691;
        Wed, 18 Oct 2017 07:14:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508336086; cv=none;
        d=google.com; s=arc-20160816;
        b=HizO3vz1gbWDSklChQY3A0c6oXAdg3a8DTlZZbBHWL9H5nqm7ztSO/Rho8luJeP+I1
         iNd0hiktUVXAs2+U3p0SFnTuscxvi9lELutQ/NiZVgqxFLrXt+26WE6eDypexgZKh4cm
         ssMP4wWYQbMMQW9OUG2GEyMX3nWdQ2gLfkQnmaSNE+ZVk8OgUq4zxbmdcGYh0ZAkL1Xc
         Je9yaMO3hr+94zP3M96QnsfH8EA3hj0enMdIX89naZXWwvxb2ZafpFeJiPBrIiTBfmkN
         wGGWd2rcIIch7kpfCuftsULi5ngVKXhU61vaytCzfe04dIq4H8Dri84+6P+VSs/mdyXR
         ODog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=SmNN8nhklWvvB5NDUCBVaj+zzCj8yRRHvNvHoL4usrk=;
        b=VDzSv2d8ZiIppVO26eQvqstnINBh7aMapCeeA/F7Sq98oIjkNwycWD3ksrbSEwEJBs
         orvT4vMhBSYhrUpY5sh8uf7oZIkLtc1Fzyv/MKSeytRohHx95mdeItGPC4hRybA0ifot
         SpBCOA6ZCWu60ftzpMXuRktpfCfI1uwsg2oLG0vF9cyh7kKV/GxBOiN0uk8nilD2W5SS
         DeUzzEJq7Jgy3Lq1DvwUKc9Y5hy36UvvCJj07k8eZQnP+9nHMoB9i1EQ7k0g082oobSP
         jXQ49nCkOSot2RrYwq+Dm3YDEPJKKOIgWMjxouhxXQTOLYasp4XXHPNudU5bJa1eayl5
         rSrg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id s12si609613lje.0.2017.10.18.07.14.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Oct 2017 07:14:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12253-150.w90-92.abo.wanadoo.fr [90.92.67.150])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id B2A4FBC1;
	Wed, 18 Oct 2017 14:14:43 +0000 (UTC)
Date: Wed, 18 Oct 2017 16:14:52 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Mihaela Muraru <mihaela.muraru21@gmail.com>
Cc: outreachy-kernel@googlegroups.com, Eric Anholt <eric@anholt.net>,
	Stefan Wahren <stefan.wahren@i2se.com>
Subject: Re: [PATCH v2] staging: vc04_services: Remove unnecessary braces
Message-ID: <20171018141452.GA17907@kroah.com>
References: <20171015190040.GA6755@domino-MS-16Y1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20171015190040.GA6755@domino-MS-16Y1>
User-Agent: Mutt/1.9.1 (2017-09-22)

On Sun, Oct 15, 2017 at 10:00:41PM +0300, Mihaela Muraru wrote:
> Remove unnecessary braces for single statements.
> 
> Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
> ---
> Changes in v2:
> 	 - declare a local variable "platform_state" of type "struct
> 	 vchiq_2835_state", to avoid the multiple cast.

This patch does a lot more than what the changelog says :(
Please describe everything in the changelog.

thanks,

greg k-h

