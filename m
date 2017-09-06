X-GM-THRID: 6462748484201086976
X-Received: by 10.202.245.139 with SMTP id t133mr279880oih.83.1504731617997;
        Wed, 06 Sep 2017 14:00:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.114.14 with SMTP id n14ls38260ioc.12.gmail; Wed, 06 Sep
 2017 14:00:17 -0700 (PDT)
X-Google-Smtp-Source: ADKCNb4mOtX9MfqHNtLHIWGQcBzU1yiQeFmh1A+/UK1pJyRPawOqpCKDXgKRooM08910WKlKRcDB
X-Received: by 10.36.121.21 with SMTP id z21mr746040itc.16.1504731617491;
        Wed, 06 Sep 2017 14:00:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504731617; cv=none;
        d=google.com; s=arc-20160816;
        b=TRyaLbfeI488IV5ex7ha7//u+/8n/o5gT7gQ+by8i21Eb1IRw09U40EQutgOYNYojM
         nEhX7SOYKvAt1d7PmFs2lEiaKu5AT512Ce45izUd8UpFyuJUWiPmiiOOIY0K9Pqlggqj
         lZXDOXJMgM6esBAulhsCURsk8eVr7wNP4iaP23j2DGdJEFuU0xnQGrW6h8enLAKZ/v3a
         d1nRuaAnR6jL8j5VuEAKwVKYoAiYImfh2+5NmPuX6O+aFYDi+tfOdYD4XYqyT0PuhBAD
         M53EcMCqTC2lPzOyaLulrclQ0GdIuciulbmjwRu0n5v/5MwNaKG5GRA8B7s6RuNb3Q/V
         rOVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=p26B9bDGMMfflqEXVTynJbNCNC98BGvIrqy991tMqLY=;
        b=KIRdHUpZwHijI/dcIrYLLwKMdAbFtD/Hf/SHrGmxogMaC50uaEsCUYkbjT/3fWoeYk
         LhX/qcmoGxIRC2FX3hGZLb7DcX7/d6aAHBwL+GYvH4G5SPK9O3v1sSDRo7PB5BeT5AO4
         Ag4Tf3rTh68ouWRlxD/Yf4W9q+8UG5y2bbIC4RrlvIK7rf177STni5qOKjQa6wHanmlV
         ZUlpSFwOPR6VRYsGKhob9Vo7IXvdl0Grut7PY63KRX96GqXFtgpHT9HScNUUAs8J/9Cn
         76GUndOqQ9r/6Iwpi03hupwou4AEPsXa/oTWtP0rgCcP9ojc1kD4MPOpnHMBFgSG4559
         ZUWA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.81 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Return-Path: <dan.carpenter@oracle.com>
Received: from userp1040.oracle.com (userp1040.oracle.com. [156.151.31.81])
        by gmr-mx.google.com with ESMTPS id q65si113435pfj.8.2017.09.06.14.00.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Sep 2017 14:00:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.81 as permitted sender) client-ip=156.151.31.81;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.81 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from userv0021.oracle.com (userv0021.oracle.com [156.151.31.71])
	by userp1040.oracle.com (Sentrion-MTA-4.3.2/Sentrion-MTA-4.3.2) with ESMTP id v86L0EEl027962
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 6 Sep 2017 21:00:14 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
	by userv0021.oracle.com (8.14.4/8.14.4) with ESMTP id v86L0EOZ008135
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 6 Sep 2017 21:00:14 GMT
Received: from abhmp0007.oracle.com (abhmp0007.oracle.com [141.146.116.13])
	by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id v86L0DCL032279;
	Wed, 6 Sep 2017 21:00:13 GMT
Received: from mwanda (/197.157.34.172)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Wed, 06 Sep 2017 14:00:13 -0700
Date: Wed, 6 Sep 2017 23:59:55 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Srishti Sharma <srishtishar@gmail.com>
Cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
        outreachy-kernel@googlegroups.com,
        driverdev-devel@linuxdriverproject.org, linux-kernel@vger.kernel.org,
        linux-crypto@vger.kernel.org
Subject: Re: [PATCH] Staging: ccree: ssi_cipher.c: Correct spelling mistake.
Message-ID: <20170906205955.s22ssdslev3o4yiq@mwanda>
References: <1504725863-8495-1-git-send-email-srishtishar@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1504725863-8495-1-git-send-email-srishtishar@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-Source-IP: userv0021.oracle.com [156.151.31.71]

On Thu, Sep 07, 2017 at 12:54:23AM +0530, Srishti Sharma wrote:
> Correct spelling of counter in comment .
> 
> Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
> ---
>  drivers/staging/ccree/ssi_cipher.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/ccree/ssi_cipher.c b/drivers/staging/ccree/ssi_cipher.c
> index 8d31a93..99232b2 100644
> --- a/drivers/staging/ccree/ssi_cipher.c
> +++ b/drivers/staging/ccree/ssi_cipher.c
> @@ -702,7 +702,7 @@ static int ssi_blkcipher_complete(struct device *dev,
> 
>  	ssi_buffer_mgr_unmap_blkcipher_request(dev, req_ctx, ivsize, src, dst);
> 
> -	/*Set the inflight couter value to local variable*/
> +	/*Set the inflight counter value to local variable*/
>  	inflight_counter =  ctx_p->drvdata->inflight_counter;

Sure, but it would be better to just delete the comment.  It's obvious.
But really just delete the local inflight_counter variable as well
because that's never used.

regards,
dan carpenter


