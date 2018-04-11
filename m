X-GM-THRID: 6535333398324445184
X-Received: by 2002:a19:cd90:: with SMTP id d138-v6mr253766lfg.25.1523436065123;
        Wed, 11 Apr 2018 01:41:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.84.83 with SMTP id y19ls102275ljd.12.gmail; Wed, 11 Apr
 2018 01:41:03 -0700 (PDT)
X-Google-Smtp-Source: AIpwx48nSh17yEgoHEkLFix/OO6EVzm98VxniYojxQ4OXyAGSQYC1/UAxOBpViFbdGWoZkTPVSSY
X-Received: by 10.46.110.19 with SMTP id j19mr213359ljc.40.1523436063663;
        Wed, 11 Apr 2018 01:41:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1523436063; cv=none;
        d=google.com; s=arc-20160816;
        b=0ZiJj/3swwMctRR3G1qkh1jJIJ2lMIjiawP5Kvwzwq2ETGK0CyZOTNyvO1TcOIWDFi
         0Bq5W7is1x3Nw7ksxGb+5hQUtCjQE2JOsFMDsbTKHA6PDVt7rdQBM1Ox8Y/zqPs/3xPi
         feaCrqVr433Fn3sn0M0r79ccE7i7vZlg8xg6tIaem2Ye3navXQQrSMUnH+cw+YXgHr1T
         F9hlDt2CBGOcnq7aE9qxsHbGOVDjLyb8HD7DhCVRKC5ospAQergraMK1WUzEA+3vrTSP
         vjx52Ok7jHvEWAN0guvgXEYq8h0r85UMWE8Sg01xdhIr3A++8p6sbRJ36SwQUwzUWpZw
         w8Pg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=rviETenQqCfjIb+IkOMDrmbUmxB9y1HsQEV5h1B/HHw=;
        b=LWrjpZ+jgULbI9cL/0FU67/Y9YZMglKN5Dd7uE0M8FnlQ9yjysYZIDUIpISRCXzcsw
         63agjlvXxAIjbBfvwCAmhDcIoTVyO8pQoaVJ6OyIoxjkeRcHSXPiXVDuvgkD4Tu78tRT
         pCFKkeKHwWr2oSO0Xi0oIT62PbgSSwWROSfaqAuII4QqTb5Z8CNnFHc7j6Vt8+jEeEzv
         RVjvQtt0TODABWo+8QsqJLd/SjP6zX2+/2PIISyGEWU9gomDBAxq29fgjDKP+6vkyVB+
         X2u7H54Ferdcs3hm8LRQWo+S1ZWCm663EW2rWdfgVC+3NEXFmoZ8QJ2byXOFff8TzBUW
         xvsA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 193.147.175.20 is neither permitted nor denied by best guess record for domain of pablo@netfilter.org) smtp.mailfrom=pablo@netfilter.org
Return-Path: <pablo@netfilter.org>
Received: from mail.us.es (mail.us.es. [193.147.175.20])
        by gmr-mx.google.com with ESMTPS id k25si21295ljk.2.2018.04.11.01.41.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Apr 2018 01:41:03 -0700 (PDT)
Received-SPF: neutral (google.com: 193.147.175.20 is neither permitted nor denied by best guess record for domain of pablo@netfilter.org) client-ip=193.147.175.20;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 193.147.175.20 is neither permitted nor denied by best guess record for domain of pablo@netfilter.org) smtp.mailfrom=pablo@netfilter.org
Received: from antivirus1-rhel7.int (unknown [192.168.2.11])
	by mail.us.es (Postfix) with ESMTP id 3AFAB1C41C9
	for <outreachy-kernel@googlegroups.com>; Wed, 11 Apr 2018 10:40:34 +0200 (CEST)
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 2A7B0BAC4F
	for <outreachy-kernel@googlegroups.com>; Wed, 11 Apr 2018 10:40:34 +0200 (CEST)
Received: by antivirus1-rhel7.int (Postfix, from userid 99)
	id 292D4A6A0; Wed, 11 Apr 2018 10:40:34 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on antivirus1-rhel7.int
X-Spam-Level: 
X-Spam-Status: No, score=-108.2 required=7.5 tests=ALL_TRUSTED,BAYES_50,
	SMTPAUTH_US2,USER_IN_WHITELIST autolearn=disabled version=3.4.1
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id E1561DA4C3;
	Wed, 11 Apr 2018 10:40:30 +0200 (CEST)
Received: from 192.168.1.97 (192.168.1.97)
 by antivirus1-rhel7.int (F-Secure/fsigk_smtp/550/antivirus1-rhel7.int);
 Wed, 11 Apr 2018 10:40:30 +0200 (CEST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/antivirus1-rhel7.int)
Received: from us.es (sys.soleta.eu [212.170.55.40])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: 1984lsi)
	by entrada.int (Postfix) with ESMTPSA id AA45B41E4818;
	Wed, 11 Apr 2018 10:40:30 +0200 (CEST)
Date: Wed, 11 Apr 2018 10:40:57 +0200
X-SMTPAUTHUS: auth mail.us.es
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: netfilter-devel@vger.kernel.org,
	Jozsef Kadlecsik <kadlec@blackhole.kfki.hu>,
	Florian Westphal <fw@strlen.de>,
	"David S. Miller" <davem@davemloft.net>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH v2] iptables: constify option struct
Message-ID: <20180411084057.6ybypjabyllgwg4p@salvia>
References: <20180321095028.GA18484@seema-Inspiron-15-3567>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180321095028.GA18484@seema-Inspiron-15-3567>
User-Agent: NeoMutt/20170113 (1.7.2)
X-Virus-Scanned: ClamAV using ClamSMTP

On Wed, Mar 21, 2018 at 03:20:28PM +0530, Arushi Singhal wrote:
> The struct of type option is only used to initialise a field and
> is not modified anywhere.

I have placed these bits into iptables.git, thanks Arushi.

