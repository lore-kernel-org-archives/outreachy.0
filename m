X-GM-THRID: 6661965770833002496
X-Received: by 2002:a9d:6e97:: with SMTP id a23mr2037598otr.54.1551278744900;
        Wed, 27 Feb 2019 06:45:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:c189:: with SMTP id r131ls652135oif.6.gmail; Wed, 27 Feb
 2019 06:45:44 -0800 (PST)
X-Google-Smtp-Source: AHgI3IZ3NDszsmMXPD8l20MuOjeZrNe5pDfiwrZneX8xIlycQG+xUIJTernJdRAzhN3S5o0orLwt
X-Received: by 2002:aca:d6c7:: with SMTP id n190mr963028oig.41.1551278744386;
        Wed, 27 Feb 2019 06:45:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551278744; cv=none;
        d=google.com; s=arc-20160816;
        b=oxfUX0pWV0mVSYnHTwR/O+Y70BUpnaMIx1+LtKiTiSK2Zpri32ycYG3U62+cXsm+3d
         Shll80UaFMedfJl9eVzEzuaM7iC8d0fDWGtPcEgIKXXSAmsGU85zrIzVIOZXkMoPpDUj
         gWVxZ0yCQEhI5tCkBJEPbB1XYxi1jXgzJM86x1RIjyErLHFsvgahn+FFZnl51qs8UJXB
         qj4BiorY0LV1QI161OGWbT9vh8y5GZsN0nn1JdMeDTV5/6YYx20XaAFXZd0HvqBNN0m2
         23Mlk2LYIBRV0MzWPiKGi7NLJiF3vEoXGNrnLexG90myaf0R0X8IoHxW8xiJ/7141dE1
         eiuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=uBnVE9HBOs/F4kArd1HuJy51uaMUsp4ogO7CopjcqiM=;
        b=f8zP5ja1dw7vyl8gT297n04O/wezpPCR4aV3lRk0gmAa4SyXwkH8+aelEpDNfpIzgp
         d6r8ClezHE41cFstqZxWC6xJDiFJsRx1Hg7BU93CL5o0eN5BMte7hnpmTblqjm8QcEb1
         g3zMsToFgynEQc8PAf2oPi3tykJPOCv8JZE8s8nfwqu59LC4sWjXGkKk98A0vZQ15LzO
         enVA3y/8AavvYTUsEd9udk4xgIyXyq37dfqv7hQRWjOpxGK/IA8F3XfD2sh84BjlXCGf
         2x2Uu/+3ZLoq18Fa7Tx1AukqZPqIcecRLmmMvg9ZoQXzOAlUWR8OeuqRAiu14nHiP6rY
         jgnA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=idTrAaWh;
       spf=pass (google.com: domain of srs0=y1qt=rc=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=y1QT=RC=linuxfoundation.org=gregkh@kernel.org"
Return-Path: <SRS0=y1QT=RC=linuxfoundation.org=gregkh@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x31si970361otb.1.2019.02.27.06.45.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Feb 2019 06:45:44 -0800 (PST)
Received-SPF: pass (google.com: domain of srs0=y1qt=rc=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=idTrAaWh;
       spf=pass (google.com: domain of srs0=y1qt=rc=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=y1QT=RC=linuxfoundation.org=gregkh@kernel.org"
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 2C2E42083D;
	Wed, 27 Feb 2019 14:45:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1551278743;
	bh=wrBKr9tChXLnakx3di1ULB8CCpZjyELbmbguMtT9ln0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=idTrAaWhAmCXs1qzELHiyo9Lv2PyxoZ5UoUEcRNy3tozaSZhodMtYJl1DUiYmD4iq
	 o31bp38KOdWAl6ZdRmyS5Y3yaS4TMu94BJG+N1PJOR0m7E22qrLWm5NIxUFJY0dbYJ
	 nLnYusSRYArKA574gMx0fnRn6pZ7j8M+e4m9PaN8=
Date: Wed, 27 Feb 2019 15:45:41 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Jules Irenge <jbi.octave@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v3] staging: mt7621-eth: add SPDX GPL-2.0 license
 identifier
Message-ID: <20190227144541.GC21288@kroah.com>
References: <20190226175631.17161-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190226175631.17161-1-jbi.octave@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Tue, Feb 26, 2019 at 05:56:31PM +0000, Jules Irenge wrote:
> Add SPDX GPL-2.0 license to fix missing SPDX warning
>  reported by checkpatch.pl.
> 
> Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> ---
>  Changes since v3:
>  * Made commit message clearer
>  * Added punctuation
> 
>  drivers/staging/mt7621-eth/ethtool.h | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/staging/mt7621-eth/ethtool.h b/drivers/staging/mt7621-eth/ethtool.h
> index 40b4cf011660..d0e97ae0d82e 100644
> --- a/drivers/staging/mt7621-eth/ethtool.h
> +++ b/drivers/staging/mt7621-eth/ethtool.h
> @@ -1,3 +1,4 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
>  /*   This program is free software; you can redistribute it and/or modify
>   *   it under the terms of the GNU General Public License as published by
>   *   the Free Software Foundation; version 2 of the License

This should be a patch series, first one does this, the second one
removes the license boiler plate.

thanks,

greg k-h

