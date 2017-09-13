X-GM-THRID: 6465198588662120448
X-Received: by 10.99.104.6 with SMTP id d6mr10844898pgc.84.1505303319708;
        Wed, 13 Sep 2017 04:48:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.41.197 with SMTP id p188ls3083408iop.51.gmail; Wed, 13 Sep
 2017 04:48:38 -0700 (PDT)
X-Received: by 10.176.6.8 with SMTP id f8mr11717996uaf.19.1505303318918;
        Wed, 13 Sep 2017 04:48:38 -0700 (PDT)
Received: by 10.55.19.41 with SMTP id d41msqkh;
        Wed, 13 Sep 2017 03:02:32 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QD6IkNxXhwRcIyoDECE+RzK9N2F3O9ugwG+i7lSTMmOLkBZRmR0V5kWY0+wgXpVev2HGMMJ
X-Received: by 10.46.101.8 with SMTP id z8mr1059160ljb.0.1505296952412;
        Wed, 13 Sep 2017 03:02:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505296952; cv=none;
        d=google.com; s=arc-20160816;
        b=UBGJ2xrUlVNxilZOOX+C2EPhBI5vyWBppQ+zYXJ4Txnn2ViypFwbBCElK0TyJ7bnfp
         QmpP/dgooLnzD2ldxCt7o8RDrnzeRxD+ES92NWC+FtjIMIqYvAF++0XYa9Sj/Pm/zfIf
         8eK6U9eE7jnGOfU+JLKC6kEUlDa1S/SfPXv/m2xeNUVixXWqC/T2WkL1S2tXvgnmo2iB
         I2IZ1Q6ErWw5DqsZs2HKZMIk5FX2UVmNw2Koth7pnXjOydMAq0Ku2adkFABc0xiwKPfE
         TxZM3yEJKIx28hZHVcQYCG/WSCxNzGDf6OAEFjT5lu7CHZQE4StVmTEkJ+NOuQVWHdYQ
         FLVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:cc:references:to:subject:arc-authentication-results;
        bh=4fRcfxX+gS0Zu/t8kBjRpTFK8sjBRpA3YbqYP8DUeRY=;
        b=UQwgi68wzoc9BFr1SA0xBG2TxSMrBBi/+wFndz4xzhCCKdI6z2azSg4ejCEe3krpWN
         pHG5usgyBVvcThsSrX7OZlmnNnC+gRyWRcmOFdFpRMoSg5FhtIwsTIVeS5/UsllcrwG9
         8WQ/wY8ElPcv+dqpC9DuHiQ+lizqSOyRUDwO3xFX86JZ5aipcIf6gxoWXzHxn8lVS5Cj
         d88XvWbqgSeIOtlxn9ByuQobmgDUM2Wy4SuYjBeqDwrtbMU6yfbYOS1D4yFs6hKmjByZ
         7wA14lqhDVWoS0FSiLzcwOc5cI2OZZdN89h78STkqj8qWJMhmC3gMhLHBQnwSC7eE0BE
         jmxQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of colin.king@canonical.com designates 91.189.89.112 as permitted sender) smtp.mailfrom=colin.king@canonical.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=canonical.com
Return-Path: <colin.king@canonical.com>
Received: from youngberry.canonical.com (youngberry.canonical.com. [91.189.89.112])
        by gmr-mx.google.com with ESMTPS id t142si61111wmt.2.2017.09.13.03.02.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Wed, 13 Sep 2017 03:02:32 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of colin.king@canonical.com designates 91.189.89.112 as permitted sender) client-ip=91.189.89.112;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of colin.king@canonical.com designates 91.189.89.112 as permitted sender) smtp.mailfrom=colin.king@canonical.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=canonical.com
Received: from 1.general.cking.uk.vpn ([10.172.193.212])
	by youngberry.canonical.com with esmtpsa (TLS1.0:DHE_RSA_AES_128_CBC_SHA1:16)
	(Exim 4.76)
	(envelope-from <colin.king@canonical.com>)
	id 1ds4V5-0004ib-DZ; Wed, 13 Sep 2017 10:02:31 +0000
Subject: Re: DR Checker and KINT static checkers
To: Dan Carpenter <dan.carpenter@oracle.com>, kernel-janitors@vger.kernel.org
References: <20170913095202.a6zsi3xeryzhmxrl@mwanda>
Cc: outreachy-kernel@googlegroups.com,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>
From: Colin Ian King <colin.king@canonical.com>
Message-ID: <92cea65d-9461-3fed-8e07-cd41059410a9@canonical.com>
Date: Wed, 13 Sep 2017 11:02:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <20170913095202.a6zsi3xeryzhmxrl@mwanda>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit

On 13/09/17 10:52, Dan Carpenter wrote:
> LWN.net recently had an article about Dr Checker.  It's a promising new
> static analysis tool.  The LWN article is for subscribers only until
> tomorrow, but anyone can read the PDF or install the code.  It would be
> really interesting if someone could run Dr Checker on a mainline kernel
> tree and post the results.
> https://lwn.net/Articles/733056/
> https://www.usenix.org/system/files/conference/usenixsecurity17/sec17-machiry.pdf
> https://github.com/ucsb-seclab/dr_checker/
> 
> The other tool that's quite interesting is KINT which looks for integer
> overflows.  It's a bit of a pain because you have to annotate some
> kernel functions to make it work.  The PDF and source code are here:
> 
> http://css.csail.mit.edu/kint/
> 
> regards,
> dan carpenter
> 

Funnily enough, I tried Dr Checker out earlier this week.  One has to
make it do a fake build of the kernel to gather information on how to
build the specific kernel config (e.g. how it was compiled and the gcc
build flags) and then this gets parsed by DR-Checker.  Unfortunately it
seems that it only supported arm architecture builds and it could not
handle the gcc output for a modern x86 amd64 gcc (gcc 7.2). I kind of
gave up after a couple of hours trying to make it work.  I suspect more
patient developers may figure out how to make it work. I may go back and
revisit this when I have some free time.

Colin

