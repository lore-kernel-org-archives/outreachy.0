X-GM-THRID: 6255532991219499008
X-Received: by 10.98.68.194 with SMTP id m63mr22304558pfi.7.1456944515488;
        Wed, 02 Mar 2016 10:48:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.73.161 with SMTP id m1ls696464igv.38.canary; Wed, 02 Mar
 2016 10:48:34 -0800 (PST)
X-Received: by 10.66.218.8 with SMTP id pc8mr22061215pac.45.1456944514951;
        Wed, 02 Mar 2016 10:48:34 -0800 (PST)
Return-Path: <bounce-md_30481620.56d73582.v1-a13c58472601400d98a172c14799c1fa@mandrillapp.com>
Received: from mail333.us4.mandrillapp.com (mail333.us4.mandrillapp.com. [205.201.137.77])
        by gmr-mx.google.com with ESMTPS id q187si2324532ywf.4.2016.03.02.10.48.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Mar 2016 10:48:34 -0800 (PST)
Received-SPF: pass (google.com: domain of bounce-md_30481620.56d73582.v1-a13c58472601400d98a172c14799c1fa@mandrillapp.com designates 205.201.137.77 as permitted sender) client-ip=205.201.137.77;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bounce-md_30481620.56d73582.v1-a13c58472601400d98a172c14799c1fa@mandrillapp.com designates 205.201.137.77 as permitted sender) smtp.mailfrom=bounce-md_30481620.56d73582.v1-a13c58472601400d98a172c14799c1fa@mandrillapp.com;
       dkim=pass header.i=@linuxfoundation.org;
       dkim=pass header.i=@mandrillapp.com
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=mandrill; d=linuxfoundation.org;
 h=From:Subject:To:Cc:Message-Id:References:In-Reply-To:Date:MIME-Version:Content-Type:Content-Transfer-Encoding; i=gregkh@linuxfoundation.org;
 bh=likUAs6/OMqAAQB0tp+wR/TcT3w=;
 b=l0voyjl0rVLVleC2GUSEaXO1PqxzarlXkdyp9P+nPfh01REC9S5KEwr1sxcbmNY3Ak4g3wKP4Ipu
   ChZq0NlI6irjnTHK7EaPb+7rMSwqyTVNDvqkbW/XTkR0wSB4DUAB7w52AVc5XoRonSGnIgprcl1h
   omFGbB4OhW6up60hxTs=
DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns; s=mandrill; d=linuxfoundation.org;
 b=a7jV5H++ToQKzmk1siR+sPYHXAvM8hdG6uxcz4Sna3Ui8QhC33n8kpvFTdBLYo/+uWl3KjvWvOlO
   IMjAlaupp78of0S/AGDKTSjaBEFolQSHtDl5jVWVAGBBllokD7bFvFpoB2kIimhCyozPpn3HCkVG
   rCMw8SdRGi4QHzB0ojY=;
Received: from pmta03.dal05.mailchimp.com (127.0.0.1) by mail333.us4.mandrillapp.com id hqsqo4174nos for <outreachy-kernel@googlegroups.com>; Wed, 2 Mar 2016 18:48:34 +0000 (envelope-from <bounce-md_30481620.56d73582.v1-a13c58472601400d98a172c14799c1fa@mandrillapp.com>)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mandrillapp.com; 
 i=@mandrillapp.com; q=dns/txt; s=mandrill; t=1456944514; h=From : 
 Subject : To : Cc : Message-Id : References : In-Reply-To : Date : 
 MIME-Version : Content-Type : Content-Transfer-Encoding : From : 
 Subject : Date : X-Mandrill-User : List-Unsubscribe; 
 bh=MZqKTOOIhW/nXeYpMa3pDhyx36X6RdFPhOm3rSrinY8=; 
 b=oURaHNZDt0eljsejM43qoUwOQIsHQLT1FjUh3rqRkUV9Mz9r7ReRfo/urrw1mJ7kMuwYBJ
 OM4L/68g7wFDeVmibPKbOuorTMHlXHsIKO0tJmYdWE9e2etArH/g41PMMoCDuTtRxAXj0t5v
 IakqowpP2PUA41CVq9DK28cw2xCzM=
From: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH v4 5/5] staging: lustre: ptlrpc: Remove useless return variables
Return-Path: <bounce-md_30481620.56d73582.v1-a13c58472601400d98a172c14799c1fa@mandrillapp.com>
Received: from [50.170.35.168] by mandrillapp.com id a13c58472601400d98a172c14799c1fa; Wed, 02 Mar 2016 18:48:34 +0000
To: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
Cc: <outreachy-kernel@googlegroups.com>
Message-Id: <20160302033118.GA14776@kroah.com>
References: <20160226094328.GA10635@Karyakshetra>
In-Reply-To: <20160226094328.GA10635@Karyakshetra>
X-Report-Abuse: Please forward a copy of this message, including all headers, to abuse@mandrill.com
X-Report-Abuse: You can also report abuse here: http://mandrillapp.com/contact/abuse?id=30481620.a13c58472601400d98a172c14799c1fa
X-Mandrill-User: md_30481620
Date: Wed, 02 Mar 2016 18:48:34 +0000
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

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

