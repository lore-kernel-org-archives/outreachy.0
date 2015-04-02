X-GM-THRID: 10576027713536
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,8137d625aae364a6
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.151.232 with SMTP id ut8mr3373759lbb.9.1427983712552;
        Thu, 02 Apr 2015 07:08:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.87.204 with SMTP id ba12ls17485lab.41.gmail; Thu, 02 Apr
 2015 07:08:32 -0700 (PDT)
X-Received: by 10.112.118.162 with SMTP id kn2mr1462902lbb.22.1427983711989;
        Thu, 02 Apr 2015 07:08:31 -0700 (PDT)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wi0-x22d.google.com (mail-wi0-x22d.google.com. [2a00:1450:400c:c05::22d])
        by gmr-mx.google.com with ESMTPS id i8si320484wif.1.2015.04.02.07.08.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Apr 2015 07:08:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) client-ip=2a00:1450:400c:c05::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22d.google.com with SMTP id gn9so106807243wib.1
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Apr 2015 07:08:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=0MhEFRpwp3yd5o2AfenWwS1zYhaLLWQgB8lsqaSLUXY=;
        b=FbTrakpc7nYQhW/O3xqBLr3O5ki4QMxjjdBpXhqlPtsUGmDTMgNuivSSJQMfTTrZp4
         cISaPL0vcpMgdTxY6z/6WghYNaeC5wcuGE6EkdhHkx40VsDu4MYXdIrMGlog5WsS+osw
         XbgTo50Cno/Y6CsLEzClNm15f/BXELbej9N/0T6iyt50WH2GrZSGH1ZBVgUapP4e6Wz3
         MLLwzGlvOC58JougMeoLJYZxG3m8F+DeyKaWNoaeraPckKpqzYIHfQV++aCobizQvlRm
         g2elbKmLa20Zti+e1U+zj776djZxIoAFbYogTQa/XJ5du3WywhRmIWBzy1dnCQoKSgck
         lpzw==
X-Received: by 10.194.133.199 with SMTP id pe7mr95917794wjb.120.1427983711873;
        Thu, 02 Apr 2015 07:08:31 -0700 (PDT)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([41.130.237.130])
        by mx.google.com with ESMTPSA id k6sm30200621wia.6.2015.04.02.07.08.29
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 02 Apr 2015 07:08:31 -0700 (PDT)
Date: Thu, 2 Apr 2015 16:08:26 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 1/3] staging: lustre: include:
 replace OBD_CHECK_DEV by obd_check_dev
Message-ID: <20150402140825.GA3126@waves>
References: <cover.1427904237.git.mahfouz.saif.elyazal@gmail.com>
 <5ad6d9280a9080c3be07ca184ecdf84501c24c94.1427904237.git.mahfouz.saif.elyazal@gmail.com>
 <20150402083104.GA23918@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150402083104.GA23918@kroah.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Thu, Apr 02, 2015 at 10:31:04AM +0200, Greg KH wrote:
> On Wed, Apr 01, 2015 at 06:09:35PM +0200, Aya Mahfouz wrote:
> > Static inline functions are preferred over macros. Hence, the function
> > obd_check_dev was introduced. obd_check_dev replaces the macro
> > OBD_CHECK_DEV. All functions that call obd_check_dev store the return
> > values and return them if they represent an error code.
> > 
> > Some of the changes were carried out manually while others were done
> > using coccinelle.
> > 
> > Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
> > ---
> > v2: removed unneeded parenthesis around the variable obd.
> > 
> >  drivers/staging/lustre/lustre/include/obd_class.h | 33 ++++++++++++++++++-----
> >  1 file changed, 27 insertions(+), 6 deletions(-)
> > 
> > diff --git a/drivers/staging/lustre/lustre/include/obd_class.h b/drivers/staging/lustre/lustre/include/obd_class.h
> > index 5314f6f..ddc212a 100644
> > --- a/drivers/staging/lustre/lustre/include/obd_class.h
> > +++ b/drivers/staging/lustre/lustre/include/obd_class.h
> > @@ -341,6 +341,15 @@ do {							    \
> >  	}						       \
> >  } while (0)
> >  
> > +static inline int obd_check_dev(struct obd_device *obd)
> > +{
> > +	if (!(obd)) {
> 
> Why the extra () here?
> 
> 
> > +		CERROR("NULL device\n");
> > +		return -ENODEV;
> > +	}
> > +	return 0;
> > +}
> > +
> >  /* ensure obd_setup and !obd_stopping */
> >  #define OBD_CHECK_DEV_ACTIVE(obd)			       \
> >  do {							    \
> > @@ -594,7 +603,9 @@ static inline int obd_precleanup(struct obd_device *obd,
> >  	int rc;
> >  	DECLARE_LU_VARS(ldt, d);
> >  
> > -	OBD_CHECK_DEV(obd);
> > +	rc = obd_check_dev(obd);
> > +	if (rc)
> > +		return rc;
> >  	ldt = obd->obd_type->typ_lu;
> >  	d = obd->obd_lu_dev;
> >  	if (ldt != NULL && d != NULL) {
> > @@ -620,7 +631,9 @@ static inline int obd_cleanup(struct obd_device *obd)
> >  	int rc;
> >  	DECLARE_LU_VARS(ldt, d);
> >  
> > -	OBD_CHECK_DEV(obd);
> > +	rc = obd_check_dev(obd);
> > +	if (rc)
> > +		return rc;
> >  
> >  	ldt = obd->obd_type->typ_lu;
> >  	d = obd->obd_lu_dev;
> > @@ -668,7 +681,9 @@ obd_process_config(struct obd_device *obd, int datalen, void *data)
> >  	int rc;
> >  	DECLARE_LU_VARS(ldt, d);
> >  
> > -	OBD_CHECK_DEV(obd);
> > +	rc = obd_check_dev(obd);
> > +	if (rc)
> > +		return rc;
> >  
> >  	obd->obd_process_conf = 1;
> >  	ldt = obd->obd_type->typ_lu;
> > @@ -1280,7 +1295,9 @@ static inline int obd_notify(struct obd_device *obd,
> >  {
> >  	int rc;
> >  
> > -	OBD_CHECK_DEV(obd);
> > +	rc = obd_check_dev(obd);
> > +	if (rc)
> > +		return rc;
> >  
> >  	/* the check for async_recov is a complete hack - I'm hereby
> >  	   overloading the meaning to also mean "this was called from
> > @@ -1381,7 +1398,11 @@ static inline int obd_health_check(const struct lu_env *env,
> >  static inline int obd_register_observer(struct obd_device *obd,
> >  					struct obd_device *observer)
> >  {
> > -	OBD_CHECK_DEV(obd);
> > +	int rc;
> > +
> > +	rc = obd_check_dev(obd);
> > +	if (rc)
> > +		return rc;
> >  	down_write(&obd->obd_observer_link_sem);
> >  	if (obd->obd_observer && observer) {
> >  		up_write(&obd->obd_observer_link_sem);
> > @@ -1389,7 +1410,7 @@ static inline int obd_register_observer(struct obd_device *obd,
> >  	}
> >  	obd->obd_observer = observer;
> >  	up_write(&obd->obd_observer_link_sem);
> > -	return 0;
> > +	return rc;
> 
> This change isn't needed in this patch.
> 
obd_check_dev initializes rc to 0 upon success.
> thanks,
> 
> greg k-h

-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

