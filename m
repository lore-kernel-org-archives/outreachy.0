X-GM-THRID: 6746031998697996288
X-Received: by 2002:a67:8841:: with SMTP id k62mr8511797vsd.101.1570791260018;
        Fri, 11 Oct 2019 03:54:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac5:cde8:: with SMTP id v8ls265160vkn.15.gmail; Fri, 11 Oct
 2019 03:54:19 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzkZDhprM2q2VQOY1Kcj16g18VVKANmPiF2K9YExhAybM39cg7FXabfDuFAn0+4t0tQLNKA
X-Received: by 2002:a1f:2a02:: with SMTP id q2mr8136436vkq.65.1570791259048;
        Fri, 11 Oct 2019 03:54:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570791259; cv=none;
        d=google.com; s=arc-20160816;
        b=scGzJdgBgXBlLkJ2cc20E4AuMYYJRY7mmx6RooulOQd8e1ThE36JKn1SMpBNG9yaQl
         N4UErqBWCyoQ1STdtpqlF6TuS3uHG0Zfa1O8zT6LtGBBDj5NMrJwC0rvgAgrE8JJdBIH
         NwP6VRnAduIjMLx80ORoVUdOfRB4FSE9f+PQKNOWNcd1Y5IEFr234sUC90bxIKxJaqK3
         uKUSmAq8+LWDQoXS4Xe0ozUqNRMBRXkvJ1P8yn6N+oTYvEALvNCzveVuhCQS4IViyYDl
         BG7CNPx0daFjSFqyetunTCIcaEMhpiQ46P6KMbkai7pe0R+g8PxGsf7dAs+HWdj2Qoec
         QSnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=NNDLUAjuzBnN8yLIEy2YUgjVlFr0iYi9yRPHLnMjQQ0=;
        b=mc69c83/zgPMC1uyQKshybpIu0DSXUDL5P/3kU5TYnIO395oVQ8Lq9sX05W2BTddqo
         qTlc+S9NNXDUB0aTOraXLPf89dHH4uzUMQvdtxhqtaolemZ5JQPgY3OW7jUTfh4UMikv
         IHp8ujVgmqVV0YJNZs/ikkWFsUx2pkwUSuFnPiKO3S15AMhCnXM0iKyOpJDgua0MBw9L
         ke+FebQZjN/JLbWr90UPHexjGYnEdeF7Fd9d7abTNtCj6FrryMkm/C08T1JvMT3D92/e
         Vr6FUvgMq/VPMm4kDMYL/EoO+XxieluJoMbQEUKnzeUsWWKBAkiD+tyxWaIHL6rJKIvS
         TPKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2019-08-05 header.b=N0Q+r2nt;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.86 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Return-Path: <dan.carpenter@oracle.com>
Received: from userp2130.oracle.com (userp2130.oracle.com. [156.151.31.86])
        by gmr-mx.google.com with ESMTPS id 136si711502vkx.4.2019.10.11.03.54.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Oct 2019 03:54:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.86 as permitted sender) client-ip=156.151.31.86;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2019-08-05 header.b=N0Q+r2nt;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.86 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
	by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9BArksG050928;
	Fri, 11 Oct 2019 10:54:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=NNDLUAjuzBnN8yLIEy2YUgjVlFr0iYi9yRPHLnMjQQ0=;
 b=N0Q+r2nt8ZMG35ZmbWKg1fTVkkvLEJ3D0QXAADJzffAFQp6A2aNRTVj+6ylr1YotCZDc
 ksR8y0+P9mUoFq5HDGoLeyssgV5i7gzJ9HQ7KQ29u1gbT6B8dapp+kvcvR7houCMUw53
 mfQI59nFfIMWD2UL9LiLIsyLiDoQxkZfk+OYEukn4WFaHwWPD8Iif7cdKBIGwTDbh8ss
 rQ9wLeuvNrcjihYtjIArFEJuAXoQCx955HbLQvdcZtKC8qH9EwIaObUghNaGzT2yFqYH
 fisj+v0kSfpUAjPBU72uEwMYqX3SCI7dQsaCGmYDJP6JQk1oXnEgwogco6G60kouzHUz Jw== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
	by userp2130.oracle.com with ESMTP id 2vejkv0uj3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 11 Oct 2019 10:54:15 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
	by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9BArmpu163026;
	Fri, 11 Oct 2019 10:54:14 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
	by userp3030.oracle.com with ESMTP id 2vhrxg91ka-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 11 Oct 2019 10:54:14 +0000
Received: from abhmp0003.oracle.com (abhmp0003.oracle.com [141.146.116.9])
	by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x9BAsDuw030588;
	Fri, 11 Oct 2019 10:54:13 GMT
Received: from kadam (/41.57.98.10)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Fri, 11 Oct 2019 03:54:13 -0700
Date: Fri, 11 Oct 2019 13:54:04 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Wambui Karuga <wambui.karugax@gmail.com>
Cc: outreachy-kernel@googlegroups.com, devel@driverdev.osuosl.org,
        gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/4] staging: rtl8723bs: Remove comparisons to NULL in
 conditionals
Message-ID: <20191011105404.GA4774@kadam>
References: <cover.1570712632.git.wambui.karugax@gmail.com>
 <f4752d3a49e02193ed7b47a353e18e56d94b5a68.1570712632.git.wambui.karugax@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f4752d3a49e02193ed7b47a353e18e56d94b5a68.1570712632.git.wambui.karugax@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9406 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910110104
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9406 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910110104

On Thu, Oct 10, 2019 at 04:15:29PM +0300, Wambui Karuga wrote:
>  	psetauthparm = rtw_zmalloc(sizeof(struct setauth_parm));
> -	if (psetauthparm == NULL) {
> -		kfree(pcmd);
> +	if (!psetauthparm) {
> +		kfree((unsigned char *)pcmd);

This new cast is unnecessary and weird.

>  		res = _FAIL;
>  		goto exit;
>  	}

regards,
dan carpenter

