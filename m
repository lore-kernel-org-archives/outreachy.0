X-GM-THRID: 6212189958377046016
X-Received: by 10.68.249.98 with SMTP id yt2mr1474297pbc.12.1446616572385;
        Tue, 03 Nov 2015 21:56:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.246.106 with SMTP id xv10ls247413obc.11.gmail; Tue, 03 Nov
 2015 21:56:12 -0800 (PST)
X-Received: by 10.182.52.226 with SMTP id w2mr27266036obo.40.1446616572073;
        Tue, 03 Nov 2015 21:56:12 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id sm2si2739889pab.0.2015.11.03.21.56.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Nov 2015 21:56:12 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (64-21-211-131.static-ip.telepacific.net [64.21.211.131])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 9EBB68DC;
	Wed,  4 Nov 2015 05:56:11 +0000 (UTC)
Date: Tue, 3 Nov 2015 19:41:23 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Anchal Jain <anchalj109@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: lnet: Remove an else
 after an if-return
Message-ID: <20151104034123.GC29832@kroah.com>
References: <20151101142932.GA12081@anchal-VirtualBox>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20151101142932.GA12081@anchal-VirtualBox>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sun, Nov 01, 2015 at 07:59:32PM +0530, Anchal Jain wrote:
> The original motivation of the patch was to remove an 
> else after an if branch that ends in a return. This 
> removal required the removal of a list of other things. 
> That are needed to make the code either correct or 
> acceptable to checkpatch, for example:removing a blank 
> line, removing braces, etc.
> 
> Remove unnecessary use of else that required the
> removal of corresponding braces. And then the
> declaration of hash was movedup to the beginning of the
> function is required, but the initialization was left
> where it was. And it also required remove the blank
> line and add some new lines before the if and below the
> declaration of hash.
> 
> Signed-off-by: Anchal Jain <anchalj109@gmail.com>
> 
> ---
>  drivers/staging/lustre/lnet/lnet/lib-ptl.c | 16 +++++++---------
>  1 file changed, 7 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/staging/lustre/lnet/lnet/lib-ptl.c b/drivers/staging/lustre/lnet/lnet/lib-ptl.c
> index b4f573a..aec06f9 100644
> --- a/drivers/staging/lustre/lnet/lnet/lib-ptl.c
> +++ b/drivers/staging/lustre/lnet/lnet/lib-ptl.c
> @@ -357,16 +357,14 @@ lnet_mt_match_head(struct lnet_match_table *mtable,
>  		   lnet_process_id_t id, __u64 mbits)
>  {
>  	struct lnet_portal *ptl = the_lnet.ln_portals[mtable->mt_portal];
> -
> -	if (lnet_ptl_is_wildcard(ptl)) {
> +	 unsigned long hash;

Very odd indentation :(


