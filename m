X-GM-THRID: 6472784237919469568
X-Received: by 10.107.169.219 with SMTP id f88mr13317085ioj.136.1507116078673;
        Wed, 04 Oct 2017 04:21:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.3.24 with SMTP id 24ls4490362iod.21.gmail; Wed, 04 Oct
 2017 04:21:17 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QDwRkHP/v5aSv+HUiyd4VSDIjQ1X2TsU7ILNt3KHLEhx4pAyxlwJXZZ5IaXXc9DjfdEgNrl
X-Received: by 10.107.36.148 with SMTP id k142mr13541103iok.82.1507116077703;
        Wed, 04 Oct 2017 04:21:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507116077; cv=none;
        d=google.com; s=arc-20160816;
        b=jVX/ctBUPvZmvjiToe63KQQF6xKTN4l1/yLWHQJyduvWhTv8KG3vPZGp6THjYzEjqh
         jr09s/BtiHrlIUx2gR3+zmHp41+AWYBs+nqNd74TB7015ASEbPgIc/F8PZaYmk5RWb4c
         sK6V4iSe4I/Zvpfbkux+ceEq5ZQv3NtyOhIVBraVOfM+YWx2cbwsOS1ygTaFGSPbs5ry
         7xvCu/NVG5GJqWYCr1SCE/lcyjnl4pvsjjjxp2GDCjBr2f/Jstw7rk+gXY9yZHEKwluj
         MGTsGGGpD+TvpL2bB+XS3dNSKDesOEXbe6+v8DNAwvlfmaRk2dtTysuvkPqk2AZu5LV4
         pxYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=8Mwxy0Pst839phaH4YJJAKIHpVqRz3gjrAw4MIgbmSY=;
        b=CTK8kakV7fX+EvmIz7v7TlcEURdBR5PUBCDNEKLjTOzWOdqXEjQO+TJikcpSLmkhvs
         6YlpKgqcTTdYpR7XROuj01b7ukPx35EplldNVQtxDi1c5G08o0EdCy4Bg6kMflvGXbun
         o9gqoDqpKG2foURf+fsnBh6KzuqomyDdy08923YtOKQyXnlbGL+7MLhmlsEhDEjAA0Hv
         R3GSk5u5UrQFsT/WBU4wxE0/SogRWc0tuGuDezchGg+UummGc+No5ZK5mpC+mA1qdNtw
         oxamNiIZuykvOXQVXQr4qis6AKn+P7h7aqOrSYjxRhlsRIUDeOgdVOs+oLxHcfZXnjEo
         5i6w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.81 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Return-Path: <dan.carpenter@oracle.com>
Received: from userp1040.oracle.com (userp1040.oracle.com. [156.151.31.81])
        by gmr-mx.google.com with ESMTPS id a43si676267itj.3.2017.10.04.04.21.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Oct 2017 04:21:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.81 as permitted sender) client-ip=156.151.31.81;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.81 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from userv0021.oracle.com (userv0021.oracle.com [156.151.31.71])
	by userp1040.oracle.com (Sentrion-MTA-4.3.2/Sentrion-MTA-4.3.2) with ESMTP id v94BLE8h026685
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 4 Oct 2017 11:21:14 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
	by userv0021.oracle.com (8.14.4/8.14.4) with ESMTP id v94BLDn1002683
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 4 Oct 2017 11:21:14 GMT
Received: from abhmp0012.oracle.com (abhmp0012.oracle.com [141.146.116.18])
	by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id v94BLDwA023332;
	Wed, 4 Oct 2017 11:21:13 GMT
Received: from mwanda (/197.254.35.146)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Wed, 04 Oct 2017 04:21:12 -0700
Date: Wed, 4 Oct 2017 14:21:03 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Srishti Sharma <srishtishar@gmail.com>
Cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
        outreachy-kernel@googlegroups.com, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] Staging: rtl8188eu: core: Use list_for_each_entry_safe
Message-ID: <20171004112103.cvu5ipkudfpz2adc@mwanda>
References: <1507062512-9145-1-git-send-email-srishtishar@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1507062512-9145-1-git-send-email-srishtishar@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-Source-IP: userv0021.oracle.com [156.151.31.71]

On Wed, Oct 04, 2017 at 01:58:32AM +0530, Srishti Sharma wrote:
> Use list_for_each_entry_safe when the list elements may get deleted
> during traversal.

This patch is fine as a cleanup but none of these are actually buggy.

regards,
dan carpenter


