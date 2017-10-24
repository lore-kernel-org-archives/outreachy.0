X-GM-THRID: 6476162089731751936
X-Received: by 10.80.204.74 with SMTP id n10mr4501801edi.2.1508860949853;
        Tue, 24 Oct 2017 09:02:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.80.219.194 with SMTP id s2ls468359edk.5.gmail; Tue, 24 Oct
 2017 09:02:28 -0700 (PDT)
X-Google-Smtp-Source: ABhQp+R3X530A+TLiXks/8ICKyaST6Ut0y7WwQMMtn2iUlKMmkUAwEGeKjMHfs0OGlWny/RiYgP5
X-Received: by 10.80.204.74 with SMTP id n10mr4501796edi.2.1508860948936;
        Tue, 24 Oct 2017 09:02:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508860948; cv=none;
        d=google.com; s=arc-20160816;
        b=c+qtONPeur9XDhiJqUPsm2iqqsG0Sdzy+nMTpXPswo6IyHM3vveJvgbe9DG3pbDD4u
         7p/1iFyQu4B8/t/cjkf+cZBh2SyFn3iEcIxh1X62CXVjSkkk7KRebRyLz43fXwEZrO5+
         DuQERAu361we0acnWLJhiABfmphJMPnKhkTpavdQ8cgHI4pqPKbRvJtIYwGoMbFayz4Z
         GdVRZ+8uD36KZKY0LgzNmOSCCheNesyX0Qo3TmuEFvcZJDWFr/1f+YR/1tMhIbALAffZ
         Sc2+l/YBHAkDfpNd8+FUdvf1aBErJ5gwP1YKWdYdRMi2ISvvjB7RF5G9LnlF4De0pvUK
         4OGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=65WlY6cYfowi53l5Sng4RBhkLvTqwcvfIUcEUxpJMQI=;
        b=zi5r58sveMixLGbb7/GU2mLjYLA+oWZJ3AshXu97HL6xcaVlTCSuFuo3rJPjYkikNb
         TjZiZ4BlGVosgtXuxlFmdeI8xF3mCdLpm4I7TllDSRx3X3slIo1GB6gN0S/YMPjpUKFR
         8HFu6Y2QGz8UFqvsszt8L9ZyKFdLuU4u/pF38tHyZTBxO7UUhcICY44c07BUTlEJ2THA
         bfTUCezwCrjtm6FSmE5kX3uNaQiGzLVZtxg7zEnaAgVDTnFOIl6J258EOLukqe9gInYD
         JoxDOG2nD2kbqSpy0kjvnGthCZOzfdllTSvsNVMFTGKeTnss/Td9cAkSsBHOPay4bMeB
         afzg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) smtp.mailfrom=pneira@us.es
Return-Path: <pneira@us.es>
Received: from mail.us.es (mail.us.es. [193.147.175.20])
        by gmr-mx.google.com with ESMTPS id i6si35066eda.1.2017.10.24.09.02.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Oct 2017 09:02:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) client-ip=193.147.175.20;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) smtp.mailfrom=pneira@us.es
Received: from antivirus1-rhel7.int (unknown [192.168.2.11])
	by mail.us.es (Postfix) with ESMTP id 4E366E9768
	for <outreachy-kernel@googlegroups.com>; Tue, 24 Oct 2017 18:02:28 +0200 (CEST)
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 3E25DDA848
	for <outreachy-kernel@googlegroups.com>; Tue, 24 Oct 2017 18:02:28 +0200 (CEST)
Received: by antivirus1-rhel7.int (Postfix, from userid 99)
	id 26CF9DA871; Tue, 24 Oct 2017 18:02:28 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on antivirus1-rhel7.int
X-Spam-Level: 
X-Spam-Status: No, score=-108.2 required=7.5 tests=ALL_TRUSTED,BAYES_50,
	HEADER_FROM_DIFFERENT_DOMAINS,SMTPAUTH_US2,USER_IN_WHITELIST
	autolearn=disabled version=3.4.1
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id E5909DA872;
	Tue, 24 Oct 2017 18:02:24 +0200 (CEST)
Received: from 192.168.1.97 (192.168.1.97)
 by antivirus1-rhel7.int (F-Secure/fsigk_smtp/550/antivirus1-rhel7.int);
 Tue, 24 Oct 2017 18:02:24 +0200 (CEST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/antivirus1-rhel7.int)
Received: from us.es (40.red-212-170-55.staticip.rima-tde.net [212.170.55.40])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: 1984lsi)
	by entrada.int (Postfix) with ESMTPSA id B435940584C3;
	Tue, 24 Oct 2017 18:02:24 +0200 (CEST)
Date: Tue, 24 Oct 2017 18:02:24 +0200
X-SMTPAUTHUS: auth mail.us.es
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Harsha Sharma <harshasharmaiitr@gmail.com>
Cc: kadlec@blackhole.kfki.hu, fw@strlen.de, davem@davemloft.net,
	netfilter-devel@vger.kernel.org, coreteam@netfilter.org,
	netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] netfilter: nf_conntrack_h323: Remove typedef struct
Message-ID: <20171024160224.GA12080@salvia>
References: <20171012225357.5144-1-harshasharmaiitr@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20171012225357.5144-1-harshasharmaiitr@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Virus-Scanned: ClamAV using ClamSMTP

On Fri, Oct 13, 2017 at 04:23:57AM +0530, Harsha Sharma wrote:
> Remove typedef from struct as linux-kernel coding style tends to
> avoid using typedefs.
> Done using following coccinelle semantic patch

Applied, thanks Harsha.

