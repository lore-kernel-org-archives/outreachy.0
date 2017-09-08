X-GM-THRID: 6463409376999768064
X-Received: by 10.202.168.88 with SMTP id r85mr1780897oie.14.1504881540279;
        Fri, 08 Sep 2017 07:39:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.78.21 with SMTP id c21ls210998iob.2.gmail; Fri, 08 Sep
 2017 07:38:59 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBkk7j9OgkNGynSOv5/bXEINJzWp4cQ618Ogj7G7iJRRbAN6BFwuOr9RPSAhOpO7K9cx8Re
X-Received: by 10.31.207.1 with SMTP id f1mr512375vkg.96.1504881539493;
        Fri, 08 Sep 2017 07:38:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504881539; cv=none;
        d=google.com; s=arc-20160816;
        b=oB2sHtYD8Uu5R/OeXJBuOhiSg1Edak5N/gAACtl2ypiLH5sB0ZaXztDOYmpKirMOGZ
         Y+bGDnwTh5+fWUtwqEShT8qy7AwMZf9h+Rqx1Gqf26EDLWybO7LahbqvJ6Hs15KxVKy+
         UIiP8TnEV7w1WyzsrZ17FGkJHS9I7yfF+DDOiq15LW2uKWbl25cNJG86XX2Bejnki91j
         WSPQkMJAiBG01aq2g6Z4lfnZkYdmpRcvDdsMUbOm4JJDyg6Q3xHlSOSqhLMOWqnrJ2Up
         Pk456shSx9tkG3zL1qADKFBF3CKxepqsRIAfXOGV9+I9GNznaq8TedkUdZnwIzrV58Lt
         vhyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=DzEC4pajBoJ9s6BoDFj4DVKGWlAgQ1jGElkJ7wuPPR8=;
        b=VCUlog40H3gn+q+iTpNwtFhM9X+Hcpwy9BAt6j3WE4TAlIN0Z0WJtzj84tf+4ufQDq
         qtDFy9ufna794dDb06kUTCPcQETQObm1t1QC1/bsMGt4grr1ZcO6m6wUzgoJwMyTTYLp
         NKwpfcPvvuTnRsIjrw12UDtoAoEfGDFfYygYl31Yu4w0iBM6mRXkfUOkl1hb3M3Vm4fJ
         cZLz3nKznUrPuOllH0JoG2MPiE6OqKS678AAH35r349l2WiGRZHTSjnRMLIvdxCDC44z
         Ub5v2Dl9mKXE2RnBvfI5cd4iEZNUBW0BF4wsLKaafA1B3N9VagZ9rtUwN9jqUA92fGsd
         6fVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.69 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Return-Path: <dan.carpenter@oracle.com>
Received: from aserp1040.oracle.com (aserp1040.oracle.com. [141.146.126.69])
        by gmr-mx.google.com with ESMTPS id u4si148303ywc.2.2017.09.08.07.38.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Sep 2017 07:38:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.69 as permitted sender) client-ip=141.146.126.69;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.69 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from userv0022.oracle.com (userv0022.oracle.com [156.151.31.74])
	by aserp1040.oracle.com (Sentrion-MTA-4.3.2/Sentrion-MTA-4.3.2) with ESMTP id v88EctHk018369
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 8 Sep 2017 14:38:55 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
	by userv0022.oracle.com (8.14.4/8.14.4) with ESMTP id v88Ecste028881
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 8 Sep 2017 14:38:54 GMT
Received: from abhmp0015.oracle.com (abhmp0015.oracle.com [141.146.116.21])
	by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id v88EcrNg004715;
	Fri, 8 Sep 2017 14:38:53 GMT
Received: from mwanda (/197.157.0.53)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Fri, 08 Sep 2017 07:38:50 -0700
Date: Fri, 8 Sep 2017 17:38:34 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Srishti Sharma <srishtishar@gmail.com>
Cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
        linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
        laurent.pinchart@ideasonboard.com, mchehab@kernel.org,
        linux-media@vger.kernel.org
Subject: Re: [PATCH] Staging: media: omap4iss: Use WARN_ON() instead of
 BUG_ON().
Message-ID: <20170908143833.yisoj3t2yp5httle@mwanda>
References: <1504879698-5855-1-git-send-email-srishtishar@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1504879698-5855-1-git-send-email-srishtishar@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-Source-IP: userv0022.oracle.com [156.151.31.74]

On Fri, Sep 08, 2017 at 07:38:18PM +0530, Srishti Sharma wrote:
> Use WARN_ON() instead of BUG_ON() to avoid crashing the kernel.
> 
> Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
> ---
>  drivers/staging/media/omap4iss/iss.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/omap4iss/iss.c b/drivers/staging/media/omap4iss/iss.c
> index c26c99fd..b1036ba 100644
> --- a/drivers/staging/media/omap4iss/iss.c
> +++ b/drivers/staging/media/omap4iss/iss.c
> @@ -893,7 +893,7 @@ void omap4iss_put(struct iss_device *iss)
>  		return;
> 
>  	mutex_lock(&iss->iss_mutex);
> -	BUG_ON(iss->ref_count == 0);
> +	WARN_ON(iss->ref_count == 0);

ref_counting bugs often have a security aspect.  BUG_ON() is probably
safer here.  Better to crash than to lose all your bitcoin.

regards,
dan carpenter


