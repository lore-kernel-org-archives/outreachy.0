X-GM-THRID: 6331204832263667712
X-Received: by 10.157.17.103 with SMTP id p36mr1703430otp.151.1474136833941;
        Sat, 17 Sep 2016 11:27:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.90.74 with SMTP id v71ls1892527ita.9.canary; Sat, 17 Sep
 2016 11:27:13 -0700 (PDT)
X-Received: by 10.107.168.211 with SMTP id e80mr1895555ioj.36.1474136833148;
        Sat, 17 Sep 2016 11:27:13 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id z4si3569821pam.0.2016.09.17.11.27.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Sep 2016 11:27:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 1951F412;
	Sat, 17 Sep 2016 18:27:11 +0000 (UTC)
Date: Sat, 17 Sep 2016 20:27:16 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Sandhya Bankar <bankarsandhya512@gmail.com>
Cc: outreachy-kernel@googlegroups.com, labbott@redhat.com,
	sumit.semwal@linaro.org, arve@android.com, riandrews@android.com
Subject: Re: [Outreachy kernel] [PATCH 1/2] Staging: android: Modify argument
 of sizeof() to pointer variables.
Message-ID: <20160917182716.GA27686@kroah.com>
References: <cover.1474055668.git.bankarsandhya512@gmail.com>
 <d9306dc12be43f1c65e8a6a780a1fe8f47866bbf.1474055668.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d9306dc12be43f1c65e8a6a780a1fe8f47866bbf.1474055668.git.bankarsandhya512@gmail.com>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Sat, Sep 17, 2016 at 02:20:59AM +0530, Sandhya Bankar wrote:
> Modify arguments of sizeof() to pointer variables.
> The destination of the allocation has type struct **, so the
> elements of the array should have pointer type, not structure type.
> 
> These changes are made using below Coccinelle script:
> 
> @disable sizeof_type_expr@
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
> Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
> ---
>  drivers/staging/android/ion/hisilicon/hi6220_ion.c |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)
> 
> diff --git a/drivers/staging/android/ion/hisilicon/hi6220_ion.c b/drivers/staging/android/ion/hisilicon/hi6220_ion.c
> index 659aa71..4f0dd4b 100755
> --- a/drivers/staging/android/ion/hisilicon/hi6220_ion.c
> +++ b/drivers/staging/android/ion/hisilicon/hi6220_ion.c
> @@ -57,7 +57,7 @@ static int hi6220_ion_probe(struct platform_device *pdev)
>  		return PTR_ERR(ipdev->data);
>  
>  	ipdev->heaps = devm_kzalloc(&pdev->dev,
> -				sizeof(struct ion_heap)*ipdev->data->nr,
> +				sizeof(*ipdev->heaps)*ipdev->data->nr,

You just changed the size of the memory you allocated, please always be
_VERY_ careful when making a change like this.  The original code is
correct, please leave it as-is.

thanks,

greg k-h

