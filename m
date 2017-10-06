X-GM-THRID: 6473369006202945536
X-Received: by 10.28.88.197 with SMTP id m188mr235399wmb.4.1507293519337;
        Fri, 06 Oct 2017 05:38:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.155.208 with SMTP id e16ls6018857wrc.11.gmail; Fri, 06 Oct
 2017 05:38:38 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBglexvb6h79ACCfiHIkfUPMQcl+cGeOw9/xo1UzrwDtRuVtLDR0y0In6+8KMQFDVnxjumH
X-Received: by 10.223.153.10 with SMTP id x10mr21119wrb.3.1507293518745;
        Fri, 06 Oct 2017 05:38:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507293518; cv=none;
        d=google.com; s=arc-20160816;
        b=hIa+o9Uw1hnVI3HWvLBLTchVl9BuTZojNXN9wR7TiSv6vdbR30q8c43FojEtkzr54G
         mW2xE9n3qguf8XODm0nS98caol50g7wpsRtJWEZDJ7ljmq02EgQoOL8Ac5GPbzUTHAki
         1voEcPlXYtHkewebtLmEnRHvli2pNrtk2ZFoCgw2HVJXQK74cbPL9vcVN1yaBLDr7rOT
         03CiF1/FZHEK8w+PbEJy3YGbB7YFxc/GayEMfTSQYUKQh3OYdR2XeshzgdCTwAxy68tL
         VvX+ZPrdEW/PjZ8xSeuOfXTUVXQvfw9VxEzJgSWEI1r4h4qHALohxDJ8zWXUKBABxY3c
         mVlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=bMR3jCG3V3J0CZagYHpY9x17IAiLAZrcF7mj1j58olE=;
        b=zAoSZr4MWlzNTP0uVJQ2ddGRkMJkSsQtHjtmw5pt94jCMcUYXZNXgOJibyAkE5jGZM
         lbfOVngML2rU2gmXOkwL8YiXGW3/dFapvn3ud6545BjgyzjPfjv6WwWUJytrllysdAYb
         Qxtdu99EzmGM2Vc5/k5yBPwlnTxPv0Gwl0cBEpUFWO0Okq1YBt9cOG4y60SatXVyT0cF
         zzRFz1yWxXE0y+I/IiPVZ0cH3aNM7AcJ5eMxJOqEO3O2Hf8t9DUYFX9QRECEJROopdmd
         X3HrFnS6zZC2KERHbw7hIYYqjkwaKg9lJ5LDR/Xh6pcd/hznZaP6AbY9XuxHcBRH9AU0
         r/Ew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of pablo@gnumonks.org designates 2001:780:45:1d:225:90ff:fe52:c662 as permitted sender) smtp.mailfrom=pablo@gnumonks.org
Return-Path: <pablo@gnumonks.org>
Received: from ganesha.gnumonks.org (ganesha.gnumonks.org. [2001:780:45:1d:225:90ff:fe52:c662])
        by gmr-mx.google.com with ESMTPS id 74si249052wme.2.2017.10.06.05.38.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 Oct 2017 05:38:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of pablo@gnumonks.org designates 2001:780:45:1d:225:90ff:fe52:c662 as permitted sender) client-ip=2001:780:45:1d:225:90ff:fe52:c662;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of pablo@gnumonks.org designates 2001:780:45:1d:225:90ff:fe52:c662 as permitted sender) smtp.mailfrom=pablo@gnumonks.org
Received: from 129.166.216.87.static.jazztel.es ([87.216.166.129] helo=gnumonks.org)
	by ganesha.gnumonks.org with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.84_2)
	(envelope-from <pablo@gnumonks.org>)
	id 1e0Rtk-0006aD-Fc; Fri, 06 Oct 2017 14:38:38 +0200
Date: Fri, 6 Oct 2017 14:38:35 +0200
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Harsha Sharma <harshasharmaiitr@gmail.com>
Cc: netfilter-devel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] tests: shell: add testcases for named objects
Message-ID: <20171006123835.GC4713@salvia>
References: <20171005101539.32010-1-harshasharmaiitr@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20171005101539.32010-1-harshasharmaiitr@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Spam-Score: -2.9 (--)

On Thu, Oct 05, 2017 at 03:45:39PM +0530, Harsha Sharma wrote:
> Add testcases for creating named objects with unique name, defined
> by user and referencing them from rule.

Also applied, thanks.

Could you add another tests for 'limit' objects too? I think I posted
an example to the mailing list.

