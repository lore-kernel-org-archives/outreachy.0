X-GM-THRID: 6662401888511590400
X-Received: by 2002:a9d:76d9:: with SMTP id p25mr2065291otl.11.1551278869534;
        Wed, 27 Feb 2019 06:47:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6830:164a:: with SMTP id h10ls1068905otr.7.gmail; Wed,
 27 Feb 2019 06:47:49 -0800 (PST)
X-Google-Smtp-Source: AHgI3Ibjn/tW6+nCmQ94ZfZx+qo25qFtwdmX4u47lP7MT6rWfwkuQSIbbrf1SPeBF8IGDVCWtFkX
X-Received: by 2002:a9d:6c9a:: with SMTP id c26mr2001674otr.27.1551278869042;
        Wed, 27 Feb 2019 06:47:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551278869; cv=none;
        d=google.com; s=arc-20160816;
        b=xoDR9BwsL1omZ92OrFfpuLMuZVu73E5t/E7oKFraK1x1Wrwk8/lGwd7zvpqJqj2xoL
         HszfVOk0Xj2Af3/M7IwyjKvdpoMVln5N5c4xCKuep9r6YVriUvoGDv2oq7K3cgCdEs9W
         ooTzkmP0elyuZ6yEbVWX7y5f05oS8KAF/zaspxVhbJ0r7DLZaT1fVs43UUl7j7NA6N/C
         XcaNsFYN7yF7mWh7Myc1FTajZjK618pYDBb2GPwP1O83wTumRCs/cdsCpnFHypYjCWPH
         XIs82q3ykGNCdT1kpFchKDdr+dscC7KCB3cccQ2cuvGeJ7mUNrfJNgg+XvLNMlxLVtXx
         hcNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=UaauvPVQVJnmZnS+lLGoGboxWaXakoaU58Xth4jF3vQ=;
        b=XKmVU5bmgIOXRy75I0yvIHGBFCvq4y0Y9hrU07ZoUT1vawNE3fnAhNydFrrl5dxRGG
         GJmIJVyVUKuIy15nl8am1ewxpR6oOYI0aQRvZzniy2Q2QUxvmr6r/Ssx7PWAXQBl5b3N
         MuItLgMFcJY+X5D56jkyd3GBCIwG0O5WTo/OawI2LCTFsOxqUzLukcyRiejxLNzFxKqs
         fMar7GHdXguJ7utJ6nCYIcGR8jxdxETj8/CVq1LmmnHhYQJwhP5ywDKCk0gENGIBmw5t
         osEHO98w2SMOI1UsfYf6+5udFiX6al8afBcX7vJZtu5zv+ljTGCO3nkQRfw+4M3YAziY
         5/vQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=UksSYmCt;
       spf=pass (google.com: domain of srs0=y1qt=rc=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=y1QT=RC=linuxfoundation.org=gregkh@kernel.org"
Return-Path: <SRS0=y1QT=RC=linuxfoundation.org=gregkh@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 135si887314oia.1.2019.02.27.06.47.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Feb 2019 06:47:49 -0800 (PST)
Received-SPF: pass (google.com: domain of srs0=y1qt=rc=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=UksSYmCt;
       spf=pass (google.com: domain of srs0=y1qt=rc=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=y1QT=RC=linuxfoundation.org=gregkh@kernel.org"
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B92042083D;
	Wed, 27 Feb 2019 14:47:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1551278868;
	bh=/hBMWui59IVU9jpX9vMhvB/evDIj8NUrBVP8k5x93Rc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UksSYmCt23ZUU3KqcV84Ks8WYDZQXaUmDKVIGvaQ71wHCRjz8I3KaFYHUbiHDo7JE
	 GsrbGs3/T+4esIFKzspltvMWn6r4f8512YalvbI3ZTJ/FHAcg1UXyq2Irs/GvUV+PX
	 YbwB8L2KDFlJDusbn8KHIVpuIZabOvNyvvULESPw=
Date: Wed, 27 Feb 2019 15:47:44 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Cc: forest@alittletooquiet.net, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3] Staging: vt6655: Alignment of
 function parameters
Message-ID: <20190227144744.GD21288@kroah.com>
References: <20190226200150.2708-1-madhumithabiw@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190226200150.2708-1-madhumithabiw@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Tue, Feb 26, 2019 at 02:01:50PM -0600, Madhumitha Prabakaran wrote:
> This patch align the function parameters to improve readibility.
> 
> Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> 
> ---
> Changes in v2
> -Make a commit message imperative
> -Use multiple lines to improve readibility
> 
> Changes in v3
> -Commit message and subject line are modified
> -Alignment of function parameters
> ---
>  drivers/staging/vt6655/baseband.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/vt6655/baseband.c b/drivers/staging/vt6655/baseband.c
> index 35bbff807df9..e3fecd732c88 100644
> --- a/drivers/staging/vt6655/baseband.c
> +++ b/drivers/staging/vt6655/baseband.c
> @@ -1705,9 +1705,9 @@ static const unsigned short awcFrameTime[MAX_RATE] = {
>   *
>   */
>  unsigned int BBuGetFrameTime(unsigned char byPreambleType,
> -	unsigned char byPktType,
> -	unsigned int cbFrameLength,
> -	unsigned short wRate)
> +		unsigned char byPktType,
> +		unsigned int cbFrameLength,
> +		unsigned short wRate)

They should line up with the variable above it, so this should end up
looking like:
unsigned int BBuGetFrameTime(unsigned char byPreambleType,
			     unsigned char byPktType,
			     unsigned int cbFrameLength,
			     unsigned short wRate)

But, given that there is no need to put one variable per line, you can
shorten this and make it look like:

unsigned int BBuGetFrameTime(unsigned char byPreambleType,
			     unsigned char byPktType,
			     unsigned int cbFrameLength, unsigned short wRate)

thanks,

greg k-h

