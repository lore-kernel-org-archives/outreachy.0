X-GM-THRID: 6332811112929558528
X-Received: by 10.98.63.133 with SMTP id z5mr7443265pfj.30.1474474543057;
        Wed, 21 Sep 2016 09:15:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.24.75 with SMTP id t11ls4504958ott.34.gmail; Wed, 21 Sep
 2016 09:15:42 -0700 (PDT)
X-Received: by 10.13.235.72 with SMTP id u69mr13744999ywe.33.1474474542638;
        Wed, 21 Sep 2016 09:15:42 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id w124si3306407ywc.4.2016.09.21.09.15.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Sep 2016 09:15:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 68C0AAB7;
	Wed, 21 Sep 2016 16:15:41 +0000 (UTC)
Date: Wed, 21 Sep 2016 18:15:46 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: sayli karnik <karniksayli1995@gmail.com>
Cc: outreachy-kernel@googlegroups.com, Laura Abbott <labbott@redhat.com>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
	Riley Andrews <riandrews@android.com>
Subject: Re: [PATCH] staging: android: ion: hisilicon: Use pointer to memory
 being allocated as the sizeof argument
Message-ID: <20160921161546.GA28028@kroah.com>
References: <20160921154114.GA18681@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160921154114.GA18681@sayli-HP-15-Notebook-PC>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Wed, Sep 21, 2016 at 09:11:14PM +0530, sayli karnik wrote:
> This patch finds cases where the argument to sizeof is wrong in memory
> allocation functions by checking the type of the allocated memory when it is a
> double pointer and ensuring the sizeof argument takes a pointer to the memory
> being allocated.

Are you sure?


> Done using coccinelle:
> @@
> type T;
> T **x;
> @@
> 
>   x =
>   <+...sizeof(
> - T
> + *x
>   )...+>
> 
> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
> ---
>  drivers/staging/android/ion/hisilicon/hi6220_ion.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/android/ion/hisilicon/hi6220_ion.c b/drivers/staging/android/ion/hisilicon/hi6220_ion.c
> index 659aa71..9f9b244 100644
> --- a/drivers/staging/android/ion/hisilicon/hi6220_ion.c
> +++ b/drivers/staging/android/ion/hisilicon/hi6220_ion.c
> @@ -57,7 +57,7 @@ static int hi6220_ion_probe(struct platform_device *pdev)
>  		return PTR_ERR(ipdev->data);
>  
>  	ipdev->heaps = devm_kzalloc(&pdev->dev,
> -				sizeof(struct ion_heap)*ipdev->data->nr,
> +				sizeof(*ipdev->heaps) * ipdev->data->nr,

Do we really want to allocate an array of pointers, or an array of
structures?  Which is it, as it's not obvious...

thanks,

greg k-h

