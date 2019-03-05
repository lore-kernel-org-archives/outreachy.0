X-GM-THRID: 6664067951305424896
X-Received: by 2002:a63:cc:: with SMTP id 195mr63597pga.7.1551771622040;
        Mon, 04 Mar 2019 23:40:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:8f45:: with SMTP id r5ls7285751pgn.8.gmail; Mon, 04 Mar
 2019 23:40:21 -0800 (PST)
X-Google-Smtp-Source: APXvYqwGOwtThuquVwxV11iNTaRn71GNc9TCiCL2Cw8cAUJQfR++xS2D/uK8Qbh3zt14iKPtORrX
X-Received: by 2002:a63:4a17:: with SMTP id x23mr62841pga.55.1551771621315;
        Mon, 04 Mar 2019 23:40:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551771621; cv=none;
        d=google.com; s=arc-20160816;
        b=0XiDNAh60+pFeYoenn2bwR8nOnbgPWubuC21OkfsLMhUBTPzVGcgbokeWSCpNyB6Ge
         IRbid2DzEVaM6gi1Ykrir2eG4DaiD0pvNyK60jtv4VDeeEQyzAaLK2wTZffeCaCFr+i2
         SS4Nf8lU1KciwfKsYNZHaFFJBetp/lInsOdkx+qvcuve0pWyOB13DwS2VGg9Fd1pYhik
         bnegPH/W530zO4VRnicCqETCUovcSXDvx2cvlxA/m2L2V3TPyd+RhUSC3NwVMtHg8VuW
         /XVG+zUjHCrDPe+zzwl6EeUhI4SP3k6kKU02K7Osfd2wYwOvY3vbifIBBId+p5GXiCuw
         /TXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=TKtOV6/aYnODbVXQLBe9e3tbWuZNG/WUOnkZ9C+szF0=;
        b=N3X6j60tDO0oHygq541P9FQiXdNu1s9zLaIKMaKAY0bN14PxuVnZd+RO888kOgheNC
         g3HCwddS/1wOKAgGzW0SKXYt9fTMGPu/5qX/ANBzQ+HFI+gtZP7dQRg2ThO4/FNYXsuO
         AvHnYr06c88KrF09kbAb8Bxu7F9PJj2udfaJmMApToCGln7OfZwbDB7KExwNg2TWwvCr
         bq4/9vOGLOqkt9fctMhkThBL3PSV+Vvh2qsZ8NvwBWYUQsh4PKEDyWML0bejSs1DHGUI
         b6SCcQt9CHoNM8r6+Gvatn1PkRfTnjU3hoFE5lH3azJS5ENLuM7wPUWTGM2mw32IkyPi
         WcYg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=uWasjMeK;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 197si84307pgc.1.2019.03.04.23.40.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Mar 2019 23:40:21 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=uWasjMeK;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 880D920663;
	Tue,  5 Mar 2019 07:40:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1551771621;
	bh=5F2F+VFHwhhKoOkBF30/4I/IA8HHN8YPnqDH7xB1CgE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uWasjMeKV2YOtbHkpvSsB1yjE8hE5D+B2LM3ZHu+xdCIYC79/LtHQGqfwa2yIHdoB
	 AW1r3wevYztxZNPR1wvH4Ai27Jdke9pGV3qMLaWY0J/++XSQDtDE+9790o0KDONHQW
	 sEV7NZ945aj0UHN1rwLd/UZEDf/03d2Y5RCLrOXs=
Date: Tue, 5 Mar 2019 08:40:18 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Debleena Sen <idebleenasen@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v4] Staging: pi433: Fix line over 80 characters issue
Message-ID: <20190305074018.GA6158@kroah.com>
References: <1551607296-33723-1-git-send-email-idebleenasen@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1551607296-33723-1-git-send-email-idebleenasen@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Sun, Mar 03, 2019 at 02:01:36AM -0800, Debleena Sen wrote:
> Break the line and match the indentation to remove the
> checkpatch.pl warning:
> WARNING: line over 80 characters
> 
> Signed-off-by: Debleena Sen <idebleenasen@gmail.com>
> ---
>  drivers/staging/pi433/rf69.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)

What changed from the previous versions?  That information always goes
below the --- line please.

Please fix up and resend.

thanks,

greg k-h

