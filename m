X-GM-THRID: 6475592721521180672
X-Received: by 10.101.88.207 with SMTP id e15mr2131589pgu.118.1507734482519;
        Wed, 11 Oct 2017 08:08:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.98.25.216 with SMTP id 207ls448014pfz.3.gmail; Wed, 11 Oct
 2017 08:08:01 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QAYAalIu30IzhHwWi4Pk1GD+o4TANmn6HrBYc2t0dAALlT/mnL6h3EIt4RzJlGwvRrPuu46
X-Received: by 10.101.80.140 with SMTP id r12mr1212481pgp.136.1507734481281;
        Wed, 11 Oct 2017 08:08:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507734481; cv=none;
        d=google.com; s=arc-20160816;
        b=ujWWjxX/2Gponcy+V65ZxJPEFOc6T1+U+De01xTT0Fky87ulfWBGe/y1EeHq6ouJuH
         wq8Z3r7xLoROOHu93B1vROXbEmaHS9PHgUgsb8cAGAJfzAwQRVAk3gvK8zoBd0ikZ0bX
         K6DjgTxcD02+ghvkYDEmFdjADgTP1tknQXdM+QP7kbAE4dJVMiOcBCm9HV2kzwxVtdX7
         3n9gKdF8BK/oh2cQbVQDUSBqokq4X2YPb1+FitYo0G86eHGQK8/vowubAnrwK6lQyUYC
         rjVhvpIpm2oeBDheo3Rqg3bdmklm0LBfiMCdkcCHMmOSXasfDIo2OSvaDYflRkxfBLB1
         jLfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:organization:in-reply-to
         :subject:to:from:arc-authentication-results;
        bh=0jw0Vx4CjVmvEb1Lb7cPn2/Hntg4evsfQWEstlQozBk=;
        b=az+jNyzJivWIzx+6vg6dv9DNVW7VBHW9c80UoZ77UrUVk9xll7UTONUxP30ijPnmS1
         eoEZicPlI+XT8MzAO2tzrRZ5Q2DNz1BpGfoG2MQw9dE+lNnvyz3t2y70lDdH0KsjUOMW
         KZC90+fmLpyrf6uCz4xrnoYSKG5YkdJ/+55+Q1TK/t95Scd2Gn1aeS2nD8stCQbrCiuF
         u2Ik6S5oHVaLFrYcqvj4xyTcaApLh6cnLioy7OTPBlcB9jh+qw2ilGaYY4noJMKCr8L5
         wrS7J5fvQajI54VExb227EXnfhnSzK8Nw0CMiXYdYVh5QMKX9cSzouGuDalMmw2WcL9v
         lwyg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jani.nikula@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=jani.nikula@intel.com
Return-Path: <jani.nikula@intel.com>
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id n63si1480471pfb.10.2017.10.11.08.08.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Oct 2017 08:08:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of jani.nikula@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jani.nikula@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=jani.nikula@intel.com
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga104.jf.intel.com with ESMTP; 11 Oct 2017 08:08:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.43,361,1503385200"; 
   d="scan'208";a="908940312"
Received: from mklemm-mobl4.ger.corp.intel.com (HELO localhost) ([10.252.56.2])
  by FMSMGA003.fm.intel.com with ESMTP; 11 Oct 2017 08:07:57 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Meghana Madhyastha <meghana.madhyastha@gmail.com>, daniel@ffwll.ch, noralf@tronnes.org, outreachy-kernel@googlegroups.com, dri-devel@lists.freedesktop.org, daniel.thompson@linaro.org
Subject: Re: [PATCH v8 3/3] drm/tinydrm: Add devres versions of backlight_get
In-Reply-To: <20171011141807.GA28100@meghana-HP-Pavilion-Notebook>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1507714297.git.meghana.madhyastha@gmail.com> <6dd8ab4eb88a75613a7bd69c9ff7278f03dd6ea4.1507714297.git.meghana.madhyastha@gmail.com> <87tvz5pz3q.fsf@intel.com> <20171011141807.GA28100@meghana-HP-Pavilion-Notebook>
Date: Wed, 11 Oct 2017 18:07:43 +0300
Message-ID: <87o9pdpvsw.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain

On Wed, 11 Oct 2017, Meghana Madhyastha <meghana.madhyastha@gmail.com> wrote:
> On Wed, Oct 11, 2017 at 04:56:25PM +0300, Jani Nikula wrote:
>> On Wed, 11 Oct 2017, Meghana Madhyastha <meghana.madhyastha@gmail.com> wrote:
>> > Add devm_backlight_get and the corresponding release
>> > function because some drivers use devres versions of functions
>> > for requiring device resources.
>> >
>> > Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
>> > ---
>> > Changes in v8:
>> > -Put the devres version to backlight.c along with backlight_get.
>> >
>> >  drivers/gpu/drm/tinydrm/mi0283qt.c  |  2 +-
>> >  drivers/video/backlight/backlight.c | 31 +++++++++++++++++++++++++++++++
>> >  include/linux/backlight.h           | 16 ++++++++++++++++
>> >  3 files changed, 48 insertions(+), 1 deletion(-)
>> >
>> > diff --git a/drivers/gpu/drm/tinydrm/mi0283qt.c b/drivers/gpu/drm/tinydrm/mi0283qt.c
>> > index edf9502..03fec36 100644
>> > --- a/drivers/gpu/drm/tinydrm/mi0283qt.c
>> > +++ b/drivers/gpu/drm/tinydrm/mi0283qt.c
>> > @@ -190,7 +190,7 @@ static int mi0283qt_probe(struct spi_device *spi)
>> >  	if (IS_ERR(mipi->regulator))
>> >  		return PTR_ERR(mipi->regulator);
>> >  
>> > -	mipi->backlight = backlight_get(dev);
>> > +	mipi->backlight = devm_backlight_get(dev);
>> >  	if (IS_ERR(mipi->backlight))
>> >  		return PTR_ERR(mipi->backlight);
>> >  
>> > diff --git a/drivers/video/backlight/backlight.c b/drivers/video/backlight/backlight.c
>> > index 1debb60..9b24dc2 100644
>> > --- a/drivers/video/backlight/backlight.c
>> > +++ b/drivers/video/backlight/backlight.c
>> > @@ -618,6 +618,37 @@ struct backlight_device *backlight_get(struct device *dev)
>> >  	return bd;
>> >  }
>> >  EXPORT_SYMBOL(backlight_get);
>> > +
>> > +static void devm_backlight_get_release(void *data)
>> 
>> I think that's a confusing name because of the "get", maybe just call it
>> devm_backlight_put?
>
> backlight_put is already in use as a helper function so wouldn't
> devm_backlight_put be confusing as there is already a backlight_put?

I'd think not, as it literally is a devm version of the same thing.

BR,
Jani.



>
> Regards,
> Meghana
>  
>> BR,
>> Jani.
>> 
>> 
>> 
>> > +{
>> > +	backlight_put(data);
>> > +}
>> > +
>> > +/**
>> > + * devm_backlight_get - Resource-managed backlight_get()
>> > + * @dev: Device
>> > + *
>> > + * Device managed version of backlight_get(). The reference on the backlight
>> > + * device is automatically dropped on driver detach.
>> > + */
>> > +struct backlight_device *devm_backlight_get(struct device *dev)
>> > +{
>> > +	struct backlight_device *bd;
>> > +	int ret;
>> > +
>> > +	bd = backlight_get(dev);
>> > +	if (!bd)
>> > +		return NULL;
>> > +
>> > +	ret = devm_add_action(dev, devm_backlight_get_release, bd);
>> > +	if (ret) {
>> > +		backlight_put(bd);
>> > +		return ERR_PTR(ret);
>> > +	}
>> > +
>> > +	return bd;
>> > +}
>> > +EXPORT_SYMBOL(devm_backlight_get);
>> >  #endif
>> >  
>> >  static void __exit backlight_class_exit(void)
>> > diff --git a/include/linux/backlight.h b/include/linux/backlight.h
>> > index 1d713b3..0bfadb6 100644
>> > --- a/include/linux/backlight.h
>> > +++ b/include/linux/backlight.h
>> > @@ -183,6 +183,16 @@ static inline int backlight_disable(struct backlight_device *bd)
>> >  	return backlight_update_status(bd);
>> >  }
>> >  
>> > +/**
>> > + ** backlight_put - Drop backlight reference
>> > + ** @bd: the backlight device to put
>> > + **/
>> > +static inline void backlight_put(struct backlight_device *bd)
>> > +{
>> > +	if (bd)
>> > +		put_device(&bd->dev);
>> > +}
>> > +
>> >  struct generic_bl_info {
>> >  	const char *name;
>> >  	int max_intensity;
>> > @@ -204,11 +214,17 @@ of_find_backlight_by_node(struct device_node *node)
>> >  
>> >  #if IS_ENABLED(CONFIG_BACKLIGHT_CLASS_DEVICE)
>> >  struct backlight_device *backlight_get(struct device *dev);
>> > +struct backlight_device *devm_backlight_get(struct device *dev);
>> >  #else
>> >  static inline struct backlight_device *backlight_get(struct device *dev)
>> >  {
>> >  	return NULL;
>> >  }
>> > +
>> > +static inline struct backlight_device *devm_backlight_get(struct device *dev)
>> > +{
>> > +	return NULL;
>> > +}
>> >  #endif
>> >  
>> >  #endif
>> 
>> -- 
>> Jani Nikula, Intel Open Source Technology Center

-- 
Jani Nikula, Intel Open Source Technology Center

