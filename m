X-GM-THRID: 6619753207840112640
X-Received: by 2002:a17:902:4303:: with SMTP id i3-v6mr575271pld.98.1541425827439;
        Mon, 05 Nov 2018 05:50:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:ab96:: with SMTP id f22-v6ls12572489plr.1.gmail;
 Mon, 05 Nov 2018 05:50:26 -0800 (PST)
X-Google-Smtp-Source: AJdET5cDIcBljxTxViJwCThfIT67SLXju77EjhXYyBL6JwgJ1cm8ujXi6FqVNQ4c4Op6MlaxS2fN
X-Received: by 2002:a17:902:4d45:: with SMTP id o5-v6mr593190plh.86.1541425826761;
        Mon, 05 Nov 2018 05:50:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541425826; cv=none;
        d=google.com; s=arc-20160816;
        b=RJARQfDz6bEdBvx8Dj4P3xmBMbFHkGLnpR+h3EDGGeNw1uxNVJJH/2Btgrh5hzjLyo
         SmJMxeJUlwhaNtoqzVMsd/abzm1B7TiOIdsEzbikMkfmybf85LOtT2xKJI+VU0tCEH+v
         JDGGlynrSitSyzOlK/fbwamxtSDRbEPE2HDFRdk4gmlbnGv7IMdHE36qyrYR2gLgU/FH
         x4wP1+oc82fUXz7GtwN3T9h48R49ge6yKKHTM47Owc7HzTz5KUDtwsNOa6M0uOpXAQBt
         T/LcQtmqBhO4OSjakXWjNzPHhrglCH2H4rkUZkfkNQTSGM2lMx1F4Ehgzy1QmvVpIArY
         Qy5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=MeQYYYeNVX9G+qXqDLnNyOb7ghKhXVHCyTWyXvZjzaY=;
        b=YD97y7E9/9xQcxQTNUdXRvbcPz8QMybuXAE17orWh+rJIv8eyeLrk0CLE2ffG7IHqA
         3YvddVHQjE+UqPt/KnrBLvlzxP+uxTDdIpxn2TpTMsEH8+fjUwMZX40XP5aE/AAGnog0
         2kOpBDRpGAeVSNA0zZomddz86l1AkOrsxuB7aVYsUzp0D2eVbtXM+w1xZh8/9Lhu2iDU
         ThfxGxjkSYSmC6JT2glFbnjwWyoXdE4CeV2fBsaZ/fd77Q6/aYnWhiG6DV3OdpEf14OU
         7TBvPZq+s+aw3SgDJ+IoKN9p/gusNhfszTvuH7RIEpsM9+s1sFiXKVeRuGOHBI3kFFxB
         U86A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=r0NZ6cb2;
       spf=pass (google.com: domain of srs0=afov=nq=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=AFoV=NQ=linuxfoundation.org=gregkh@kernel.org"
Return-Path: <SRS0=AFoV=NQ=linuxfoundation.org=gregkh@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 7-v6si1957564pga.5.2018.11.05.05.50.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 05:50:26 -0800 (PST)
Received-SPF: pass (google.com: domain of srs0=afov=nq=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=r0NZ6cb2;
       spf=pass (google.com: domain of srs0=afov=nq=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=AFoV=NQ=linuxfoundation.org=gregkh@kernel.org"
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id F3B172085A;
	Mon,  5 Nov 2018 13:50:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1541425826;
	bh=RQoBOX5qK86fomf8eGgfbMB25wuT3IMlBYocPNymROQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=r0NZ6cb2PaESyIBp7GlX93Gr7k5PdiB9ym/2GCjy5kE5UzSekRshleBFihqmmoAPu
	 u1piKFfPzBpDSqQzlDJ5RE55yi1Ems/DwVuihG51DupgWUofwHZZpAsnTY2WHOaU4H
	 K1KmnRyz10EJjhg8DCp0OCDRLf/cVlOnEWnzdsjA=
Date: Mon, 5 Nov 2018 14:50:24 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Irenge Jules Bashizi <jbi.octave@gmail.com>
Cc: mchehab@kernel.org, outreachy-kernel@googlegroups.com,
	jules.octave@outlook.com, julia.lawall@lip6.fr
Subject: Re: [PATCH] staging: davinci_vpfe: add spdx license identifier
Message-ID: <20181105135024.GA9626@kroah.com>
References: <20181103224058.19568-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20181103224058.19568-1-jbi.octave@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)

On Sat, Nov 03, 2018 at 10:40:58PM +0000, Irenge Jules Bashizi wrote:
>  add spdx license identifier to fix
> 
> all multiple warnings of missing or malformed license

Why a space at the start of your line?  And the odd line-break is not
easy to parse here.  Can you redo this to at least be a full sentence?

> 
> Signed-off-by: Irenge Jules Bashizi <jbi.octave@gmail.com>
> ---
>  drivers/staging/media/davinci_vpfe/dm365_ipipe.h     | 1 +
>  drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.h  | 1 +
>  drivers/staging/media/davinci_vpfe/dm365_ipipeif.c   | 1 +
>  drivers/staging/media/davinci_vpfe/dm365_ipipeif.h   | 1 +
>  drivers/staging/media/davinci_vpfe/dm365_isif.h      | 1 +
>  drivers/staging/media/davinci_vpfe/dm365_isif_regs.h | 1 +
>  drivers/staging/media/davinci_vpfe/dm365_resizer.c   | 1 +
>  drivers/staging/media/davinci_vpfe/dm365_resizer.h   | 1 +
>  drivers/staging/media/davinci_vpfe/vpfe.h            | 1 +
>  drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c | 1 +
>  drivers/staging/media/davinci_vpfe/vpfe_mc_capture.h | 1 +
>  drivers/staging/media/davinci_vpfe/vpfe_video.c      | 1 +
>  drivers/staging/media/davinci_vpfe/vpfe_video.h      | 1 +
>  13 files changed, 13 insertions(+)
> 
> diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.h b/drivers/staging/media/davinci_vpfe/dm365_ipipe.h
> index d81b29e19309..4bacac9b5be8 100644
> --- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.h
> +++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.h
> @@ -1,3 +1,4 @@
> +/* SPDX-License-Identifier: GPL-2.0*/

This should look like:
/* SPDX-License-Identifier: GPL-2.0 */


So I can't take this patch anyway :(

Please fix up and resend.

thanks,

greg k-h

