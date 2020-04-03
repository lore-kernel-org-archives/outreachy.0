X-GM-THRID: 6810936843956125696
X-Received: by 2002:a05:6102:3232:: with SMTP id x18mr5587806vsf.184.1585902658421;
        Fri, 03 Apr 2020 01:30:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:8797:: with SMTP id j145ls1120421vsd.3.gmail; Fri, 03
 Apr 2020 01:30:57 -0700 (PDT)
X-Google-Smtp-Source: APiQypIrWALhYNsLjI5B+T3jIoIDCMhMv5HWuXHOTfJ8Y+LI9tl7cL8bvZFqzjd89j2rJS0NGd9n
X-Received: by 2002:a67:e096:: with SMTP id f22mr5922191vsl.218.1585902657306;
        Fri, 03 Apr 2020 01:30:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585902657; cv=none;
        d=google.com; s=arc-20160816;
        b=h6wH5zKH2e66VVWV97jg41LdlDjGWsY6QFuuPOPFroQsmu3Gu/CS91n3nuydJf3AJU
         khlfHZWZK5LfBKQkBnIyHTTADDd6st2nI7nkdl/ccboivEkZFofyv+W9+RALs2UcwREz
         smOfxG+/hTOW6MCwvYipNZAu+dUtfiHQzFbUzyFO1UigDbMdtV4C3NYXGzvBUdVag6+t
         H/5yjKXO2mOPyr0WWbUCizn6S4gN+G7RSoJXO2+oKd2sNWTw3PgAvXHmrasGMSXjvGxK
         nr15DPp9SNd0ppAw6giUJLUacI83AoxQcmFOtElISB2EdLusWVtnn3mXnQntX1KbBwXE
         fdmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=oNePCKvCxUpIIS0f2ZbYU7jLe+9Z1XA0+v4YImT1gPc=;
        b=UHI+hB8Q49/qOLxMWnXZbYdeebYCoZknTkplbaZSx322WnGhslkkj4+kRElRBysfik
         eGfnAukMk6Pewxauc7P8ngyQLa8vcRyU+1krqdLdYArz8AVGtM+YqLT9UYUZefEFAL4Z
         oszgT5uG9YMg9jGayR+/0UuXKaExhKgjX/kTkgm+IRHM5uLZXiunS85zimPhQKtx7Wnb
         47dHHxXVtRC6qa92ZG/ezRgSZe12M+xPpConoVrEzn9UfTXrS5tCJtVpPm37ZjYtoSpx
         CaYmpAqJ4A0HZOC/Ab9kRKn/BVXIMNeLfYJKRcaJCUASn4dXAF7lJZNB2LGVW9cQz4pe
         Ef6Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=Fh3XWJDc;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Return-Path: <dan.carpenter@oracle.com>
Received: from aserp2120.oracle.com (aserp2120.oracle.com. [141.146.126.78])
        by gmr-mx.google.com with ESMTPS id p7si285646vsf.1.2020.04.03.01.30.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Apr 2020 01:30:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.78 as permitted sender) client-ip=141.146.126.78;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=Fh3XWJDc;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
	by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0338OeTf056043;
	Fri, 3 Apr 2020 08:30:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=oNePCKvCxUpIIS0f2ZbYU7jLe+9Z1XA0+v4YImT1gPc=;
 b=Fh3XWJDcRKgJNcBua9lUzc/+L3/EUI5I3ScY7oaxgqSABO88x+BFmuxWhz5N6yTR0mSD
 DvR+e2jxZIHvG0KZpcYMfvJYsS4zSoBYMyJSJBxYRqfypzqqybSb69Jij3MC9hpdcXn6
 embcvUUulZtut1h5nqM4NDh95T6lByt/tR/BL7DDM5OIN6ZdOJQVQ7L4NVFyZmgDE6h6
 T+8RWGz9ULvEyLjORP2MFGrpn3djtT5tIwVkgtVrS/9630RgMClTClr6S4TSNpEOpBii
 8Iw7dKRRDnWZf9aLhn9iOSgqr85gkvTOhxv29pRJxAAz51r0isxSYa+wAw+y/OyH5uhk dA== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
	by aserp2120.oracle.com with ESMTP id 303yunj9ku-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 03 Apr 2020 08:30:53 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
	by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0338NA8X010005;
	Fri, 3 Apr 2020 08:30:53 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
	by aserp3020.oracle.com with ESMTP id 304sjs422x-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 03 Apr 2020 08:30:53 +0000
Received: from abhmp0006.oracle.com (abhmp0006.oracle.com [141.146.116.12])
	by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 0338Upce019918;
	Fri, 3 Apr 2020 08:30:51 GMT
Received: from kadam (/41.57.98.10)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Fri, 03 Apr 2020 01:30:51 -0700
Date: Fri, 3 Apr 2020 11:30:43 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: "John B. Wyatt IV" <jbwyatt4@gmail.com>
Cc: outreachy-kernel@googlegroups.com,
        Ioana Radulescu <ruxandra.radulescu@nxp.com>,
        Ioana Ciornei <ioana.ciornei@nxp.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        linux-kernel@vger.kernel.org, devel@driverdev.osuosl.org
Subject: Re: [PATCH] staging: fsl-dpaa2: ethsw: Fix parenthesis alignment
Message-ID: <20200403083043.GW2001@kadam>
References: <20200402023310.816245-1-jbwyatt4@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200402023310.816245-1-jbwyatt4@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9579 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0 adultscore=0 mlxscore=0
 malwarescore=0 phishscore=0 suspectscore=0 mlxlogscore=999 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2004030071
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9579 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 lowpriorityscore=0
 malwarescore=0 adultscore=0 priorityscore=1501 mlxlogscore=999 bulkscore=0
 suspectscore=0 mlxscore=0 spamscore=0 impostorscore=0 clxscore=1011
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2004030071

On Wed, Apr 01, 2020 at 07:33:10PM -0700, John B. Wyatt IV wrote:
> Fix 2 parenthesis alignment issues.
> 
> Reported by checkpatch.
> 
> Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
> ---
>  drivers/staging/fsl-dpaa2/ethsw/ethsw.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/fsl-dpaa2/ethsw/ethsw.c b/drivers/staging/fsl-dpaa2/ethsw/ethsw.c
> index 676d1ad1b50d..546ad376df99 100644
> --- a/drivers/staging/fsl-dpaa2/ethsw/ethsw.c
> +++ b/drivers/staging/fsl-dpaa2/ethsw/ethsw.c
> @@ -1094,7 +1094,8 @@ static int swdev_port_obj_del(struct net_device *netdev,
>  
>  static int
>  ethsw_switchdev_port_attr_set_event(struct net_device *netdev,
> -		struct switchdev_notifier_port_attr_info *port_attr_info)
> +				    struct switchdev_notifier_port_attr_info
> +				    *port_attr_info)

I feel like the end result is worse than the original code because of
how the type and the parameter name are on different lines.  Sorry.  :/

regards,
dan carpenter


