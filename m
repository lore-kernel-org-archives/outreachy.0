X-GM-THRID: 6666547009386708992
X-Received: by 2002:a1f:9e0f:: with SMTP id h15mr22284459vke.20.1552344683515;
        Mon, 11 Mar 2019 15:51:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:9f55:: with SMTP id i82ls751780vke.3.gmail; Mon, 11 Mar
 2019 15:51:22 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwlVob0TY1mde7ckMEp7VL4S+wxiCOpfB//uznRavh/fNZgqW/X7L/aX0+h/lDvEAi7Nw0J
X-Received: by 2002:a1f:85c6:: with SMTP id h189mr2471394vkd.9.1552344682654;
        Mon, 11 Mar 2019 15:51:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552344682; cv=none;
        d=google.com; s=arc-20160816;
        b=hD3yKc82YdLg0bBNkVUctuHPTnfTGHsX4UCw/Oxz28CL8+l+fEfmIt15KaV52f5ycO
         QfeW/TwIVRmaFXtiDVhYKtAJvKMe3CqSSJtPftGyYdHzzAkHCj9BwojYAVz4i8JXXWwN
         s9fHX9Bd5ZVV+DJNJXVw7RUokTPjjp/bpkAv3r9mGcamixuBfeCoRHDaBwixHz2aieZa
         FDoH4oCcUlH8A285rCsvTOS7D2wYIy7GuiHWNMbX6Znlr3eiebFp9kVtjVwYpPuZZSDH
         kjVbiu8yuJ3tJThALSLxT/RN6Qj+53N6kG2YZdrkIvLd5IbVF1QHR5eoBGrH3TMvHMsw
         tpnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=xpF9D5ejZZkCytcWh/ZNYbKPkLefVgrjSq2MvTjf2eE=;
        b=MEOG6quZl3QZB6wvZ/irOx1ktcgE7RZdbrLpaLdL9kUSznIfV+ck1qCKgYupnlpQD5
         ATT/yKHlGyPtMS/t23oPStVQ5FAig5Xzh3A8wXo51/jFecqKMsy3w3cOE4Sj8RZQIA87
         oigAfhsNi06dY7p8wJOMMKF6DLr7fviKEGcY315awiku5GM7Rsiv/u1d7Y1NlIXjWzoT
         R0xHfUL694rNKLFdmJ1K3Q0Ydi+GE7c/4+G52T26ZUdQGtB+I/e1OJJIlvs89rOeDSD3
         p/yCaIIa67a4Qb3zYEGFEHWAGObb3Edw+/QKFsnD3PoMDzInCd2J0ZM2uQL8fwsLeNVn
         IyBA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="U6HGV8C/";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e17si313428vke.0.2019.03.11.15.51.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Mar 2019 15:51:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="U6HGV8C/";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [104.133.8.98])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id E9EFA2087C;
	Mon, 11 Mar 2019 22:51:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1552344681;
	bh=moWBC3j+KTPaC1SUwNQ/Q7ON7BQI6TK5df0gaLx+IM0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=U6HGV8C/I5nvFjPKA/hYd+hyei7lxmdmXaUUOhGvuqnNeSgwZxdKrO4wVNp9s+DXQ
	 sHBk+Do5eXaF1+Hjmq/3txGCuZ0rJv2KwyN8kbj/pb25Bk09Lyi3QPi9LpiZrjPBMv
	 TPld9lnlHbOIoR1DI30SdcQDaLniWc5wbqWhwCDk=
Date: Mon, 11 Mar 2019 15:51:20 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Branden Bonaby <brandonbonaby94@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: octeon: Lines should not end with a '('
Message-ID: <20190311225120.GA569@kroah.com>
References: <20190310211430.27369-1-brandonbonaby94@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190310211430.27369-1-brandonbonaby94@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Sun, Mar 10, 2019 at 05:14:30PM -0400, Branden Bonaby wrote:
> Start function arguments immediately after opening bracket.
> CHECK: Lines should not end with a '('.
> 
> Signed-off-by: Branden Bonaby <brandonbonaby94@gmail.com>
> ---
>  drivers/staging/octeon/ethernet-tx.c | 16 +++++++++-------
>  1 file changed, 9 insertions(+), 7 deletions(-)

Is this a v2 patch?  You sent 2 patches with the same subject and
changelog, but the patches do different things, which is very confusing.

Please fix this up and resend both as a properly versioned patch.

thanks,

greg k-h

