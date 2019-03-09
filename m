X-GM-THRID: 6666346191524986880
X-Received: by 2002:ab0:641a:: with SMTP id x26mr15255541uao.12.1552138835791;
        Sat, 09 Mar 2019 05:40:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:5c94:: with SMTP id q142ls2061557vkb.1.gmail; Sat, 09
 Mar 2019 05:40:35 -0800 (PST)
X-Google-Smtp-Source: APXvYqwVlTRAdqu0kwi8ZrMKHS9JyLrfMEMqjNNbXVUAU13kpDCpopq2PvwSHf++kEIHkgdEapSM
X-Received: by 2002:a1f:f8c1:: with SMTP id w184mr14713609vkh.13.1552138835177;
        Sat, 09 Mar 2019 05:40:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552138835; cv=none;
        d=google.com; s=arc-20160816;
        b=QgOGWLm1k0UODX/e5AJOQ6mXCeuCDiTXJj5J34aGzrjEUNoPsjrTN4ARMj8GteNY2D
         02wbaVQIzTEiHvjzJLNiKFzeAdUnunmp6BNw6K9e/pHk4udF2V7t9ribR3GDrptU7w/X
         wLEXIfnFWZpMa4nLpNW0NDAW9kuCnR4JoD0asODp5XdDVJjhebf/IS5flNI9OnHLq+0j
         mERnhxqfhu9svyLnv58Ta2XkVavkU/Ktm6mIb/+0W4iuOgImqeeRjYBhrA6+m3G36pKU
         7fv/IlpLKBy/9Lal/bfXxY4RxZapo4FF68UBxdLFkIf/3ZeojfuoirJF932BQg0v+bxK
         dOrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=U2wNHjkFVpQAqFhhPSJMHByyQBCcyPTzVDxKK7Ta1Us=;
        b=FBg5I1NZdr5ZQZZ+M7trdvFkTowVG7pwOoo+vpgETUjlWrufPsyUNlsU9r1DQMtK6D
         xM+dhoiIPU3P9cJsxi9vL2wgOFznYGrwL0EGJcWsKH5NMdvY1r/+rlR8H/cWW5BzuabW
         4DERfsubK0tnRmQ96IzpyRegIptoA3YIII5bzPmi/5H/Dep4zCFpxZNfMwU+prTeFCHI
         sgOXZrHSJVSZtP5IrYhKNprqukZzBGwKrjo4vZMf+eRA3FlVbo/gNuC0B5TPS5zpVpMI
         GPfmAuwYeEWUWuPudvql0jL/b7xfVsrJx7VTJEjboWcRY1KDyk6m7bOzK5eRr99B5kDX
         Xc5Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=0OlDXjcJ;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q85si8917vke.5.2019.03.09.05.40.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Mar 2019 05:40:35 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=0OlDXjcJ;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 7DC9520836;
	Sat,  9 Mar 2019 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1552138834;
	bh=0GM3ulyjf5mydnp5/QkS6ltSaJJx6mFIfYCwx9I19Xk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=0OlDXjcJwtROmyyybzmYtgzZ3gkMxSeihFhqUVy30zw2Igw5ZqwpWIBYZZjzaA62q
	 HE0RKvuVvCH66fSdtFH+7T8hiEbtiCq8kvgXTLkI1ZTHshRbuqMjNVfC4XTIuCRPfy
	 2gbD/HodqMLJHzLnRhNUiloCFXtnUmNY98N+pMVc=
Date: Sat, 9 Mar 2019 14:40:31 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Himadri Pandya <himadri18.07@gmail.com>
Cc: adham.abozaeid@microchip.com, ajay.kathat@microchip.com,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 0/2] remove unnecessary local variables
Message-ID: <20190309134031.GB4144@kroah.com>
References: <20190309110743.41443-1-himadri18.07@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190309110743.41443-1-himadri18.07@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Sat, Mar 09, 2019 at 04:37:41PM +0530, Himadri Pandya wrote:
> This patchset removes unnecessary local variables from functions
> wilc_set_tx_power and wilc_get_tx_power.
> 
> Himadri Pandya (2):
>   staging: wilc1000: remove unnecessary variable ret
>   staging: wilc1000: remove unnecessary local variable
> 
>  drivers/staging/wilc1000/host_interface.c | 10 +++-------
>  1 file changed, 3 insertions(+), 7 deletions(-)

The Subject: line of this email should also have the subsystem (staging)
and driver (wilc1000), like your patches do.  No need to change it this
time, but please do so next time.

thanks,

greg k-h

