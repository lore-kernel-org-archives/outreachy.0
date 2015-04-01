X-GM-THRID: 10576027713536
X-Received: by 10.112.160.197 with SMTP id xm5mr1650110lbb.15.1427901310270;
        Wed, 01 Apr 2015 08:15:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.43.82 with SMTP id u18ls96993lal.79.gmail; Wed, 01 Apr
 2015 08:15:09 -0700 (PDT)
X-Received: by 10.112.167.131 with SMTP id zo3mr9850055lbb.7.1427901309723;
        Wed, 01 Apr 2015 08:15:09 -0700 (PDT)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wg0-x22e.google.com (mail-wg0-x22e.google.com. [2a00:1450:400c:c00::22e])
        by gmr-mx.google.com with ESMTPS id na10si146172wic.0.2015.04.01.08.15.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Apr 2015 08:15:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::22e as permitted sender) client-ip=2a00:1450:400c:c00::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::22e as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x22e.google.com with SMTP id e14so56519986wgo.0
        for <outreachy-kernel@googlegroups.com>; Wed, 01 Apr 2015 08:15:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=zEvebpk9PFTcTPGxD7hxcS2Ko4YaRKqxTta4YgF2q/o=;
        b=RBr6KGsDy/dGot1fX18Q2Dg+RJN2v6eueUC74NjkHADuMKtz7DVCeGPfyrs6X/Axmj
         JV3cxE0+mYVyv0h/KSMBDx3BuXCQqNkKVGot2lhm00+EvK1c/fB37kZY4fW65vgMlF0j
         3WyNFsHh8L4vm/wAwK/8l6Fp+XMzvAluOCS8BBELkmUoUPieA+9BAsXYqRwEBRhSwTsa
         RmfsT+xGiizGpDPvYC3tpKedmVLDqHpsuUzWEKDLOEhibLMQjXyiY10x5uNCm7YtkZy9
         PiCJF3/JvS+gj+XnoVi4YRABOY459gvTgiWAsHgdlJrqY1EBTGQp8Pmucve8HNKqCXDl
         hV7g==
X-Received: by 10.180.74.40 with SMTP id q8mr15956408wiv.32.1427901309601;
        Wed, 01 Apr 2015 08:15:09 -0700 (PDT)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([62.135.96.11])
        by mx.google.com with ESMTPSA id u16sm3134342wjr.5.2015.04.01.08.15.06
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 01 Apr 2015 08:15:08 -0700 (PDT)
Date: Wed, 1 Apr 2015 17:14:59 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/3] staging: lustre: include: replace
 OBD_CHECK_DEV_ACTIVE by obd_check_dev_active
Message-ID: <20150401151459.GA2825@waves>
References: <cover.1427894168.git.mahfouz.saif.elyazal@gmail.com>
 <c9c6240dc1e51a0ffdcdfe0fc7b392712b7ee4e9.1427894169.git.mahfouz.saif.elyazal@gmail.com>
 <alpine.DEB.2.10.1504011635160.6929@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.10.1504011635160.6929@hadrien>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Wed, Apr 01, 2015 at 04:35:37PM +0200, Julia Lawall wrote:
> > +static inline int obd_check_dev_active(struct obd_device *obd)
> > +{
> > +	int rc;
> >
> > +	rc = obd_check_dev(obd);
> > +	if (rc)
> > +		return rc;
> > +	if (!(obd)->obd_set_up || (obd)->obd_stopping) {
> 
> You can get rid of the parentheses here too.
> 
> julia
> 

Definitely! Thanks Julia!

> > +		CERROR("Device %d not setup\n", (obd)->obd_minor);
> > +		return -ENODEV;
> > +	}
> > +	return rc;
> > +}
> >  #if defined (CONFIG_PROC_FS)
> >  #define OBD_COUNTER_OFFSET(op)				  \
> >  	((offsetof(struct obd_ops, o_ ## op) -		  \
> > @@ -901,7 +913,9 @@ static inline int obd_add_conn(struct obd_import *imp, struct obd_uuid *uuid,
> >  	struct obd_device *obd = imp->imp_obd;
> >  	int rc;
> >
> > -	OBD_CHECK_DEV_ACTIVE(obd);
> > +	rc = obd_check_dev_active(obd);
> > +	if (rc)
> > +		return rc;
> >  	OBD_CHECK_DT_OP(obd, add_conn, -EOPNOTSUPP);
> >  	OBD_COUNTER_INCREMENT(obd, add_conn);
> >
> > @@ -914,7 +928,9 @@ static inline int obd_del_conn(struct obd_import *imp, struct obd_uuid *uuid)
> >  	struct obd_device *obd = imp->imp_obd;
> >  	int rc;
> >
> > -	OBD_CHECK_DEV_ACTIVE(obd);
> > +	rc = obd_check_dev_active(obd);
> > +	if (rc)
> > +		return rc;
> >  	OBD_CHECK_DT_OP(obd, del_conn, -EOPNOTSUPP);
> >  	OBD_COUNTER_INCREMENT(obd, del_conn);
> >
> > @@ -948,7 +964,9 @@ static inline int obd_connect(const struct lu_env *env,
> >  	__u64 ocf = data ? data->ocd_connect_flags : 0; /* for post-condition
> >  						   * check */
> >
> > -	OBD_CHECK_DEV_ACTIVE(obd);
> > +	rc = obd_check_dev_active(obd);
> > +	if (rc)
> > +		return rc;
> >  	OBD_CHECK_DT_OP(obd, connect, -EOPNOTSUPP);
> >  	OBD_COUNTER_INCREMENT(obd, connect);
> >
> > @@ -970,7 +988,9 @@ static inline int obd_reconnect(const struct lu_env *env,
> >  	__u64 ocf = d ? d->ocd_connect_flags : 0; /* for post-condition
> >  						   * check */
> >
> > -	OBD_CHECK_DEV_ACTIVE(obd);
> > +	rc = obd_check_dev_active(obd);
> > +	if (rc)
> > +		return rc;
> >  	OBD_CHECK_DT_OP(obd, reconnect, 0);
> >  	OBD_COUNTER_INCREMENT(obd, reconnect);
> >
> > --
> > 2.1.0
> >
> >
> > --
> > Kind Regards,
> > Aya Saif El-yazal Mahfouz
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/c9c6240dc1e51a0ffdcdfe0fc7b392712b7ee4e9.1427894169.git.mahfouz.saif.elyazal%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >

-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

