X-GM-THRID: 6745167024590159872
X-Received: by 2002:a5d:9457:: with SMTP id x23mr22466810ior.14.1570515408336;
        Mon, 07 Oct 2019 23:16:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:9854:: with SMTP id p20ls499519ios.9.gmail; Mon, 07 Oct
 2019 23:16:47 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw5P+ptBbVMMuY3AHrSqM7qvbE+xB5suX0okrG/hyVgb7D4gCS3Q2UzCLMbD2vMX95akN9K
X-Received: by 2002:a6b:da06:: with SMTP id x6mr19654145iob.42.1570515407067;
        Mon, 07 Oct 2019 23:16:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570515407; cv=none;
        d=google.com; s=arc-20160816;
        b=J6Q9vzaxRTBdPPSkv7SvfUeg6HHMaXKuLSEgH/eQk/LJZVR7APUj7ox1RSkxBH4H0A
         mOQPKoQpJyN9r9/KvC2md6W7d4bMWg/rGYyQPAF0gb5QYbvohqlv//fDlGSFJoMD3ftP
         EnZsM3L2T4wuJhpnjncfxVpW3orHwHpXK34HMVv9WrjjbrNisPg01LOg2xYBDGfdsoEx
         sThEN5LgDaOhqHmpco6yEW1fYexYTOJKAr2+K6cReizN3BsPlC1T3xke9spZXBzntY41
         G+/BBTVO5l6iXd4cb3KoQtohmDCquclswkJI/Wg7JS9reL0wjMj/S68nFeaS5bmsy9Nx
         1XEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=WOAWpGPGsMCVMWlZusp6LKiV+o/kNd1Up7mpuXvb7Pw=;
        b=MYvRF8cIhNS5Aip1/1VhHb8bCtz02tgAb3IlrTe4xwL1R3pICAPCzhmRczavCiYRqA
         9Jo6ajtmKHcWuwhw7XmYjTasVW6UHbWk9peIiBRLAu2xaK2Qg9QB7iaV/FBYLR1awW1a
         63Mzlih6Z2NsamXCcL/tBg4nl4CM7v0WZ59j24TxMgxlNZ+UVrC3CnPfa3+3Zkcv0zkk
         pODin/vqzFluhGm36ag77nliKQ22Rl1Rza4xtYxgBaiPaFC2Lt/EGqtBD8qQZEK8TxMX
         RxJ822lF1xl7zi64QCvDl5icnMFs9QjEDK6XamcZhVDjPdzic2+V1KyUAf6l7Y4/JlqR
         k0rg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2019-08-05 header.b=cFqtHMzh;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Return-Path: <dan.carpenter@oracle.com>
Received: from userp2120.oracle.com (userp2120.oracle.com. [156.151.31.85])
        by gmr-mx.google.com with ESMTPS id q207si866182iod.5.2019.10.07.23.16.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Oct 2019 23:16:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.85 as permitted sender) client-ip=156.151.31.85;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2019-08-05 header.b=cFqtHMzh;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
	by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9868lpt047627;
	Tue, 8 Oct 2019 06:16:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=WOAWpGPGsMCVMWlZusp6LKiV+o/kNd1Up7mpuXvb7Pw=;
 b=cFqtHMzhNfdQWwMSnfcw6SKoIErRWWi3wmMrjF6IytZu2j1KZEn7m4+b968WN+t75Q+7
 LB1z3u/+8R7e1t74po6wVX7zgQ9wxmmKC5j0efAl+rk2jL8uGPKSF9wNspybtHau/5iq
 1YW/9uA3u5nzW+akUhq2+3eLCQ/GRkb6ygc+wc4UOoxN6aqZ8JCTLpEPrSccOBY90417
 p8nf9HVqQ6hngyL+8wTW9VObNYQDwtqlLi/dhX3d4sm8t6CGxCIPBTgSbogFjC2EmbNA
 +8lg9U89YqtzzXCZU0MnQDhze1RoSn0DJho0xWjG6eKse3iubkViUliFoKAQ1UJ9dUXZ Tw== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
	by userp2120.oracle.com with ESMTP id 2vektraypa-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 08 Oct 2019 06:16:44 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
	by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9868qtm085443;
	Tue, 8 Oct 2019 06:16:43 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
	by userp3030.oracle.com with ESMTP id 2vgeux4vx1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 08 Oct 2019 06:16:43 +0000
Received: from abhmp0007.oracle.com (abhmp0007.oracle.com [141.146.116.13])
	by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x986GgoU023479;
	Tue, 8 Oct 2019 06:16:42 GMT
Received: from kadam (/41.57.98.10)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Mon, 07 Oct 2019 23:16:41 -0700
Date: Tue, 8 Oct 2019 09:16:36 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Jules Irenge <jbi.octave@gmail.com>
Cc: outreachy-kernel@googlegroups.com, devel@driverdev.osuosl.org,
        gregkh@linuxfoundation.org, Larry.Finger@lwfinger.net
Subject: Re: [PATCH] staging: rtl8712: Add comment to lock declaration
Message-ID: <20191008061455.GC12948@kadam>
References: <20191007205248.24466-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191007205248.24466-1-jbi.octave@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9403 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910080063
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9403 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910080063

On Mon, Oct 07, 2019 at 09:52:48PM +0100, Jules Irenge wrote:
> Add comment to spinlock declaration to fix warning issued by checkpatch.pl
> "CHECK: spinlock_t definition without comment".
> 
> Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> ---
>  drivers/staging/rtl8712/drv_types.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/rtl8712/drv_types.h b/drivers/staging/rtl8712/drv_types.h
> index 0c4325073c63..960d8709aada 100644
> --- a/drivers/staging/rtl8712/drv_types.h
> +++ b/drivers/staging/rtl8712/drv_types.h
> @@ -160,7 +160,7 @@ struct _adapter {
>  	int pid; /*process id from UI*/
>  	struct work_struct wk_filter_rx_ff0;
>  	u8 blnEnableRxFF0Filter;
> -	spinlock_t lock_rx_ff0_filter;
> +	spinlock_t lock_rx_ff0_filter; /*spinlock to protect interrupt request*/

This spinlock seems to be nonsense.  It's only used one time:

drivers/staging/rtl8712/xmit_linux.c
    94  void r8712_SetFilter(struct work_struct *work)
    95  {
    96          struct _adapter *adapter = container_of(work, struct _adapter,
    97                                                  wk_filter_rx_ff0);
    98          u8  oldvalue = 0x00, newvalue = 0x00;
    99          unsigned long irqL;
   100  
   101          oldvalue = r8712_read8(adapter, 0x117);
   102          newvalue = oldvalue & 0xfe;
   103          r8712_write8(adapter, 0x117, newvalue);
   104  
   105          spin_lock_irqsave(&adapter->lock_rx_ff0_filter, irqL);
   106          adapter->blnEnableRxFF0Filter = 1;

It only protects writing to ->blnEnableRxFF0Filter but it doesn't
protect reading so it can't possibly work.

   107          spin_unlock_irqrestore(&adapter->lock_rx_ff0_filter, irqL);
   108          do {
   109                  msleep(100);
   110          } while (adapter->blnEnableRxFF0Filter == 1);
   111          r8712_write8(adapter, 0x117, oldvalue);
   112  }

Also put a space after /* and before */ so the comment looks like:
	/* spinlock to protect interrupt request */

But in this case, the comment isn't correct so please just leave it
as-is until someone can fix the locking.

regards,
dan carpenter


