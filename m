X-GM-THRID: 6479957249539178496
X-Received: by 10.46.4.90 with SMTP id 87mr567004lje.16.1508861642645;
        Tue, 24 Oct 2017 09:14:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.67.89 with SMTP id m25ls14206lfj.1.gmail; Tue, 24 Oct 2017
 09:14:01 -0700 (PDT)
X-Google-Smtp-Source: ABhQp+SmkcQnzxXB4ZVJqYj2ZqcUmOIDoyxozqvRuZxwn8mG0h9x1DLRXeYUfAiCv9XQHvn03u2+
X-Received: by 10.25.63.131 with SMTP id m125mr467610lfa.24.1508861641698;
        Tue, 24 Oct 2017 09:14:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508861641; cv=none;
        d=google.com; s=arc-20160816;
        b=t9S2++DkC61Eb8nmeSxRxOGMmhD+ejKulwyj0Qb8yEoTY7GjBS4hVojKqNKs0hog2u
         xDB+qjAO8j8OpFW+jTmcPoc2NuNYBBZVd6+pNPXFvKTRC/tG2ibFwoqJ6WX1f+iPPxAo
         caVnu5g4uTXawM7tM/HHBqUKy+E2KZIeHvI2vmJfp/oMV3npHtIXY3oj9FEw3OuM1kcd
         46GeTdsKbt1bkDKpdnZZQSserAxoC/T1zXs5WArg+sFCRnv5oq7RRpsI6V/82UJ6OCCi
         R/SVUNLuNR+YKJz6+jrJl2r7rHMpK0xAmyzsKo3p8vIctfXsogX5oY1+adLfSupb12dl
         tdCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=nrt9BYgTqm299mdT6OREWddyl3f7QPPBNZviqEUDvE0=;
        b=1Cldn+XSpnNU4NlCSOJ9X/18CCirxjAR8xyfVTApus1NP27WVVX+r8ao/54WeyOn2U
         GYW1Bvw9n+v2WNDrQIH6p2g2SMo1RwZK97t68VYXLza8ou7RMhRpNCiu+Fu6yobWTUuS
         rw/4FtxibLbTvn5NODz7Y8QPcbz52H/HurJtRz4R8Pg9as8gxNDLlwRDU8vjDkbNif7b
         bbt3tJFIV3KZtMim9IoKRZQxAfv6fdQxyOPJDir3B4GJhXoIxF63ZQzY8EZC3NKFv/n2
         WANxBAVo0JQ8/+SUknaHsagKQNK8GmbgbWu+a4CCBxWlAGxjdfsyAm7VLrkiBN1zFXGp
         CPNg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) smtp.mailfrom=pneira@us.es
Return-Path: <pneira@us.es>
Received: from mail.us.es (mail.us.es. [193.147.175.20])
        by gmr-mx.google.com with ESMTPS id c185si13071lfd.5.2017.10.24.09.14.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Oct 2017 09:14:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) client-ip=193.147.175.20;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) smtp.mailfrom=pneira@us.es
Received: from antivirus1-rhel7.int (unknown [192.168.2.11])
	by mail.us.es (Postfix) with ESMTP id D8D55E9775
	for <outreachy-kernel@googlegroups.com>; Tue, 24 Oct 2017 18:14:00 +0200 (CEST)
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id B8B6CDA86E
	for <outreachy-kernel@googlegroups.com>; Tue, 24 Oct 2017 18:14:00 +0200 (CEST)
Received: by antivirus1-rhel7.int (Postfix, from userid 99)
	id AE3CCDA80B; Tue, 24 Oct 2017 18:14:00 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on antivirus1-rhel7.int
X-Spam-Level: 
X-Spam-Status: No, score=-107.5 required=7.5 tests=ALL_TRUSTED,BAYES_60,
	HEADER_FROM_DIFFERENT_DOMAINS,SMTPAUTH_US2,USER_IN_WHITELIST
	autolearn=disabled version=3.4.1
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 9D4CEDA7F7;
	Tue, 24 Oct 2017 18:13:58 +0200 (CEST)
Received: from 192.168.1.97 (192.168.1.97)
 by antivirus1-rhel7.int (F-Secure/fsigk_smtp/550/antivirus1-rhel7.int);
 Tue, 24 Oct 2017 18:13:58 +0200 (CEST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/antivirus1-rhel7.int)
Received: from us.es (40.red-212-170-55.staticip.rima-tde.net [212.170.55.40])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: 1984lsi)
	by entrada.int (Postfix) with ESMTPSA id 75D9B40584CB;
	Tue, 24 Oct 2017 18:13:58 +0200 (CEST)
Date: Tue, 24 Oct 2017 18:13:58 +0200
X-SMTPAUTHUS: auth mail.us.es
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Harsha Sharma <harshasharmaiitr@gmail.com>
Cc: netfilter-devel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] extensions: add tests for ipcomp protocol
Message-ID: <20171024161358.GA5875@salvia>
References: <20171023042316.4278-1-harshasharmaiitr@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20171023042316.4278-1-harshasharmaiitr@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Virus-Scanned: ClamAV using ClamSMTP

On Mon, Oct 23, 2017 at 09:53:16AM +0530, Harsha Sharma wrote:
> This patch adds test for ipcomp protocol.

Applied, thanks.

