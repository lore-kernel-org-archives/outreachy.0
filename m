X-GM-THRID: 3128292278272
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,98d68c53f8667ebf
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.236.7.37 with SMTP id 25mr15580864yho.18.1424753502335;
        Mon, 23 Feb 2015 20:51:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.138.69 with SMTP id qo5ls1112020igb.31.canary; Mon, 23 Feb
 2015 20:51:42 -0800 (PST)
X-Received: by 10.66.252.138 with SMTP id zs10mr15609208pac.3.1424753501969;
        Mon, 23 Feb 2015 20:51:41 -0800 (PST)
Return-Path: <preeti@linux.vnet.ibm.com>
Received: from e9.ny.us.ibm.com (e9.ny.us.ibm.com. [32.97.182.139])
        by gmr-mx.google.com with ESMTPS id e5si3762554qcg.1.2015.02.23.20.51.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Mon, 23 Feb 2015 20:51:41 -0800 (PST)
Received-SPF: none (google.com: preeti@linux.vnet.ibm.com does not designate permitted sender hosts) client-ip=32.97.182.139;
Authentication-Results: gmr-mx.google.com;
       spf=none (google.com: preeti@linux.vnet.ibm.com does not designate permitted sender hosts) smtp.mail=preeti@linux.vnet.ibm.com
Received: from /spool/local
	by e9.ny.us.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only! Violators will be prosecuted
	for <outreachy-kernel@googlegroups.com> from <preeti@linux.vnet.ibm.com>;
	Mon, 23 Feb 2015 23:51:41 -0500
Received: from d01dlp02.pok.ibm.com (9.56.250.167)
	by e9.ny.us.ibm.com (192.168.1.109) with IBM ESMTP SMTP Gateway: Authorized Use Only! Violators will be prosecuted;
	Mon, 23 Feb 2015 23:51:40 -0500
Received: from b01cxnp23034.gho.pok.ibm.com (b01cxnp23034.gho.pok.ibm.com [9.57.198.29])
	by d01dlp02.pok.ibm.com (Postfix) with ESMTP id DA0EE6E803C
	for <outreachy-kernel@googlegroups.com>; Mon, 23 Feb 2015 23:43:30 -0500 (EST)
Received: from d01av01.pok.ibm.com (d01av01.pok.ibm.com [9.56.224.215])
	by b01cxnp23034.gho.pok.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id t1O4pdqv30015630
	for <outreachy-kernel@googlegroups.com>; Tue, 24 Feb 2015 04:51:39 GMT
Received: from d01av01.pok.ibm.com (localhost [127.0.0.1])
	by d01av01.pok.ibm.com (8.14.4/8.14.4/NCO v10.0 AVout) with ESMTP id t1O4pc00017988
	for <outreachy-kernel@googlegroups.com>; Mon, 23 Feb 2015 23:51:39 -0500
Received: from preeti.in.ibm.com (preeti.in.ibm.com [9.124.35.61] (may be forged))
	by d01av01.pok.ibm.com (8.14.4/8.14.4/NCO v10.0 AVin) with ESMTP id t1O4pWsC017730;
	Mon, 23 Feb 2015 23:51:38 -0500
Message-ID: <54EC0354.8020307@linux.vnet.ibm.com>
Date: Tue, 24 Feb 2015 10:21:32 +0530
From: Preeti U Murthy <preeti@linux.vnet.ibm.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>,
        outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: iio: Move export_symbol below
 its function
References: <1424733512-22585-1-git-send-email-aysemelikeyurtoglu@gmail.com>
In-Reply-To: <1424733512-22585-1-git-send-email-aysemelikeyurtoglu@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-TM-AS-MML: disable
X-Content-Scanned: Fidelis XPS MAILER
x-cbid: 15022404-0033-0000-0000-000001EF4FB8

Hi Melike,

On 02/24/2015 04:48 AM, Melike Yurtoglu wrote:
> WARNING: "EXPORT_SYMBOL(foo); should immediately follow its
> function/variable"
> That was found by running checkpatch.
> 
> Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
> ---
>  drivers/staging/iio/addac/adt7316.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/iio/addac/adt7316.c b/drivers/staging/iio/addac/adt7316.c
> index 5b11b42..18bfbf0 100644
> --- a/drivers/staging/iio/addac/adt7316.c
> +++ b/drivers/staging/iio/addac/adt7316.c
> @@ -2069,6 +2069,7 @@ static struct attribute_group adt7516_event_attribute_group = {
>  };
> 
>  #ifdef CONFIG_PM_SLEEP
> +EXPORT_SYMBOL_GPL(adt7316_pm_ops);
>  static int adt7316_disable(struct device *dev)
>  {
>  	struct iio_dev *dev_info = dev_get_drvdata(dev);
> @@ -2086,7 +2087,6 @@ static int adt7316_enable(struct device *dev)
>  }
> 
>  SIMPLE_DEV_PM_OPS(adt7316_pm_ops, adt7316_disable, adt7316_enable);
> -EXPORT_SYMBOL_GPL(adt7316_pm_ops);

The EXPORT_SYMBOL() is rightly under the variable definition -
adt7316_pm_ops. So why this cleanup?

Regards
Preeti U Murthy
>  #endif
> 
>  static const struct iio_info adt7316_info = {
> 


