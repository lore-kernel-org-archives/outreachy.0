X-GM-THRID: 6744854230361702400
X-Received: by 2002:a17:902:8b89:: with SMTP id ay9mr29675099plb.81.1570457628731;
        Mon, 07 Oct 2019 07:13:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:bc48:: with SMTP id t8ls4362497plz.16.gmail; Mon, 07
 Oct 2019 07:13:47 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxCqDAjN26/HF/qOOjjeHqNiVjvX9sp+08ZoP/os2TFXUnLg1GOZk6L3G31xm6im6MawyrX
X-Received: by 2002:a17:90a:7bce:: with SMTP id d14mr33571935pjl.96.1570457627599;
        Mon, 07 Oct 2019 07:13:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570457627; cv=none;
        d=google.com; s=arc-20160816;
        b=mfR2VeToaFV7xGg/f5fKgTp0pgBvOMh36EOhcZnRfcHzoDGmbUAaWusWH3dmPq5jHo
         MRjyvbXi5OW0iJthd/yoYomGUM1eYdsvUc4rwncoJ5p7VCUwPqPsvJJ/yf1Hr/GtrS93
         b0ANxzOFm7M9bgwZZd6kbu0MD+7pCIWmyA6R9ORdX3YGZ8uRDNjdbKuD/VEpSPcd+1RY
         KVuCBdkts1JgQGBVWQkEO9aTTWLOn+Vf8vcpCaXRGeXEYxHSkyv4asT9TIK00U+/6ToM
         eK8LXmGCnYgygUh/FO5ZAJm9D0gMU5NEtcVUYXJkCjklU3zdUuNtGDr+OKGt3KUZpKhB
         ZcnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=v/JPj74F9S3rIumlrnm9CbKkIEwYEENjPGMUC3qkKHg=;
        b=LSom/ytU7tGjF0hhcSkXuqgUIVtwEyfgoedoIgnLqUKMJoQjdYZ8V3D7VJ9/vUijKP
         9cB1FiLTlrWOPPLHmdPhSMq7TyQGXf6WhJqiNSyBT/Z9+r98PKZSp728E7JTqTywkbDH
         lB4hwP4dGfBK9FdheTQbUSo5a2OhdO7OJGhyi6HVrqGRIuqBtZsIKoT3VSPJqBi2KzFp
         UZN7SyqRvUvqNSfq0hupvqdm4j3FZjUIzISLN0vya+7slmGaA8gZuewORCpX0Oa/zaTo
         Y6kCCRKBJnnXjp3eqcglcU2SwkKPj2KA06oRQmKpPa41Hzl9/QjfCP82Gmq35o1UHUwT
         AB2Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2019-08-05 header.b=EedQIAKS;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Return-Path: <dan.carpenter@oracle.com>
Received: from aserp2120.oracle.com (aserp2120.oracle.com. [141.146.126.78])
        by gmr-mx.google.com with ESMTPS id d5si1044773pls.5.2019.10.07.07.13.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Oct 2019 07:13:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.78 as permitted sender) client-ip=141.146.126.78;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2019-08-05 header.b=EedQIAKS;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
	by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x97EDTKv054047;
	Mon, 7 Oct 2019 14:13:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=v/JPj74F9S3rIumlrnm9CbKkIEwYEENjPGMUC3qkKHg=;
 b=EedQIAKStPQCo+m5mvlaq6W72DaCQsQgRXLQ6UMSh49lf4oA3aGG6pHVG0pn504CuUoe
 iAqcDGL8UVr261SlkrWS39EXVIEHnSXZXQvLIy4iwBpDHN2n/f3Wo2jAN6dgskmXNPuz
 xWbkeWoPiqraedRhgPluUjwa9G6khJCVtpPyN/2QJnjocZG5SSmVG6TZ7BtlPxa90eEt
 kHQCPEYoRATe2jeDVAqB+kqwqLT/Q59RZ7Vcv582T5ozjR6UB7TcNUEfaZkIYtRxMX02
 AZA7YHOmOdfCBMZuf7qXfjJJyPiceIUs6gTkD6sILqjNqOVxMK1gKmcxBheKAFfV99OK Fw== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
	by aserp2120.oracle.com with ESMTP id 2vek4q6yee-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 07 Oct 2019 14:13:42 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
	by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x97ECdXj012729;
	Mon, 7 Oct 2019 14:13:41 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
	by userp3030.oracle.com with ESMTP id 2vf4n99tck-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 07 Oct 2019 14:13:41 +0000
Received: from abhmp0022.oracle.com (abhmp0022.oracle.com [141.146.116.28])
	by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x97EDdsv026177;
	Mon, 7 Oct 2019 14:13:39 GMT
Received: from kadam (/41.57.98.10)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Mon, 07 Oct 2019 07:13:38 -0700
Date: Mon, 7 Oct 2019 17:13:27 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
Cc: outreachy-kernel@googlegroups.com, Larry.Finger@lwfinger.net,
        florian.c.schilhabel@googlemail.com, gregkh@linuxfoundation.org,
        payal.s.kshirsagar.98@gmail.com, himadri18.07@gmail.com,
        colin.king@canonical.com, devel@driverdev.osuosl.org,
        linux-kernel@vger.kernel.org, lkcamp@lists.libreplanetbr.org,
        trivial@kernel.org
Subject: Re: [PATCH] staging: rtl8712: align arguments with open parenthesis
 in file rtl8712_led.c
Message-ID: <20191007141327.GY22609@kadam>
References: <20191007003902.21911-1-gabrielabittencourt00@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191007003902.21911-1-gabrielabittencourt00@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9402 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910070141
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9402 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910070140

On Sun, Oct 06, 2019 at 09:39:02PM -0300, Gabriela Bittencourt wrote:
> Cleans up checks of "Alignment should match open parenthesis"
> 
> Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
> ---
>  drivers/staging/rtl8712/rtl8712_led.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/rtl8712/rtl8712_led.c b/drivers/staging/rtl8712/rtl8712_led.c
> index db99129d3169..5901026949f2 100644
> --- a/drivers/staging/rtl8712/rtl8712_led.c
> +++ b/drivers/staging/rtl8712/rtl8712_led.c
> @@ -75,7 +75,7 @@ static void BlinkWorkItemCallback(struct work_struct *work);
>   *		Initialize an LED_871x object.
>   */
>  static void InitLed871x(struct _adapter *padapter, struct LED_871x *pLed,
> -		 enum LED_PIN_871x	LedPin)
> +			enum LED_PIN_871x	LedPin)
                                         ^^^^^^
Delete these extra spaces.

regards,
dan carpenter


