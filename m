X-GM-THRID: 6802944332146933760
X-Received: by 2002:a37:64c6:: with SMTP id y189mr3834816qkb.12.1584084034246;
        Fri, 13 Mar 2020 00:20:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aed:2ca1:: with SMTP id g30ls3361959qtd.1.gmail; Fri, 13 Mar
 2020 00:20:33 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvcEQZDXA9L4yl3ZURYODh9hII5NofaMXfWGtyk1fVV/iK8uz82EkJn7ie3nAxeC0RGpAmf
X-Received: by 2002:ac8:48c5:: with SMTP id l5mr11216913qtr.100.1584084033021;
        Fri, 13 Mar 2020 00:20:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584084033; cv=none;
        d=google.com; s=arc-20160816;
        b=StDVWCZxBOytgjqxHSCBCLcBplbicQTkHBp+MUU59+gxhQqUu/z92b4nrvPQai0FPF
         ueUwlek049//3YpZ7JOmgXzKhZx1UUCeDjKgZR16H/zx/+zBPN1S8crG2/yKcu1uV+Ie
         z+hZ17OeXe/2XumQ8lluZxwZyJUCbB0gnZWPRrRzspxruMLW9RFpQLpja4QUa+b7fQNJ
         QVKHB41XFXhsk0IREv76H8PWfTHdVn11viU1jKK+xF7+6+zFONlOaIMljFTu9t9C7adJ
         OLCVActmUuDsH2lg9awegwIcAYZ4/V/uaPwDLgtfFTvLhoNWRtFPib+33ZQwCG2Ho/ev
         OZzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=89vp+zN42N9ozDuBNs14lAfstpR3evh7sDJu7fH/Y0E=;
        b=SgFyRT04sN+ddZhbAF5p1TwUfeITLtdecnfy9whrkAhTHINdqsrbe2evmxK+7hkynF
         GtFJlVI+ZbHa/ERgS+shUxu9ZO+VHN+EbRwfg4ibSNdiGPZfeTEJ6tii3gphpvLXGRo+
         x9piRN+E+9PgBsJlpozrGH9C726W0k3DYQxb0FBb1AEmnOYX1cfIVT/0f51hBi47Dow4
         yCtI0NMS5exfromtfWLCFKxSrlg2z9vfOBQfC+U58tFXLeEGM9kyhAkzjoyL7rbEWfQv
         aOGy+3VXPIawAlndDVaPr/xi0Upfd0TPCkVzamFiqW6TOBBI2JW7BaiBJAh3Q1CUQ9Ji
         I6pg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=pNnl0Z2v;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Return-Path: <dan.carpenter@oracle.com>
Received: from userp2120.oracle.com (userp2120.oracle.com. [156.151.31.85])
        by gmr-mx.google.com with ESMTPS id e89si400308qtd.3.2020.03.13.00.20.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Mar 2020 00:20:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.85 as permitted sender) client-ip=156.151.31.85;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=pNnl0Z2v;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
	by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 02D7JUEO118126;
	Fri, 13 Mar 2020 07:20:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=89vp+zN42N9ozDuBNs14lAfstpR3evh7sDJu7fH/Y0E=;
 b=pNnl0Z2voFEtbAqhJf+4WUHBUcN739NV15wKgSMy4svibtpWsExTbW8buCV24nDfHIrD
 8+X+POqul71kLJftq/l2IpkatwAtDCu9UkmZgTunKMtxKzMQKyoilEcYK5KzVmp2zanF
 Shww8rOm8DznVcKgpXxdpTs4z9SLzehTZX1U9suN6fBgzxBbZP4INMNQb/SjQhqp3WBq
 FpcW5j8kd3o21p1qky48405NxEdv8rfN4+MFU9rvIhWbzl758DV8ft6DCewJ7/MBtb9h
 +s7CicgyU08Sqo0XVE1+EqvDOxnzFi59O9Zg9tMHRY0SkzeP6bD5C1oSmkwqtE/nguWa aw== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
	by userp2120.oracle.com with ESMTP id 2yqtavj8aj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 13 Mar 2020 07:20:29 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
	by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 02D7KHVg007103;
	Fri, 13 Mar 2020 07:20:29 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
	by userp3020.oracle.com with ESMTP id 2yqtaaj6he-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 13 Mar 2020 07:20:29 +0000
Received: from abhmp0001.oracle.com (abhmp0001.oracle.com [141.146.116.7])
	by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 02D7KRBD003373;
	Fri, 13 Mar 2020 07:20:27 GMT
Received: from kadam (/41.57.98.10)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Fri, 13 Mar 2020 00:20:26 -0700
Date: Fri, 13 Mar 2020 10:20:21 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Shreeya Patel <shreeya.patel23498@gmail.com>
Cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
        linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
        sbrivio@redhat.com, daniel.baluta@gmail.com,
        nramas@linux.microsoft.com, hverkuil@xs4all.nl,
        Larry.Finger@lwfinger.net
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8723bs: sdio_halinit:
 Remove unnecessary conditions
Message-ID: <20200313072021.GQ11561@kadam>
References: <20200311133811.2246-1-shreeya.patel23498@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200311133811.2246-1-shreeya.patel23498@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9558 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 suspectscore=0 adultscore=0
 mlxlogscore=999 bulkscore=0 phishscore=0 spamscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2003130040
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9558 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0 suspectscore=0
 phishscore=0 priorityscore=1501 clxscore=1031 mlxscore=0 adultscore=0
 spamscore=0 bulkscore=0 mlxlogscore=999 lowpriorityscore=0 impostorscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2003130040

On Wed, Mar 11, 2020 at 07:08:11PM +0530, Shreeya Patel wrote:
> diff --git a/drivers/staging/rtl8723bs/hal/sdio_halinit.c b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
> index e813382e78a6..643592b0bd38 100644
> --- a/drivers/staging/rtl8723bs/hal/sdio_halinit.c
> +++ b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
> @@ -551,18 +551,11 @@ static void HalRxAggr8723BSdio(struct adapter *padapter)
>  
>  	pregistrypriv = &padapter->registrypriv;
>  
> -	if (pregistrypriv->wifi_spec) {
> -		/*  2010.04.27 hpfan */
> -		/*  Adjust RxAggrTimeout to close to zero disable RxAggr, suggested by designer */
> -		/*  Timeout value is calculated by 34 / (2^n) */
> -		valueDMATimeout = 0x06;
> -		valueDMAPageCount = 0x06;
> -	} else {
> -		/*  20130530, Isaac@SD1 suggest 3 kinds of parameter */
> -		/*  TX/RX Balance */
> -		valueDMATimeout = 0x06;
> -		valueDMAPageCount = 0x06;
> -	}
> +	/*  2010.04.27 hpfan */

Delete these sorts of comments where it's just a name of someone and
a time stamp when they wrote it.  We don't know how to contact "hpfan"
so it's useless.

regards,
dan carpenter



