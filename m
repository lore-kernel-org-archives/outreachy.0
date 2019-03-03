X-GM-THRID: 6662260493008240640
X-Received: by 2002:a62:2542:: with SMTP id l63mr5194823pfl.20.1551601694379;
        Sun, 03 Mar 2019 00:28:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:6e02:: with SMTP id j2ls5295107pfc.5.gmail; Sun, 03 Mar
 2019 00:28:13 -0800 (PST)
X-Google-Smtp-Source: APXvYqyhWhCqLH+TnYjpMApX5XEfU+//EVfak+A3nKxdCoWm04/rXFcPGKQXXXB+0r6XnAi2gskO
X-Received: by 2002:a63:594f:: with SMTP id j15mr5044026pgm.81.1551601693623;
        Sun, 03 Mar 2019 00:28:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551601693; cv=none;
        d=google.com; s=arc-20160816;
        b=t4fsFxBAhw/yGp6qCHKHcUnCIXT94gOc7tL0HoPc7sICSGqteGg0BsmJdvOS/1qEUq
         JJ05REq2lJtmXjJdiLVqNNjznNxnCUj68aqO2EnU7n5FptuwBtJnbJsbFN+q3DJYQb6i
         Pjt29rXTGnuFXOy/u6e/jdnrqJOaRj69vVeG5FvFs2+rvQIi17F0IB8R8djGb4RIVu1U
         AlWKJ+nuMKVsh+Rzyvr3ToTazo56dQBD9xXLJv4GG5YuEUL+BFo9YBkNPc1b+e3m9fOy
         elgFHCmp7YU/oa4SBtHd6qfAB10PXTo+I1SFCTHzB1ibtAsIn+jI53Vx4CqbxVDAy7FX
         P6VQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=crQ8xb8Mx0kGSk0i5wZB0SrDOiWSVnG8bpkrrV6uzp0=;
        b=jZSw/EgFVM8FkrrBpLjOpH/cJ5O5q6uVQEPA3g7CRw/WT+fgUEf1aiis/mEvM4BvUM
         u2zFwiqBDZqTJKA1AkW0soZSgedx+fVAKfM0dOH7vAJc0j6yqC4QqnLpP/ON4kqRwHz5
         Wls7Nser1aNdDM7FNaWs86C+Fji1E+Zy1DRyeS3I78sHAg8fG6wvi2zrCWL165UUIkjP
         h3a6iGwj/BQF5AN1BekXQax5zq1Djo+NiHDRDQE0OvSW6h1Pzr+FQuo4egRdhHvQXGN7
         YmZ4MYQTlB5UUjVMgVIbU73bdTMMKc9M40QxUUPzVOj8y++b+XZDJRCJZE1z+VpRla4x
         d+WA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=WHoRZXd3;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j8si115097plk.3.2019.03.03.00.28.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 03 Mar 2019 00:28:13 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=WHoRZXd3;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C968C20836;
	Sun,  3 Mar 2019 08:28:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1551601693;
	bh=crQ8xb8Mx0kGSk0i5wZB0SrDOiWSVnG8bpkrrV6uzp0=;
	h=Date:From:To:Subject:From;
	b=WHoRZXd3Ka5phvV+l+quZrEzP2TIMq+zjCdcD/LrAB693i1WnRIA/FqfbgkjNz9r3
	 //5gyjmtxllljUSMuwnYD2qWzQewlwOWhXG16493Gnw+FK4tA18LuwEDnQfIHSJH9y
	 9k/iKMA57bSRuxrbjSsOhlt1bE7yj2ECJoR4ORBs=
Date: Sun, 3 Mar 2019 09:28:09 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: outreachy-kernel@googlegroups.com
Subject: Outreachy patches caught up on.
Message-ID: <20190303082809.GA4778@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.11.3 (2019-02-01)

Hi all,

I'm now caught up on all submitted outreachy patches that I can apply.

If you have not gotten an email from my patch system saying that your
patch was applied, consider it lost, and please rebase and resend it.

Please note, the upstream merge window is going to open starting later
today, so that means my response time is going to be a bit slower than
normal this week on applying patches.

thanks,

greg k-h

