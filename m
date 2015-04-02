X-GM-THRID: 10576027713536
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,8137d625aae364a6
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.118.162 with SMTP id kn2mr1715500lbb.22.1427998251250;
        Thu, 02 Apr 2015 11:10:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.104.227 with SMTP id gh3ls1380093wib.19.canary; Thu, 02
 Apr 2015 11:10:50 -0700 (PDT)
X-Received: by 10.180.91.76 with SMTP id cc12mr3460361wib.7.1427998250824;
        Thu, 02 Apr 2015 11:10:50 -0700 (PDT)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wi0-x234.google.com (mail-wi0-x234.google.com. [2a00:1450:400c:c05::234])
        by gmr-mx.google.com with ESMTPS id g5si257282wix.1.2015.04.02.11.10.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Apr 2015 11:10:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) client-ip=2a00:1450:400c:c05::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x234.google.com with SMTP id gn9so114809255wib.1
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Apr 2015 11:10:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=NCUvMNoYgzJ3AH8nLaMDArpIx6FXvnn6ANoZxK3SGrg=;
        b=Gv5P+8P9MIkFnRfwWPNaOhB4faHFgOlhM9weyz/wmSyOsvBJ0/zo2Qt4Fm9Ah0i92M
         5+aZ9lG1YG+xnaaLbXoN2frjG2klR14G4XREZU5wP6WIahZ+yuhqqZe/7C5JYBs8cM0t
         D+l6lBeVcZrjtrsdLN+M06iV1+pdbsBFw56SNzrN5Nw4ALsKSZQ4SBMFSMxvZWXLeCRQ
         3yGfN0tNNTf5Ije637Uog7rV4o043OOpEir/Otw2uwfcH0kG5D38AzpgGjPihawbGIO+
         lzU9jwGF2MCeBDQkotv3Skr22WA9u0Q/NdMf2Ra7OaWjApqjqgOKzSefvok1K/Jc5H8K
         iZTw==
X-Received: by 10.180.82.9 with SMTP id e9mr26772172wiy.88.1427998250746;
        Thu, 02 Apr 2015 11:10:50 -0700 (PDT)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([41.130.237.208])
        by mx.google.com with ESMTPSA id hj10sm8246621wjc.48.2015.04.02.11.10.43
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 02 Apr 2015 11:10:50 -0700 (PDT)
Date: Thu, 2 Apr 2015 20:09:56 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3 1/3] staging: lustre: include:
 replace OBD_CHECK_DEV by obd_check_dev
Message-ID: <20150402180955.GA10269@waves>
References: <cover.1427987408.git.mahfouz.saif.elyazal@gmail.com>
 <707aaaafd992944368f0b046b0e030bf68882fc1.1427987408.git.mahfouz.saif.elyazal@gmail.com>
 <20150402164926.GA32106@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150402164926.GA32106@kroah.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Thu, Apr 02, 2015 at 06:49:26PM +0200, Greg KH wrote:
> On Thu, Apr 02, 2015 at 05:18:10PM +0200, Aya Mahfouz wrote:
> > Static inline functions are preferred over macros. Hence, the function
> > obd_check_dev was introduced. obd_check_dev replaces the macro
> > OBD_CHECK_DEV. All functions that call obd_check_dev store the return
> > values and return them if they represent an error code.
> > 
> > Some of the changes were carried out manually and others were
> > done using coccinelle.
> > 
> > Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
> > ---
> > v2: removed unneeded parenthesis around the variable obd.
> > v3: v2 was sent as v1. Fixed that mistake.
> > 
> >  drivers/staging/lustre/lustre/include/obd_class.h | 33 ++++++++++++++++++-----
> >  1 file changed, 27 insertions(+), 6 deletions(-)
> > 
> > diff --git a/drivers/staging/lustre/lustre/include/obd_class.h b/drivers/staging/lustre/lustre/include/obd_class.h
> > index 5314f6f..76f55d3 100644
> > --- a/drivers/staging/lustre/lustre/include/obd_class.h
> > +++ b/drivers/staging/lustre/lustre/include/obd_class.h
> > @@ -341,6 +341,15 @@ do {							    \
> >  	}						       \
> >  } while (0)
> >  
> > +static inline int obd_check_dev(struct obd_device *obd)
> > +{
> > +	if (!obd) {
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
> Again, as I stated before, this change is not needed.
> 
> sorry,
> 
No, problem. Done in the fourth version.

> greg k-h

-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

