X-GM-THRID: 6950506572644614144
X-Received: by 2002:ab0:2a84:: with SMTP id h4mr23889964uar.46.1618311406281;
        Tue, 13 Apr 2021 03:56:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6102:3127:: with SMTP id f7ls3038534vsh.9.gmail; Tue, 13
 Apr 2021 03:56:45 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxmqbiAC9SccjkO2G0+OsSVj07kD0cLSgTT85OUnce57sn5enVR3JDu1i1JIsOArKZRFV4A
X-Received: by 2002:a67:ee88:: with SMTP id n8mr23299242vsp.52.1618311405363;
        Tue, 13 Apr 2021 03:56:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618311405; cv=none;
        d=google.com; s=arc-20160816;
        b=vEECB73ixLwuWkVirYXifMt3RmBoabVWsZOKC/YaDuF0BnMaFsKG+jcbcavMYhMUVQ
         xzdAgNjg0bLZQCsV38JgoJkfMkdkgJkNViNbWXaW0RRq6xBEWKRfQEeLA/O5F3LfeTnn
         rIwCY3HD7i2wz+E/nEPepH+r0L7piwnyJIY/6+4HosB+VCIIAV8an+yl75KP7Gi6uT/R
         XvdKMqC/nobDpwWzVdMyqaIlCQ+JkjiO32C0Xl38SHGysQmruDSgkVjlBVb7wm0Z+ZIz
         JSCSHTA3X25volFqO3P+wagqQurGDGd9hvO5YSon0z2dx/S5TabljFbYlTJPCZib+T21
         lajA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=MAGppu7VhjPYwD2qxh3YHD4bU0Gc/HYHrVGQQoZyahU=;
        b=b3/yQc+yVNL3KFVa41BrFpOI3zTHiytr7vdf6+Ob3JLVldtNgROMC7rDQ1maW/iZI4
         IKjoAx/YWMzVslPfTZud08ROsm1WFCzDA02wfBHecBF3ytUiBpjbAMcF6cBIlRH7B7Rz
         CuY/Gtc9OgvU+u6Ks8A9SVYWeLil9xvCa3qdMAymA2sXzldkzl8AhhJZ4dF4W91iu5PN
         U2dU0G7QUcnPj1L7LCaNYujairlpjeqHv+902MJY1JF2NEJSpS59MkF9MODbQwEQg0PU
         AlQJ0O+7HE5EHbBdOTHjkrd5IW9SgwemTXmZkjD0OyfslKuQKZaBjaOWR4Icul0XO5+U
         HL/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IpBgHtCy;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::534 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pg1-x534.google.com (mail-pg1-x534.google.com. [2607:f8b0:4864:20::534])
        by gmr-mx.google.com with ESMTPS id u13si942435vkl.5.2021.04.13.03.56.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Apr 2021 03:56:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::534 as permitted sender) client-ip=2607:f8b0:4864:20::534;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IpBgHtCy;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::534 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x534.google.com with SMTP id g35so11607585pgg.9
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Apr 2021 03:56:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=MAGppu7VhjPYwD2qxh3YHD4bU0Gc/HYHrVGQQoZyahU=;
        b=IpBgHtCyRL3gNX7opeVdx95bt1xmEcYgkCa30wTNZuMfWkAVXRuTEWI4jgzM1rBc42
         m1D37NMSaDkwEZJSB1NgiZZO29QYuHbeG7k2kgGriwCVqfXTG+J71SRz98Vcrj08K8G7
         /vNA4lDX4R3bmuN7vN8UhCKOjtX/CT4AK00ly9qczRoNzkFH6RmIc/plfHTzm8QL3EDQ
         olouQdpxWpRtS8QKQtbd5L5PoJxG2Vs708sNFKzU8OJzxxAMM7nDZL540Ltip/bWog2t
         atYMFAR8BBQpZx45KnpCL466T40IgtZM9HkW/jrXLgKXxgqTYhAOVSUf7UZ8WUteI/hC
         TnLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=MAGppu7VhjPYwD2qxh3YHD4bU0Gc/HYHrVGQQoZyahU=;
        b=p3OxOzhx7jfrPMtlRGcHBpjyQsNWxIpeuetmGWUX1mJf0V9SsA0KaUso0+hh4OpY2o
         MF42huK1UfSnxUONzkhDDiiebrZq6gGE2tvXo0msCxMKQDZKb0aoH2yTnR5IaLeicSzD
         S2ps6c+r880q5xA4jifpfnf7gll9CopPA2fLROV32IO4jvwrojyz4C2Qy9KaKeO9CcvC
         zAIpztHIikC3/Uhqr15TxN7TlLLDHNhDu/tc7psOvnPe9YyB2FbnINMuWpdTtvexFg6d
         M9iUqqn2Zlu1g62vQvYfz326l4eau+B0gK0mv5CwUIe0Kj/68Up29L9UQuGf8S2MXc3H
         FX8Q==
X-Gm-Message-State: AOAM53294JBdeWkEv444FN8gDEQ1rt6OygN13MKF+HMyWj9t8t2HNqho
	gOtSZE7ceZv6iuC+NW/aU20=
X-Received: by 2002:a63:703:: with SMTP id 3mr31987197pgh.253.1618311404850;
        Tue, 13 Apr 2021 03:56:44 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.253])
        by smtp.gmail.com with ESMTPSA id h68sm12219382pfe.111.2021.04.13.03.56.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Apr 2021 03:56:44 -0700 (PDT)
Date: Tue, 13 Apr 2021 16:26:36 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: bingbu.cao@intel.com, tian.shu.qiu@intel.com, mchehab@kernel.org,
	gregkh@linuxfoundation.org, linux-media@vger.kernel.org,
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: Re: [PATCH v2 3/4] staging: media: intel-ipu3: reduce length of line
Message-ID: <YHV45I6ZDsXNwdiG@kali>
References: <cover.1618289130.git.mitaliborkar810@gmail.com>
 <f18b704654797e29f3bbbe49689eaa2c0ad28d59.1618289130.git.mitaliborkar810@gmail.com>
 <20210413100134.GR3@paasikivi.fi.intel.com>
 <YHV1uOq9pXmGUD+x@kali>
 <20210413104432.GU3@paasikivi.fi.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210413104432.GU3@paasikivi.fi.intel.com>

On Tue, Apr 13, 2021 at 01:44:32PM +0300, Sakari Ailus wrote:
> On Tue, Apr 13, 2021 at 04:13:04PM +0530, Mitali Borkar wrote:
> > On Tue, Apr 13, 2021 at 01:01:34PM +0300, Sakari Ailus wrote:
> > > Hi Mitali,
> > > 
> > > Thanks for the update.
> > > 
> > > On Tue, Apr 13, 2021 at 10:46:06AM +0530, Mitali Borkar wrote:
> > > > Reduced length of the line under 80 characters to meet linux-kernel
> > > > coding style.
> > > > 
> > > > Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
> > > > ---
> > > > 
> > > > Changes from v1:- Reduced length of the line under 80 characters
> > > > 
> > > >  drivers/staging/media/ipu3/include/intel-ipu3.h | 3 ++-
> > > >  1 file changed, 2 insertions(+), 1 deletion(-)
> > > > 
> > > > diff --git a/drivers/staging/media/ipu3/include/intel-ipu3.h b/drivers/staging/media/ipu3/include/intel-ipu3.h
> > > > index 6a72c81d2b67..52dcc6cdcffc 100644
> > > > --- a/drivers/staging/media/ipu3/include/intel-ipu3.h
> > > > +++ b/drivers/staging/media/ipu3/include/intel-ipu3.h
> > > > @@ -247,7 +247,8 @@ struct ipu3_uapi_ae_ccm {
> > > >   */
> > > >  struct ipu3_uapi_ae_config {
> > > >  	struct ipu3_uapi_ae_grid_config grid_cfg __aligned(32);
> > > > -	struct ipu3_uapi_ae_weight_elem weights[IPU3_UAPI_AE_WEIGHTS] __aligned(32);
> > > > +	struct ipu3_uapi_ae_weight_elem weights[IPU3_UAPI_AE_WEIGHTS]
> > > > +							__aligned(32);
> > > 
> > > Do you still have the other two patches in your tree? This doesn't apply
> > > here due to the different attribute syntax.
> > >
> > I have patch 1/6 and 2/6 in my tree which you asked me to drop.
> 
> Could you drop them and then submit v3?
>
I am extremely sorry Sir, but I am still learning to use git, drop them
means to delete those commits? Even if I delete those, this patch was
made after those, so the changes I made then will remain as it is, so
what to do now? 

> Thanks.
> 
> -- 
> Sakari Ailus

