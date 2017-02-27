X-GM-THRID: 6391534013492756480
X-Received: by 10.157.62.227 with SMTP id b90mr6402825otc.53.1488217812456;
        Mon, 27 Feb 2017 09:50:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.13.232 with SMTP id 95ls6194247ots.19.gmail; Mon, 27 Feb
 2017 09:50:12 -0800 (PST)
X-Received: by 10.31.174.209 with SMTP id x200mr3895955vke.8.1488217812092;
        Mon, 27 Feb 2017 09:50:12 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id f7si3293259pfk.5.2017.02.27.09.50.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 09:50:12 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id y23so884578pfk.2
        for <outreachy-kernel@googlegroups.com>; Mon, 27 Feb 2017 09:50:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=uJFHO3Xj7oIT86A6VYHKXLUNpmjzfkAm+V1IV+DCnQ4=;
        b=b7KzcSuqognlKphQgL4eun7y283ftPfHpooQ+HBo2+dbiky0PzonRTkMJR7IBR+wv2
         g2Xe/Fw6YTEhAaC0S18Tz59njBzur5+IAYkgKPwxPoOtzzL2nafEU0umcZeb5wbS8aW8
         qTOEdY5KTD2TsN4pCd2OOfmVO5KtSfU7TEOGYtG6Ju0EBMmLAffK0zk9E17vsQdBKrG1
         V97aEmC4OVUX7lPLN2Ado9gYcfkMPtzeG0EyDzSb9vJAs+T+tRgn6sX7jyqegM0Galji
         OchO2JE4vG+a9uLcAnDMvGgFIN8U9YTcL6i5n8XVFvR6rkAJqceYovf84LYTsqlWHwVW
         0mIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=uJFHO3Xj7oIT86A6VYHKXLUNpmjzfkAm+V1IV+DCnQ4=;
        b=GhZ4788WSNwKKMi0ypm5XFvT1rQB6PGO2na/ZzgO/moT8eVbXsPZYvFSbx3u52Gkrw
         dwfo8CnFzgzCHALpjPAJUAj5QSTnKhqPDj8PvWAeYS1S1QGc52+n8lwYBHqyfexu+kfQ
         CkyQem8aHaSVFgf9q46I/3jKV35k66LVFhUvtMlK539LlqWLwnFXgWN9qbQFlB/R6CVT
         IuRZfQxHfPXnZ6hM9NOfQGmK9fULLBIux6srS3oZd/Hc5engCwqdkggtAcJg3dzNootM
         6wKERXTG+nb35xAqsjPreb0CUQjX+wC51tj0MtRQpNiKkhq8LXl8/4R8PlFXTrvhL1R7
         ADdQ==
X-Gm-Message-State: AMke39mrmDs6Q9rf9qKfk1+2umDJV/uHL4z+u9DlSZzQ+1VeYYSdULFTgQYgRGCG3zGoaQ==
X-Received: by 10.99.97.16 with SMTP id v16mr9668403pgb.175.1488217811730;
        Mon, 27 Feb 2017 09:50:11 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id r73sm31937766pfe.55.2017.02.27.09.50.11
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 27 Feb 2017 09:50:11 -0800 (PST)
Date: Mon, 27 Feb 2017 09:50:10 -0800
From: Alison Schofield <amsfield22@gmail.com>
To: Lars-Peter Clausen <lars@metafoo.de>
Cc: sayli karnik <karniksayli1995@gmail.com>,
	outreachy-kernel@googlegroups.com,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-iio@vger.kernel.org
Subject: Re: [Outreachy kernel] Re: [PATCH] staging: iio: ad7192: Move
 contents of header file to source file
Message-ID: <20170227175009.GB1549@d830.WORKGROUP>
References: <20170226213557.GA4483@sayli-HP-15-Notebook-PC>
 <38e67a95-05ee-9a14-e6c7-83bfc68cd517@metafoo.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <38e67a95-05ee-9a14-e6c7-83bfc68cd517@metafoo.de>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Mon, Feb 27, 2017 at 10:18:58AM +0100, Lars-Peter Clausen wrote:
> On 02/26/2017 10:35 PM, sayli karnik wrote:
> > The contents of the header file are used only by this single
> > source file. Move content into .c and delete .h.
> 
> Hi,
> 
> Thanks for the patch, but this separation is on purpose. The header file
> contains the platform data struct which is supposed to be supplied to the
> driver form somewhere else. When the driver is moved out of staging the
> header will go into the global include/linux/platform_data/ folder.

Lars - Thanks on all of these!  I am updating the task description to
include this platform data exception you've described. 
alisons

> 
> > 
> > Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
> > ---
> >  drivers/staging/iio/adc/ad7192.c | 38 ++++++++++++++++++++++++++++++--
> >  drivers/staging/iio/adc/ad7192.h | 47 ----------------------------------------
> >  2 files changed, 36 insertions(+), 49 deletions(-)
> >  delete mode 100644 drivers/staging/iio/adc/ad7192.h
> > 
> > diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
> > index 1fb68c0..a13e79d 100644
> > --- a/drivers/staging/iio/adc/ad7192.c
> > +++ b/drivers/staging/iio/adc/ad7192.c
> > @@ -25,8 +25,6 @@
> >  #include <linux/iio/triggered_buffer.h>
> >  #include <linux/iio/adc/ad_sigma_delta.h>
> >  
> > -#include "ad7192.h"
> > -
> >  /* Registers */
> >  #define AD7192_REG_COMM		0 /* Communications Register (WO, 8-bit) */
> >  #define AD7192_REG_STAT		0 /* Status Register	     (RO, 8-bit) */
> > @@ -166,6 +164,42 @@ struct ad7192_state {
> >  	struct ad_sigma_delta		sd;
> >  };
> >  
> > +/*
> > + * TODO: struct ad7192_platform_data needs to go into include/linux/iio
> > + */
> > +
> > +/**
> > + * struct ad7192_platform_data - platform/board specific information
> > + * @vref_mv:		the external reference voltage in millivolt
> > + * @clock_source_sel:	[0..3]
> > + *			0 External 4.92 MHz clock connected from MCLK1 to MCLK2
> > + *			1 External Clock applied to MCLK2
> > + *			2 Internal 4.92 MHz Clock not available at the MCLK2 pin
> > + *			3 Internal 4.92 MHz Clock available at the MCLK2 pin
> > + * @ext_clk_Hz:		the external clock frequency in Hz, if not set
> > + *			the driver uses the internal clock (16.776 MHz)
> > + * @refin2_en:		REFIN1/REFIN2 Reference Select (AD7190/2 only)
> > + * @rej60_en:		50/60Hz notch filter enable
> > + * @sinc3_en:		SINC3 filter enable (default SINC4)
> > + * @chop_en:		CHOP mode enable
> > + * @buf_en:		buffered input mode enable
> > + * @unipolar_en:	unipolar mode enable
> > + * @burnout_curr_en:	constant current generators on AIN(+|-) enable
> > + */
> > +
> > +struct ad7192_platform_data {
> > +	u16		vref_mv;
> > +	u8		clock_source_sel;
> > +	u32		ext_clk_hz;
> > +	bool		refin2_en;
> > +	bool		rej60_en;
> > +	bool		sinc3_en;
> > +	bool		chop_en;
> > +	bool		buf_en;
> > +	bool		unipolar_en;
> > +	bool		burnout_curr_en;
> > +};
> > +
> >  static struct ad7192_state *ad_sigma_delta_to_ad7192(struct ad_sigma_delta *sd)
> >  {
> >  	return container_of(sd, struct ad7192_state, sd);
> > diff --git a/drivers/staging/iio/adc/ad7192.h b/drivers/staging/iio/adc/ad7192.h
> > deleted file mode 100644
> > index 7433a43..0000000
> > --- a/drivers/staging/iio/adc/ad7192.h
> > +++ /dev/null
> > @@ -1,47 +0,0 @@
> > -/*
> > - * AD7190 AD7192 AD7195 SPI ADC driver
> > - *
> > - * Copyright 2011 Analog Devices Inc.
> > - *
> > - * Licensed under the GPL-2.
> > - */
> > -#ifndef IIO_ADC_AD7192_H_
> > -#define IIO_ADC_AD7192_H_
> > -
> > -/*
> > - * TODO: struct ad7192_platform_data needs to go into include/linux/iio
> > - */
> > -
> > -/**
> > - * struct ad7192_platform_data - platform/board specific information
> > - * @vref_mv:		the external reference voltage in millivolt
> > - * @clock_source_sel:	[0..3]
> > - *			0 External 4.92 MHz clock connected from MCLK1 to MCLK2
> > - *			1 External Clock applied to MCLK2
> > - *			2 Internal 4.92 MHz Clock not available at the MCLK2 pin
> > - *			3 Internal 4.92 MHz Clock available at the MCLK2 pin
> > - * @ext_clk_Hz:		the external clock frequency in Hz, if not set
> > - *			the driver uses the internal clock (16.776 MHz)
> > - * @refin2_en:		REFIN1/REFIN2 Reference Select (AD7190/2 only)
> > - * @rej60_en:		50/60Hz notch filter enable
> > - * @sinc3_en:		SINC3 filter enable (default SINC4)
> > - * @chop_en:		CHOP mode enable
> > - * @buf_en:		buffered input mode enable
> > - * @unipolar_en:	unipolar mode enable
> > - * @burnout_curr_en:	constant current generators on AIN(+|-) enable
> > - */
> > -
> > -struct ad7192_platform_data {
> > -	u16		vref_mv;
> > -	u8		clock_source_sel;
> > -	u32		ext_clk_hz;
> > -	bool		refin2_en;
> > -	bool		rej60_en;
> > -	bool		sinc3_en;
> > -	bool		chop_en;
> > -	bool		buf_en;
> > -	bool		unipolar_en;
> > -	bool		burnout_curr_en;
> > -};
> > -
> > -#endif /* IIO_ADC_AD7192_H_ */
> > 
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/38e67a95-05ee-9a14-e6c7-83bfc68cd517%40metafoo.de.
> For more options, visit https://groups.google.com/d/optout.

