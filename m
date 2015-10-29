X-GM-THRID: 6210951142862487552
X-Received: by 10.68.194.202 with SMTP id hy10mr765765pbc.13.1446116186865;
        Thu, 29 Oct 2015 03:56:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.33.135 with SMTP id r7ls84710obi.84.gmail; Thu, 29 Oct
 2015 03:56:26 -0700 (PDT)
X-Received: by 10.182.128.69 with SMTP id nm5mr757579obb.46.1446116186540;
        Thu, 29 Oct 2015 03:56:26 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id fa8si109163pab.1.2015.10.29.03.56.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Oct 2015 03:56:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mailfrom=sudipm.mukherjee@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x236.google.com with SMTP id z6so37922576pas.2
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Oct 2015 03:56:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=dx+5FS3hEtVm7EOjwfL9SqDGzydos2+vD2mXxdVfHcQ=;
        b=fIrg6EYRW/wxRCe78a/wcI7E+FRFktfzGoXDyb6A6S4WUsHJTG9eIsfN+x/vPa7dhi
         TOsay3o5MQ8wrW0jlt1BfbsLTxUh1eCCC+XstLCNwPa4EZxWUDUaroTJnNnYm08QCKny
         d/WEpGcvkhhaNtH68OkHn9OldY0CzUZYEKkvkPlvHhpKAmw8lawev6VujBB5EMYloBEp
         XEh+it812aA71MBDBFME7znrd/wjfT3ms+2SZtE5zZ8trr/YRRTfqd49sL8JCv7OheT2
         fkvRaNc9dAZOsq/ECw3HFFiZ9EBAuYVZfMHfpwoGS+VbObg2c96tl2vhJbTVHOow3jcl
         Bw9w==
X-Received: by 10.68.182.161 with SMTP id ef1mr1231433pbc.79.1446116186370;
        Thu, 29 Oct 2015 03:56:26 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from sudip-pc ([122.169.170.95])
        by smtp.gmail.com with ESMTPSA id ou3sm1694177pbb.44.2015.10.29.03.56.24
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Thu, 29 Oct 2015 03:56:25 -0700 (PDT)
Date: Thu, 29 Oct 2015 16:26:19 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Shivani Bhardwaj <shivanib134@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: rpc: Remove
 unnecessary wrapper function
Message-ID: <20151029105619.GD1331@sudip-pc>
References: <20151029062222.GA36689@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20151029062222.GA36689@ubuntu>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Thu, Oct 29, 2015 at 11:52:23AM +0530, Shivani Bhardwaj wrote:
> Remove the function srpc_post_active_rqtbuf() and replace its only call
> with the function srpc_post_active_rdma() by adding and typecasting the
> appropriate parameters.
> 
> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
> ---
>  drivers/staging/lustre/lnet/selftest/rpc.c | 17 +++++------------
>  1 file changed, 5 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/staging/lustre/lnet/selftest/rpc.c b/drivers/staging/lustre/lnet/selftest/rpc.c
> index 162f9d3..cb895c3 100644
> --- a/drivers/staging/lustre/lnet/selftest/rpc.c
> +++ b/drivers/staging/lustre/lnet/selftest/rpc.c
> @@ -445,15 +445,6 @@ srpc_post_active_rdma(int portal, __u64 matchbits, void *buf, int len,
>  }
>  
>  static int
> -srpc_post_active_rqtbuf(lnet_process_id_t peer, int service, void *buf,
> -			int len, lnet_handle_md_t *mdh, srpc_event_t *ev)
> -{
> -	return srpc_post_active_rdma(srpc_serv_portal(service), service,
> -				     buf, len, LNET_MD_OP_PUT, peer,
> -				     LNET_NID_ANY, mdh, ev);
> -}
> -
> -static int
>  srpc_post_passive_rqtbuf(int service, int local, void *buf, int len,
>  			 lnet_handle_md_t *mdh, srpc_event_t *ev)
>  {
> @@ -798,9 +789,11 @@ srpc_send_request(srpc_client_rpc_t *rpc)
>  	ev->ev_data  = rpc;
>  	ev->ev_type  = SRPC_REQUEST_SENT;
>  
> -	rc = srpc_post_active_rqtbuf(rpc->crpc_dest, rpc->crpc_service,
> -				     &rpc->crpc_reqstmsg, sizeof(srpc_msg_t),
> -				     &rpc->crpc_reqstmdh, ev);
> +	rc = srpc_post_active_rdma(srpc_serv_portal(rpc->crpc_service),
> +				   rpc->crpc_service, &rpc->crpc_reqstmsg,
> +				   sizeof(srpc_msg_t), LNET_MD_OP_PUT,
> +				   (lnet_process_id_t)rpc->crpc_dest,

why do you need the typecast to lnet_process_id_t?

crpc_dest is already of the type lnet_process_id_t.
check lustre/lnet/selftest/selftest.h file.

regards
sudip

