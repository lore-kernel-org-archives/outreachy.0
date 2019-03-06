X-GM-THRID: 6662260493008240640
X-Received: by 2002:aca:e6cf:: with SMTP id d198mr17227103oih.24.1551864282060;
        Wed, 06 Mar 2019 01:24:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:3de5:: with SMTP id l92ls210295otc.0.gmail; Wed, 06 Mar
 2019 01:24:41 -0800 (PST)
X-Google-Smtp-Source: APXvYqyvse4w+IDn/3kT7dwuK4GfxJFH5dHF9CtvNysSw3reFaaQMmekK8KtLnw+JfJePRz+Cy29
X-Received: by 2002:a9d:635a:: with SMTP id y26mr3386602otk.53.1551864281274;
        Wed, 06 Mar 2019 01:24:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551864281; cv=none;
        d=google.com; s=arc-20160816;
        b=mjLCGP+ND6gDWdlbTLQ+yt03nj13XVKqyD/ZhHXNw1SSpt1y1pB0fE3pI6+HoDziIk
         N/+4oSd6qT9BBGAbTQ85u0vgMXGOrHU20Md0BWpTPmTKFXdnelrwn1QpqEc4IcsgbMc5
         4jK4cDEBge4yE9b3fen3RPqfIILQEFuCPFBKoscKT6XqaXH1s+uMzka52Loj/Vwtu30T
         3OyKDlCvG0CZtZmu0Mb5qlfntsKeg1/VkARvytr22mZbfLUJYbUfF7roZhnlEtUaLGFr
         CFSytWAUNayImI5kptBEROMspea/yJyrqUjMSknDyFnhosn15SdZZDgb9xjXXGKv2J14
         rHgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=JI2tLQLSRf04l5NDsYrR0RPsbo4MULBFnRGcuwM3C0I=;
        b=NaM/qsYnQH1ntnzWxWJIKTa77z4wBN/ho7u6WajLbkB8mqGPACc07tH+DOB2cy2ugo
         TARyexZ8Fwv841GhD9Z/F+p56aV2kX4HMwrdGUU0qOYbUWmQIgIgN7M3ZFtJJd3HBKPL
         njMih/eVAff7mx+/54fYzCVyk76Ojs9lDiVkb3OqW1m0ZuB8gKaf8/kZDOPLov+n3o6x
         w1JUhxHB58fQHhJ7m2W902Xle/zlPUgF9jW5e3hFrsgYbNPlmiZktrcpN/HZ0HqAEekH
         LW8KwqUvQTyGQGBRNKbRxYsaLWWmC4eoZtN1S1rgC8uFpft9lbPaQFGL24pGQ8knoWhO
         IHbA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=fvlwHaR5;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v129si77701oib.0.2019.03.06.01.24.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Mar 2019 01:24:41 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=fvlwHaR5;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id DDA682064A;
	Wed,  6 Mar 2019 09:24:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1551864280;
	bh=JI2tLQLSRf04l5NDsYrR0RPsbo4MULBFnRGcuwM3C0I=;
	h=Date:From:To:Subject:From;
	b=fvlwHaR5LWOGGq4gCvBurcXiqITDW+3ph4Bpds2r+fz/ASc5LTnwY5LJIa8cZ8C+H
	 MKaTZaeOZ+qAWIIrhvIz08csZRMZ0BY7o1HWzLvV9pulSG6zbN35wNXsSXVPUOca5P
	 tQZ4Xsa1MJZArbcxLDMz8+fWprNMWcI5QGFWqeAo=
Date: Wed, 6 Mar 2019 10:24:37 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: outreachy-kernel@googlegroups.com
Subject: Outreachy patches caught up on.
Message-ID: <20190306092437.GC29410@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.11.3 (2019-02-01)

Hi all,

I'm now caught up on all submitted outreachy patches that I can apply.

If you have not gotten an email from my patch system saying that your
patch was applied, consider it lost, and please rebase and resend it.

thanks,

greg k-h

