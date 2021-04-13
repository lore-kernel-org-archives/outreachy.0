X-GM-THRID: 6950506572644614144
X-Received: by 2002:a05:620a:15f0:: with SMTP id p16mr7430662qkm.448.1618337851795;
        Tue, 13 Apr 2021 11:17:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6214:62b:: with SMTP id a11ls5838020qvx.10.gmail; Tue,
 13 Apr 2021 11:17:30 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxpGM2T343LgPHQuvshDxhJQxTNjKNn4kTB93E/bJiIirozfoaxZVQRz1EjK59iNAdr1yI4
X-Received: by 2002:a0c:fd62:: with SMTP id k2mr34329742qvs.51.1618337850844;
        Tue, 13 Apr 2021 11:17:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618337850; cv=none;
        d=google.com; s=arc-20160816;
        b=Wf/tu16CtaZA5vZ+95EnRnwyXirCI6lsZG036rNDhFUHQ2WDQ0NrJ6Q/8zriXMsaQh
         s4QMQ1qSeGcauELC9Pk3fSFXJhiGTu7oIeGhv/lGjNb26Cdwuf0ie7WhPQM69y4+32tN
         4xoQn6+/QNiJNzXTa9jmFqinHTtgvpA0BtgeB6EZFc+fG7PX3IpW1GNuYfPw3pdpWYsS
         mI+CXSXBFKMAJV9Bgj1FENB6Gp+r8e5dQQeSQ8bH9LXOjIYaR6Q2Uq2yuuBLnyoxfVUq
         fH1Rfou2d/L/m4Qxtmni1qpuO7DfVcEIzeZgStVtXUsIqNdPn4hRv+PD3nEQMCtzqCH3
         Z7Dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=F+1v+yIScK3Z0cLFoMNXHBXlxp/8G6ap/elyXl4WIHg=;
        b=MuU3LkcuW60QZjrFM78zGxUKLUC8KS3vTU+tGC5OA4MZZD+Z4j0edX7wOkhaWMcwsj
         8r7ANsXVTxDvmSjvJxoQHXsPERSxMNvXi6d01BtFC3V0tzKjMs139UAMUH3W8smVrNd3
         XXO1h75mcL2RKH5La72LsU1WAuan9HMNNWPeRyOAHLdO7B1XpQTGvXJo7PfU71zfXk68
         Mch/sVvs0wmhFsSmactYYnQykVW1jE2pdqAJOdd4AInbKJm/D7QwZ3Gmy3OFW17ncNFB
         gyXR5kSos7OdWPLiQd8E0KuQ5DUQEHffLrKImOaKdMewAlfVZwATlzGHcDO2BS/GOAik
         3/Dw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=Ci7afjVX;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.86 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Return-Path: <dan.carpenter@oracle.com>
Received: from userp2130.oracle.com (userp2130.oracle.com. [156.151.31.86])
        by gmr-mx.google.com with ESMTPS id l15si395368qke.1.2021.04.13.11.17.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Apr 2021 11:17:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.86 as permitted sender) client-ip=156.151.31.86;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=Ci7afjVX;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.86 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
	by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 13DI9xJ8196156;
	Tue, 13 Apr 2021 18:17:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=F+1v+yIScK3Z0cLFoMNXHBXlxp/8G6ap/elyXl4WIHg=;
 b=Ci7afjVXTtJKTW/ZtERoTqO4RrHFdUKLlRW8gkzAQcNN4JINoN+s5aDEr/T7bTj9AChf
 ZHMBV8rNR/1LUx4M5URKbroB+KeSqnZDOJP5bUOLBU5JJWtgpmaN0duveYQvJLmqSZi6
 09p4GUnBKIjsSZQ/6JZTlD9T2SoUrfjTjGYSvX2T/Uen2vlx3QZDBdBi86JMC1xaG77w
 VpMCdMxEYh+9E6HM99ms+DNVdoEA1k0ytWWr8jNMRURkID9YTI8iDmDt9aSNs6np6b5m
 NIrHzrWABmpLjM8gWy8xhGIHWqPK9dA5VbjnRgFnKEAeg8gpcGm10HI2nYpuwsoX/qng TQ== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
	by userp2130.oracle.com with ESMTP id 37u3erg25t-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 13 Apr 2021 18:17:28 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
	by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 13DI9fIS022035;
	Tue, 13 Apr 2021 18:17:27 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
	by aserp3020.oracle.com with ESMTP id 37unx04wnc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 13 Apr 2021 18:17:27 +0000
Received: from abhmp0003.oracle.com (abhmp0003.oracle.com [141.146.116.9])
	by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 13DIHKIP031139;
	Tue, 13 Apr 2021 18:17:20 GMT
Received: from kadam (/102.36.221.92)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Tue, 13 Apr 2021 18:17:20 +0000
Date: Tue, 13 Apr 2021 21:17:12 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Mitali Borkar <mitaliborkar810@gmail.com>
Cc: sakari.ailus@linux.intel.com, bingbu.cao@intel.com, tian.shu.qiu@intel.com,
        mchehab@kernel.org, gregkh@linuxfoundation.org,
        linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
        linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
        mitali_s@me.iitr.ac.in
Subject: Re: [PATCH v3 4/4] staging: media: intel-ipu3: remove space before
 tabs
Message-ID: <20210413181712.GI6021@kadam>
References: <cover.1618326535.git.mitaliborkar810@gmail.com>
 <01ad7ff353f805dfc48e7bcc26ed974e7bb5ef9f.1618326535.git.mitaliborkar810@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <01ad7ff353f805dfc48e7bcc26ed974e7bb5ef9f.1618326535.git.mitaliborkar810@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-IMR: 1
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9953 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 suspectscore=0
 mlxscore=0 malwarescore=0 adultscore=0 bulkscore=0 spamscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104060000 definitions=main-2104130123
X-Proofpoint-ORIG-GUID: DWT0JG83Ahgw0Uf143jhZJqIDTuuAyuC
X-Proofpoint-GUID: DWT0JG83Ahgw0Uf143jhZJqIDTuuAyuC
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9953 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 priorityscore=1501 clxscore=1011
 adultscore=0 mlxlogscore=999 bulkscore=0 malwarescore=0 spamscore=0
 impostorscore=0 suspectscore=0 mlxscore=0 phishscore=0 lowpriorityscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2104060000
 definitions=main-2104130123

On Tue, Apr 13, 2021 at 08:59:34PM +0530, Mitali Borkar wrote:
> Removed unnecessary space before tabs to adhere to linux kernel coding
> style.
> Reported by checkpatch.
> 
> Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
> ---
>  
> Changes from v2:- No changes.
> Changes from v1:- No changes.
> 
>  drivers/staging/media/ipu3/include/intel-ipu3.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/ipu3/include/intel-ipu3.h b/drivers/staging/media/ipu3/include/intel-ipu3.h
> index 47e98979683c..42edac5ee4e4 100644
> --- a/drivers/staging/media/ipu3/include/intel-ipu3.h
> +++ b/drivers/staging/media/ipu3/include/intel-ipu3.h
> @@ -633,7 +633,7 @@ struct ipu3_uapi_bnr_static_config_wb_gains_thr_config {
>   * @cg:	Gain coefficient for threshold calculation, [0, 31], default 8.
>   * @ci:	Intensity coefficient for threshold calculation. range [0, 0x1f]
>   *	default 6.
> - * 	format: u3.2 (3 most significant bits represent whole number,
> + *format: u3.2 (3 most significant bits represent whole number,
>   *	2 least significant bits represent the fractional part

Just remove the spaces, don't remove the tab.  It's looks silly now.

regards,
dan carpenter


