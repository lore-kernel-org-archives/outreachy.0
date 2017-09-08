X-GM-THRID: 6463333308428189696
X-Received: by 10.31.108.214 with SMTP id j83mr151438vki.122.1504867206732;
        Fri, 08 Sep 2017 03:40:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.103.14 with SMTP id u14ls1025677itc.7.canary-gmail; Fri, 08
 Sep 2017 03:40:05 -0700 (PDT)
X-Google-Smtp-Source: ADKCNb4LJArzRZMThoH9GEAs839oXtjh0DO9MY0rhzHwXWjUhumInLVq8Dk7gjM+k8o0sJ04Po5F
X-Received: by 10.129.81.143 with SMTP id f137mr1498769ywb.71.1504867205897;
        Fri, 08 Sep 2017 03:40:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504867205; cv=none;
        d=google.com; s=arc-20160816;
        b=XC2UlnAFoYZLpxHpJgCjJ8/bQSpq7dqetQYX+rN/xP05zMcMv26hCx6e71WCCIovsX
         3UsarPA0KVfpIfdk9NfIc9YWF60rgjJ+nO8bHu6Fwh/sIykewoXwzLJTBG6Nmjgfc/6m
         +R8no1xysw4fNdl1HjHCYvo/CHb7UzKrJqFRdcUG11rxvymwpI5Z8KjDtYq+epb0xJpw
         wbqR0t6RmR/yKnHJEdpH+xKKShCY1EBv83s0qQ36xxPIyA99mztqamc/8JsNYZwEIG7u
         B2mVDdzVgUhIGh7Z6rX55DFJTv3nYvUVo7p7EuI/3i2IeghyKaQd2BQjl1BKyEDs0qY4
         Y4JQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=t9lsLvy1Yy9HE0MSfqY9jJeKYivcXBIKB07tkhvIDwo=;
        b=qIWJfH0Hz0OUoY2d6nbwYipDVVM+4zHsd2Kd3dwR1r4uoMd2eQLAVnO4XJ4du1PYnV
         /PXM3Jcnp72NtSGkjiCEGimBsXUuEMGXhod8p2H8GGOKhqfvDCSGXKo/2b4ZyJ95qnNv
         667Hd7nWgrPTT2jLcoWBst+9YaUN4P2GQWsh5LGXIayxLRQGxNdHBLkbaoIFihKxuAih
         m3h5gYCLSGGdd7bMoBrCbT4tTcn6Y4shJ/exJ7hkT2T36hqpxdt7bk97akSB6BXd2HwR
         nQK1GwfaBtV3lo6xPTKMAM8petIfx3vhQHQZupBdROWzuywWdXqPwrrfnAbDeciUKCWg
         8jXw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.81 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Return-Path: <dan.carpenter@oracle.com>
Received: from userp1040.oracle.com (userp1040.oracle.com. [156.151.31.81])
        by gmr-mx.google.com with ESMTPS id v2si103628ite.4.2017.09.08.03.40.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Sep 2017 03:40:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.81 as permitted sender) client-ip=156.151.31.81;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.81 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from userv0022.oracle.com (userv0022.oracle.com [156.151.31.74])
	by userp1040.oracle.com (Sentrion-MTA-4.3.2/Sentrion-MTA-4.3.2) with ESMTP id v88Ae2xt006476
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 8 Sep 2017 10:40:02 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
	by userv0022.oracle.com (8.14.4/8.14.4) with ESMTP id v88Ae16t030767
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 8 Sep 2017 10:40:01 GMT
Received: from abhmp0009.oracle.com (abhmp0009.oracle.com [141.146.116.15])
	by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id v88Ae18q009689;
	Fri, 8 Sep 2017 10:40:01 GMT
Received: from mwanda (/41.210.145.102)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Fri, 08 Sep 2017 03:39:59 -0700
Date: Fri, 8 Sep 2017 13:39:31 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
        harsha <harshasharmaiitr@gmail.com>, linux-kernel@vger.kernel.org,
        outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v4] staging: pi433: Fixes minor typo
 errors
Message-ID: <20170908103931.kuxfd6wdsnzj22cj@mwanda>
References: <1504863598-16301-1-git-send-email-harshasharmaiitr@gmail.com>
 <alpine.DEB.2.20.1709081143430.3165@hadrien>
 <20170908095039.ns6kjwa2j5jbrrbi@mwanda>
 <alpine.DEB.2.20.1709081152520.3165@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1709081152520.3165@hadrien>
User-Agent: NeoMutt/20170113 (1.7.2)
X-Source-IP: userv0022.oracle.com [156.151.31.74]

True.

Of course, normally the from line means you're forwarding a patch from
someone else and then it's totally appropriate.  I don't like From lines
because it's just an extra thing to check.  How do we know that they're
not just pretending to be someone from @MajorCorporation.com?

regards,
dan carpenter


