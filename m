X-GM-THRID: 6465198588662120448
X-Received: by 10.107.174.94 with SMTP id x91mr10484017ioe.11.1505298103566;
        Wed, 13 Sep 2017 03:21:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.50.5 with SMTP id j5ls2812202ita.14.canary-gmail; Wed, 13
 Sep 2017 03:21:42 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QC1fDDViOcy/miJ5JD9E4v9za/FTUGos/JEwEDYP2o1TauqQiCvfmC3Ojz7w8LgpOT+feVl
X-Received: by 10.36.90.199 with SMTP id v190mr1454067ita.12.1505298102888;
        Wed, 13 Sep 2017 03:21:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505298102; cv=none;
        d=google.com; s=arc-20160816;
        b=vFA4I8e2rTdzsUDt5Z3Jin2R2LYR5x3bJyyU23cL4QGghb6jDxSa2DMJyPGzlEgC4q
         oeUUF+qLpoSyPLGOaWNvzBtDarT6DU8YeOkT1Zer/VkXhcc2fuz+Cj8R8pqZG5cveuxM
         sKA6hOpjrIKimrjG3wUKq3GUNy2z9+O9EzzmAinANb6+znXpy9pY9c1HfqaFLoPiKcDd
         zD8uxLctZu78x7FJ8C6Qi/oh65l4eCRJ7hW3/nZwH32E+dWV+Cdu4yrlj1s7H/hj5fiF
         ANnP+5urOs4ngxSPKHXh/J/QcU5Y66ZDZz3UtU4aKnacFFksIeAIy1BTq0G4+3BHUYP3
         izqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=FrPzC2L2e3g+QygePDypRV6cczL2NPSFGFh4SAij6PU=;
        b=kPM5DtARbCz+xtrJgLt0NKhVNCA8v/GLrMaMNv5K3KVkcIfuEMGrabkw0wqhNLRkgJ
         ArLm8vSuZ+YOyNlReHoSS3c0iSmjuAjQd0gPXVUGSo8BnMg64hhaw2dWrVmKGI2M+BPJ
         v3Us7HlBdIf8C/mtVRLELvL0m0zEON4n1BEYbSh7PQyW/xmEUG02Uq3YI824pljo78PM
         Jx8J653slZPvB0+ZYqOCD5Gl2RVMWgDi2vyC1ew/5YmkOQIW4h57qDqo3nnNmvxZUpWt
         hLTv1jI8z0av5y93VO6b6ebTE2qStIhRJJSdk8goQD6f37/mM+R18BELkvtrS7g04IuH
         rNBA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.81 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Return-Path: <dan.carpenter@oracle.com>
Received: from userp1040.oracle.com (userp1040.oracle.com. [156.151.31.81])
        by gmr-mx.google.com with ESMTPS id u19si1430267pfl.4.2017.09.13.03.21.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Sep 2017 03:21:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.81 as permitted sender) client-ip=156.151.31.81;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.81 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from userv0021.oracle.com (userv0021.oracle.com [156.151.31.71])
	by userp1040.oracle.com (Sentrion-MTA-4.3.2/Sentrion-MTA-4.3.2) with ESMTP id v8DALdiJ023870
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 13 Sep 2017 10:21:40 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
	by userv0021.oracle.com (8.14.4/8.14.4) with ESMTP id v8DALc2c022822
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 13 Sep 2017 10:21:39 GMT
Received: from ubhmp0005.oracle.com (ubhmp0005.oracle.com [156.151.24.58])
	by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id v8DALcEx007992;
	Wed, 13 Sep 2017 10:21:38 GMT
Received: from mwanda (/197.157.34.176)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Wed, 13 Sep 2017 10:21:37 +0000
Date: Wed, 13 Sep 2017 13:21:23 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: kernel-janitors@vger.kernel.org, outreachy-kernel@googlegroups.com,
        Colin King <colin.king@canonical.com>,
        Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Subject: Re: DR Checker and KINT static checkers
Message-ID: <20170913102123.nsg7dpolysn6fk5u@mwanda>
References: <20170913095202.a6zsi3xeryzhmxrl@mwanda>
 <alpine.DEB.2.20.1709131156450.13908@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1709131156450.13908@hadrien>
User-Agent: NeoMutt/20170113 (1.7.2)
X-Source-IP: userv0021.oracle.com [156.151.31.71]

On Wed, Sep 13, 2017 at 12:01:33PM +0200, Julia Lawall wrote:
> 
> On Wed, 13 Sep 2017, Dan Carpenter wrote:
> 
> > LWN.net recently had an article about Dr Checker.  It's a promising new
> > static analysis tool.  The LWN article is for subscribers only until
> > tomorrow, but anyone can read the PDF or install the code.  It would be
> > really interesting if someone could run Dr Checker on a mainline kernel
> > tree and post the results.
> > https://lwn.net/Articles/733056/
> > https://www.usenix.org/system/files/conference/usenixsecurity17/sec17-machiry.pdf
> > https://github.com/ucsb-seclab/dr_checker/
> 
> I'm always puzzled by statements like:
> 
> Some 5,000 warnings were generated, of which nearly 4,000 were verified as
> correct by the team. Of those, 158 were actual bugs that were reported
> upstream and fixed.

My read was that the 4000 warnings were code bugs that don't affect
runtime, such as inconsistent NULL checking but the pointer isn't
NULL so it doesn't affect runtime?  That's a pure guess.

> 
> If they took the time to validate 5000 bugs, couldn't they have sent more
> patches, or at least made the results public in some way so that other
> people could fix them?  Maybe the others are "duplicated, but correct"...

I think people are worried about posting the results so they don't get
blamed for disclosing a kernel vulnerability.  I used to worry about
that but now I assume everything a static checker can find is public
information already.

regards,
dan carpenter


