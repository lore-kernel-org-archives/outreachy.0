X-GM-THRID: 6465198588662120448
X-Received: by 10.176.89.78 with SMTP id o14mr10437948uad.106.1505296348875;
        Wed, 13 Sep 2017 02:52:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.81.11 with SMTP id f11ls2274161iob.45.gmail; Wed, 13 Sep
 2017 02:52:28 -0700 (PDT)
X-Google-Smtp-Source: ADKCNb6Bkz60Vcf1o1STo3Jc2eDxNw9wCptkelH4mdJuXsAfo96rNIingmoD0Yer+n1A07+9Cd6W
X-Received: by 10.98.147.216 with SMTP id r85mr9544226pfk.33.1505296348098;
        Wed, 13 Sep 2017 02:52:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505296348; cv=none;
        d=google.com; s=arc-20160816;
        b=I7nUXUWLhgbLq00O+UdS/NP0jA8NMblvWH5By5giol/1tfxvV9Luod6xkPY8ftm/ze
         WKUOOiNin3uZYiFPmMe1QCBwfLoK4Pp1bNW4/mzdNQ89keJNvXKY/JHiT95UVsaQoFHN
         xtCbS+C4eNBo9lSXCyfWTNbyctskk8AYBWi3gIu3aMOxZHiCd/JUjA8mmK7mWdwMhjwW
         5HUIYhF7xMw8RNel96JCvOd/cuWVPatBOuMaAP7A1+sVVyVVm0pjLTbTDFOPNtQNRTpy
         rvmHpgjUiJCvMVr+vtvtK7NHkC5dWKJmFutusGmnynQqPkBKlH9Y41UdGudqlgqa+Nox
         +TOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:arc-authentication-results;
        bh=KI65JooWynbpnCr1+C5ZwMtOrxQ6Q78/nm8vwT4cxsU=;
        b=nQdfbAL/91nGopqUVy3fd2ePjFhV7jmGymGKEonHPGMaT9ukTqmDC0Be1lGBSJxgmT
         qsYcphwuy/JBsFgMoa79YGoFelUVH4kQsMQ/40RKEBpTMMQ5hIh52+mgaV5Iu8HcQB3E
         PAuQ97BZ3soF73SxVoMLdHPTCAp2k/3f7wAzUJNIrTV0IYUkzHok+g/OpJEr6aFG6wfe
         fdHEYr0YqQBmrZT0BF2rb+dFWEaLstiS2UmKc5uoTy8P6ytTDZFp2SEkK3ns+1UXZDF3
         ScirgsWwaywq+nb9d8BF6WeK2J53uU5rBDNKfJbZ815cAyHMTPvFIPUh8e+AgFM2wH3k
         8F2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.81 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Return-Path: <dan.carpenter@oracle.com>
Received: from userp1040.oracle.com (userp1040.oracle.com. [156.151.31.81])
        by gmr-mx.google.com with ESMTPS id u184si719639pfb.17.2017.09.13.02.52.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Sep 2017 02:52:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.81 as permitted sender) client-ip=156.151.31.81;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.81 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from userv0022.oracle.com (userv0022.oracle.com [156.151.31.74])
	by userp1040.oracle.com (Sentrion-MTA-4.3.2/Sentrion-MTA-4.3.2) with ESMTP id v8D9qOLT023783
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 13 Sep 2017 09:52:25 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
	by userv0022.oracle.com (8.14.4/8.14.4) with ESMTP id v8D9qOGi028801
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 13 Sep 2017 09:52:24 GMT
Received: from ubhmp0005.oracle.com (ubhmp0005.oracle.com [156.151.24.58])
	by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id v8D9qM7u015689;
	Wed, 13 Sep 2017 09:52:23 GMT
Received: from mwanda (/197.157.34.176)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Wed, 13 Sep 2017 09:52:21 +0000
Date: Wed, 13 Sep 2017 12:52:02 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: kernel-janitors@vger.kernel.org
Cc: outreachy-kernel@googlegroups.com, Colin King <colin.king@canonical.com>,
        Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Subject: DR Checker and KINT static checkers
Message-ID: <20170913095202.a6zsi3xeryzhmxrl@mwanda>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
X-Source-IP: userv0022.oracle.com [156.151.31.74]

LWN.net recently had an article about Dr Checker.  It's a promising new
static analysis tool.  The LWN article is for subscribers only until
tomorrow, but anyone can read the PDF or install the code.  It would be
really interesting if someone could run Dr Checker on a mainline kernel
tree and post the results.
https://lwn.net/Articles/733056/
https://www.usenix.org/system/files/conference/usenixsecurity17/sec17-machiry.pdf
https://github.com/ucsb-seclab/dr_checker/

The other tool that's quite interesting is KINT which looks for integer
overflows.  It's a bit of a pain because you have to annotate some
kernel functions to make it work.  The PDF and source code are here:

http://css.csail.mit.edu/kint/

regards,
dan carpenter


