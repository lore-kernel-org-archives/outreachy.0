X-GM-THRID: 6396981220938350592
X-Received: by 10.157.39.196 with SMTP id c62mr15005253otb.70.1489443843434;
        Mon, 13 Mar 2017 15:24:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.56.232 with SMTP id k37ls10153578ote.15.gmail; Mon, 13 Mar
 2017 15:24:03 -0700 (PDT)
X-Received: by 10.13.245.67 with SMTP id e64mr17233772ywf.127.1489443843147;
        Mon, 13 Mar 2017 15:24:03 -0700 (PDT)
Received: by 10.202.96.85 with SMTP id u82msoib;
        Mon, 13 Mar 2017 13:57:12 -0700 (PDT)
X-Received: by 10.129.75.5 with SMTP id y5mr17479137ywa.28.1489438632830;
        Mon, 13 Mar 2017 13:57:12 -0700 (PDT)
Return-Path: <labbott@redhat.com>
Received: from mail-qk0-f172.google.com (mail-qk0-f172.google.com. [209.85.220.172])
        by gmr-mx.google.com with ESMTPS id f187si2522733ywc.0.2017.03.13.13.57.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2017 13:57:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of labbott@redhat.com designates 209.85.220.172 as permitted sender) client-ip=209.85.220.172;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of labbott@redhat.com designates 209.85.220.172 as permitted sender) smtp.mailfrom=labbott@redhat.com
Received: by mail-qk0-f172.google.com with SMTP id v125so228692518qkh.2
        for <outreachy-kernel@googlegroups.com>; Mon, 13 Mar 2017 13:57:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:cc:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding;
        bh=iq5MD2JYFbG60ufna1ckuIqDNpFX3s8zendDggO83Wc=;
        b=TTUxsrqc8Q7zVloThzB73V574uWVBXU7TTEfLKTbv98YMvdZGmH+b24SrHyafMj/Fr
         fPdQNQD/3cjljgUTZKoplHPSifcuzeiGguElF5TTosHhyJfcheqlJpv3DBxzxKKVUH4F
         mtmM2ViBA+d3DNdp4tyN4FSFhMFMcvRcSioMss5ZbzonY8H6cukQge+xeYkH61Qvroly
         i3EiH2OAhp8Mqd1Jcotj/bL+OYzx5nWryOIPomtQqrz7NIZbt56GvMgQMhlVcdjp7Ort
         OucSpAxcumvcxMQ0Pvh3y26B5COucKy/bzL75GcJKbHVQx2PXPC0x4ikZx9sM8FiwXCV
         wZBQ==
X-Gm-Message-State: AFeK/H3bL0lhQ5Nn+x9RVu/ORZdkdKC+XB7jFDaw18appwN0tJL9zTqeASIIdHEhmkIa2a9G
X-Received: by 10.55.32.66 with SMTP id g63mr3537725qkg.92.1489438632401;
        Mon, 13 Mar 2017 13:57:12 -0700 (PDT)
Return-Path: <labbott@redhat.com>
Received: from ?IPv6:2601:602:9802:a8dc::5ce7? ([2601:602:9802:a8dc::5ce7])
        by smtp.gmail.com with ESMTPSA id c6sm12988601qte.30.2017.03.13.13.57.09
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2017 13:57:11 -0700 (PDT)
Subject: Re: [PATCH] staging: android: ion: Replace pr_err with dev_err
To: simran singhal <singhalsimran0@gmail.com>
References: <20170313135624.GA9869@singhal-Inspiron-5558>
Cc: Sumit Semwal <sumit.semwal@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 =?UTF-8?Q?Arve_Hj=c3=b8nnev=c3=a5g?= <arve@android.com>,
 Riley Andrews <riandrews@android.com>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
From: Laura Abbott <labbott@redhat.com>
Message-ID: <1d40e93b-d384-353a-43e9-cdfb976d7168@redhat.com>
Date: Mon, 13 Mar 2017 13:57:08 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <20170313135624.GA9869@singhal-Inspiron-5558>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit

On 03/13/2017 06:56 AM, simran singhal wrote:
> All devm functions has a device structure as the first argument which is
> required by dev_{err,info,dbg} printing functions.
> This patch converts pr_err to dev_err as dev_* is preferred after calls
> to devm functions.
> 
> Done using coccinelle:
> 
> @r1 exists@
> expression e,e1;
> identifier f =~ "^devm_";
> identifier g =~ "^pcim_";
> identifier h =~ "^dmam_";
> @@
> e=\(f\|g\|h\)(e1,...);
> <+...
> (
> - pr_info(
> + dev_info(e1,
>    ...);
> |
> - pr_err(
> + dev_err(e1,
>   ...);
> |
> - pr_debug(
> + dev_dbg(e1,
>   ...);
> )
> ...+>
> 
> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
> ---
>  drivers/staging/android/ion/ion_test.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/android/ion/ion_test.c b/drivers/staging/android/ion/ion_test.c
> index 5abf8320..0ab7d11 100644
> --- a/drivers/staging/android/ion/ion_test.c
> +++ b/drivers/staging/android/ion/ion_test.c
> @@ -255,7 +255,7 @@ static int __init ion_test_probe(struct platform_device *pdev)
>  	testdev->misc.parent = &pdev->dev;
>  	ret = misc_register(&testdev->misc);
>  	if (ret) {
> -		pr_err("failed to register misc device.\n");
> +		dev_err(&pdev->dev, "failed to register misc device.\n");
>  		return ret;
>  	}
>  
> 

Acked-by: Laura Abbott <labbott@redhat.com>

