X-GM-THRID: 6478258108976070656
X-Received: by 10.80.167.162 with SMTP id i31mr369534edc.9.1508409307931;
        Thu, 19 Oct 2017 03:35:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.80.170.121 with SMTP id p54ls2717566edc.7.gmail; Thu, 19 Oct
 2017 03:35:07 -0700 (PDT)
X-Google-Smtp-Source: ABhQp+RhwcUTR9w+2SZrHCK/aFqW7+fGmuMP9ELXZXH5xCSgAIHEC91EpFXpg1j7/JKFd50Bryaq
X-Received: by 10.80.173.69 with SMTP id z5mr370610edc.0.1508409307060;
        Thu, 19 Oct 2017 03:35:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508409307; cv=none;
        d=google.com; s=arc-20160816;
        b=wV3rIHqOq/W6glSPS2P+r852+n2MUPq6GuxSgXZ6zFSSC9JS2vj1uA87Qcjgld7olp
         7FAFU7Dw2aPekB3BW0IUBXAr1dc32TAuuXzCSAbA7LRSMlKkr5S/CW1EiMcwtfVfTY8H
         r0qhLhNv2aOCkQucDFZDHAwrNF5znuxOjI5DAh7z7R0zC2jkNfj/t7iTjgDC7KMjVVdC
         l3vB0X9Fqv+bzIWJHz0XIZYtO7b3UnHFePgDd1SwMmXmdcN1rngm2J3mEvUdx5B+wgbQ
         ODln8kNRSMAfcVG998+0Q2o68rXDYAkeLoSCloMJZn4u3QdHEeb/ptD4Q7sJSfws6dkr
         AyUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=W0oKSzUxGrEHwi08GCeviHuxs9bY1NwOGGBb1fPvGOA=;
        b=Z0DNcyz6TttlaQRTtwRVTa8eSxhpz3usSRRM4JBq5DM9aGvv8Q4rpQaKpqjtuSDXrd
         xgjc5twdq4hZnf+Wh5yc4gqaeGnp1ceq1ChKQmCZXVpV5eVadupawTUZwkH9HETVfi7j
         s1cV7y168p5KbuLFgRQBLayAcZmgg533zVuBRQMOfkama7YX1aj21hhdeVBMNZMU0YRd
         FMxZEJlIqJyst3DtMYLUQKf8emJViigr20RMpZYVv9A13Oau8WchWGh3Bgeoncj0lxa7
         O233UMY3wmuR6XjLPjqmS6HuI9sZiXDe78r0tBvEMRO4OQDfcqWZfMMfWZcyggjAc7Iu
         p+Iw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) smtp.mailfrom=pneira@us.es
Return-Path: <pneira@us.es>
Received: from mail.us.es (mail.us.es. [193.147.175.20])
        by gmr-mx.google.com with ESMTPS id f21si514037edj.0.2017.10.19.03.35.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Oct 2017 03:35:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) client-ip=193.147.175.20;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) smtp.mailfrom=pneira@us.es
Received: from antivirus1-rhel7.int (unknown [192.168.2.11])
	by mail.us.es (Postfix) with ESMTP id 8E08F2492B
	for <outreachy-kernel@googlegroups.com>; Thu, 19 Oct 2017 12:35:06 +0200 (CEST)
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 7D270DA8FB
	for <outreachy-kernel@googlegroups.com>; Thu, 19 Oct 2017 12:35:06 +0200 (CEST)
Received: by antivirus1-rhel7.int (Postfix, from userid 99)
	id 72CD2DA8F4; Thu, 19 Oct 2017 12:35:06 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on antivirus1-rhel7.int
X-Spam-Level: 
X-Spam-Status: No, score=-108.2 required=7.5 tests=ALL_TRUSTED,BAYES_50,
	HEADER_FROM_DIFFERENT_DOMAINS,SMTPAUTH_US2,USER_IN_WHITELIST
	autolearn=disabled version=3.4.1
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 66371DA86F;
	Thu, 19 Oct 2017 12:35:04 +0200 (CEST)
Received: from 192.168.1.97 (192.168.1.97)
 by antivirus1-rhel7.int (F-Secure/fsigk_smtp/550/antivirus1-rhel7.int);
 Thu, 19 Oct 2017 12:35:04 +0200 (CEST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/antivirus1-rhel7.int)
Received: from us.es (129.166.216.87.static.jazztel.es [87.216.166.129])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: 1984lsi)
	by entrada.int (Postfix) with ESMTPSA id 301F040584CF;
	Thu, 19 Oct 2017 12:35:04 +0200 (CEST)
Date: Thu, 19 Oct 2017 12:35:03 +0200
X-SMTPAUTHUS: auth mail.us.es
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Harsha Sharma <harshasharmaiitr@gmail.com>
Cc: netfilter-devel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] tests: xlate: print total no. of testfiles, tests and
 tests passed
Message-ID: <20171019103503.GA2752@salvia>
References: <20171018142944.14872-1-harshasharmaiitr@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20171018142944.14872-1-harshasharmaiitr@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Virus-Scanned: ClamAV using ClamSMTP

On Wed, Oct 18, 2017 at 07:59:44PM +0530, Harsha Sharma wrote:
> Print errors and total no of tests and tests passed for testfile argument.
> Print total no. of testfiles, total no. of tests and total no. of tests
> passed for "all" argument.

BTW, could you also to the commit description an example on how the
output looks like, for people that don't want to apply and run it, so
we set clear expectations on what this is doing.

Thanks Harsha!

