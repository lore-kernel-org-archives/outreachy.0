X-GM-THRID: 6473329881506643968
X-Received: by 10.28.215.198 with SMTP id o189mr243261wmg.11.1507293479569;
        Fri, 06 Oct 2017 05:37:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.157.208 with SMTP id q16ls1620447wre.5.gmail; Fri, 06 Oct
 2017 05:37:58 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QCLsYMoR33aUqrreLScKw6YqAIavs2j9VOrD0XYqtmru7jKZ+u28ldNQ3VNsPwip/0PG7vP
X-Received: by 10.223.161.158 with SMTP id u30mr188821wru.30.1507293478552;
        Fri, 06 Oct 2017 05:37:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507293478; cv=none;
        d=google.com; s=arc-20160816;
        b=aOTxDCWeLO7NBjY1vl19v0+xI+qQWyjilMKrwBjHgbVDySRqbaAddkm1kU02Yo6LVk
         8q3JnpQrInKVoIz9vXt1vM5FMwhs+QbizHT9JrjNLz+i/xACKC5FEkc0BsPiAImDYzX3
         4D0l8PxWqJOfYq9GiIB6ukzzSdq7MmPZwsNAaGX2+5HDaAZ9zj+vaVVVpyHygVBomfGC
         hYkUbFhSoP36qg7qcOvsnJYYIaAcFQUYJo445Yb3ZsZdEB+iKAWN5pyVPwvdtLLXdAdg
         A7skZTiy6mJMbePJTa3GXAwCRxz2jhcw14BeYxJKMH211LYJxSdg78iTgWKyGmA3JgV/
         oq/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=NyLaddgno5OAV1xLgnob2ltNuAT51GRJjpOZN7wGtOU=;
        b=Q79bwr8Qx4gKKLXddEp4TAT2eGGnLQTm95d0OKCJF7hmmld6ljGcajimVYut5iUajo
         Ts0VHsQ14KTx3Cx4Fj59qVqQ0L/cnBPBXI+j2OA2CskTirLpFmscn6Cd6m9XSubbI1no
         rReLSf/uOZF6gKQIs8FFhZUpW5QzmZ5QGhxPNCevaGm8QZA/sILaGeQFs1CPAgZ1zV+C
         eeMZ6D+ATA/eFplRvEJT/8q9t4WCOfK+3e0vYEAvHH6133Q145Zkv/Bckww5UK19Ky2Z
         Z0j2zlFCRW4YDOKArUcxny5ybsjVhMQLj8G4xt84GNkffWmxV3XJTOSqFUUNAdWpZQUg
         Dg6g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of pablo@gnumonks.org designates 2001:780:45:1d:225:90ff:fe52:c662 as permitted sender) smtp.mailfrom=pablo@gnumonks.org
Return-Path: <pablo@gnumonks.org>
Received: from ganesha.gnumonks.org (ganesha.gnumonks.org. [2001:780:45:1d:225:90ff:fe52:c662])
        by gmr-mx.google.com with ESMTPS id 200si265096wmj.0.2017.10.06.05.37.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 Oct 2017 05:37:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of pablo@gnumonks.org designates 2001:780:45:1d:225:90ff:fe52:c662 as permitted sender) client-ip=2001:780:45:1d:225:90ff:fe52:c662;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of pablo@gnumonks.org designates 2001:780:45:1d:225:90ff:fe52:c662 as permitted sender) smtp.mailfrom=pablo@gnumonks.org
Received: from 129.166.216.87.static.jazztel.es ([87.216.166.129] helo=gnumonks.org)
	by ganesha.gnumonks.org with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.84_2)
	(envelope-from <pablo@gnumonks.org>)
	id 1e0Rt6-0006Zu-0n; Fri, 06 Oct 2017 14:37:57 +0200
Date: Fri, 6 Oct 2017 14:37:55 +0200
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Harsha Sharma <harshasharmaiitr@gmail.com>
Cc: netfilter-devel@vger.kernel.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] test: shell: execute shell/run-tests.sh from any
 directory
Message-ID: <20171006123755.GB4713@salvia>
References: <20171005074347.20953-1-harshasharmaiitr@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20171005074347.20953-1-harshasharmaiitr@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Spam-Score: -2.9 (--)

On Thu, Oct 05, 2017 at 01:13:47PM +0530, Harsha Sharma wrote:
> Update shell/run-tests.sh to refer /src/nft with a relative path

Applied, thanks Harsha.

