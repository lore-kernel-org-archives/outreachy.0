X-GM-THRID: 4475579269120
X-Received: by 10.140.151.75 with SMTP id 72mr24127268qhx.3.1425256078842;
        Sun, 01 Mar 2015 16:27:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.149.197 with SMTP id uc5ls419098obb.70.gmail; Sun, 01 Mar
 2015 16:27:58 -0800 (PST)
X-Received: by 10.182.91.79 with SMTP id cc15mr25381053obb.20.1425256078502;
        Sun, 01 Mar 2015 16:27:58 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id gb13si19930pac.2.2015.03.01.16.27.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 16:27:58 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 2426D475;
	Mon,  2 Mar 2015 00:27:58 +0000 (UTC)
Date: Sun, 1 Mar 2015 16:27:57 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 15/24] staging: lustre: lmv: remove
 unused variables
Message-ID: <20150302002757.GA19407@kroah.com>
References: <cover.1425034998.git.mahfouz.saif.elyazal@gmail.com>
 <dc7ed4ce9baf69fbd456ef88162cb77b37074a04.1425035010.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <dc7ed4ce9baf69fbd456ef88162cb77b37074a04.1425035010.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Fri, Feb 27, 2015 at 03:03:30PM +0200, Aya Mahfouz wrote:
> This patch removes variables that were simply used to
> store the return value of a function call before
> returning it.
> 
> The issue was detected and resolved using the following
> coccinelle script:
> 
> @@
> identifier len,f;
> @@
> 
> -int len;
>  ... when != len
>      when strict
> -len =
> +return
>         f(...);
> -return len;
> 
> Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
> ---
>  drivers/staging/lustre/lustre/lmv/lmv_obd.c | 8 ++------
>  1 file changed, 2 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/staging/lustre/lustre/lmv/lmv_obd.c b/drivers/staging/lustre/lustre/lmv/lmv_obd.c
> index 6e446ac..d0dcbf9 100644
> --- a/drivers/staging/lustre/lustre/lmv/lmv_obd.c
> +++ b/drivers/staging/lustre/lustre/lmv/lmv_obd.c
> @@ -2555,10 +2555,8 @@ static int lmv_set_lock_data(struct obd_export *exp, __u64 *lockh, void *data,
>  			     __u64 *bits)
>  {
>  	struct lmv_obd	  *lmv = &exp->exp_obd->u.lmv;
> -	int		      rc;
>  
> -	rc =  md_set_lock_data(lmv->tgts[0]->ltd_exp, lockh, data, bits);
> -	return rc;
> +	return  md_set_lock_data(lmv->tgts[0]->ltd_exp, lockh, data, bits);

Extra space here :(

