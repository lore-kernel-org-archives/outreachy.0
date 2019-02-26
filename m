X-GM-THRID: 6662079194667679744
X-Received: by 2002:a6b:e719:: with SMTP id b25mr11858013ioh.30.1551177387741;
        Tue, 26 Feb 2019 02:36:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:147:: with SMTP id 68ls763212itk.1.gmail; Tue, 26 Feb
 2019 02:36:26 -0800 (PST)
X-Google-Smtp-Source: AHgI3Ibec1Vsqmfsovg9Yq1rag1jgC2IQ/u95yOzvof073E3YeQAcgxEMYRjfxrJpWtMeK4W+Epd
X-Received: by 2002:a24:94c6:: with SMTP id j189mr1973667ite.18.1551177386922;
        Tue, 26 Feb 2019 02:36:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551177386; cv=none;
        d=google.com; s=arc-20160816;
        b=bUEfvzeYolbO3cGit7vyYtqEb9zGVqC/LzUmHsquMm2AailECrEuIVIEBuH3OnCcf9
         ayx8QrPrdK6sm3cnskicRfuOuigO66V9B7KMIuJ/k/Xm9fQ0GNkoBSJN+f+Hf0MJSqx1
         Laavs5sR0bSxIZC2f++S9f+ARzAqU5o1g76fv74BfiOCm9AZDCH7mxcp+z3AwBba41+C
         5KsR0MdWHe3X9XTMXr0/DUMsqqZTz+ut2bJUZ/w6XD3jNAbcc3CCcMZFT/y9ihs9xACG
         fviF/ZqyoBjkWhLX/WAAOhs+3sg+w0qnKqYcJolDNvwopApizGSRgP+bEBRHbHJVoPgN
         vMKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=yDeSThohI4jYPgclRGNUdGQ8mvrYBFwjxhvu098SpcY=;
        b=RB9Olg7T+ZWnzIVxlS91HEKI+xwZ+mFToND4lLLQphxjdD749V80ch7pu4V42krUC/
         Nq8RCQyytPksns+fA0vrbi4SNXT03PXuCMPg8Z0XMewJ5yHgCoPVLCgkFuqoybE7S+kq
         TkdWAbaj0GHaHrCH04FL4JQaQx4sHgS7ZechzVgV5b6nHTyebOIXv6yVRxXloyimocsC
         8Am9YFak2N2h0fbQU4eMIjtqsQXhtorNSUD2DIujTdXmUUuhjwtb284yVuZTDzJHb2L9
         jfpNpYcJ61JQ2YLzfz3fPYMo41KSbP6NE8PWPz6jtvgUBIeEYmTJcA7FgtQeHHPijeBs
         J5MQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=srBMO1FS;
       spf=pass (google.com: domain of srs0=gmmv=rb=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=GmMv=RB=linuxfoundation.org=gregkh@kernel.org"
Return-Path: <SRS0=GmMv=RB=linuxfoundation.org=gregkh@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j6si732030itb.0.2019.02.26.02.36.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Feb 2019 02:36:26 -0800 (PST)
Received-SPF: pass (google.com: domain of srs0=gmmv=rb=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=srBMO1FS;
       spf=pass (google.com: domain of srs0=gmmv=rb=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=GmMv=RB=linuxfoundation.org=gregkh@kernel.org"
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 952512146F;
	Tue, 26 Feb 2019 10:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1551177386;
	bh=JRjt3EagDJlykvXnUocBBg7hVr9x+8o8dz7RnREN8bs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=srBMO1FSzZSBotDxWf+6YVAyIeEzK0Gc+YqocujcpII/0wOV/8I/FNaWw/n1pizeI
	 /rJfRFJHHSp8NrYcufilt6OzVpuDMpieqikjMx97rysf2spWTIyOvv+qn1oQQIxQJt
	 kWauRx9Nh9uKkHkt+VEyLQElg/o2AYH/uhStHHK0=
Date: Tue, 26 Feb 2019 11:36:23 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Jules Irenge <jbi.octave@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] staging: mt7621-eth: add SPDX GPL-2.0 license
 identifier ---added punctuation to v1 changelog text
Message-ID: <20190226103623.GA26036@kroah.com>
References: <20190225230929.3861-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190225230929.3861-1-jbi.octave@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Mon, Feb 25, 2019 at 11:09:29PM +0000, Jules Irenge wrote:
> Add SPDX GPL-2.0 license to fix missing SPDX warning
>  reported by checkpatch.pl.
> 
> Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> ---
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


When you do this, the follow-on patch afterward should remove the two
paragraphs of the license "boiler plate" text.

thanks,

greg k-h

