X-GM-THRID: 6465168256299696128
X-Received: by 10.202.196.195 with SMTP id u186mr10180611oif.25.1505290390986;
        Wed, 13 Sep 2017 01:13:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.157.141 with SMTP id g135ls2546671ioe.23.gmail; Wed, 13
 Sep 2017 01:13:10 -0700 (PDT)
X-Google-Smtp-Source: ADKCNb4e/xvG4fmN2HmAezQ6wGvV8C+CdiqIPlHQXhtOFJjS/iTaYQn/LfDhxB0yAgp1VDZN/cRc
X-Received: by 10.84.210.229 with SMTP id a92mr10807868pli.49.1505290390285;
        Wed, 13 Sep 2017 01:13:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505290390; cv=none;
        d=google.com; s=arc-20160816;
        b=q9c0KzCaH60FSxdnYlBRlLZEpODkKf3Xrn2b1ZbbnWI3g0/fim3CBbU4O3gmLkpP9o
         025v9GF9Eg4+MkUOTqgdv4fEvKCbgCsrl9MwDoZWbWY87/1uA5Oya1xEdK7nVcQGQgj5
         V2c92UMmxHIq0CoNAMm6XZbfZ/OhiTz/+z9Lpd2bMReuSNBOxFf8CqUSEFydAj12L+l6
         MR2wyPKCnSD7DNfMErle+MnEXQHkOfp20rpBOgGrUyEuEC+16bK2BKnXyGjONKweCE0l
         YvMa33+Y/MSa62kdyl8Pq5Lyl6PBSCgt1pXFN0PRA5vpgFvXSnLnqTul6rSgV3yCGBOT
         b0Mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=Hm32HWizXWtJouuDegK8ufsFp9y7owoFSLsUn/nuL4Y=;
        b=AQyfkircBnSHBqrABHrvMzOpUQdy9HhenNNVsTEI51xXfFq+MQ9za2qLQJ8uMivljP
         RNUMUa2z0CufBpFr+3feuU1A9zdGoTn793j+WHxveKuvZuiIcv4Mdn6437HTayHhc9E/
         Qt9lMHliZ54d9BnccDG4V6XZxfOAHTGiisLGET3Q+E9WCffM2P1FPOx9oooXI1WJTlck
         qfkuZFgCQI/8WiLli6TK4UD8eKgbU3ErfcW3wv3Qzswtru8Tkn4gw44qFlA+NLcb6KWI
         eStzZleTigG8m8UPYQi8W4neOMRkIJbkHebVjywSEfc4R7DFXyz6Jn2oIsMkN2yumH7+
         cJxQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.69 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Return-Path: <dan.carpenter@oracle.com>
Received: from aserp1040.oracle.com (aserp1040.oracle.com. [141.146.126.69])
        by gmr-mx.google.com with ESMTPS id z207si1071550ywz.6.2017.09.13.01.13.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Sep 2017 01:13:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.69 as permitted sender) client-ip=141.146.126.69;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.69 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from userv0021.oracle.com (userv0021.oracle.com [156.151.31.71])
	by aserp1040.oracle.com (Sentrion-MTA-4.3.2/Sentrion-MTA-4.3.2) with ESMTP id v8D8D1IK000631
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 13 Sep 2017 08:13:01 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
	by userv0021.oracle.com (8.14.4/8.14.4) with ESMTP id v8D8Cwbp021222
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 13 Sep 2017 08:12:59 GMT
Received: from ubhmp0007.oracle.com (ubhmp0007.oracle.com [156.151.24.60])
	by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id v8D8Cuso024870;
	Wed, 13 Sep 2017 08:12:56 GMT
Received: from mwanda (/197.157.34.176)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Wed, 13 Sep 2017 08:12:54 +0000
Date: Wed, 13 Sep 2017 11:12:21 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Himanshi Jain <himshijain.hj@gmail.com>
Cc: outreachy-kernel@googlegroups.com, lars@metafoo.de,
        Michael.Hennerich@analog.com, jic23@kernel.org, knaack.h@gmx.de,
        pmeerw@pmeerw.net, gregkh@linuxfoundation.org,
        linux-iio@vger.kernel.org, devel@driverdev.osuosl.org,
        linux-kernel@vger.kernel.org, nick.desaulniers@gmail.com,
        daniel.baluta@gmail.com
Subject: Re: [PATCH 2/2] iio: Use __ATTR_NAMED to allow passing name as
 string to IIO_DEVICE_ATTR_NAMED and change usage to pass string
Message-ID: <20170913081221.udzpojijvm44ht45@mwanda>
References: <cover.1505288677.git.himshijain.hj@gmail.com>
 <2bc7a124ab925dd2c50aa8c778745d179777d50d.1505288677.git.himshijain.hj@gmail.com>
 <490606d70335e84a09ef418cb3cc0dbee6f79c84.1505288677.git.himshijain.hj@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <490606d70335e84a09ef418cb3cc0dbee6f79c84.1505288677.git.himshijain.hj@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-Source-IP: userv0021.oracle.com [156.151.31.71]

On Wed, Sep 13, 2017 at 01:26:27PM +0530, Himanshi Jain wrote:
> Add IIO_ATTR_NAMED macro to use __ATTR_NAMED to allow passing name as
> string to IIO_DEVICE_ATTR_NAMED. Change current usage of
> IIO_DEVICE_ATTR_NAMED to pass name as string.
> 
> Signed-off-by: Himanshi Jain <himshijain.hj@gmail.com>

This version looks nice.  The subject is just *way* too long, though.
Also you have put a v2 in the subject and a little changelog after the
--- cut off.  Just call it something like:
[PATCH 2/2 v2] iio: Change to __ATTR_NAMED()

regards,
dan carpenter


