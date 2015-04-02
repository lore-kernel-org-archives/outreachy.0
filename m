X-GM-THRID: 10576027713536
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,8137d625aae364a6
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.236.19.112 with SMTP id m76mr18729530yhm.16.1427963469934;
        Thu, 02 Apr 2015 01:31:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.34.228 with SMTP id l91ls726272qgl.5.gmail; Thu, 02 Apr
 2015 01:31:09 -0700 (PDT)
X-Received: by 10.236.39.171 with SMTP id d31mr51347467yhb.55.1427963469764;
        Thu, 02 Apr 2015 01:31:09 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id l3si531179pdo.0.2015.04.02.01.31.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Apr 2015 01:31:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (gob75-2-82-67-192-59.fbx.proxad.net [82.67.192.59])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 92BEEAF3;
	Thu,  2 Apr 2015 08:31:08 +0000 (UTC)
Date: Thu, 2 Apr 2015 10:31:04 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 1/3] staging: lustre: include:
 replace OBD_CHECK_DEV by obd_check_dev
Message-ID: <20150402083104.GA23918@kroah.com>
References: <cover.1427904237.git.mahfouz.saif.elyazal@gmail.com>
 <5ad6d9280a9080c3be07ca184ecdf84501c24c94.1427904237.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5ad6d9280a9080c3be07ca184ecdf84501c24c94.1427904237.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Wed, Apr 01, 2015 at 06:09:35PM +0200, Aya Mahfouz wrote:
> Static inline functions are preferred over macros. Hence, the function
> obd_check_dev was introduced. obd_check_dev replaces the macro
> OBD_CHECK_DEV. All functions that call obd_check_dev store the return
> values and return them if they represent an error code.
> 
> Some of the changes were carried out manually while others were done
> using coccinelle.
> 
> Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
> ---
> v2: removed unneeded parenthesis around the variable obd.
> 
>  drivers/staging/lustre/lustre/include/obd_class.h | 33 ++++++++++++++++++-----
>  1 file changed, 27 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/staging/lustre/lustre/include/obd_class.h b/drivers/staging/lustre/lustre/include/obd_class.h
> index 5314f6f..ddc212a 100644
> --- a/drivers/staging/lustre/lustre/include/obd_class.h
> +++ b/drivers/staging/lustre/lustre/include/obd_class.h
> @@ -341,6 +341,15 @@ do {							    \
>  	}						       \
>  } while (0)
>  
> +static inline int obd_check_dev(struct obd_device *obd)
> +{
> +	if (!(obd)) {

Why the extra () here?


> +		CERROR("NULL device\n");
> +		return -ENODEV;
> +	}
> +	return 0;
> +}
> +
>  /* ensure obd_setup and !obd_stopping */
>  #define OBD_CHECK_DEV_ACTIVE(obd)			       \
>  do {							    \
> @@ -594,7 +603,9 @@ static inline int obd_precleanup(struct obd_device *obd,
>  	int rc;
>  	DECLARE_LU_VARS(ldt, d);
>  
> -	OBD_CHECK_DEV(obd);
> +	rc = obd_check_dev(obd);
> +	if (rc)
> +		return rc;
>  	ldt = obd->obd_type->typ_lu;
>  	d = obd->obd_lu_dev;
>  	if (ldt != NULL && d != NULL) {
> @@ -620,7 +631,9 @@ static inline int obd_cleanup(struct obd_device *obd)
>  	int rc;
>  	DECLARE_LU_VARS(ldt, d);
>  
> -	OBD_CHECK_DEV(obd);
> +	rc = obd_check_dev(obd);
> +	if (rc)
> +		return rc;
>  
>  	ldt = obd->obd_type->typ_lu;
>  	d = obd->obd_lu_dev;
> @@ -668,7 +681,9 @@ obd_process_config(struct obd_device *obd, int datalen, void *data)
>  	int rc;
>  	DECLARE_LU_VARS(ldt, d);
>  
> -	OBD_CHECK_DEV(obd);
> +	rc = obd_check_dev(obd);
> +	if (rc)
> +		return rc;
>  
>  	obd->obd_process_conf = 1;
>  	ldt = obd->obd_type->typ_lu;
> @@ -1280,7 +1295,9 @@ static inline int obd_notify(struct obd_device *obd,
>  {
>  	int rc;
>  
> -	OBD_CHECK_DEV(obd);
> +	rc = obd_check_dev(obd);
> +	if (rc)
> +		return rc;
>  
>  	/* the check for async_recov is a complete hack - I'm hereby
>  	   overloading the meaning to also mean "this was called from
> @@ -1381,7 +1398,11 @@ static inline int obd_health_check(const struct lu_env *env,
>  static inline int obd_register_observer(struct obd_device *obd,
>  					struct obd_device *observer)
>  {
> -	OBD_CHECK_DEV(obd);
> +	int rc;
> +
> +	rc = obd_check_dev(obd);
> +	if (rc)
> +		return rc;
>  	down_write(&obd->obd_observer_link_sem);
>  	if (obd->obd_observer && observer) {
>  		up_write(&obd->obd_observer_link_sem);
> @@ -1389,7 +1410,7 @@ static inline int obd_register_observer(struct obd_device *obd,
>  	}
>  	obd->obd_observer = observer;
>  	up_write(&obd->obd_observer_link_sem);
> -	return 0;
> +	return rc;

This change isn't needed in this patch.

thanks,

greg k-h

