X-GM-THRID: 6666918096348905472
X-Received: by 2002:a24:a14:: with SMTP id 20mr20072556itw.23.1552273491544;
        Sun, 10 Mar 2019 20:04:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:ea0d:: with SMTP id m13ls1585343ioc.3.gmail; Sun, 10 Mar
 2019 20:04:50 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz3jJz4y3hsI+aVSKazYAfFFsnr2JE4YR55CLVxdZoJmYbJ2nm4AfGFNxpd0ToyCuuQjSN+
X-Received: by 2002:a6b:7115:: with SMTP id q21mr110385iog.25.1552273490648;
        Sun, 10 Mar 2019 20:04:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552273490; cv=none;
        d=google.com; s=arc-20160816;
        b=pgGISoHYYMhM10A/X6k5G/7Jgh0o7n6vb3wL3Kgc/od7PI5uEw3md+vjFsvZ5bcrTO
         /OTom1UGR3qgk4vH09IRPV8/pA+4zqQQqu5+YX7NMJwO93aUPFlCfygb63nPAvTp6lIQ
         xNnvExBdN4/fKohGaH1iH2/y22n6/NAAO0cgForFrhtNU3GQbkPy8SQF4IuIUQUDpQus
         8x/0uGhxO8kgKl/CuwEnmc3jMc3k0IYnKN+8tzgeP6vowPpFtTnXy2yH+ERDKaZhQtF1
         e3dneZOhY+S9SNxXtYGOKoQawesyzMcfPsrQOFHs1NR7bEWnlYhoEIiuGo0lKGgLEy0D
         DsaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=lKTR8zoBpqfYhdogT8uZyAhu0JhlG6Kl/LJgvMERmqc=;
        b=CJm8b0nCMjcIive678u1MHrZkuqC4AutbUApHXtVLVVS2Rc7wpWbIHA7Yrnsv+cfqV
         uD9vRoySRE9eSyPQUVOddkj3qHcB0KvH29z7oiLaHLKlEgfc6RH7PF27fz/tjestfs6b
         XUP/HRJ2zRL5kFPePN5H6Yc9gYfVHVJ3APyu/hLezCU5QHNj1TZymDV/IiSPvv5jPZky
         Af588BZh1NK9QMCXw4zY2KxXp+Qtm3Gq4SevECkh1KlCtcvVvhhxQG52LOfWVn1OpWxJ
         YWFR9GBg6hnzpkVbzU5d/Fgq6ey5swr25pUYwHyp12VEs89iI4yKVIs/ApHpZGbU5ATG
         oqwQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=fSti4z8e;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u1si985286itb.2.2019.03.10.20.04.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Mar 2019 20:04:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=fSti4z8e;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [12.27.65.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id BEC3E206DF;
	Mon, 11 Mar 2019 03:04:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1552273489;
	bh=SDDCx/H0FbbQCArMUaYkAYjzvmXt3bT6L85PEd6RSd4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fSti4z8eWta2TeDV5zqoSbxQb+WB84g78HQX+i3J6nwVgyFbXYkMA/HIsg4HefBs4
	 dxMgUaeiVjC6W4kHHHfmyHzM052dKRnwvqVFC/koCBwEZp2hWcYsnM8XwNcpC0fmg6
	 PhFQBFz/HYyRfq0Rml88I/GtmDZ+KCnzJR8t06lQ=
Date: Mon, 11 Mar 2019 04:04:49 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Jules Irenge <jbi.octave@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v1 1/3] staging: rtl8192e: add SPDX GPL-2.0+ license
 identifier
Message-ID: <20190311030449.GA17063@kroah.com>
References: <20190311000702.12740-1-jbi.octave@gmail.com>
 <20190311000702.12740-2-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190311000702.12740-2-jbi.octave@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Mon, Mar 11, 2019 at 12:07:00AM +0000, Jules Irenge wrote:
> Add the SPDX GPL-2.0+ license identifier to fix checkpatch.pl warning
> Issue found by checkpatch.pl warning:
> "WARNING: Missing or malformed SPDX-License-Identifier tag in line 1"
> 
> Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> ---
>  drivers/staging/rtl8192e/dot11d.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/staging/rtl8192e/dot11d.c b/drivers/staging/rtl8192e/dot11d.c
> index 68f53013cb95..74adb45efe73 100644
> --- a/drivers/staging/rtl8192e/dot11d.c
> +++ b/drivers/staging/rtl8192e/dot11d.c
> @@ -1,3 +1,4 @@
> +// SPDX-License-Identifier: GPL-2.0+

Why did you pick this specific license?  It does not seem to match the
license text in this file at all.

Be _VERY_ careful when doing stuff like this.  If you get the license
wrong, lawyers can get mad at you :(

Also, the file name "dot11d.c" should be in the subject line, as you are
not adding the identifer to the whole driver, only one file.

Please fix this up and resend the whole series.

thanks,

greg k-h

