X-GM-THRID: 6477808984307793920
X-Received: by 10.46.86.156 with SMTP id k28mr68065lje.22.1508239688619;
        Tue, 17 Oct 2017 04:28:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.80.11 with SMTP id e11ls184727ljb.4.gmail; Tue, 17 Oct 2017
 04:28:07 -0700 (PDT)
X-Google-Smtp-Source: ABhQp+QGkeyp9QgN9rt7WrUxqsRxHDqe4h2t9uG2hwEp83lbeSRmySDm35QTXKPVW0yZqV0xYRwm
X-Received: by 10.25.148.130 with SMTP id o2mr360107lfk.36.1508239686988;
        Tue, 17 Oct 2017 04:28:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508239686; cv=none;
        d=google.com; s=arc-20160816;
        b=Op8rPIUUR/2uP1QI26JMSuGcK3O/LUJP/8EsqSB56f4/ZcMAl6Gt88DotRIf7+FU+P
         fF4WebCX4kvBwyAiVgLV7mQDZ+THQFKCKG8CyF4UTVgj6k808ahShjYCnWpLIIVdOAMY
         WK1E9WuMD6S3stJdPXmsh8I12/3JSx5EPEISsrOGdQWf7x/hYD6d7nE9X56eO6F+ia7J
         W3W72FtBTTyKIEXWugjL+p1ZI1BZ0XXHg5zF0RaJ/Wif7fYwAKoh1lBtuQ3CyjPsi9TP
         54IN+aD0z/VEwHGTgz9qPLZN5oyQgsbqCCjr9K+u/nJseYnEgszYZwa3WZjjS64szg/w
         5MLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=0Kt/bkHIpjosBfpqWLEMazubZ2FnWJD+JEop5le06M4=;
        b=xZovBIYH5BPM1jy72O0ofgyqZ33ANSAaZLZbNl+YDtP0iSZGsfdli1coGLWdYtbQz0
         jXXENi2DjIR6zMWRpTY9W6tVAt6IF+yctYhRtEr6L1pAKXWjwclwsTsBHWGRFyAIY3A/
         e6DJ4siqEFwIDq7KR5LOOK4d262Y8p4PWym96274tVNwyNUjzVAH4Wm/MUDINZwmlSPA
         vbM2v8uUhb/dLwMcaaHCoAsfZK9Gw8D5x5i/WkLxMwCCZwaBhJ9sLRJGReRHuJS+1A0/
         6/nruN0XDlyVWsL0Zehi97g/PGIkipyFTZPV8iXC62/nPATd57bV/UIzdXYZ30gDeb3j
         23GQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) smtp.mailfrom=pneira@us.es
Return-Path: <pneira@us.es>
Received: from mail.us.es (mail.us.es. [193.147.175.20])
        by gmr-mx.google.com with ESMTPS id l14si480765lje.1.2017.10.17.04.28.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Oct 2017 04:28:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) client-ip=193.147.175.20;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) smtp.mailfrom=pneira@us.es
Received: from antivirus1-rhel7.int (unknown [192.168.2.11])
	by mail.us.es (Postfix) with ESMTP id 7E3CD220AC
	for <outreachy-kernel@googlegroups.com>; Tue, 17 Oct 2017 13:28:04 +0200 (CEST)
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 6BB14DA392
	for <outreachy-kernel@googlegroups.com>; Tue, 17 Oct 2017 13:28:04 +0200 (CEST)
Received: by antivirus1-rhel7.int (Postfix, from userid 99)
	id 6AAC2DA391; Tue, 17 Oct 2017 13:28:04 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on antivirus1-rhel7.int
X-Spam-Level: 
X-Spam-Status: No, score=-108.2 required=7.5 tests=ALL_TRUSTED,BAYES_50,
	HEADER_FROM_DIFFERENT_DOMAINS,SMTPAUTH_US2,USER_IN_WHITELIST
	autolearn=disabled version=3.4.1
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id DBEADDA86E;
	Tue, 17 Oct 2017 13:27:58 +0200 (CEST)
Received: from 192.168.1.97 (192.168.1.97)
 by antivirus1-rhel7.int (F-Secure/fsigk_smtp/550/antivirus1-rhel7.int);
 Tue, 17 Oct 2017 13:27:57 +0200 (CEST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/antivirus1-rhel7.int)
Received: from us.es (129.166.216.87.static.jazztel.es [87.216.166.129])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: 1984lsi)
	by entrada.int (Postfix) with ESMTPSA id A4EF240584D3;
	Tue, 17 Oct 2017 13:27:58 +0200 (CEST)
Date: Tue, 17 Oct 2017 13:27:57 +0200
X-SMTPAUTHUS: auth mail.us.es
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Harsha Sharma <harshasharmaiitr@gmail.com>
Cc: netfilter-devel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] tests: xlate: print tests passed and error for
 testfile argument
Message-ID: <20171017112757.GA8578@salvia>
References: <20171017092458.18672-1-harshasharmaiitr@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20171017092458.18672-1-harshasharmaiitr@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Virus-Scanned: ClamAV using ClamSMTP

On Tue, Oct 17, 2017 at 02:54:58PM +0530, Harsha Sharma wrote:
> Print tests passed with errors and warnings when run with only specified
> test file.

I would expect this works like this, for consistency with other test
infrastructure we have:

# python xlate-test.py extensions/libxt_ecn.txlate 
Error: test file does not exist

I can see here this works like this:

# python xlate-test.py libxt_ecn.txlate 

But as said, it is counterintuitive. Would you revisit this patch?

Thanks.

