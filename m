X-GM-THRID: 6473933964018974720
X-Received: by 10.28.145.11 with SMTP id t11mr1266147wmd.0.1507555339111;
        Mon, 09 Oct 2017 06:22:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.145.14 with SMTP id t14ls162863wmd.4.canary-gmail; Mon, 09
 Oct 2017 06:22:18 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QABhbnj5Aajz8Tevbp5MTSX0v9qY22tf2aBYghSHISu9xZQTftM3Y3F7KekcLLPH/oRhl+B
X-Received: by 10.223.184.43 with SMTP id h40mr155473wrf.6.1507555338395;
        Mon, 09 Oct 2017 06:22:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507555338; cv=none;
        d=google.com; s=arc-20160816;
        b=WROdV80pVrEKzuxIrqxxT85LVj+TrvcNFCVUfA9H0DGxkkq3QECocyCIIfdGexew8h
         1X1QkvHkA3EVp/ssvFQkMVraSZ2aisoWavhcDbWCv5dEfO0zy0UceTeOLDno2mqF5VA/
         DOZiYSB//x03ka+i9dR3t6Ksbvimoum2yZH8HiZR3QVDYJ3uKKXntqOmnBDOAc1JJMDh
         YKuyVS4Q8CZ1OEivzKpFRdn5C/uVdLBbw/VXFsyRo2LPdoD2YiWsrmNu7WuaftYQxaTr
         EFWQLOU8L0AA1jhaX8lZ2PWaOvKve535wy36X1En4oUUw+nSjdKhFnN1iCXB/mVw9B/m
         /21g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=l97IExo/+PbtIaOE7Fz9GcAWi/X6syjvZGgKRiSNTpM=;
        b=gGoFFkcT58mbDY4YiUqyI7UlYiygGDLsVVcDSaeZJXltEHBZfer2D5aZ5RcExLbmR8
         zNu3S6aCzSO4576OYJUEegrlYmxklasslAuC9J76/NojI4XxbkSzp7ICoEN8C/z4GVzT
         gIpsxHgi/LjiUNpR7yPF4uyge1icIf7zkmsy1wYz3FQI4yakyFSTcjOKekaVCFT1SdGI
         mp6qZPxMcpS+Ipj1KsnPw9hnnv8iPgPmBpNCNwdOxAo0Hi9PPBYrSy2qMKaE/ISI0rOG
         vakCJpxIBrl8u7o83PxA4rWu+2s/bBmBGFy0NV/AN5sDynll8arWZ8ElTAKEufrqBfYe
         pCVQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of pablo@gnumonks.org designates 2001:780:45:1d:225:90ff:fe52:c662 as permitted sender) smtp.mailfrom=pablo@gnumonks.org
Return-Path: <pablo@gnumonks.org>
Received: from ganesha.gnumonks.org (ganesha.gnumonks.org. [2001:780:45:1d:225:90ff:fe52:c662])
        by gmr-mx.google.com with ESMTPS id p200si1024231wmg.4.2017.10.09.06.22.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Oct 2017 06:22:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of pablo@gnumonks.org designates 2001:780:45:1d:225:90ff:fe52:c662 as permitted sender) client-ip=2001:780:45:1d:225:90ff:fe52:c662;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of pablo@gnumonks.org designates 2001:780:45:1d:225:90ff:fe52:c662 as permitted sender) smtp.mailfrom=pablo@gnumonks.org
Received: from 129.166.216.87.static.jazztel.es ([87.216.166.129] helo=gnumonks.org)
	by ganesha.gnumonks.org with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.84_2)
	(envelope-from <pablo@gnumonks.org>)
	id 1e1Y0d-0007AJ-Vr; Mon, 09 Oct 2017 15:22:17 +0200
Date: Mon, 9 Oct 2017 15:22:15 +0200
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Harsha Sharma <harshasharmaiitr@gmail.com>
Cc: netfilter-devel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] test: shell: update shell/run-tests.sh to refer to
 relative path of testcase
Message-ID: <20171009132215.GB8460@salvia>
References: <20171006224752.2188-1-harshasharmaiitr@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20171006224752.2188-1-harshasharmaiitr@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Spam-Score: -2.9 (--)

On Sat, Oct 07, 2017 at 04:17:52AM +0530, Harsha Sharma wrote:
> Refer to relative path for tests from any directory if path for testcases
> is specified.

Applied, thanks.

