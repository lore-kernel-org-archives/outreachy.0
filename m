X-GM-THRID: 1328454565888
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,6f1dd75346e94f50
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.66.255.68 with SMTP id ao4mr9978013pad.1.1424451732363;
        Fri, 20 Feb 2015 09:02:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.33.10 with SMTP id n10ls237115igi.25.gmail; Fri, 20 Feb
 2015 09:02:12 -0800 (PST)
X-Received: by 10.42.209.12 with SMTP id ge12mr11170564icb.16.1424451731996;
        Fri, 20 Feb 2015 09:02:11 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from mail-qc0-x235.google.com (mail-qc0-x235.google.com. [2607:f8b0:400d:c01::235])
        by gmr-mx.google.com with ESMTPS id ba9si5266163qcb.0.2015.02.20.09.02.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 09:02:11 -0800 (PST)
Received-SPF: pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c01::235 as permitted sender) client-ip=2607:f8b0:400d:c01::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c01::235 as permitted sender) smtp.mail=jes.sorensen@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qc0-x235.google.com with SMTP id s11so1676664qcv.11
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 09:02:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:message-id:date:user-agent:mime-version:to:subject:references
         :in-reply-to:content-type:content-transfer-encoding;
        bh=rkvkSeUtZ1BiqMe1E2CCFSjd+GGQy76yBiwIu6cb13A=;
        b=HXqEp2PW12mRHere1kg8Gu8LCJghcxUL7u4YTezL6lqkvWn+zNXYusLZN+mraZVUEF
         2pNVLEfcJ9Brkfg6e0KmxKmNpaACPaos6RjCIFuQKL9JITBIT1JOsxO4T8vlTvCNpZeo
         6eJZye4qTjilIQrF1dvIfTk3zc2X4mEDr7P0nZbZT7r09g1aBjNhPSozX3gZHUk+FliK
         y5BIzlh0g5TjKn1YGJe+mzK7ap5c6tC+EMUZdsChVKG8vTTxkQU8ERMXs1DvY/lcXOpe
         mMZfX65kWpSYjFT+NVbatk/gYBPJbI7azse19hQbta2AfQVwRCmAVYoSIJNAZ4yX+O7C
         dvHQ==
X-Received: by 10.140.97.38 with SMTP id l35mr8471376qge.47.1424451731885;
        Fri, 20 Feb 2015 09:02:11 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from [10.15.49.233] (nat-pool-rdu-t.redhat.com. [66.187.233.202])
        by mx.google.com with ESMTPSA id 131sm12177192qhh.48.2015.02.20.09.02.10
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 09:02:11 -0800 (PST)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
Message-ID: <54E76892.207@gmail.com>
Date: Fri, 20 Feb 2015 12:02:10 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>, 
 outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/4] Staging: lustre: lnet: klnds:
 socklnd: Deleted space prohibited between function name and open parenthesis
References: <1424446070-14232-1-git-send-email-aysemelikeyurtoglu@gmail.com>
In-Reply-To: <1424446070-14232-1-git-send-email-aysemelikeyurtoglu@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On 02/20/15 10:27, Melike Yurtoglu wrote:
> WARNING: space prohibited between function name and open parenthesis '('
> checkpatch.pl warning in socklnd.c
> 
> Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
> ---
>  .../staging/lustre/lnet/klnds/socklnd/socklnd.c    | 448 ++++++++++-----------
>  1 file changed, 224 insertions(+), 224 deletions(-)

When posting multi patch series, you need to use a cover letter to
describe the reason for the patch set. Argument '--cover-letter' for
'git format-patch'

In addition, please try to write a human patch description for each
commit rather than just paste in the automated checkpatch output.
Something like:

"Remove unnecessary space between function name and opening parenthesis.
That was found by running checkpatch.

Cheers,
Jes


> diff --git a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c
> index 5956dba..aac3a7d 100644
> --- a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c
> +++ b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c
> @@ -65,15 +65,15 @@ ksocknal_ip2iface(lnet_ni_t *ni, __u32 ip)
>  }
>  
>  static ksock_route_t *
> -ksocknal_create_route (__u32 ipaddr, int port)
> +ksocknal_create_route(__u32 ipaddr, int port)
>  {
>  	ksock_route_t *route;
>  
> -	LIBCFS_ALLOC (route, sizeof (*route));
> +	LIBCFS_ALLOC(route, sizeof(*route));
>  	if (route == NULL)
>  		return NULL;
>  
> -	atomic_set (&route->ksnr_refcount, 1);
> +	atomic_set(&route->ksnr_refcount, 1);
>  	route->ksnr_peer = NULL;
>  	route->ksnr_retry_interval = 0;	 /* OK to connect at any time */
>  	route->ksnr_ipaddr = ipaddr;
> @@ -89,43 +89,43 @@ ksocknal_create_route (__u32 ipaddr, int port)
>  }


