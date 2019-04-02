X-GM-THRID: 6675168703727796224
X-Received: by 2002:ab0:74d5:: with SMTP id f21mr7463495uaq.27.1554184203989;
        Mon, 01 Apr 2019 22:50:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:bd04:: with SMTP id y4ls2548556vsq.2.gmail; Mon, 01 Apr
 2019 22:50:03 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwXpB9EtfWX9azEEhUYoGpNQb834HzmT9inEnfld2315dW2g17knC8RK///vkbmscdNjjeQ
X-Received: by 2002:a67:df08:: with SMTP id s8mr2781740vsk.40.1554184203527;
        Mon, 01 Apr 2019 22:50:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554184203; cv=none;
        d=google.com; s=arc-20160816;
        b=YvBxzax/7SNFFcXctsBVlsB9PBYUk6OD1erjH4CWTI4/nzktTsNyCW+9/z0+zgb4sd
         Ejq+p6pm/GZb1IBvnhCjr7bycVpkd1XqN1njVoYmwWkLdi+bxzO8j5SRs4PtllBFLfky
         mb48n1RlE30QhSakKMfD+m/bD/GjDA6Zq4c3ejUvt+aRSyPVe2ETPDrVNXswIqzyGt0N
         3hIaRj3GmmPqdHljRQT0Wmvw2iNK/+iKQpxfC/MsBN7M9wmk/uGJmfmyrfWnli0ZI/fQ
         oJ5jcU3tWn2ulsWDjo5WsSMYnQtMgEYMHAdqmeVttqAOHU3eN0qd2JSxz2CZPXKJw4Ve
         BbCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=lRvJxTwRAP6HKjhxTSFZXl9uGDS7GBt7Gude+zJdCEg=;
        b=M+aIohfPmaRLTJU/KlvetXPuqRZPhmEwg56ZYwbaL1vm07gwW0BrMoi587uZP0QGAj
         vbsteWsTTGO/cuL6gZumhx5m1vlKn7GQltvconusRFNwMz0sHvdsFO4yH5aen6ieLnUq
         5uRRVHQRKww3WaUtiSvCT4PDteMXCSrsY2ESgbmZG6pZWdI7uH41N4onWNUzBgYTSMnB
         OYNoxM6Och2ivLfSwm/Na97PbFduXpvwLKFN6rxikOmEMUB/P/jlB7kTzuIMQDVUMHda
         IT0SXTWVBIVUHtv4nXxNl8g2nNgo2hB8GTsV35iPK2xyfMkbe6ct5MtyCfiqc3iNHGuz
         04xg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=BIKABKfP;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o80si663655vke.1.2019.04.01.22.50.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Apr 2019 22:50:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=BIKABKfP;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 1BA942084C;
	Tue,  2 Apr 2019 05:50:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1554184202;
	bh=ezM1kCQy0IooRg8kQlZuCYq1PNKwis6jbH+BD8r6Cmo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BIKABKfP/0riadScXAhd5/oZ29sD0DJC778/+7bn3/d0zIE6+nyTCx2XCbuN7YQOn
	 yPehnbh+PiRuqi+2GbBCXI7bObiQaj1JQ62TM7VYPnYZ2iitNBy0Yo+cLyR+5P7VRC
	 fnxHFqGhq5lSWZCU5+krsAsp93rB6kI/APbHdS1Q=
Date: Tue, 2 Apr 2019 07:49:56 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: sm750fb: Add SPDX GPL-2.0 license identifier
Message-ID: <20190402054956.GB14075@kroah.com>
References: <20190402054333.7354-1-sanjana99reddy99@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190402054333.7354-1-sanjana99reddy99@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Tue, Apr 02, 2019 at 11:13:33AM +0530, Sanjana Sanikommu wrote:
> Add the SPDX GPL-2.0 license identifier to fix checkpatch.pl warning
> Issue found by checkpatch.pl warning:
> "WARNING: Missing or malformed SPDX-License-Identifier tag in line 1"
> 
> Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
> ---
>  drivers/staging/sm750fb/sm750.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
> index e1a892e3b3ad..105089b97bf5 100644
> --- a/drivers/staging/sm750fb/sm750.c
> +++ b/drivers/staging/sm750fb/sm750.c
> @@ -1,3 +1,4 @@
> +// SPDX-License-Identifier: GPL-2.0
>  #include <linux/kernel.h>
>  #include <linux/module.h>
>  #include <linux/errno.h>

Why did you pick this license for this file?

You need to be explicit about why you did what you did here, as this is
a legal-type thing you are claiming.  As a hint, look at the huge commit
that I made to the whole kernel tree that did much this same thing just
over a year ago.

thanks,

greg k-h

