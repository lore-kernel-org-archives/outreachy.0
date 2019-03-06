X-GM-THRID: 6665132923205713920
X-Received: by 2002:ac8:2733:: with SMTP id g48mr3726446qtg.0.1551863334986;
        Wed, 06 Mar 2019 01:08:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:4889:: with SMTP id v131ls367245qka.6.gmail; Wed, 06 Mar
 2019 01:08:54 -0800 (PST)
X-Google-Smtp-Source: APXvYqz3e8/9OF0zObPRMA1Anzo7dDIVoKmojbcwj5fvLIoJFxQvFgLnLfFFw6V7qmDxEsoRfahv
X-Received: by 2002:a37:9346:: with SMTP id v67mr3816198qkd.37.1551863334523;
        Wed, 06 Mar 2019 01:08:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551863334; cv=none;
        d=google.com; s=arc-20160816;
        b=it2gOWlx8xE0/0GhLk4h0/6z9NSuPZaCSGt5kpXaYVqtEsByAWJEwlVFxddCxbiAhJ
         2zeZUlqB/RWecgO/iQoY/GOCuADe8yaB6/ClKD7uEZ2jorfvC7ivhFL9gkx4QgWnSlmP
         YKlsPzRSdSKJx79darjurKJnTrcL6Zpd3SPrHQU7qUbwbJi737ns+vXM7Xkf7QUgut9R
         Bd+0DNSaQDCMUGTLrtf6dNcv6yrqE2LK3oSkDVeN5Xqtq1nUNcNmGo9oO2RLdiK2ez+J
         eUZHAR2yk1oJ43VQ/K41Z1hnfXr0cgqTlkwRMKx3qQqDszPEV/eL6o9kvPTbUyk/UelK
         EGcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=vcmIFta4bbtbnE5uppgyPpps2gLT1q0SOfOD2jOahbE=;
        b=OHbBS9WhJMqD9RyHt6nbLipLDYduj1XepQNoSikhYsTZzrauiemwipnhL/G5k9xnnZ
         mTVt3KGEedW3paPwzlk7uPTVQVmYPTtG9Keo/Ajvm5jVrHUmfw/4IJSdVG1Vb6X4yaQJ
         DK/yWpC92widfzmBNY80QXafLtsddpqksfJ+GbMmlf3LCVi5Sj5FR6+L1Ic8gFWicscP
         mTc5mEdqywofMhAtpDWvaG82t5HoScx+rL0wCXZ220NadMF+jE4ginEtgoPuTvldH+Qc
         fbJy9qoxJxu+mElPwzYh16Lw7RtWYUgerlBytVgkN+8To8a3T6IA//5Stxg9giz2khwQ
         nnNA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=keH3zoRN;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p1si70036qkg.3.2019.03.06.01.08.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Mar 2019 01:08:54 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=keH3zoRN;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 123BD206DD;
	Wed,  6 Mar 2019 09:08:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1551863333;
	bh=FsQvrgLBa6wK1MqnTKUICUbP/G6ur7POXeCrQbaTMGc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=keH3zoRN9SlOu6IksLsE9T2LkKuuRrnNYEMN1aodF1A9XVmzI42Xs2uzD35keLtBI
	 SL2uCPQQrax2n9oskLee2+oGp1jYIDurXfHRDcUzvZrybaU4ahnhDkeluZSOAE0FVH
	 Aq+K29t8dWBjqFpIxu2wnpa1whqIhXAaMGxmw9pg=
Date: Wed, 6 Mar 2019 10:08:51 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Wentao Cai <etsai042@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 1/4] Staging: most: dim2: Fix malformed
 SPDX-License-Identifier
Message-ID: <20190306090851.GB7492@kroah.com>
References: <20190306043941.6141-1-etsai042@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190306043941.6141-1-etsai042@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Tue, Mar 05, 2019 at 08:39:38PM -0800, Wentao Cai wrote:
> This patch fixes the checkpatch.pl warning:
> WARNING: Missing or malformed SPDX-License-Identifier tag in line 1
> 
> Signed-off-by: Wentao Cai <etsai042@gmail.com>
> ---
>  drivers/staging/most/dim2/errors.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

All 4 of these patches had the same identical subject line, yet they did
different things :(

Please make them unique by at least adding the filename to the subject
line.  See other patches on this mailing list for examples of how to do
this.

thanks,

greg k-h

