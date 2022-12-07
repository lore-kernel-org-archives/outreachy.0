Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63AB020F7
	for <outreachy@lists.linux.dev>; Wed,  7 Dec 2022 11:30:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1670412627; x=1701948627;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=kh4y6l6w9SxnJx5xFBJLdTUfM4uJK7lKR1XZ4zn7eHc=;
  b=EPfFlZHqQrjlaWZ9LcDEN1ZPOsRk1ebQySX1FiPsK12kATPNOwVSihmf
   kaHRse+7IzAUpz8lo235pxzGVznJCtBN3rfxFVbWdr5+hEChkcFdFMKlS
   CMOuGNsyGsFASKQLpGysEaamA1VgytBZE/WoeJSPPzhpijPfcaLHZ7fwY
   wI6C4cI80cfMhzlxZS7cLtFMjWa/Svo8tlW1b++9wEW2jGgA2xhMIrm0o
   kgOyOywH5h4r/BjGkWcrnS1vy28XrT2wXo4Vh7oFvXkgaq7jaKWX0Jywz
   yYii2aHYUtvZ31++saotqYgfeC4ajB82w1eYqqmvCXJsk1nXFXYoP7D6t
   w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="381161642"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; 
   d="scan'208";a="381161642"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Dec 2022 03:30:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="820928509"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; 
   d="scan'208";a="820928509"
Received: from smile.fi.intel.com ([10.237.72.54])
  by orsmga005.jf.intel.com with ESMTP; 07 Dec 2022 03:30:19 -0800
Received: from andy by smile.fi.intel.com with local (Exim 4.96)
	(envelope-from <andriy.shevchenko@linux.intel.com>)
	id 1p2scz-005k27-02;
	Wed, 07 Dec 2022 13:30:17 +0200
Date: Wed, 7 Dec 2022 13:30:16 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Okan Sahin <okan.sahin@analog.com>
Cc: outreachy@lists.linux.dev, Lee Jones <lee@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Jonathan Cameron <jic23@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	ChiYuan Huang <cy_huang@richtek.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Caleb Connolly <caleb.connolly@linaro.org>,
	Anand Ashok Dumbre <anand.ashok.dumbre@xilinx.com>,
	Ramona Bolboaca <ramona.bolboaca@analog.com>,
	William Breathitt Gray <william.gray@linaro.org>,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	linux-iio@vger.kernel.org
Subject: Re: [PATCH 5/5] staging: drivers: iio: adc: Adc MAX77541 ADC Support
Message-ID: <Y5B5SHMHZoV5eMAt@smile.fi.intel.com>
References: <20221207090906.5896-1-okan.sahin@analog.com>
 <20221207090906.5896-6-okan.sahin@analog.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221207090906.5896-6-okan.sahin@analog.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo

On Wed, Dec 07, 2022 at 12:08:44PM +0300, Okan Sahin wrote:
> This patch add adc support for MAX77541.
> 
> The MAX77541 has an 8-bit Successive Approximation Register (SAR) ADC
> with four multiplexers for supporting the telemetry feature

Same comment as per patch 2.

...

> +#include <linux/bitfield.h>
> +#include <linux/iio/iio.h>

> +#include <include/linux/mfd/max77541.h>

Hmm...

> +#include <linux/platform_device.h>
> +#include <linux/regmap.h>
> +#include <linux/regulator/driver.h>
> +#include <linux/regulator/of_regulator.h>

...

> +enum {
> +	MAX77541_ADC_CH1_I = 0,
> +	MAX77541_ADC_CH2_I,
> +	MAX77541_ADC_CH3_I,
> +	MAX77541_ADC_CH6_I,
> +
> +	MAX77541_ADC_IRQMAX_I,

If it's a terminator, drop the trailing comma.

> +};

...

> +	case MAX77541_ADC_TEMP:
> +		*val = -273;

I believe we have definition for this in units.h. Can you use it?

> +		*val2 = 0;
> +		return IIO_VAL_INT_PLUS_MICRO;


> +	}
> +}

...

> +		*val = 0;
> +
> +		if (reg_val == LOW_RANGE)
> +			*val2 = 6250;
> +		else if (reg_val == MID_RANGE)
> +			*val2 = 12500;
> +		else if (reg_val == HIGH_RANGE)
> +			*val2 = 25000;
> +		else
> +			return -EINVAL;

Can it be provided as a table?

...

> +		*val = 0;
> +
> +		if (reg_val == LOW_RANGE)
> +			*val2 = 6250;
> +		else if (reg_val == MID_RANGE)
> +			*val2 = 12500;
> +		else if (reg_val == HIGH_RANGE)
> +			*val2 = 25000;
> +		else
> +			return -EINVAL;

Ditto.

...

> +

Redundant blank line.

> +module_platform_driver(max77541_adc_driver);

-- 
With Best Regards,
Andy Shevchenko


