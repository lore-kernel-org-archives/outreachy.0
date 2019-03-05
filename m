X-GM-THRID: 6663618170330284032
X-Received: by 2002:a24:2ed2:: with SMTP id i201mr2001644ita.3.1551772358631;
        Mon, 04 Mar 2019 23:52:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:911:: with SMTP id 17ls611027itm.5.gmail; Mon, 04 Mar
 2019 23:52:37 -0800 (PST)
X-Google-Smtp-Source: APXvYqxU2Lo2YQqpqn3en8aCtI9C/TDdXPM2clI/X+bRJPNQ0N/l11Xnf9Ckm5ev+g2sHvPw3GiE
X-Received: by 2002:a24:6241:: with SMTP id d62mr1892473itc.18.1551772357913;
        Mon, 04 Mar 2019 23:52:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551772357; cv=none;
        d=google.com; s=arc-20160816;
        b=nqH3XZneHiiD6o3+dbDqF0hBJmaz4C2cSjTsCmmC41UzRcVA3vcTncNWy1IClzrezw
         W46r+FtFJ+9zvzD7F72qdCJ7JduhQx/cfSjiXFhpQTJ/M1jxKze6Q5F589ohKdzKqjiq
         cXPYFX6M5u5ZA/PIyxPvU5BXzZb3pFnpRcW357i7Sn61BtWm07CucWHkrTiJulhGprtF
         xo0GAA43Jpc+nJmgUwau0kVb93Wg5tljSTe015PuPVcEFwO72Lkd0nlHNUXGYsYfV5vq
         dO3sRd2w1UcfE7j/mMh0q2CRJ8tPf1lRRzPP8VZlHckYynWDNI/vYIRYKh/Y3Bj00+vQ
         /Zyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=I0ZRojNPgnzgcBklbRFsiUvPZQwWhIiabFywHMFEG34=;
        b=fPWMYXycmFV4ShnuUgYfK5ZnDnD5dEEbQHbgwZe9RW7W3NhIDAqsL/8e2l3CO/HY3R
         0xuIb+bVuknFKmOpooTKzTSFYXUKr1wzvQ2QdOnBT3peojJt58Ih3zFdS/B8VdK1CGCf
         25mQ+EOZEO+ZFq3X/fSMg+NSoAC/GsrkDBEkIRtPPk4vbenzvmC7OLOcAwpp1FtYTD4h
         GOnnI6dY/4laV+bEYw/j4IBUhVByCWDvKYhTGJCF7fqO+dljBtVgsdmkQv16pRplNbFd
         6tLP8GYMwjRPfQrucH2A0LwgB8DHWkj0GuIi3gORXUUinZCEcZ09eTjH1lQiZGmjxd2S
         mseQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="AN/H5y4r";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y7si524423iof.5.2019.03.04.23.52.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Mar 2019 23:52:37 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="AN/H5y4r";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A25F22082C;
	Tue,  5 Mar 2019 07:52:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1551772357;
	bh=0CXrBcof+xZEqq6xTNX/w2Nl2Jk2h3naNZOW2Rcy2Ko=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AN/H5y4rAmVhJRyDAgWsQrj1AuTjyn1ML4YTOIX+Aw34p14NXU/AULiC12KA/Gl+c
	 3nC96ceTarDPAtkk0MJDBIX23dbgl9V/tykRF6164dBGFWyGItTOFAXrht3kj72ZP4
	 PxSYjTYDr4n6StzxmGv97by1nU4adNDOHryjHPSE=
Date: Tue, 5 Mar 2019 08:52:34 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Cc: forest@alittletooquiet.net, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 3/5] Staging: vt6655: Fix warning
 about preprocessor conditionals
Message-ID: <20190305075234.GD6956@kroah.com>
References: <cover.1551745071.git.madhumithabiw@gmail.com>
 <478765abb9c231a9eda7ccf35e243017f074bae7.1551745071.git.madhumithabiw@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <478765abb9c231a9eda7ccf35e243017f074bae7.1551745071.git.madhumithabiw@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Mon, Mar 04, 2019 at 06:24:01PM -0600, Madhumitha Prabakaran wrote:
> Fix the warning by removing code between #if and #endif, as coding style
> say the compiler will constant-fold the conditional away and include or
> exclude the block of code as with an endif.
> 
> Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> ---
>  drivers/staging/vt6655/power.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/staging/vt6655/power.c b/drivers/staging/vt6655/power.c
> index d6c581b31569..c2a7c120a94d 100644
> --- a/drivers/staging/vt6655/power.c
> +++ b/drivers/staging/vt6655/power.c
> @@ -64,7 +64,6 @@ PSvEnablePowerSaving(
>  	} else {
>  		/* set ATIM Window */
>  #if 0 /* TODO atim window */
> -		MACvWriteATIMW(priv->PortOffset, pMgmt->wCurrATIMWindow);
>  #endif
>  	}
>  	/* Set AutoSleep */

When you removed this line, you then ended up with:
	#if 0
	#endif

which does not make much sense :)

As this is a "TODO" item, I would just leave this alone for now.
Hopefully someone will fix this correctly in the future.

thanks,

greg k-h

