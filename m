X-GM-THRID: 6212627761290280960
X-Received: by 10.140.176.140 with SMTP id w134mr2642288qhw.6.1446663746852;
        Wed, 04 Nov 2015 11:02:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.28.68 with SMTP id 62ls899792qgy.90.gmail; Wed, 04 Nov
 2015 11:02:26 -0800 (PST)
X-Received: by 10.13.234.137 with SMTP id t131mr2761812ywe.53.1446663746164;
        Wed, 04 Nov 2015 11:02:26 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id el2si293417pbb.0.2015.11.04.11.02.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Nov 2015 11:02:26 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [104.135.10.71])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id BFB9E90;
	Wed,  4 Nov 2015 19:02:25 +0000 (UTC)
Date: Wed, 4 Nov 2015 11:02:25 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Shivani Bhardwaj <shivanib134@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 3/3] Staging: lustre: module: Replace
 function calls
Message-ID: <20151104190225.GA26290@kroah.com>
References: <cover.1446489978.git.shivanib134@gmail.com>
 <3beed3bcb9ca96a4d504079d6aeaae4f28b43d52.1446489978.git.shivanib134@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3beed3bcb9ca96a4d504079d6aeaae4f28b43d52.1446489978.git.shivanib134@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Tue, Nov 03, 2015 at 12:19:36AM +0530, Shivani Bhardwaj wrote:
> Replace the calls of function cfs_trace_free_string_buffer() with
> kfree() as the former function is not required.
> 
> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
> ---
>  drivers/staging/lustre/lustre/libcfs/module.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/lustre/lustre/libcfs/module.c b/drivers/staging/lustre/lustre/libcfs/module.c
> index 50e8fd2..516a9e7 100644
> --- a/drivers/staging/lustre/lustre/libcfs/module.c
> +++ b/drivers/staging/lustre/lustre/libcfs/module.c
> @@ -392,7 +392,7 @@ static int __proc_dobitmasks(void *data, int write,
>  	} else {
>  		rc = cfs_trace_copyin_string(tmpstr, tmpstrlen, buffer, nob);
>  		if (rc < 0) {
> -			cfs_trace_free_string_buffer(tmpstr, tmpstrlen);
> +			kfree(tmpstr);
>  			return rc;
>  		}
>  
> @@ -402,7 +402,7 @@ static int __proc_dobitmasks(void *data, int write,
>  			*mask |= D_EMERG;
>  	}
>  
> -	cfs_trace_free_string_buffer(tmpstr, tmpstrlen);
> +	kfree(tmpstr);
>  	return rc;
>  }
>  

Don't you need this to be earlier in the series?  You just deleted the
function from the kernel in the first patch :(

Never break the build for any patch in a series.  Please reorder and
resend.

thanks,

greg k-h

