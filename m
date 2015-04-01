X-GM-THRID: 10576027713536
X-Received: by 10.112.242.7 with SMTP id wm7mr9462820lbc.1.1427898957613;
        Wed, 01 Apr 2015 07:35:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.36.67 with SMTP id o3ls73853laj.67.gmail; Wed, 01 Apr 2015
 07:35:57 -0700 (PDT)
X-Received: by 10.152.5.168 with SMTP id t8mr2461506lat.3.1427898957115;
        Wed, 01 Apr 2015 07:35:57 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id o3si1032011wib.2.2015.04.01.07.35.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Wed, 01 Apr 2015 07:35:57 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.11,504,1422918000"; 
   d="scan'208";a="131096315"
Received: from guest-rocq-135105.inria.fr ([128.93.135.105])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 01 Apr 2015 16:35:52 +0200
Date: Wed, 1 Apr 2015 16:35:37 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/3] staging: lustre: include: replace
 OBD_CHECK_DEV_ACTIVE by obd_check_dev_active
In-Reply-To: <c9c6240dc1e51a0ffdcdfe0fc7b392712b7ee4e9.1427894169.git.mahfouz.saif.elyazal@gmail.com>
Message-ID: <alpine.DEB.2.10.1504011635160.6929@hadrien>
References: <cover.1427894168.git.mahfouz.saif.elyazal@gmail.com> <c9c6240dc1e51a0ffdcdfe0fc7b392712b7ee4e9.1427894169.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

> +static inline int obd_check_dev_active(struct obd_device *obd)
> +{
> +	int rc;
>
> +	rc = obd_check_dev(obd);
> +	if (rc)
> +		return rc;
> +	if (!(obd)->obd_set_up || (obd)->obd_stopping) {

You can get rid of the parentheses here too.

julia

> +		CERROR("Device %d not setup\n", (obd)->obd_minor);
> +		return -ENODEV;
> +	}
> +	return rc;
> +}
>  #if defined (CONFIG_PROC_FS)
>  #define OBD_COUNTER_OFFSET(op)				  \
>  	((offsetof(struct obd_ops, o_ ## op) -		  \
> @@ -901,7 +913,9 @@ static inline int obd_add_conn(struct obd_import *imp, struct obd_uuid *uuid,
>  	struct obd_device *obd = imp->imp_obd;
>  	int rc;
>
> -	OBD_CHECK_DEV_ACTIVE(obd);
> +	rc = obd_check_dev_active(obd);
> +	if (rc)
> +		return rc;
>  	OBD_CHECK_DT_OP(obd, add_conn, -EOPNOTSUPP);
>  	OBD_COUNTER_INCREMENT(obd, add_conn);
>
> @@ -914,7 +928,9 @@ static inline int obd_del_conn(struct obd_import *imp, struct obd_uuid *uuid)
>  	struct obd_device *obd = imp->imp_obd;
>  	int rc;
>
> -	OBD_CHECK_DEV_ACTIVE(obd);
> +	rc = obd_check_dev_active(obd);
> +	if (rc)
> +		return rc;
>  	OBD_CHECK_DT_OP(obd, del_conn, -EOPNOTSUPP);
>  	OBD_COUNTER_INCREMENT(obd, del_conn);
>
> @@ -948,7 +964,9 @@ static inline int obd_connect(const struct lu_env *env,
>  	__u64 ocf = data ? data->ocd_connect_flags : 0; /* for post-condition
>  						   * check */
>
> -	OBD_CHECK_DEV_ACTIVE(obd);
> +	rc = obd_check_dev_active(obd);
> +	if (rc)
> +		return rc;
>  	OBD_CHECK_DT_OP(obd, connect, -EOPNOTSUPP);
>  	OBD_COUNTER_INCREMENT(obd, connect);
>
> @@ -970,7 +988,9 @@ static inline int obd_reconnect(const struct lu_env *env,
>  	__u64 ocf = d ? d->ocd_connect_flags : 0; /* for post-condition
>  						   * check */
>
> -	OBD_CHECK_DEV_ACTIVE(obd);
> +	rc = obd_check_dev_active(obd);
> +	if (rc)
> +		return rc;
>  	OBD_CHECK_DT_OP(obd, reconnect, 0);
>  	OBD_COUNTER_INCREMENT(obd, reconnect);
>
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/c9c6240dc1e51a0ffdcdfe0fc7b392712b7ee4e9.1427894169.git.mahfouz.saif.elyazal%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

