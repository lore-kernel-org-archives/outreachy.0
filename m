X-GM-THRID: 6955401561206947840
X-Received: by 2002:a17:90a:c3:: with SMTP id v3mr5440842pjd.55.1620135984660;
        Tue, 04 May 2021 06:46:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90b:1b52:: with SMTP id nv18ls9314237pjb.0.gmail; Tue,
 04 May 2021 06:46:23 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzJT0ykqZFzLDHWwEeWZUO8d4dssw3eYH4uoS0S8sYFuKh9FnlA8kmuBRNXwtbjXosOSQyZ
X-Received: by 2002:a17:902:da86:b029:ec:ad63:5ab with SMTP id j6-20020a170902da86b02900ecad6305abmr26716202plx.28.1620135983480;
        Tue, 04 May 2021 06:46:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620135983; cv=none;
        d=google.com; s=arc-20160816;
        b=I6awb1Y/mWRUueJBE3qZP8uzyR74ZF9OmQUblKAtbZGn1XbROnazW98Cqe8fY/cp2k
         qppvUWhhA1dTIR2WSeR+5PSURlfTsA+Zqqx+1Ay+R5UXZIcZOpZcxIB4LbiB5FxZHW2y
         1tw3y6kIQt6K2e/FkKJdoLr+Lgi4bEKJY5taxcvqm+ak5p9xkeCNLp/Xl7RbdBkhLagf
         I14DSif82vC9kIgBc9x/aAfG7j2c4/nhTemRNunCf7mhnd1smPDClhlQrySYERgAHc72
         COP3D3LvrFG1lFGMw1HaJqYcnx0p7lZtXZuUTvuJqgj/s4H8zWQZ6FjzAfMing1Hoa5r
         Iw2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=79Ai/Di0JCvnrw4CopF3XPt9cikg1GNfNQSqF6ynUFM=;
        b=YeH2h/Y2GrhIp1ix1DLlJe4znALi7+L3EeRO1hhwP2wVhemtJZXfmvTIJuQTLFMZw8
         e9W6TE6c0H43ljitdYGghBFEN4E1M5Lsooy4v9At6qMaiX8V9d8/9EF8hw42bxv5yx7x
         P2QafklGKTneqJz4+DUuPKpytaAB99CZHUZWDXHBklGvsFcWhtx3Kj4gJDJ1TTSC2KPa
         nSmh9w8NrTQdBzcCARkaEdrn0sbvoQkpiRT+uRemHTajJXZJ7yDsQGDq2LJAjF/G3xXd
         PuiCarORuaU2OGKz8WGL38/5Jx1iHCfx2uKqd05mZb0GPQGNN4Rp+FHmZF39mVSHyhL3
         GuSg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=HkiCmQrT;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.79 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Return-Path: <dan.carpenter@oracle.com>
Received: from aserp2130.oracle.com (aserp2130.oracle.com. [141.146.126.79])
        by gmr-mx.google.com with ESMTPS id a10si250731pgv.3.2021.05.04.06.46.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 04 May 2021 06:46:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.79 as permitted sender) client-ip=141.146.126.79;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=HkiCmQrT;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.79 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
	by aserp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 144DdSbg170143;
	Tue, 4 May 2021 13:46:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=79Ai/Di0JCvnrw4CopF3XPt9cikg1GNfNQSqF6ynUFM=;
 b=HkiCmQrTrnMteOwB+9CRTDgvPAnwlWI49kpEh/dLQ2M+ENs3Gn33pnXv6D25zC5n9BlV
 oQZGemP2702sh8ayWph0KJwjhZPeT3+alqI+WnTF6vfjfHzzxZ4G2q9Cgp2YTcInrYYC
 DX9Ql9cjSU+CwwaRNs5/PVRCkVcAoiA6zJpVlrn6IirspsB6WC557+fKl7EchzzO8VHK
 G9nEb1OpXx5nLM5Pp7iJ7903GaVJP6JuAODiOWZX2uzVH5lJZ2Phq/AA4xCFt+122XKq
 fP2MNpP1fEOjmJO2UGFDCudNvw1Rq1QqmNQ+wt6fkPDrdD3Ws9onlpLB0VcpqGTpG6yG vQ== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
	by aserp2130.oracle.com with ESMTP id 388vgbq3bn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 04 May 2021 13:46:20 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
	by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 144DkE25023944;
	Tue, 4 May 2021 13:46:20 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by aserp3020.oracle.com with ESMTP id 388xt44awe-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 04 May 2021 13:46:20 +0000
Received: from aserp3020.oracle.com (aserp3020.oracle.com [127.0.0.1])
	by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 144DkJGJ025229;
	Tue, 4 May 2021 13:46:19 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
	by aserp3020.oracle.com with ESMTP id 388xt44aur-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 04 May 2021 13:46:19 +0000
Received: from abhmp0015.oracle.com (abhmp0015.oracle.com [141.146.116.21])
	by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 144DkFS8021541;
	Tue, 4 May 2021 13:46:16 GMT
Received: from kadam (/102.36.221.92)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Tue, 04 May 2021 13:46:15 +0000
Date: Tue, 4 May 2021 16:46:06 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: outreachy-kernel@googlegroups.com,
        David Kershner <david.kershner@unisys.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        sparmaintainer@unisys.com, linux-staging@lists.linux.dev,
        linux-kernel@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
        Daniel Vetter <daniel@ffwll.ch>
Subject: Re: [PATCH v7] staging: unisys: visorhba: Convert module from IDR to
 XArray
Message-ID: <20210504134606.GR21598@kadam>
References: <20210504133253.32269-1-fmdefrancesco@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210504133253.32269-1-fmdefrancesco@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-GUID: S0RvSQDvwrHl6c0aq3BIib0UyHTi6b-p
X-Proofpoint-ORIG-GUID: S0RvSQDvwrHl6c0aq3BIib0UyHTi6b-p
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9974 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 lowpriorityscore=0 mlxlogscore=999
 suspectscore=0 priorityscore=1501 phishscore=0 malwarescore=0
 impostorscore=0 clxscore=1011 bulkscore=0 spamscore=0 adultscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104060000 definitions=main-2105040102

On Tue, May 04, 2021 at 03:32:53PM +0200, Fabio M. De Francesco wrote:
> +static int setup_scsitaskmgmt_handles(struct xarray *xa, struct uiscmdrsp *cmdrsp,
>  				       wait_queue_head_t *event, int *result)
>  {
> -	/* specify the event that has to be triggered when this */
> -	/* cmd is complete */
> -	cmdrsp->scsitaskmgmt.notify_handle =
> -		simple_idr_get(idrtable, event, lock);
> -	cmdrsp->scsitaskmgmt.notifyresult_handle =
> -		simple_idr_get(idrtable, result, lock);
> +	int ret;
> +	u32 id;
> +
> +	/* specify the event that has to be triggered when this cmd is complete */
> +	ret = xa_alloc_irq(xa, &id, event, xa_limit_32b, GFP_KERNEL);
> +	if (ret) 
> +		return ret;
> +	else
> +		cmdrsp->scsitaskmgmt.notify_handle = id;
> +	ret = xa_alloc_irq(xa, &id, result, xa_limit_32b, GFP_KERNEL);
> +	if (ret) {
> +		xa_erase_irq(xa, cmdrsp->scsitaskmgmt.notify_handle);
> +		return ret;
> +	} else
> +		cmdrsp->scsitaskmgmt.notifyresult_handle = id;

This else statement is not required.  Please use the checkpatch script.

	if (ret) {
		xa_erase_irq(xa, cmdrsp->scsitaskmgmt.notify_handle);
		return ret;
	}
	cmdrsp->scsitaskmgmt.notifyresult_handle = id;


> +
> +	return 0;
>  }
>  

[ snip ]

> @@ -1096,7 +1080,7 @@ static void visorhba_remove(struct visor_device *dev)
>  	scsi_remove_host(scsihost);
>  	scsi_host_put(scsihost);
>  
> -	idr_destroy(&devdata->idr);
> +	xa_destroy(&devdata->xa);

Don't add this.  Matthew explained this earlier.

>  
>  	dev_set_drvdata(&dev->device, NULL);
>  	debugfs_remove(devdata->debugfs_info);

regards,
dan carpenter

