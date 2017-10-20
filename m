X-GM-THRID: 6478258108976070656
X-Received: by 10.28.128.140 with SMTP id b134mr182342wmd.3.1508503008089;
        Fri, 20 Oct 2017 05:36:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.191.29 with SMTP id p29ls292736wmf.8.canary-gmail; Fri, 20
 Oct 2017 05:36:47 -0700 (PDT)
X-Google-Smtp-Source: ABhQp+RnJDS0P4x7YlB+R6qDttIYUcBxmvVNVwxTPejCoEkG3ySqmgce02qdkqnISbY8cDQ67Qb9
X-Received: by 10.28.24.207 with SMTP id 198mr188054wmy.12.1508503007347;
        Fri, 20 Oct 2017 05:36:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508503007; cv=none;
        d=google.com; s=arc-20160816;
        b=u1ynTjmeMj8kxB4KXJXpmfnsEi5q8IxiZJNUlsfkebwNiQaKJMXl+LO8YVBllnGeTe
         y3EZtaP01BGDM8h3jrna8fbZBuLMpCugQc0nmStN4QtETjEvqiH3uqhUc8YurF3BeCaE
         bj72hIhFJZAD7AQxNkYxpBfZcFxLCTtDGwOqaTqGwwjaVQKHoxRbmzzGf/on6q7DYIBi
         03HjfWIXzz7ACOrks0o7j/MDtHmPOt5dYx4yUYgXCt+h5YrDZHaw7kNg7bfeMJwtwV46
         +nu1hQJ82goWD/Bj6mUL5A5dF/8rjSGmoh9PxGteRcGNYbo2PE1yxSDTtmIJpdFMxyZB
         sI6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=JsAPLCCKvQGFrJLV3ppXhiGBUIipKjQTSeso6BXugic=;
        b=SIVWI7P4D81ut8P/BHRaTpyk1KsZkve5H++tq6xVuT+itWF468tCXDQMHwt8MN8eiY
         T2X7k8DNTWv5bI0DNLgVlPWSxtfj8oxk6Pwj7lrsjhVbewd8OhTFlSVQSCdoDe4pyiBi
         XsQxw9rhFWW/i76cjaCYP1HuLpQIwig3GGSdvc0PpTpa4ZAb2jJ+n6dSsfrAgPgxFIM6
         Xl/SFlgvVT5qVas+v13Iqp8iJTniYsoa1hN8LVl7GIeGKeKsauKak/p5L3bQtM33nh3f
         syVucUoj866/MLp5nXTwpyBoJfbGD1VtK9Yzoyqe8HNKOXmeXBo4Kt3T0P1pbE39l1FP
         X/zg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) smtp.mailfrom=pneira@us.es
Return-Path: <pneira@us.es>
Received: from mail.us.es (mail.us.es. [193.147.175.20])
        by gmr-mx.google.com with ESMTPS id m62si452005wmi.1.2017.10.20.05.36.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Oct 2017 05:36:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) client-ip=193.147.175.20;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) smtp.mailfrom=pneira@us.es
Received: from antivirus1-rhel7.int (unknown [192.168.2.11])
	by mail.us.es (Postfix) with ESMTP id D1E2E6926B
	for <outreachy-kernel@googlegroups.com>; Fri, 20 Oct 2017 14:36:46 +0200 (CEST)
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id BDD8FDA804
	for <outreachy-kernel@googlegroups.com>; Fri, 20 Oct 2017 14:36:46 +0200 (CEST)
Received: by antivirus1-rhel7.int (Postfix, from userid 99)
	id B3867DA7F7; Fri, 20 Oct 2017 14:36:46 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on antivirus1-rhel7.int
X-Spam-Level: 
X-Spam-Status: No, score=-108.2 required=7.5 tests=ALL_TRUSTED,BAYES_50,
	HEADER_FROM_DIFFERENT_DOMAINS,SMTPAUTH_US2,USER_IN_WHITELIST
	autolearn=disabled version=3.4.1
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 72919DA848;
	Fri, 20 Oct 2017 14:36:44 +0200 (CEST)
Received: from 192.168.1.97 (192.168.1.97)
 by antivirus1-rhel7.int (F-Secure/fsigk_smtp/550/antivirus1-rhel7.int);
 Fri, 20 Oct 2017 14:36:44 +0200 (CEST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/antivirus1-rhel7.int)
Received: from us.es (129.166.216.87.static.jazztel.es [87.216.166.129])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: 1984lsi)
	by entrada.int (Postfix) with ESMTPSA id 4134040584CD;
	Fri, 20 Oct 2017 14:36:44 +0200 (CEST)
Date: Fri, 20 Oct 2017 14:36:43 +0200
X-SMTPAUTHUS: auth mail.us.es
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Harsha Sharma <harshasharmaiitr@gmail.com>
Cc: netfilter-devel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] tests: xlate: print total no. of testfiles, tests and
 tests passed
Message-ID: <20171020123643.GA6675@salvia>
References: <20171019124002.11066-1-harshasharmaiitr@gmail.com>
 <20171020123356.GA5925@salvia>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20171020123356.GA5925@salvia>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Virus-Scanned: ClamAV using ClamSMTP

On Fri, Oct 20, 2017 at 02:33:56PM +0200, Pablo Neira Ayuso wrote:
> On Thu, Oct 19, 2017 at 06:10:02PM +0530, Harsha Sharma wrote:
> > Print errors and total no of tests and tests passed for testfile argument.
> > Print total no. of testfiles, total no. of tests and total no. of tests
> > passed for "all" argument.
> > For e.g. :
> > sudo ./xlate-test.py --all (adds this line in end with whole output)
> 
> Why we need --all?

Oh, I forgot. This is like this, right?

http://patchwork.ozlabs.org/patch/825100/

Hm, but --all here should probably be --test-file-path or such.

I may be missing anything, but I think we don't need a --all for
xlate-test.py.

Thanks!

