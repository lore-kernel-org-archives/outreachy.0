X-GM-THRID: 6660411535314124800
X-Received: by 2002:a81:6c48:: with SMTP id h69mr10257060ywc.17.1550751417749;
        Thu, 21 Feb 2019 04:16:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:348c:: with SMTP id b134ls764607yba.10.gmail; Thu, 21
 Feb 2019 04:16:56 -0800 (PST)
X-Google-Smtp-Source: AHgI3IatWyPgIWeY0M5Zkq2M3RlAVOnyxb2MQCqMGB5MUjDP+grCqNWstxSZpLz39nqg7G8HAtUO
X-Received: by 2002:a25:b985:: with SMTP id r5mr19631383ybg.100.1550751416880;
        Thu, 21 Feb 2019 04:16:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550751416; cv=none;
        d=google.com; s=arc-20160816;
        b=QDbBVlQYKhullvH3chodTyLVUK2W8cVaJ+uUh+OLXN0HCkD/sii+48dw/qBDH0uzv/
         WbavfgW4B5YNjPVOCsthJSZNpRjD57UFpwiSOXWmhaKdVVGgkSmEdEwMPCZHgTMceqLb
         kMy1FWlglQ+YiSJfYnpN+aOnqb1g/a22vwvv4WQbOIw77xJo8N9mnbwsMfxDI2p40B76
         L/jyYwg3K+xcreKUzHBe/5QgQLlz/1sl/Di4H9VrksFKCbeU1uTnUve6ghicdYy5RWbJ
         gvuVfPGXEpQyCLSUV1aEyCQG+IRLOFVPLZ5tas8wyOwlOn+l/MGRzxJpEw2df9gYcKP6
         jkpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=f9eCXfu0AZrthO7AjcJOHeDFctjKy3q1LxAkUBHiudk=;
        b=oaAYmcZcUDbNjNiq/pkmI28G4SZ5zrJ+SFPX13KDTKW7VsB3A/eeymSExgRgC7YMBg
         AU7AOJTbZeCiSNHaokflXaTOuVsT0wqKDHtTpQ7klNWowJlsgpWcceyVZYQjKNmhvprR
         K+C4/ybnu8gsniFh4eYWhuJX8bQSJsu2jU9f+szd3nwIJb9m1i4h1mN4NVudpMZd9Tgm
         ow1ji7ohO9rj30j0tSZ5RohvJJla6AWZgkt+PmniTZdJB01p0aCF/SMJ83L+YFKNzrKf
         ayFnd4Y/ih3JVujY0prjzWC/RV5FA3TdVowbPHSuVIi7KLKKx6ixq4on1Z2acUMci/Rc
         QnCQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=KBCMar5G;
       spf=pass (google.com: domain of srs0=u/6v=q4=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=u/6V=Q4=linuxfoundation.org=gregkh@kernel.org"
Return-Path: <SRS0=u/6V=Q4=linuxfoundation.org=gregkh@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o191si880360yba.1.2019.02.21.04.16.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Feb 2019 04:16:56 -0800 (PST)
Received-SPF: pass (google.com: domain of srs0=u/6v=q4=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=KBCMar5G;
       spf=pass (google.com: domain of srs0=u/6v=q4=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=u/6V=Q4=linuxfoundation.org=gregkh@kernel.org"
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 6B2182086C;
	Thu, 21 Feb 2019 12:16:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1550751415;
	bh=rrMms9Zr4ZDADX9n0IUYQIguOPYZ8k8TF6csYRraroc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KBCMar5GGZUdbK/779IeTXxnu085Sj2vg9rPnHqTI0dd2QR3QLddknWQT1uT6BtG0
	 4suQtu8vUHBK198zXb8nvsvaUFyTjW1UfCzDKG82v0A2YfVNfNWRtwSpGFY9lKGu7X
	 cO1FmfYJMMU4p4am5ZaVjN5lpXDDdGpPDbv2XMAw=
Date: Thu, 21 Feb 2019 13:16:51 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Bhanusree Pola <bhanusreemahesh@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] Staging: netlogic: Add SPDX License Identifier
Message-ID: <20190221121651.GA28536@kroah.com>
References: <20190221113544.GA29315@bhanusree-MacBookAir>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190221113544.GA29315@bhanusree-MacBookAir>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Thu, Feb 21, 2019 at 05:05:44PM +0530, Bhanusree Pola wrote:
> adds the SPDX GPL-2.0 license identifier in various files
> Issue found with checkpatch.pl warning:
> "WARNING: Missing or malformed SPDX-License-Identifier tag in line 1"
> 
> Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
> ---
>  drivers/staging/netlogic/platform_net.c | 1 +
>  drivers/staging/netlogic/platform_net.h | 1 +
>  drivers/staging/netlogic/xlr_net.c      | 1 +
>  drivers/staging/netlogic/xlr_net.h      | 1 +
>  4 files changed, 4 insertions(+)

When you resend a patch, you need to version it (this is v2, right)?

> 
> diff --git a/drivers/staging/netlogic/platform_net.c b/drivers/staging/netlogic/platform_net.c
> index abf4c71ee66b..3886c99c1f68 100644
> --- a/drivers/staging/netlogic/platform_net.c
> +++ b/drivers/staging/netlogic/platform_net.c
> @@ -1,3 +1,4 @@
> +// SPDX-License-Identifier: GPL-2.0

As said before, this is NOT the license of this file.  Please read the
text of the license yourself to verify this.

thanks,

greg k-h

