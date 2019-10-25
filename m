X-GM-THRID: 6748523404915113984
X-Received: by 2002:a81:8490:: with SMTP id u138mr547591ywf.156.1571972671280;
        Thu, 24 Oct 2019 20:04:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:7845:: with SMTP id t66ls102750ywc.14.gmail; Thu, 24 Oct
 2019 20:04:30 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzxKt4/jXlz+AF1/CJ9bykVJzd1QXo3VOFJqfGdByEIHwN+46yLQsWTijBtmI/lPk/4RW4W
X-Received: by 2002:a81:2a46:: with SMTP id q67mr581721ywq.384.1571972669915;
        Thu, 24 Oct 2019 20:04:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571972669; cv=none;
        d=google.com; s=arc-20160816;
        b=Hiqewqvbj/Uxoh+HY8/qmFJQvZ4oAoyvwL45bzIYEdcNdhryFGUxp8dq7VjGNDaSry
         RRi2sng0ADM4SguqAh5wcRLk0LMqbZw4Qjjn3WY62KtvK+8Euz1IYwpiUnp8qrF0wtmy
         hbCJjTEZqvhOyeC+8j64285uzKd5Yvoyn1+inwdb5D4LWb/qKgC6ilMtLlspevrnFTBN
         cfIsuV3GBoHgoayjL9FNqKRmbJHYVL6h0pwyoPKJbR5LGRWTFcsjASxNU4r+iAX+uXz7
         HwF0r+OKPOgJZxotY9W/yyiYtvyvDEs3mWgVlNBuLfk5s3zUQZTpGYAapujxqJuACnP0
         z6NQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=K3RpdxDwdNF/nG0mhYRT6tsrDtvPeOsGS9zk2J0KBvs=;
        b=B56dq5NKClVfE9smFppyXShJ0zGL18O+uzYkaFQO3n7HGRV4vSR5JUzzM42fsWXjAi
         TB9Py1Flss7fSi3hcUIqI3sYWHiF/XCAhKUXGRGth5U0qmnKAwwdr1GEZG4OEPYfetGv
         ZYB/WbDlN0OsxglY2t4ew6SLczZDRp7OOqJVp2V5k1h53wYKamlCsFeCNvZ4wm2zpNzr
         evffWdc7nkVjapK2qqodnDpQIfD01rHUj0Mz4gHQuifQxsc6zllDYi2FA34rZp6/QYBM
         3e5LlrheYf13wV6zVTbCJe+qNgq7cCxZY+T9xlsiNq+ht8J4CEvnTtQ6hNghILEpCLHd
         kXbg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=KgpY2v7J;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r185si63807ywe.2.2019.10.24.20.04.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 24 Oct 2019 20:04:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=KgpY2v7J;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [38.98.37.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A27C521928;
	Fri, 25 Oct 2019 03:04:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1571972668;
	bh=slJQ/Xdb2WOEfE9C25EE2zsxNzero2Keb0GkyM3Yea8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KgpY2v7JlJyoFiDiiVk24Mi7KG7+tpi2jJ7ydF6QsMLY/xQ/DCEPWcGJkfYiGfQ5g
	 IjwNySiLZHEvl5Gte60+4g4AmJCtWI3J361HVSXCPtMKZFiGpd+ef3xwXZvCYbNpni
	 bXJOod4FklGdSrdHp7st/Q+SZUKDH/jSQTru21WA=
Date: Thu, 24 Oct 2019 23:02:48 -0400
From: Greg KH <gregkh@linuxfoundation.org>
To: Jamal Shareef <jamal.k.shareef@gmail.com>
Cc: outreachy-kernel@googlegroups.com, sudipm.mukherjee@gmail.com,
	teddy.wang@siliconmotion.com
Subject: Re: [Outreachy kernel] [PATCH v4] staging: sm750fb: Edit CamelCase
 in dvi/sii164 files
Message-ID: <20191025030248.GA457824@kroah.com>
References: <20191021010138.27604-1-jamal.k.shareef@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191021010138.27604-1-jamal.k.shareef@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)

On Sun, Oct 20, 2019 at 06:01:38PM -0700, Jamal Shareef wrote:
> Edits CamelCase naming in a group of dependent
> sm750fb files. Issue found by checkpatch.
> 
> Removes hungarian notation as well as part of fix to
> CamelCase in a given word.
> 
> Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>

You have sent a bunch of these CamelCase fixes for this driver, yet I
have no idea which ones are to be applied, nor in what order.  Also I
tried applying some of them, and the build breaks :(

So can you resend all of the outstanding ones, in a numbered patch
series so I have a chance to get it right, after you test that they
build properly?

thanks,

greg k-h

