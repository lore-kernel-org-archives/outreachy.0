X-GM-THRID: 6528705081880084480
X-Received: by 10.200.51.85 with SMTP id u21mr17012614qta.12.1520442224347;
        Wed, 07 Mar 2018 09:03:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.200.20.141 with SMTP id l13ls1278886qtj.8.gmail; Wed, 07 Mar
 2018 09:03:43 -0800 (PST)
X-Received: by 10.237.59.91 with SMTP id q27mr17258450qte.11.1520442223627;
        Wed, 07 Mar 2018 09:03:43 -0800 (PST)
Received: by 10.55.31.142 with SMTP id n14msqkh;
        Wed, 7 Mar 2018 09:01:51 -0800 (PST)
X-Google-Smtp-Source: AG47ELtlUj9uGDdOv4CMNtYfJfGCXO/1y7Uh+gBYpvAe7I6ZRu8MOq4kW5SXA8PugZpBd/zWMIxM
X-Received: by 10.55.9.130 with SMTP id 124mr16485541qkj.55.1520442111155;
        Wed, 07 Mar 2018 09:01:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520442110; cv=none;
        d=google.com; s=arc-20160816;
        b=ztTwrBPMDU+eoq/wj8aoVeois4Tv4O3VhacXC2S573x7fP5cmvwHKKiqvtrN2EBwb2
         wYWJ31amJE0e4qft92fdv4J6Oqsku7zPUvgrCiOBGteBVWkEjc7k0q/EqWztgI+ikbaQ
         XRctge5ngFfMwXciesPdTcfRgywPImrxxu8Bnc7OkM1OWu34Dhkor2qYGs5YqbR0xPt1
         EhZbIvjlTXWsxr70TaKmtKu6AczR0Af4cvQenRCBoAWC6/sBbrD27qO0v8ZVIHI08k1G
         TaIOwQWePvXPfqrt/ejBuRqHVPXpvI4SbGMkp1Msd2pP7paUhDTpMKX1jb/fi2/WpYnf
         bqpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:from
         :subject:cc:to:message-id:date:arc-authentication-results;
        bh=kbNb5cmDCbJ3yd4wNa/ggfeSrJ5x2fEWCbLiCuHTTtk=;
        b=K4limaZh0swhKw1XP+DTWAHo91aaL+X9kEApB237DaQXR1K0Rr+7P5m6fz9lqHHWXA
         i0blh4PTYCRwqv767OwLjxbaS7Az/3BldlPnJb+cAoKhl+Wj8+hhyYaxPbZQpg9/4wm5
         Tf/n0qdobCEITKKZs44i6NqRAL1JcqlyLi17Br09nLTokHANl2fmHpqOtjzzLrGWpX6s
         KMxX9xSy1Do9xxPDZtCJnphtkEAZj4Cinh+Z9FkPrk41H7ep+LdLTg/seKi0e6GPyDux
         Rghi6W5kPtY46ZfuPW7YCOSr4e9JwFld4pSxcna+oq/cUF7PLRez/TA8aDTm1nN54E+Q
         9PZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 184.105.139.130 is neither permitted nor denied by best guess record for domain of davem@davemloft.net) smtp.mailfrom=davem@davemloft.net
Return-Path: <davem@davemloft.net>
Received: from shards.monkeyblade.net (shards.monkeyblade.net. [184.105.139.130])
        by gmr-mx.google.com with ESMTPS id 44si1355028qtu.1.2018.03.07.09.01.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Mar 2018 09:01:50 -0800 (PST)
Received-SPF: neutral (google.com: 184.105.139.130 is neither permitted nor denied by best guess record for domain of davem@davemloft.net) client-ip=184.105.139.130;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 184.105.139.130 is neither permitted nor denied by best guess record for domain of davem@davemloft.net) smtp.mailfrom=davem@davemloft.net
Received: from localhost (67.110.78.66.ptr.us.xo.net [67.110.78.66])
	(using TLSv1 with cipher AES256-SHA (256/256 bits))
	(Client did not present a certificate)
	(Authenticated sender: davem-davemloft)
	by shards.monkeyblade.net (Postfix) with ESMTPSA id DB04F12170950;
	Wed,  7 Mar 2018 09:01:48 -0800 (PST)
Date: Wed, 07 Mar 2018 12:01:47 -0500 (EST)
Message-Id: <20180307.120147.195464731584241423.davem@davemloft.net>
To: arushisinghal19971997@gmail.com
Cc: jdmason@kudzu.us, jakub.kicinski@netronome.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, oss-drivers@netronome.com,
 outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] net: ethernet: Drop unnecessary continue
From: David Miller <davem@davemloft.net>
In-Reply-To: <CA+XqjF8_axeTnahPmokxmDnm4NmWo8QWSEmLejN4fO1nAiDaBA@mail.gmail.com>
References: <20180303161456.GA20194@seema-Inspiron-15-3567>
	<20180307.103901.1771176275743006915.davem@davemloft.net>
	<CA+XqjF8_axeTnahPmokxmDnm4NmWo8QWSEmLejN4fO1nAiDaBA@mail.gmail.com>
X-Mailer: Mew version 6.7 on Emacs 25.3 / Mule 6.0 (HANACHIRUSATO)
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12 (shards.monkeyblade.net [149.20.54.216]); Wed, 07 Mar 2018 09:01:49 -0800 (PST)

From: Arushi Singhal <arushisinghal19971997@gmail.com>
Date: Wed, 7 Mar 2018 22:22:13 +0530

> Yes I know it's for the inner loop.
> But I am not able to find, where I am wrong here

You are making what is essentially a nop change to a piece of code,
which if you had instead read carefully would have instead inspired
you to fix a real genuine bug instead.

