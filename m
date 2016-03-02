X-GM-THRID: 6255532991219499008
X-Received: by 10.112.17.37 with SMTP id l5mr3138583lbd.21.1456935944889;
        Wed, 02 Mar 2016 08:25:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.234.218 with SMTP id g87ls416754wmi.25.gmail; Wed, 02 Mar
 2016 08:25:44 -0800 (PST)
X-Received: by 10.28.6.14 with SMTP id 14mr125490wmg.6.1456935944526;
        Wed, 02 Mar 2016 08:25:44 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id c140si250107wmh.1.2016.03.02.08.25.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Mar 2016 08:25:44 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 32F0ADBA;
	Wed,  2 Mar 2016 16:25:43 +0000 (UTC)
Date: Wed, 2 Mar 2016 08:25:42 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v4 5/5] staging: lustre: ptlrpc:
 Remove useless return variables
Message-ID: <20160302162542.GI987@kroah.com>
References: <20160226094328.GA10635@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160226094328.GA10635@Karyakshetra>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Fri, Feb 26, 2016 at 03:13:28PM +0530, Bhaktipriya Shridhar wrote:
> This patch removes unnecessary return variables and compresses the
> return logic.
> The coccinelle script that finds and fixes this issue is:
> @@ type T; identifier i,f; constant C; @@
> - T i;
> ...when != i
> when strict
> ( return -C;
> |
> - i =
> + return
> f(...);
> - return i;
> )
> 
> Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
> ---
>  Changes in v4:
> 	-Corrected typo lusture in the subject. Made it to lustre
> 
>  drivers/staging/lustre/lustre/ptlrpc/client.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/lustre/lustre/ptlrpc/client.c b/drivers/staging/lustre/lustre/ptlrpc/client.c
> index 9b89068..031502e 100644
> --- a/drivers/staging/lustre/lustre/ptlrpc/client.c
> +++ b/drivers/staging/lustre/lustre/ptlrpc/client.c
> @@ -421,10 +421,7 @@ void ptlrpc_request_cache_fini(void)
> 
>  struct ptlrpc_request *ptlrpc_request_cache_alloc(gfp_t flags)
>  {
> -	struct ptlrpc_request *req;
> -
> -	req = kmem_cache_alloc(request_cache, flags | __GFP_ZERO);
> -	return req;
> +	return kmem_cache_alloc(request_cache, flags | __GFP_ZERO);
>  }
> 
>  void ptlrpc_request_cache_free(struct ptlrpc_request *req)

This patch didn't apply :(

