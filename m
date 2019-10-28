X-GM-THRID: 6751912583325810688
X-Received: by 2002:a05:6808:2d0:: with SMTP id a16mr644193oid.50.1572289397465;
        Mon, 28 Oct 2019 12:03:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:a65:: with SMTP id 92ls394483otg.7.gmail; Mon, 28 Oct
 2019 12:03:16 -0700 (PDT)
X-Google-Smtp-Source: APXvYqy4IcfSDufT+lGQ1X4+OuPJhJIH0ESHEiQbMPyezKFf5hfn0ckZywVKd5smDuML1RZlnQSB
X-Received: by 2002:a05:6830:237d:: with SMTP id r29mr9863120oth.0.1572289396306;
        Mon, 28 Oct 2019 12:03:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572289396; cv=none;
        d=google.com; s=arc-20160816;
        b=crA4p8irsz0LHl9EsESBfOy4QBP/vzbQxUisLBglJ2q6DmCAT0RPZUuC/2UviHzc10
         cRJZTFpf50suTmDjyXRcinXNAjrv1GhSOB29bueyP0ya9m3DcOkHQn3xwU5vXwMOKrEz
         FZSRM5akl6N8huc4tPQwvHiln6q7peM6vZjd1movAZfWZxVLOZzczblmGwtlOTGuAIRf
         tH3zwi8FG4MYTjHm6jsTFHMF5XJx0Ns3YuasZwthPbKMlGdjgsDGmEUMotjbqwZ3CFFi
         hNgjVGVPnqHpeXweFRq+ySXp0a2W3UrkvCFL6P164hFPaAdTbUS/nYbnAc0ltXY1dICL
         bE4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=6agxqUj4VUttRHvYAAr3cLu5nf2S/KDZSzHnLTVjMgs=;
        b=PH8JE5rPL5iYrGnRF4a2olhRrIIT9HuQAMoJALMWAWpDREXUK8ILEqDJtQKdS76fcQ
         j2MdJlpWZ4IiQoidaOM0FVjl5/nqE4himyip4iilP4kq6FvACMj93+zRH9kyIwMcHWYM
         EhYQLIWby3M7D5QxQrEcAS11IqDkvzpok+PjiHDdKwekLuC5rcnlZp+poWW7gfl1ge1Z
         laalXmoLdW91znSprvfqtQRT5qX8mUgb5iJkFj3vm1Z5ak8wzOiFj1apBe34Qln4jMcQ
         vtBtrWjv8dJr/ellslLvad8pQhUj9nVzTA3p8l1QgqWBzfG/IICS/X4aMRgSiIxWQbnP
         35pQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2019-08-05 header.b=Ntu1jzmh;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Return-Path: <dan.carpenter@oracle.com>
Received: from aserp2120.oracle.com (aserp2120.oracle.com. [141.146.126.78])
        by gmr-mx.google.com with ESMTPS id l141si541925oib.4.2019.10.28.12.03.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 28 Oct 2019 12:03:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.78 as permitted sender) client-ip=141.146.126.78;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2019-08-05 header.b=Ntu1jzmh;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
	by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9SIx2ic177038;
	Mon, 28 Oct 2019 19:03:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=6agxqUj4VUttRHvYAAr3cLu5nf2S/KDZSzHnLTVjMgs=;
 b=Ntu1jzmhDcHN5V6tBrLbuw7Wuvb3uKmxLygQd6DWuN5wFY1jNUw4MVhQ0FLLk32dBfEw
 zk1XOXQXeoLnOqdP8XDYfVZjGXuGy1vh2aNnG/I/a5c9efnYRPbXssRDKEmjezymjKoN
 199v2L8JXX1UFGpxrmrOtRft4EGRBnbiOxM4qxtfztzXHXgMgDHebmfF45ureDwrS9ba
 jAiXHmyTi5DQUxsHdJ8ObncklYWb50xNQChr4ulxox0grzK8+jSDnpAQ7F15znRQ4iiG
 98hWo3qL3gnf0AoENsYcxDPNQPC54QJb3zYsrd5oN1DHrYAq5D4vckKgJ7wIpQxjhCSJ YA== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
	by aserp2120.oracle.com with ESMTP id 2vve3q41mp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 28 Oct 2019 19:03:13 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
	by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9SIvqrJ191966;
	Mon, 28 Oct 2019 19:03:13 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
	by aserp3030.oracle.com with ESMTP id 2vwakyhj44-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 28 Oct 2019 19:03:13 +0000
Received: from abhmp0005.oracle.com (abhmp0005.oracle.com [141.146.116.11])
	by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x9SJ394i005045;
	Mon, 28 Oct 2019 19:03:10 GMT
Received: from kadam (/41.57.98.10)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Mon, 28 Oct 2019 12:03:09 -0700
Date: Mon, 28 Oct 2019 22:02:59 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Cristiane Naves <cristianenavescardoso09@gmail.com>
Cc: outreachy-kernel@googlegroups.com, devel@driverdev.osuosl.org,
        Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        linux-kernel@vger.kernel.org, Julia Lawall <julia.lawall@lip6.fr>,
        Larry Finger <Larry.Finger@lwfinger.net>
Subject: Re: [PATCH v3 1/2] staging: rtl8712: Fix Alignment of open
 parenthesis
Message-ID: <20191028190259.GF1944@kadam>
References: <cover.1572273794.git.cristianenavescardoso09@gmail.com>
 <158960d90adff42169bb7ce968a4082bf3e73387.1572273794.git.cristianenavescardoso09@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <158960d90adff42169bb7ce968a4082bf3e73387.1572273794.git.cristianenavescardoso09@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9424 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=2 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910280180
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9424 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 priorityscore=1501 malwarescore=0
 suspectscore=2 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910280181

On Mon, Oct 28, 2019 at 12:15:52PM -0300, Cristiane Naves wrote:
> Fix alignment should match open parenthesis. Issue found by checkpatch.
> 
> Signed-off-by: Cristiane Naves <cristianenavescardoso09@gmail.com>
> ---
>  drivers/staging/rtl8712/rtl8712_recv.c | 36 +++++++++++++++++-----------------
>  1 file changed, 18 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/staging/rtl8712/rtl8712_recv.c b/drivers/staging/rtl8712/rtl8712_recv.c
> index af12c16..304d031 100644
> --- a/drivers/staging/rtl8712/rtl8712_recv.c
> +++ b/drivers/staging/rtl8712/rtl8712_recv.c
> @@ -61,13 +61,13 @@ void r8712_init_recv_priv(struct recv_priv *precvpriv,
>  		precvbuf->ref_cnt = 0;
>  		precvbuf->adapter = padapter;
>  		list_add_tail(&precvbuf->list,
> -				 &(precvpriv->free_recv_buf_queue.queue));
> +			      (&precvpriv->free_recv_buf_queue.queue));

You did this correctly in v2.

-				 &(precvpriv->free_recv_buf_queue.queue));
+			      &precvpriv->free_recv_buf_queue.queue);

>  		precvbuf++;
>  	}
>  	precvpriv->free_recv_buf_queue_cnt = NR_RECVBUFF;
>  	tasklet_init(&precvpriv->recv_tasklet,

regards,
dan carpenter


