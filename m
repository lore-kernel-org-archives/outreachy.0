X-GM-THRID: 6538074938859847680
X-Received: by 10.80.242.133 with SMTP id f5mr545055edm.9.1522403468215;
        Fri, 30 Mar 2018 02:51:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.80.203.73 with SMTP id h9ls4225945edi.4.gmail; Fri, 30 Mar
 2018 02:51:06 -0700 (PDT)
X-Google-Smtp-Source: AIpwx49DikjUvmlmmBROyof+nnFAQobEEhrbQ0q0uEUGqU7j8wQpxuRd1RuqDZJ3G+arOeUJUZrI
X-Received: by 10.80.202.199 with SMTP id f7mr548972edi.12.1522403466600;
        Fri, 30 Mar 2018 02:51:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1522403466; cv=none;
        d=google.com; s=arc-20160816;
        b=n4v1vZpSgJ3nXbUSVo2yoqfjTJlWSpwOPtKDeyyy7kdY8XBK8zuYc9k/a41rNhCN1m
         UVYB2roAZDk5wxrfLnxUEl8DfDX0Q1qzd6eAF0Fe0oagHtZvo5/0MOy6Uri99unCjJMx
         4FAnLJqsU1g+02rI5f0ylPpTeM2aJzu6bWPU2MSLeDEW/kGg0CBqwGgGxqldJSv4udAU
         eFpG5t2Foc+WOpWg5oGO/IvRtCDLYnmeP6CbkUpAbeRwRAALBMwtqO9v9E7GqeiNgOGN
         sXVa0OEVekJNb9ApipKAgWB3cBRQ7jvZjRXdqgayeC6GpRFN3DnpF4zT6ei7pJfAr7lz
         O+KA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=EGzSBnni46b0zYzP5gvCj9ApBr0e9dK8d6u+Tv8pME0=;
        b=IV1dOi2aKFHyQ3EZOobjLQUmzGCU1A6v0wyrtTHruQTP8qytQfHxCeeMXsBLj5VF2s
         HTgN7gyDWoPYx9OupEeSPAbi944TJ3FvLIzprHu2pOvQHaH7kBU3vjs7dPIYSr2dzQsr
         jycdujSMNZyGybAeILi/PGSXiG6k0JUywCfzvHEIPax7wshKe/tsOs1eVJ6go06gahVK
         0STjStEydANulaBydxI/eH34RxNrezrrmszSu8uAOM//zu6rtWOENlceZK+Lhib8oZSc
         z6znwSEtxmdNqDTaB+OuADLVUH5IsXCmRemj+oRtLRJHzRkcVDpvND2k+Dp+Tm/qRk2R
         qyjw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) smtp.mailfrom=pneira@us.es
Return-Path: <pneira@us.es>
Received: from mail.us.es (mail.us.es. [193.147.175.20])
        by gmr-mx.google.com with ESMTPS id r15si401917edl.3.2018.03.30.02.51.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Mar 2018 02:51:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) client-ip=193.147.175.20;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) smtp.mailfrom=pneira@us.es
Received: from antivirus1-rhel7.int (unknown [192.168.2.11])
	by mail.us.es (Postfix) with ESMTP id 926BA5B852
	for <outreachy-kernel@googlegroups.com>; Fri, 30 Mar 2018 11:50:48 +0200 (CEST)
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 79D5EDA788
	for <outreachy-kernel@googlegroups.com>; Fri, 30 Mar 2018 11:50:48 +0200 (CEST)
Received: by antivirus1-rhel7.int (Postfix, from userid 99)
	id 5D568DA78C; Fri, 30 Mar 2018 11:50:48 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on antivirus1-rhel7.int
X-Spam-Level: 
X-Spam-Status: No, score=-106.8 required=7.5 tests=ALL_TRUSTED,BAYES_80,
	HEADER_FROM_DIFFERENT_DOMAINS,SMTPAUTH_US2,USER_IN_WHITELIST
	autolearn=disabled version=3.4.1
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 81FB2DA727;
	Fri, 30 Mar 2018 11:50:46 +0200 (CEST)
Received: from 192.168.1.97 (192.168.1.97)
 by antivirus1-rhel7.int (F-Secure/fsigk_smtp/550/antivirus1-rhel7.int);
 Fri, 30 Mar 2018 11:50:46 +0200 (CEST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/antivirus1-rhel7.int)
Received: from us.es (unknown [31.4.241.27])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: 1984lsi)
	by entrada.int (Postfix) with ESMTPSA id 2FF464265A2F;
	Fri, 30 Mar 2018 11:50:46 +0200 (CEST)
Date: Fri, 30 Mar 2018 11:51:00 +0200
X-SMTPAUTHUS: auth mail.us.es
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>,
	Jozsef Kadlecsik <kadlec@blackhole.kfki.hu>,
	Florian Westphal <fw@strlen.de>,
	"David S. Miller" <davem@davemloft.net>,
	netfilter-devel@vger.kernel.org, coreteam@netfilter.org,
	netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] net: netfilter: Merge assignment with return
Message-ID: <20180330095100.gujsk7v2rot22eni@salvia>
References: <20180328190950.GA3151@seema-Inspiron-15-3567>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180328190950.GA3151@seema-Inspiron-15-3567>
User-Agent: NeoMutt/20170113 (1.7.2)
X-Virus-Scanned: ClamAV using ClamSMTP

On Thu, Mar 29, 2018 at 12:39:50AM +0530, Arushi Singhal wrote:
> Merge assignment with return statement to directly return the value.

Applied, thanks Arushi.

