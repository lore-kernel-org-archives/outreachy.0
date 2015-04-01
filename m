X-GM-THRID: 10576027713536
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,8137d625aae364a6
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.83.41 with SMTP id n9mr1971733wiy.4.1427898899001;
        Wed, 01 Apr 2015 07:34:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.7.42 with SMTP id g10ls85455laa.51.gmail; Wed, 01 Apr 2015
 07:34:58 -0700 (PDT)
X-Received: by 10.112.67.74 with SMTP id l10mr2458088lbt.23.1427898898393;
        Wed, 01 Apr 2015 07:34:58 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id el6si1043477wib.0.2015.04.01.07.34.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Wed, 01 Apr 2015 07:34:58 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.11,504,1422918000"; 
   d="scan'208";a="131096178"
Received: from guest-rocq-135105.inria.fr ([128.93.135.105])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 01 Apr 2015 16:34:57 +0200
Date: Wed, 1 Apr 2015 16:34:43 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/3] staging: lustre: include: replace
 OBD_CHECK_DEV by obd_check_dev
In-Reply-To: <5ad6d9280a9080c3be07ca184ecdf84501c24c94.1427894168.git.mahfouz.saif.elyazal@gmail.com>
Message-ID: <alpine.DEB.2.10.1504011634120.6929@hadrien>
References: <cover.1427894168.git.mahfouz.saif.elyazal@gmail.com> <5ad6d9280a9080c3be07ca184ecdf84501c24c94.1427894168.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

> +static inline int obd_check_dev(struct obd_device *obd)
> +{
> +	if (!(obd)) {

Now that it is a function, obd is just a variable.  So the parentheses are
not needed.

julia

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
>  }
>
>  #if 0
> --
> 2.1.0
>
>
> --
> Kind Regards,
> Aya Saif El-yazal Mahfouz
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/5ad6d9280a9080c3be07ca184ecdf84501c24c94.1427894168.git.mahfouz.saif.elyazal%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

