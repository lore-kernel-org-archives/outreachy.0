X-GM-THRID: 6478258108976070656
X-Received: by 10.223.174.195 with SMTP id y61mr461670wrc.27.1508502841860;
        Fri, 20 Oct 2017 05:34:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.170.72 with SMTP id q8ls260401wrd.3.gmail; Fri, 20 Oct
 2017 05:34:00 -0700 (PDT)
X-Google-Smtp-Source: ABhQp+SXoUzPvTHrZ0gO6jAzPmc6EwAK0aKfaK3YKvln1AVg+tWrlKHX1alPtS3qSNaD0IRtq94K
X-Received: by 10.28.31.148 with SMTP id f142mr189993wmf.4.1508502840808;
        Fri, 20 Oct 2017 05:34:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508502840; cv=none;
        d=google.com; s=arc-20160816;
        b=Oz1vc56IVb9TM9FalBdntGvi6hGRy+CXj45uRfFeYFAsBguKFDUkwF/5sY9QoIaZet
         nfnsuUrLWkn6GQ6WnFAKlIOkPiseJqvekkROitsImOGhsccHdhHv6Ap44y5TAVHF1gzz
         26c7QWokm7CPxjfLj3KPYwCaTthIvn9aB7yfuaGMhgYe62mhaWwdaMqBxnokw4AdM4SY
         x0TwGrzc1olE9aITbyP6gytI2k1UsaWqD5/xfJzBousLAp6bPyXZAp4AFRMLhjqjyV2g
         +L414xXDuSYNvN2HKFO3QvCB49Dslkjz9E79YAabw/TnPFMBIX76HTz8cQFc5LGMPmoq
         SaTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=U3412AY+syn+z4TsUBeLnXNdLuXUsEmeMietfuwdd/A=;
        b=YGRS0aE/vXd/xZTkttNGMlYiWjBaM7O9Mpa9qZv4G+zwPFgqqqQBfADFIqX97TAm19
         CuPO6JCvXodVaA6j+NX1cjZet9GH/BGT1fqREiDj5Zvo84hNLbEUTvWwgkLF6vMUqlFr
         IQ+wu59L6vZniBishtujFLOmK8Q5j0uzwFYHVuyRWffnJI8ntgy63/8RNQNDQCWe4HM3
         pA2J/n1052LHfsaYUonSSiG802kDBNTiZwlqF2/P3hqhmXl1F/WHFfMQwi5uxiQGPJZz
         eMtL/fXWLZSsMsR82FNdoFz7ZouxZjirxxXywpCrKI4VTSgpozdzCnr8KSeu137Y7+AF
         wZ+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) smtp.mailfrom=pneira@us.es
Return-Path: <pneira@us.es>
Received: from mail.us.es (mail.us.es. [193.147.175.20])
        by gmr-mx.google.com with ESMTPS id b8si36409wrf.5.2017.10.20.05.34.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Oct 2017 05:34:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) client-ip=193.147.175.20;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) smtp.mailfrom=pneira@us.es
Received: from antivirus1-rhel7.int (unknown [192.168.2.11])
	by mail.us.es (Postfix) with ESMTP id 0E21669271
	for <outreachy-kernel@googlegroups.com>; Fri, 20 Oct 2017 14:34:00 +0200 (CEST)
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id E1021DA875
	for <outreachy-kernel@googlegroups.com>; Fri, 20 Oct 2017 14:33:59 +0200 (CEST)
Received: by antivirus1-rhel7.int (Postfix, from userid 99)
	id D6948DA873; Fri, 20 Oct 2017 14:33:59 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on antivirus1-rhel7.int
X-Spam-Level: 
X-Spam-Status: No, score=-108.2 required=7.5 tests=ALL_TRUSTED,BAYES_50,
	HEADER_FROM_DIFFERENT_DOMAINS,SMTPAUTH_US2,USER_IN_WHITELIST
	autolearn=disabled version=3.4.1
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id CE214DA86F;
	Fri, 20 Oct 2017 14:33:57 +0200 (CEST)
Received: from 192.168.1.97 (192.168.1.97)
 by antivirus1-rhel7.int (F-Secure/fsigk_smtp/550/antivirus1-rhel7.int);
 Fri, 20 Oct 2017 14:33:57 +0200 (CEST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/antivirus1-rhel7.int)
Received: from us.es (129.166.216.87.static.jazztel.es [87.216.166.129])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: 1984lsi)
	by entrada.int (Postfix) with ESMTPSA id 96CC040584CF;
	Fri, 20 Oct 2017 14:33:57 +0200 (CEST)
Date: Fri, 20 Oct 2017 14:33:56 +0200
X-SMTPAUTHUS: auth mail.us.es
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Harsha Sharma <harshasharmaiitr@gmail.com>
Cc: netfilter-devel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] tests: xlate: print total no. of testfiles, tests and
 tests passed
Message-ID: <20171020123356.GA5925@salvia>
References: <20171019124002.11066-1-harshasharmaiitr@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20171019124002.11066-1-harshasharmaiitr@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Virus-Scanned: ClamAV using ClamSMTP

On Thu, Oct 19, 2017 at 06:10:02PM +0530, Harsha Sharma wrote:
> Print errors and total no of tests and tests passed for testfile argument.
> Print total no. of testfiles, total no. of tests and total no. of tests
> passed for "all" argument.
> For e.g. :
> sudo ./xlate-test.py --all (adds this line in end with whole output)

Why we need --all?

Don't we print a line for each test that we run to report that it is
OK? I mean:

# python nft-test.py
any/fwd.t: OK
any/rt.t: OK
...

What I would like to see is that xlate-test.py behaves just like
nft-tests.py in what it prints.

Let me know, thanks!

> 64 test file, 246 tests, 242 tests passed
> 
> sudo ./xlate-test.py libxt_ipcomp.txlate
> 1 test file, 2 tests, 2 tests passed

