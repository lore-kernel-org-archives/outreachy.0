X-GM-THRID: 6667786089217916928
X-Received: by 2002:a17:902:1125:: with SMTP id d34mr7235497pla.25.1553002514121;
        Tue, 19 Mar 2019 06:35:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:322:: with SMTP id 31ls10728114pld.1.gmail; Tue, 19
 Mar 2019 06:35:13 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzyLJ7PFY/dYUPNEizujBELSWGx2GVsIg+aS8S4YiLCZ8TrpAb3u0lmCXyY3G4vg5bRCd5C
X-Received: by 2002:a17:902:bd8e:: with SMTP id q14mr7166514pls.74.1553002513368;
        Tue, 19 Mar 2019 06:35:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553002513; cv=none;
        d=google.com; s=arc-20160816;
        b=VlsvznFzJhBJiP/kASvTFSemi4qlUhS8wk4T2dTU6GCADDy1xcL5PmhB/Q2LtzIN37
         DvYQCd29bHeYC7bE+lMPoO6OZ8RoRR7DUtYdbg2FosfC7MD56/5Zt/jmRou+5+987UDi
         fzN9QvzzU+TVGKhM9BQ/ihcsIJ5bJO6fDEPti2svxlS7jYMFDRFdmTHWBPA2zHbPk+k/
         XJprX0Luk6x1gNYtngt6eE3CFEQAimo/bM+MGfxlrTeuHa3QCIs32rkZuwFucOKz6Zd6
         RK5M03BGB23AuD0zYN6+d+cbSRqfZbVgw6Oyhs9loMgTPHT3RA6oozJQfg2M7u0NhPBO
         xQIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=t95y/ZLPZrOxgKc0KKHaHcRchK940mgd4I5PYVDOrvs=;
        b=rziLIpbL6ztLVUb9mVpkwwFvXYJRLFA/Cp95LHtNx+3R+XZGKX7Ux8zSvkEX6HE0ku
         3gvd/CD88J6XUvvqea+k+/SOrlbBORUnqDo08sv4YSbVqR/vXoFdi4opqkUui25c0pn3
         q8SwjmGBB7m+bEnnW0vjF3U6A2o+NMkyIjCe3lgex7V3kxgYrdo/7Zd1XPVlfcUJ0vn4
         JIwDXdYFtIyXPPVswnT1sPHc+K1qgMx9fbTLRs9O2Z3lSbT9CDn9PfcEN6mWEB1vGjc6
         RiTCscs+HuV/aRZO+7mqgV47MNDklpFNvzeYgM8mciRuy6oID61gTFs2MoHV5luShTu5
         NDPg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=mktHAERM;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 67si783477pga.1.2019.03.19.06.35.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Mar 2019 06:35:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=mktHAERM;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 971C62083D;
	Tue, 19 Mar 2019 13:35:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1553002513;
	bh=m+dMpJy4a+d5KhkbxII6TfKdwtK43igTR1nxXAUdYGk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mktHAERM2LryyKuaQT/H4YiYDDC65C1GM0m+XXPahhsPrCuW7iu7/xtGvqwjgqWO9
	 NkegYq06/3ObEWVgM4hbTp8fQ9JEMSLUGDoo4bMXSqq7+ZwLH/stlU/NFXz4dwfMgG
	 Rr7gvlD/ee7pCUI6CMQLrojhz8KSwttg0GhexWQc=
Date: Tue, 19 Mar 2019 14:35:10 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Bhagyashri Dighole <digholebhagyashri@gmail.com>
Cc: Outreachy <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH v7 1/2] Staging: fbtft: line over 80 characters
Message-ID: <20190319133510.GA26128@kroah.com>
References: <1552993237-4231-1-git-send-email-digholebhagyashri@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1552993237-4231-1-git-send-email-digholebhagyashri@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Tue, Mar 19, 2019 at 04:30:36PM +0530, Bhagyashri Dighole wrote:
> Fix the checkpatch.pl warning
> WARNING: line over 80 characters
> 
> Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
> ---
> Changes in v7:
>   - Use BIT() macro for left shifting.

This patch does not apply to my tree at all :(

Please rebase and resend.

thanks,

greg k-h

