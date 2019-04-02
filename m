X-GM-THRID: 6675215103828164608
X-Received: by 2002:a0c:f68e:: with SMTP id p14mr8146396qvn.60.1554195747819;
        Tue, 02 Apr 2019 02:02:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aed:227a:: with SMTP id o55ls1015751qtc.8.gmail; Tue, 02 Apr
 2019 02:02:27 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyLwE2N/fBDtQb8x1ClUeUtG/1puqsiRA0Rt12M6NNz1C9lR4Rjl7eL1iTQ7BqCWxnpVm6i
X-Received: by 2002:ac8:24d2:: with SMTP id t18mr7939547qtt.1.1554195747235;
        Tue, 02 Apr 2019 02:02:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554195747; cv=none;
        d=google.com; s=arc-20160816;
        b=IXeYoHPt0QqV6Mal6kcB6vlPqOZmPU5/UHEQF3uU6hXe3s4PNInr1SWA2b3ls6UAay
         m/DQyu8LhlHSvR4m1GJlRFaxZQQ5Pdmu50nkHMd+3F5yvfvuDjp6+Fy8E6tHpDsKsku1
         n/6bNpO2RSKWBGBLW+Z1a2nXUSzU0aMK8vjO/C7ZsBTEpBb8DDss8Qc9KxhckEPg35xK
         I+a+RF9Lkun9GWrrcUhWqBLwlp+8FplYtyADpYcgrwd61h2ktPJWJpAfvTunrd6qwf0q
         YasrSZdytZF9VHbg/Kjy/8Ndkgz+6nckY4iPtl6SDd1UVsYbuMxKHAtZBrLGdjJ7BxcH
         aiEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=XrH+k44TD5DZa3qMsW9f3tHVriBUXJm3VPeaC6Udz44=;
        b=UhD962RdCT8/T6NKnEcprvwYbtb/cs0gCNF5nPd3ZA36Uhg1rnTtyebeSz7aOfd7Rp
         u3r5zhx/+THHGE79GOPBAAfJ733dIlnlG1gk8dO1uEgSN2LBiIzHsj7HCYJuqs2tfZ0D
         Dt6XWOb/AsXbblMCyDPjSBN7DV1I7QMiGAdxi6oe+Qtf3EtSZQweojUFesbJz4J61ULO
         BB2PPAyoXndsiReEjLi1AitWRDhpFh1+r+tGt0oWD5S3fvXFSTrWZQEw3zdfAp2J8GfG
         4v3DRZK3exFdCQWQhEpWaU+ntUikg9FBMk0xL1tXnSurXs2AIjBjyjIlPR3CAsJ8xLi9
         Ifvg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=1MLVVdXC;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w12si585039qka.3.2019.04.02.02.02.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Apr 2019 02:02:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=1MLVVdXC;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A3ACF2075E;
	Tue,  2 Apr 2019 09:02:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1554195746;
	bh=XrH+k44TD5DZa3qMsW9f3tHVriBUXJm3VPeaC6Udz44=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=1MLVVdXCNLRWDr8lX+W2riQR0FlwwRzI7PT0UPf9oEf98yCrZWQVboLcgjifIFKhZ
	 XRljgKlu+sCArQmpBoQd0yjvRv2mGGblCe6BsC2J+/HraZQ30607/wzUYAHabB2GLv
	 lHLEaicpVxm8Ww7B6/vnYbAq1Dl2/faOUHiMo8O8=
Date: Tue, 2 Apr 2019 11:02:23 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: rtl8723bs: include:
 Remove unnecessary typedef.
Message-ID: <20190402090223.GC25051@kroah.com>
References: <20190402084338.2817-1-sanjana99reddy99@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190402084338.2817-1-sanjana99reddy99@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Tue, Apr 02, 2019 at 02:13:38PM +0530, Sanjana Sanikommu wrote:
> Typedef no longer affect the code.

I'm sorry, but I do not understand this sentence :(

Can you try to explain why you are doing what you are doing a bit better
when you resend this?

thanks,

greg k-h

