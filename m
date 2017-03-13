X-GM-THRID: 6396343645329424384
X-Received: by 10.157.37.37 with SMTP id k34mr14137012otb.121.1489408923531;
        Mon, 13 Mar 2017 05:42:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.89.216 with SMTP id u24ls4050746otg.40.gmail; Mon, 13 Mar
 2017 05:42:02 -0700 (PDT)
X-Received: by 10.129.91.214 with SMTP id p205mr16558246ywb.163.1489408922764;
        Mon, 13 Mar 2017 05:42:02 -0700 (PDT)
Return-Path: <dan.carpenter@oracle.com>
Received: from userp1040.oracle.com (userp1040.oracle.com. [156.151.31.81])
        by gmr-mx.google.com with ESMTPS id 2si2992844pfz.1.2017.03.13.05.42.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2017 05:42:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.81 as permitted sender) client-ip=156.151.31.81;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.81 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com
Received: from aserv0022.oracle.com (aserv0022.oracle.com [141.146.126.234])
	by userp1040.oracle.com (Sentrion-MTA-4.3.2/Sentrion-MTA-4.3.2) with ESMTP id v2DCfwFX011132
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 13 Mar 2017 12:41:59 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
	by aserv0022.oracle.com (8.14.4/8.14.4) with ESMTP id v2DCfwel017499
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 13 Mar 2017 12:41:58 GMT
Received: from abhmp0004.oracle.com (abhmp0004.oracle.com [141.146.116.10])
	by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id v2DCfvMZ031911;
	Mon, 13 Mar 2017 12:41:57 GMT
Received: from mwanda (/154.0.138.2)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Mon, 13 Mar 2017 05:41:55 -0700
Date: Mon, 13 Mar 2017 15:41:44 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: simran singhal <singhalsimran0@gmail.com>
Cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
        outreachy-kernel@googlegroups.com, arve@android.com,
        riandrews@android.com, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] staging: android: Replace strcpy with strlcpy
Message-ID: <20170313124144.GE4136@mwanda>
References: <20170311204001.GA13301@singhal-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170311204001.GA13301@singhal-Inspiron-5558>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Source-IP: aserv0022.oracle.com [141.146.126.234]

On Sun, Mar 12, 2017 at 02:10:01AM +0530, simran singhal wrote:
> Replace strcpy with strlcpy as strcpy does not check for buffer
> overflow.
> This is found using Flawfinder.
> 
> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
> ---
>  drivers/staging/android/ashmem.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/android/ashmem.c b/drivers/staging/android/ashmem.c
> index 7cbad0d..eb2f4ef 100644
> --- a/drivers/staging/android/ashmem.c
> +++ b/drivers/staging/android/ashmem.c
> @@ -548,7 +548,8 @@ static int set_name(struct ashmem_area *asma, void __user *name)
>  	if (unlikely(asma->file))
>  		ret = -EINVAL;
>  	else
> -		strcpy(asma->name + ASHMEM_NAME_PREFIX_LEN, local_name);
> +		strlcpy(asma->name + ASHMEM_NAME_PREFIX_LEN, local_name,
> +			sizeof(asma->name + ASHMEM_NAME_PREFIX_LEN));
                        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
This isn't right.

Also please do some analysis to see if it's a real bug or a false
positive.  It is a false positive in this case.

regards,
dan carpenter


