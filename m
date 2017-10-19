X-GM-THRID: 6478258108976070656
X-Received: by 10.223.173.147 with SMTP id w19mr113926wrc.32.1508409241866;
        Thu, 19 Oct 2017 03:34:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.144.209 with SMTP id i75ls1935047wri.12.gmail; Thu, 19 Oct
 2017 03:34:00 -0700 (PDT)
X-Google-Smtp-Source: ABhQp+QccI7VVIrtBB38EmZtL4JMlU9HEBwsAFfZNdMkoOh/yI1BazcsKY6zV5jhq3F/AnD9aCmi
X-Received: by 10.28.47.197 with SMTP id v188mr146945wmv.23.1508409240935;
        Thu, 19 Oct 2017 03:34:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508409240; cv=none;
        d=google.com; s=arc-20160816;
        b=K1ODTf1QbkSF+JGO+kGijQiFXQwYjBFMbWpimycjvMAuWmHc9eN51TEEG0ucNejtKg
         XY5sjHNY4v4t5WVECbNR+OuQ8myZC+0a6Ic4m1kXO192f9EiC3caWLyPIbKiDaCwrYzq
         aJezp7dqxhz9nXwhLzggMMG/OgdIqZ23sYO/EeWCGK2Tq3bjuYYXamP5+jkiaxLkI5hw
         tEpwfs0eJ8dgQ1/KsZsDQuhZ70hc9dbbMOz3icnFqtvoY9bOEK/BX1afFrFF5vtPOZk8
         ZSG6f/coXY5/1MPLPN7H/sQzMaMxo/Vq1JNkVYR3z04Jq/1Z39TE4fYcshI57tbgmrgg
         GDfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=9TEBCM/CK0ETqReomlFVwvzxn/eljT0Siec5YFh1mg4=;
        b=QvGNQRUIE1NZwDiEnLRJH/2UbRYw/q9TJt8a1lFFJQfgqEHUZGH8dBW5hYzcZIGT9J
         kdrbw15Jjw1g67THMxp6c79/ZU+Ni3kNjFEqs8n26Ex6k6Qw1X7+qgLH0J1DnfoByjP1
         GXLy8E0pRDluadmHsbKLKbDlhRC90GeS84Snvi0CDuCFnB7c3igippzXvvdz2yZdQ0rG
         MBLjB7gmY1xQPrla1SChWzZERWe7+4kuz+57lcbXyXFQqtOZ4GCldE2QSWmy0O9TDRXh
         1pnkSmQvq8Rqz9WcOsj4QKJtWxpk0AS3EQu4tHUW7VCQ82SrD4e5pLRAnNRaL+dwVryg
         aOPg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) smtp.mailfrom=pneira@us.es
Return-Path: <pneira@us.es>
Received: from mail.us.es (mail.us.es. [193.147.175.20])
        by gmr-mx.google.com with ESMTPS id m74si76678wma.0.2017.10.19.03.34.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Oct 2017 03:34:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) client-ip=193.147.175.20;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) smtp.mailfrom=pneira@us.es
Received: from antivirus1-rhel7.int (unknown [192.168.2.11])
	by mail.us.es (Postfix) with ESMTP id 483922492B
	for <outreachy-kernel@googlegroups.com>; Thu, 19 Oct 2017 12:34:00 +0200 (CEST)
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 3833CDA8E9
	for <outreachy-kernel@googlegroups.com>; Thu, 19 Oct 2017 12:34:00 +0200 (CEST)
Received: by antivirus1-rhel7.int (Postfix, from userid 99)
	id 2DA72DA871; Thu, 19 Oct 2017 12:34:00 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on antivirus1-rhel7.int
X-Spam-Level: 
X-Spam-Status: No, score=-108.2 required=7.5 tests=ALL_TRUSTED,BAYES_50,
	HEADER_FROM_DIFFERENT_DOMAINS,SMTPAUTH_US2,USER_IN_WHITELIST
	autolearn=disabled version=3.4.1
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 1A68FDA871;
	Thu, 19 Oct 2017 12:33:58 +0200 (CEST)
Received: from 192.168.1.97 (192.168.1.97)
 by antivirus1-rhel7.int (F-Secure/fsigk_smtp/550/antivirus1-rhel7.int);
 Thu, 19 Oct 2017 12:33:58 +0200 (CEST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/antivirus1-rhel7.int)
Received: from us.es (129.166.216.87.static.jazztel.es [87.216.166.129])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: 1984lsi)
	by entrada.int (Postfix) with ESMTPSA id D4F2540584D3;
	Thu, 19 Oct 2017 12:33:57 +0200 (CEST)
Date: Thu, 19 Oct 2017 12:33:57 +0200
X-SMTPAUTHUS: auth mail.us.es
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Harsha Sharma <harshasharmaiitr@gmail.com>
Cc: netfilter-devel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] tests: xlate: print total no. of testfiles, tests and
 tests passed
Message-ID: <20171019103357.GA2716@salvia>
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
> Change testfile argument to take "extensions/test_file" as argument.

Looks good, but general rule is:

        One logical change per patch.

I mean, this patch description says you're doing two things:

1) Print errors and total no of tests and tests passed for testfile
argument.

2) Change testfile argument to take "extensions/test_file" as
argument.

This means you have to send two patches, one for #1, and another one
for #2.

If you do so, git becomes way more useful when doing archeology, since
we know what patch added what single thing.

