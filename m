X-GM-THRID: 6264628276381089792
X-Received: by 10.140.250.69 with SMTP id v66mr15820627qhc.22.1458611134985;
        Mon, 21 Mar 2016 18:45:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.95.43 with SMTP id h40ls3641345qge.39.gmail; Mon, 21 Mar
 2016 18:45:34 -0700 (PDT)
X-Received: by 10.140.43.75 with SMTP id d69mr25023672qga.5.1458611134372;
        Mon, 21 Mar 2016 18:45:34 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 138si136725pfa.1.2016.03.21.18.45.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Mar 2016 18:45:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [38.111.11.2])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id CAECA92;
	Tue, 22 Mar 2016 01:45:33 +0000 (UTC)
Date: Mon, 21 Mar 2016 21:45:32 -0400
From: Greg KH <gregkh@linuxfoundation.org>
To: Sandhya Bankar <bankarsandhya512@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: Do not add space
 between function name and open parenthesis.
Message-ID: <20160322014532.GA9395@kroah.com>
References: <20160321145816.GA4355@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160321145816.GA4355@sandhya>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Mon, Mar 21, 2016 at 08:28:16PM +0530, Sandhya Bankar wrote:
> Do not add space between function name and open parenthesis.
> 
> Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
> ---
>  .../staging/lustre/lustre/osc/osc_cl_internal.h    | 22 +++++++++++-----------
>  1 file changed, 11 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/staging/lustre/lustre/osc/osc_cl_internal.h b/drivers/staging/lustre/lustre/osc/osc_cl_internal.h
> index d55d04d..3dfe5f6 100644
> --- a/drivers/staging/lustre/lustre/osc/osc_cl_internal.h
> +++ b/drivers/staging/lustre/lustre/osc/osc_cl_internal.h
> @@ -417,20 +417,20 @@ extern struct lu_context_key osc_session_key;
>  int osc_lock_init(const struct lu_env *env,
>  		  struct cl_object *obj, struct cl_lock *lock,
>  		  const struct cl_io *io);
> -int osc_io_init  (const struct lu_env *env,
> -		  struct cl_object *obj, struct cl_io *io);
> -int osc_req_init (const struct lu_env *env, struct cl_device *dev,
> -		  struct cl_req *req);
> +int osc_io_init(const struct lu_env *env,
> +		struct cl_object *obj, struct cl_io *io);
> +int osc_req_init(const struct lu_env *env, struct cl_device *dev,
> +		 struct cl_req *req);
>  struct lu_object *osc_object_alloc(const struct lu_env *env,
>  				   const struct lu_object_header *hdr,
>  				   struct lu_device *dev);
>  int osc_page_init(const struct lu_env *env, struct cl_object *obj,
>  		  struct cl_page *page, struct page *vmpage);
>  
> -void osc_index2policy  (ldlm_policy_data_t *policy, const struct cl_object *obj,
> -			pgoff_t start, pgoff_t end);
> -int  osc_lvb_print     (const struct lu_env *env, void *cookie,
> -			lu_printer_t p, const struct ost_lvb *lvb);
> +void osc_index2policy(ldlm_policy_data_t *policy, const struct cl_object *obj,
> +		      pgoff_t start, pgoff_t end);
> +int  osc_lvb_print(const struct lu_env *env, void *cookie,
> +		   lu_printer_t p, const struct ost_lvb *lvb);

Does the code look better now?  Before your patch, it looked much nicer,
don't you think?

thanks,

greg k-h

