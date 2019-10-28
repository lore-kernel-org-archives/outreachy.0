X-GM-THRID: 6752241350359384064
X-Received: by 2002:a17:902:7284:: with SMTP id d4mr17373475pll.141.1572251272566;
        Mon, 28 Oct 2019 01:27:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:8612:: with SMTP id p18ls750716pfn.16.gmail; Mon, 28 Oct
 2019 01:27:51 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyVKlKZolowvClaDtMcFSCkqTKPb6f8i3e3fJIdt5AAGO7eLXhq+CBB5wrfvQ8SXA8ES7dG
X-Received: by 2002:a65:5c4a:: with SMTP id v10mr3314998pgr.85.1572251271862;
        Mon, 28 Oct 2019 01:27:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572251271; cv=none;
        d=google.com; s=arc-20160816;
        b=sJdJ8v1vjeLNAW59yUW1grpeQvPWVdDN/FUu4Ic4yPSUcYZHTNZbiwBHKHJC0k4nwd
         R+aIgN0yEP4yyABzZihQ278N1oonmhcCRGedBrXUVg6+kGLU8lCz+sKZ/OQ0YccGxxFJ
         quyiakhm56s6OspAvlWJtwn8BU8zbUNOrs42EEYpj+lQyRo8GJp0wufc0QmS3XXQLTP9
         x4hHNnka66uLAODR620thZWFmVaQRkX+AETO0t7+autb6FTZKyjs3FCngEClRv84ma09
         s8SbJ3i7Z2PEjDk5hTN8rMZ/xSjc9IdH7IMHDDJ8QBl2PYSI1KOyYnKt9FNBEjXXAtd7
         kpcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=7o48n+uEPUganz3JjAED7CtR2SsbStGSOoNK4sq0Wgo=;
        b=xYS5MrQiafRCmog0kiy9CuNYRqoxPCuvFdQoAb+5iOzmHaIyRNAFYSPN8FievNhwJB
         yG4Kf4P6/J3lJQxPTbfnlT4sQElwkBMWbGrv5UHFyc/Pt0HRWmJ62R6UKEw9ZMnfIY7q
         EpaZmp4YBUSVPAeBWT4IiXdR0wFGj/RcY7E24Zb1C6BbHak6RvJgDnMSDItK/Ipi/K9A
         8j36GTkRldwxZDnjMJxgyajTFMz4s59kXSp/toTPAdySkW6QdaUkiVXMUkQ9sWHA1rrz
         Bcs8bmC/nK9Z9E01Bn9yc+C4JkrMKzeq1w6I79KhFy9lC/fR/ftnMWka6zQpHxxGEj0w
         rCkQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2019-08-05 header.b=mKkzgyJy;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.86 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Return-Path: <dan.carpenter@oracle.com>
Received: from userp2130.oracle.com (userp2130.oracle.com. [156.151.31.86])
        by gmr-mx.google.com with ESMTPS id h13si407907pjb.0.2019.10.28.01.27.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 28 Oct 2019 01:27:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.86 as permitted sender) client-ip=156.151.31.86;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2019-08-05 header.b=mKkzgyJy;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.86 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
	by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9S8Oakt028354;
	Mon, 28 Oct 2019 08:27:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=7o48n+uEPUganz3JjAED7CtR2SsbStGSOoNK4sq0Wgo=;
 b=mKkzgyJyfrjtOQ45McVAuIaKQEtWTPjrw9bZpKYgSLIQBUSFKkfJ+7xAhCmY7YmCZyLc
 cCRwJ+zlyLhnPYAc9OrIswmt6Bg791yEl2f+YZ+6E6heT7LP41rVul+77uJBMT/eBt2e
 VcHe8/PjhRO96XQ1W5r+bpLveCAKHCummfcLMEgqpwyNBCGEInGlTkfkr9Ce67MlpfUd
 o7KuhhFXAO/MPB7cTUw7+6zRqvowMuv+QzE6/s/QEx6iCG5fmj7t7rK/w6qUacmfzgCI
 bGoYSZCSvnUcBxqLnEOdjU0YJ/quxJsKeO8REN8d9BSC4K9FlMJ+NAlFbBSvKs7iEBZX bQ== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
	by userp2130.oracle.com with ESMTP id 2vvdju0cfu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 28 Oct 2019 08:27:47 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
	by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9S8Ou1T131667;
	Mon, 28 Oct 2019 08:27:46 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
	by userp3030.oracle.com with ESMTP id 2vvykrb2uq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 28 Oct 2019 08:27:46 +0000
Received: from abhmp0018.oracle.com (abhmp0018.oracle.com [141.146.116.24])
	by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x9S8Ribl012667;
	Mon, 28 Oct 2019 08:27:44 GMT
Received: from kadam (/41.57.98.10)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Mon, 28 Oct 2019 01:27:44 -0700
Date: Mon, 28 Oct 2019 11:27:32 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Cristiane Naves <cristianenavescardoso09@gmail.com>
Cc: outreachy-kernel@googlegroups.com, devel@driverdev.osuosl.org,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        linux-kernel@vger.kernel.org, Julia Lawall <julia.lawall@lip6.fr>
Subject: Re: [PATCH] staging: octeon: Remove unneeded variable
Message-ID: <20191028082732.GE1944@kadam>
References: <20191026222453.GA14562@cristiane-Inspiron-5420>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191026222453.GA14562@cristiane-Inspiron-5420>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9423 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910280085
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9423 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910280085

On Sat, Oct 26, 2019 at 07:24:53PM -0300, Cristiane Naves wrote:
> Remove unneeded variable used to store return value. Issue found by
> coccicheck.
> 
> Signed-off-by: Cristiane Naves <cristianenavescardoso09@gmail.com>
> ---
>  drivers/staging/octeon/octeon-stubs.h | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/octeon/octeon-stubs.h b/drivers/staging/octeon/octeon-stubs.h
> index b07f5e2..d53bd801 100644
> --- a/drivers/staging/octeon/octeon-stubs.h
> +++ b/drivers/staging/octeon/octeon-stubs.h
> @@ -1387,9 +1387,7 @@ static inline cvmx_pko_status_t cvmx_pko_send_packet_finish(uint64_t port,
>  		uint64_t queue, union cvmx_pko_command_word0 pko_command,
>  		union cvmx_buf_ptr packet, cvmx_pko_lock_t use_locking)
>  {
> -	cvmx_pko_status_t ret = 0;
> -
> -	return ret;
> +	return 0;

What is the point of this function anyway?

regards,
dan carpenter


