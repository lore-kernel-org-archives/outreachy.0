X-GM-THRID: 10576027713536
X-Received: by 10.182.47.137 with SMTP id d9mr57246466obn.5.1427963514064;
        Thu, 02 Apr 2015 01:31:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.92.169 with SMTP id b38ls659659qge.31.gmail; Thu, 02 Apr
 2015 01:31:53 -0700 (PDT)
X-Received: by 10.236.30.130 with SMTP id k2mr29249120yha.45.1427963513874;
        Thu, 02 Apr 2015 01:31:53 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id iw3si527042pbd.1.2015.04.02.01.31.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Apr 2015 01:31:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (gob75-2-82-67-192-59.fbx.proxad.net [82.67.192.59])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id E51BAAF3;
	Thu,  2 Apr 2015 08:31:52 +0000 (UTC)
Date: Thu, 2 Apr 2015 10:31:48 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 2/3] staging: lustre: include:
 replace OBD_CHECK_DEV_ACTIVE by obd_check_dev_active
Message-ID: <20150402083148.GB23918@kroah.com>
References: <cover.1427904237.git.mahfouz.saif.elyazal@gmail.com>
 <c9c6240dc1e51a0ffdcdfe0fc7b392712b7ee4e9.1427904237.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c9c6240dc1e51a0ffdcdfe0fc7b392712b7ee4e9.1427904237.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Wed, Apr 01, 2015 at 06:11:55PM +0200, Aya Mahfouz wrote:
> Static inline functions are preferred over macros. The inline function
> obd_check_dev_active is introduced to replace OBD_CHECK_DEV_ACTIVE.
> All functions that call obd_check_dev_active store the return values
> and return them if they represent an error code.
> 
> Some of the changes were carried out manually while others were done
> using coccinelle.
> 
> Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
> ---
> v2: removed unneeded parenthesis around the variable obd.
> 
>  drivers/staging/lustre/lustre/include/obd_class.h | 28 +++++++++++++++++++----
>  1 file changed, 24 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/lustre/lustre/include/obd_class.h b/drivers/staging/lustre/lustre/include/obd_class.h
> index ddc212a..3c444fa 100644
> --- a/drivers/staging/lustre/lustre/include/obd_class.h
> +++ b/drivers/staging/lustre/lustre/include/obd_class.h
> @@ -361,7 +361,19 @@ do {							    \
>  	}						       \
>  } while (0)
>  
> +static inline int obd_check_dev_active(struct obd_device *obd)
> +{
> +	int rc;
>  
> +	rc = obd_check_dev(obd);
> +	if (rc)
> +		return rc;
> +	if (!(obd)->obd_set_up || (obd)->obd_stopping) {
> +		CERROR("Device %d not setup\n", (obd)->obd_minor);

extra () are not needed on these two lines either.

thanks,

greg k-h

