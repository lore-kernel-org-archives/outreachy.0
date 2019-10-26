X-GM-THRID: 6752186003812777984
X-Received: by 2002:a9d:6d0e:: with SMTP id o14mr7392542otp.354.1572115813962;
        Sat, 26 Oct 2019 11:50:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:4a9c:: with SMTP id i28ls2786027otf.14.gmail; Sat, 26
 Oct 2019 11:50:13 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxOcjIrkA/PwvKmPCn39FpcpSdiJ1h3WszSmtl1k1GotPuPt4CjDfjI2Sh2EEh1k5oQIARr
X-Received: by 2002:a9d:5a0b:: with SMTP id v11mr7840023oth.102.1572115813142;
        Sat, 26 Oct 2019 11:50:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572115813; cv=none;
        d=google.com; s=arc-20160816;
        b=q4IQSYBJ/rXJUGH6FKC9sTR6JaNgpOO0QetV2x5iYkyQPXfuPWyxu7cukoLEC2a/z9
         /X3528bzLCV1MIDqnEEXGrCjrWJCZwrYuVzj2MV/nNQ+MsEax32Vy5ZzpKTerocWYKu0
         cIS9gKtc7YyCMskaR0ghrkVLTciu6lEVxxpTPj32WMtmjdSPUccop3zRK+dGuXo7g+T5
         024GvKf3Gal7lLSb2tyyHoBS/oHwF1CGEbyDuR3ed0n232hX75tyrrqNpLiX0NI4qphj
         Fe7aeW6Q2eWfG7ZV6Fu/kG303YOdka7PRvNUjgBX5lzwu6E3sZVoU+9rvhTV7YlBN4dD
         zHZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=JI2tLQLSRf04l5NDsYrR0RPsbo4MULBFnRGcuwM3C0I=;
        b=kkUMdTe7n2h1vnJByj0koavREAHQZV3NrFTESx7mbhzqcSYtwjTFj6XYzU1mZUeBnQ
         838CTL2nbdl0RHvlEjS0uiyq0W3HdsmnuFJ6ALHsKsXhmKpEgzgazdIFQG1LMOCEmqF+
         yQa5AlVGzlOMvvCkSsAYh3GYsqATLy08nWCCXVs6Hb+aklWXsYFgPriuu0EtqjyBa9/i
         yv+64K/c70dFZnwx07SUlockL6HjHjz9gWiviqQP2JaACIqcjnaL+cGcCq90MgcjuQzA
         na1YcSMOHIR2jS/AzzxNzM/RXwC+jb5IWHMaMT9/7cT0uUfB0vVJVv9mK6w2RkzXWbUy
         matg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Er9lUbav;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m23si274062oic.1.2019.10.26.11.50.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 26 Oct 2019 11:50:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Er9lUbav;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id CD9F120679;
	Sat, 26 Oct 2019 18:50:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1572115812;
	bh=JI2tLQLSRf04l5NDsYrR0RPsbo4MULBFnRGcuwM3C0I=;
	h=Date:From:To:Subject:From;
	b=Er9lUbavnRF5D16fzj1oJv3f7LDzBYCDkG8M/lkhMpw6vEni7clLpjgLYB2awR7fa
	 9Jr9Rgtl9jNaZQdUzpVVAjs4ib0oEkZr8a/zvfEEqGMgnIKAEpKJkqnEBNTns5ubzA
	 iqxH+cm6ZBjfzteIA+o03hzpAhwd92NzhmNpbpWQ=
Date: Sat, 26 Oct 2019 20:50:09 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: outreachy-kernel@googlegroups.com
Subject: Outreachy patches caught up on.
Message-ID: <20191026185009.GA804847@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.12.2 (2019-09-21)

Hi all,

I'm now caught up on all submitted outreachy patches that I can apply.

If you have not gotten an email from my patch system saying that your
patch was applied, consider it lost, and please rebase and resend it.

thanks,

greg k-h

