X-GM-THRID: 6479716556024578048
X-Received: by 10.28.191.6 with SMTP id p6mr1034942wmf.25.1508861554176;
        Tue, 24 Oct 2017 09:12:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.163.22 with SMTP id c22ls175934wrb.0.gmail; Tue, 24 Oct
 2017 09:12:33 -0700 (PDT)
X-Google-Smtp-Source: ABhQp+STH2HK7Cv9dw73prkuNTJtp1nj/7uVqMANj1BW6aD582k++VMz1wYdFVXaWlf3JKV7XGFc
X-Received: by 10.28.108.22 with SMTP id h22mr1036371wmc.29.1508861553061;
        Tue, 24 Oct 2017 09:12:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508861553; cv=none;
        d=google.com; s=arc-20160816;
        b=u3J+FoY5Er7BFjmrL/xtwHgEGb48rBvQV8vnuMMCAxe5tJDsG4z7tYNYog6XjDvyNg
         Nww0mVi5mKzPhaOlFxojogti6t/ILXLdWxKw+ZGpF/T53+1Ve/RvVmjAWX7OrnYFR1S1
         UG6x+tyVGp5NMUn1fukCsr+SyD3Sq4uOi+aj82hIaIxo3pzKfmf+yEaQg0thfYCgHFSB
         5Jvhap6bwC9p20yU/C5uBUf2Q7F0a5QMgyQ25Ilz2ILOC8W/uyZZeM94VLMM/pzg/HjB
         tZhQRbWTrqMwrQ9E/PMlSKuImzel2Dhy/gpC38bYz2egBt8CgLA0zxsKvrK9x5OuklzA
         Qc+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=1ZX1ubquElF1eUj/Y6QkbWV/bMX4ZUqEIoMeHS9hgqM=;
        b=Qx1aKftxQU5cVycrh8sk2kY5VDIKVghkva2UwZR5XXcun3I+AhTS25PuUCMGXKAxmB
         o67N2Fdohp4MGGhMJwFm1gIBQfwBkVmjXQL60KceMTIFfFBZdf4ueu97X3Knx0VwBmTy
         hzeGyh3MZaBydIEjcegFMjB+eZWkEZeYFV4dzu5brQd6+s2nUXAPDSewGMNGNn6Sq+5t
         9yxyKTBHln5MmJ8JBpvJ1EMFHceue8ZfKDDINarxLZv9jZwQ9ZYIVjRatD+2SjeiYOKm
         jBtKGJZRkNFNLAGd5PtjHtVCJ8uzT9VX8lSUc2cB2eKrhVsllHAxKgvxDNxa2nrdw9+W
         wsyw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) smtp.mailfrom=pneira@us.es
Return-Path: <pneira@us.es>
Received: from mail.us.es (mail.us.es. [193.147.175.20])
        by gmr-mx.google.com with ESMTPS id 74si108622wme.2.2017.10.24.09.12.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Oct 2017 09:12:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) client-ip=193.147.175.20;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) smtp.mailfrom=pneira@us.es
Received: from antivirus1-rhel7.int (unknown [192.168.2.11])
	by mail.us.es (Postfix) with ESMTP id 4C0E2E978F
	for <outreachy-kernel@googlegroups.com>; Tue, 24 Oct 2017 18:12:31 +0200 (CEST)
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 3C6D1DA872
	for <outreachy-kernel@googlegroups.com>; Tue, 24 Oct 2017 18:12:31 +0200 (CEST)
Received: by antivirus1-rhel7.int (Postfix, from userid 99)
	id 322FCDA871; Tue, 24 Oct 2017 18:12:31 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on antivirus1-rhel7.int
X-Spam-Level: 
X-Spam-Status: No, score=-108.2 required=7.5 tests=ALL_TRUSTED,BAYES_50,
	HEADER_FROM_DIFFERENT_DOMAINS,SMTPAUTH_US2,USER_IN_WHITELIST
	autolearn=disabled version=3.4.1
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id F33CFDA86D;
	Tue, 24 Oct 2017 18:12:28 +0200 (CEST)
Received: from 192.168.1.97 (192.168.1.97)
 by antivirus1-rhel7.int (F-Secure/fsigk_smtp/550/antivirus1-rhel7.int);
 Tue, 24 Oct 2017 18:12:28 +0200 (CEST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/antivirus1-rhel7.int)
Received: from us.es (40.red-212-170-55.staticip.rima-tde.net [212.170.55.40])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: 1984lsi)
	by entrada.int (Postfix) with ESMTPSA id D6E6740584CB;
	Tue, 24 Oct 2017 18:12:28 +0200 (CEST)
Date: Tue, 24 Oct 2017 18:12:28 +0200
X-SMTPAUTHUS: auth mail.us.es
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Harsha Sharma <harshasharmaiitr@gmail.com>
Cc: netfilter-devel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3] tests: xlate: print output in same
 way as nft-test.py
Message-ID: <20171024161228.GA312@salvia>
References: <20171022124909.597-1-harshasharmaiitr@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20171022124909.597-1-harshasharmaiitr@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Virus-Scanned: ClamAV using ClamSMTP

On Sun, Oct 22, 2017 at 06:19:09PM +0530, Harsha Sharma wrote:
> Print errors and total no. of tests, tests passed, failed and errors for
> testfile argument
> Remove option "--all"
> Print file names for which all tests are passed with OK
> For e.g -
> sudo ./xlate-test.py
> generic.txlate: OK
> libip6t_DNAT.txlate: OK

Nice!

Applied, thanks a lot Harsha!

