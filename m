X-GM-THRID: 6211884889777635328
X-Received: by 10.13.232.148 with SMTP id r142mr12229710ywe.51.1446317581966;
        Sat, 31 Oct 2015 11:53:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.158.200 with SMTP id h191ls860730ioe.104.gmail; Sat, 31
 Oct 2015 11:53:01 -0700 (PDT)
X-Received: by 10.66.187.41 with SMTP id fp9mr11243275pac.39.1446317581617;
        Sat, 31 Oct 2015 11:53:01 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id vy6si1275580pbc.1.2015.10.31.11.53.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 31 Oct 2015 11:53:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 2699F67;
	Sat, 31 Oct 2015 18:53:01 +0000 (UTC)
Date: Sat, 31 Oct 2015 11:53:00 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Shivani Bhardwaj <shivanib134@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: interval_tree:
 Convert inline function to macro
Message-ID: <20151031185300.GA8949@kroah.com>
References: <20151031184544.GA27064@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20151031184544.GA27064@ubuntu>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sun, Nov 01, 2015 at 12:15:44AM +0530, Shivani Bhardwaj wrote:
> Convert the function max_u64() to macro because macros tend to be more
> flexible than inline functions and here, the macro is going to be type
> safe so there are not going to be any side effects.
> 
> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
> ---
>  drivers/staging/lustre/lustre/ldlm/interval_tree.c | 7 ++-----
>  1 file changed, 2 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/staging/lustre/lustre/ldlm/interval_tree.c b/drivers/staging/lustre/lustre/ldlm/interval_tree.c
> index a2ea8e5..52d0afd 100644
> --- a/drivers/staging/lustre/lustre/ldlm/interval_tree.c
> +++ b/drivers/staging/lustre/lustre/ldlm/interval_tree.c
> @@ -42,6 +42,8 @@
>  #include "../include/obd_support.h"
>  #include "../include/interval_tree.h"
>  
> +#define max_u64(x, y) ((x > y) ? x : y)

Ick, no, there is already a _correct_ macro in the kernel for this,
don't try to create another one that does not work properly for all
users.

And your patch is also backwards, inline functions are better than
macros, don't ever convert from an inline function to a macro.

thanks,

greg k-h

