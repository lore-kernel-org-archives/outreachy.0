X-GM-THRID: 6671711882278076416
X-Received: by 2002:a05:620a:1212:: with SMTP id u18mr4045288qkj.39.1553885707339;
        Fri, 29 Mar 2019 11:55:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:9e21:: with SMTP id p33ls77693qve.7.gmail; Fri, 29 Mar
 2019 11:55:06 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwfVdVlhnEuSDt9ZKNSbgPvGVfiE2UktD/+TSS5iA3Fe3S/A7/gVXIl1kzPgw4unw2Ge0Dh
X-Received: by 2002:a0c:ade3:: with SMTP id x32mr3422438qvc.47.1553885706791;
        Fri, 29 Mar 2019 11:55:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553885706; cv=none;
        d=google.com; s=arc-20160816;
        b=W31xy7v4Ofgs6Zi+eRDDS9qwga1NGl5ByJt4cMCIgXhc0RZS7XOUpPUrerT+1VO8+R
         L1ZdQ2Fpp5xmbGSfSESRYVKdr/MFCBDeHSV8fvra6+hjz4El4ITTku8NIvVG9dhPN8up
         OKjhTziv5ucgsW2nBr1EV/ZteCQqTEsk/JgenAwCrZW/mb3zrnQGp6ykfqIgNBikFuok
         0cCL7BRdK928x1OFNL/8EOLIXkmQScrWef6SOBcBHsJWdHCB1F+FtvoJeLFJh8I9TjMs
         cjVWd4W39hGPTIQuG1iQWTxSLrNaHDCd4iowIyCSyClBOCAqDCBjZTPV37ctlTkZhfDE
         jzuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=puxPz7WoC9dMWhehG85xqu3mJ/BidOmGfPI5KvnmUSA=;
        b=ZWeK0t3vtYI7GxukjS9XG1u/DxlsfjC/2jNV9kEfz5hAKT2mstMB2APAooCBp0Zlne
         yj2LdD+RY0Mpr1BlvtBlUT4mKXMI2xa7vSGcc2xwyBh/PtZcOq8mlUkXh0BLsCICXZch
         p9nv6S0BPnYamzXj8PIEt80lcxADdznCvEII+waoBeIwrFvRWKjIpZgd21xedIMZaFSP
         SexCNF8RbKgeShBGeMDIehD12Vs6k6pxpY7HpYeUzZNTCiiX1k0Tohybm+RSgFULFN2j
         6V7mn7iYvDpvWAgnRkssmMqk1EXfBnCLsO/cZGi3Pn1xiptMdpI9hdVDGxaHf4+i5TgZ
         uupg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Lm0BzRSA;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w12si154959qka.3.2019.03.29.11.55.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Mar 2019 11:55:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Lm0BzRSA;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 51A78218A6;
	Fri, 29 Mar 2019 18:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1553885705;
	bh=HHfSxvXNOabjXKmA6PbXkyuuN7QXAirlDedsqYJCJ+Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Lm0BzRSA5LaxfpbjeNNnzdCm8FaXOr/NN3Ij8Us+i3JbvPfpnQhi0apnrUqDNSYwf
	 dl/F8uC2eA5lZcT6z1mf6tAxUxcXBoiHI4xtMjYcQ5cxF8oa/bZgKG1hNqZbkqOZjw
	 lny8DJ+eYbINSQTk4eZSqxgUzWIRY0atIw4WfLHc=
Date: Fri, 29 Mar 2019 19:55:02 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Vatsala Narang <vatsalanarang@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] staging: rtl8723bs: include: Fix identation issue
Message-ID: <20190329185502.GA19326@kroah.com>
References: <20190329165012.17047-1-vatsalanarang@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190329165012.17047-1-vatsalanarang@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Fri, Mar 29, 2019 at 10:20:12PM +0530, Vatsala Narang wrote:
> Corrected the identation of switch case to get rid of checkpatch error.
> 
> Signed-off-by: Vatsala Narang <vatsalanarang@gmail.com>
> ---
> Changes in v2:
>  -Resend patch
> 
>  drivers/staging/rtl8723bs/include/wifi.h | 72 ++++++++++++------------
>  1 file changed, 36 insertions(+), 36 deletions(-)

Also, this patch does not apply to my tree at all :(


