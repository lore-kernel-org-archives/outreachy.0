X-GM-THRID: 6749515623301120000
X-Received: by 2002:aa7:99c9:: with SMTP id v9mr13236685pfi.38.1571495219996;
        Sat, 19 Oct 2019 07:26:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:25e2:: with SMTP id k89ls2830545pje.3.gmail; Sat, 19
 Oct 2019 07:26:58 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw+80SrN1AQ+O3pN8z6+YernNzyj3CcQBpHXzVHWu7u30d+lrgc2RwkpYd+IhA2nt2rH626
X-Received: by 2002:a17:902:b606:: with SMTP id b6mr15560837pls.321.1571495218623;
        Sat, 19 Oct 2019 07:26:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571495218; cv=none;
        d=google.com; s=arc-20160816;
        b=vAvfKZ38Ljihnp4nxuhQdz/UmJQsxH+BoGDSdyphlB6AVAPor9b4OH4G7Uymgcla6j
         fksvRETUaFu52VmorA9vw+2V4kJHKvE1+m/AjqVS2p/riQpb2WRlpj9R4AX080yirEbR
         ruNh9cg5miBKF/a2Z9j04ZFVRBS7oLr67Fr2fe0goKQUcNJ3k2r6wmh//qgBaA7wNrxV
         cPz+9FXWmue8gkdc/0IFSjwewY/s1n7ZSE4Ryz/odhzy39wIlDtl0KWOKALAg72Ccg0x
         ZEf5+bXzz9KkWxslsMdRFCWF4HrBTC0QoXIh6Y4gtZ/P25TDubA5dStxiLOdRy0y40/1
         TuCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=0s+wv1EkxEvpCtNNuYFyVgb9qMOKWevUFl0DIEAY7C8=;
        b=GUBLGMkg01PDotBnOfpQR7FhV8PmLc4A5F01zxVKA+KS0RKe6x7CZlchKtSAsPUDhu
         PBJ/acPh31TBKRbgTw46yaDidCFryUNAp7McUByOctwgu4BSaViMUzqLGgoaB78ZNlkj
         R3L846Z+M8JV/CErFY8YwztlvYVaRb4s0/lyAfNW4YJ8kijRocPdebNzwMlhpPGIc4hI
         4MIVpUpPzD61JmBfvesYJ/Oi9kRgJL9SRi1jpCspxK9fcRPb3X1509bfJ/SqkOFAqty4
         K5ZrJb+JBWq8B1IP4hMUO8D9ewLt5sG8nAzK4aEKvR6qHZmUUJkiGuS6k6JgMEExeB2B
         lbGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2019-08-05 header.b=jZDrWAT+;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Return-Path: <dan.carpenter@oracle.com>
Received: from aserp2120.oracle.com (aserp2120.oracle.com. [141.146.126.78])
        by gmr-mx.google.com with ESMTPS id x2si502402pfq.3.2019.10.19.07.26.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 19 Oct 2019 07:26:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.78 as permitted sender) client-ip=141.146.126.78;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2019-08-05 header.b=jZDrWAT+;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
	by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9JEP3eE122196;
	Sat, 19 Oct 2019 14:26:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=0s+wv1EkxEvpCtNNuYFyVgb9qMOKWevUFl0DIEAY7C8=;
 b=jZDrWAT+y74mh/cq3RI1MfxtJuS1a9ZoqDJiryoWPiWtEBDQf0krl2MrutLcUn+whuST
 D9ejZaJaH8Z8OWgPR7EWQyVQlie4Su5sFiE1GmaAjRtKnLKkAfrpu7QGIWP7jSe4CXJL
 5FRVSV2kLc29+Fqr/Dx/9iNvOrHFZIHg2PxsHADsOqGahzsaDFvuILq4Kxp5d4swQJ8w
 WMIAiomp1NWRjT87S9UA9+1KLVZN0Ic+E1M/FiMLPVAN/+EFCnv7C56ufBnnj3l4kwJJ
 wCyx2+5lt3mxD9OZXbfOBWgSMwwbWQnRf1vk4xJxCnvw0fqd1oMrX3pVM2Q4536VmR/F pg== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
	by aserp2120.oracle.com with ESMTP id 2vqtep998s-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Sat, 19 Oct 2019 14:26:53 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
	by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9JEN23m010124;
	Sat, 19 Oct 2019 14:24:52 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
	by userp3020.oracle.com with ESMTP id 2vqsu81mnq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Sat, 19 Oct 2019 14:24:52 +0000
Received: from abhmp0008.oracle.com (abhmp0008.oracle.com [141.146.116.14])
	by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x9JEOou9008585;
	Sat, 19 Oct 2019 14:24:51 GMT
Received: from kadam (/41.57.98.10)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Sat, 19 Oct 2019 14:24:50 +0000
Date: Sat, 19 Oct 2019 17:24:43 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Jules Irenge <jbi.octave@gmail.com>
Cc: outreachy-kernel@googlegroups.com, devel@driverdev.osuosl.org,
        gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 1/5] staging: wfx: fix warnings of no space is
 necessary
Message-ID: <20191019142443.GH24678@kadam>
References: <20191019140719.2542-1-jbi.octave@gmail.com>
 <20191019140719.2542-2-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191019140719.2542-2-jbi.octave@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9414 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910190133
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9414 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910190133

On Sat, Oct 19, 2019 at 03:07:15PM +0100, Jules Irenge wrote:
> diff --git a/drivers/staging/wfx/bh.c b/drivers/staging/wfx/bh.c
> index 3355183fc86c..573216b08042 100644
> --- a/drivers/staging/wfx/bh.c
> +++ b/drivers/staging/wfx/bh.c
> @@ -69,13 +69,13 @@ static int rx_helper(struct wfx_dev *wdev, size_t read_len, int *is_cnf)
>  	if (wfx_data_read(wdev, skb->data, alloc_len))
>  		goto err;
>  
> -	piggyback = le16_to_cpup((u16 *) (skb->data + alloc_len - 2));
> +	piggyback = le16_to_cpup((u16 *)(skb->data + alloc_len - 2));
>  	_trace_piggyback(piggyback, false);
>  
> -	hif = (struct hif_msg *) skb->data;
> +	hif = (struct hif_msg *)skb->data;
>  	WARN(hif->encrypted & 0x1, "unsupported encryption type");
>  	if (hif->encrypted == 0x2) {
> -		if (wfx_sl_decode(wdev, (void *) hif)) {
> +		if (wfx_sl_decode(wdev, (void *)hif)) {

In the future you may want to go through and remove the (void *) casts.
It's not required here.

> diff --git a/drivers/staging/wfx/bus_spi.c b/drivers/staging/wfx/bus_spi.c
> index f65f7d75e731..effd07957753 100644
> --- a/drivers/staging/wfx/bus_spi.c
> +++ b/drivers/staging/wfx/bus_spi.c
> @@ -90,7 +90,7 @@ static int wfx_spi_copy_to_io(void *priv, unsigned int addr,
>  	struct wfx_spi_priv *bus = priv;
>  	u16 regaddr = (addr << 12) | (count / 2);
>  	// FIXME: use a bounce buffer
> -	u16 *src16 = (void *) src;
> +	u16 *src16 = (void *)src;

Here we are just getting rid of the constness.  Apparently we are doing
that so we can modify it without GCC pointing out the bug!!  I don't
know the code but this seems very wrong.

>  	int ret, i;
>  	struct spi_message      m;
>  	struct spi_transfer     t_addr = {

regards,
dan carpenter

