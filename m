Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B60061C16
	for <outreachy@lists.linux.dev>; Sun, 11 Dec 2022 13:34:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1670765658; x=1702301658;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=MwllUDJ4axGeJynb2FjYv02NOCKfwgtmyrW5PnmJ0S0=;
  b=Gl3YrCZvjnXsa/GqOEGgYoD67OckBXKnz/qvxt2xdF6CrfeaQjGDi0pM
   sStUoEnprdQkYDCGS7+aJ48I4kxBYrerJPOI+qCX0MYn2Wcg1FEojdlRp
   Gz7kklY57PepQN8yuA0AL4ID8NfT8t01F9f/T58nsfsKiz2SlV48WushY
   pQoBoKvK4aY2ux7TbpZlkLfFnueP2SqGjYgMgkk9i5qEgLkYBQnhjSlSD
   cCHYX6tiy9eNIoEZhLMbDN0SXVTA+EG8lJjQu3aBJ6A0ma58vPtdtW7Ht
   TIvhUgfe685RIWlY6T/aExCceO6fswSyYgH2fEx66bbq6K9f3MskYpLB5
   g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10558"; a="382006500"
X-IronPort-AV: E=Sophos;i="5.96,236,1665471600"; 
   d="scan'208";a="382006500"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Dec 2022 05:34:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10558"; a="711390779"
X-IronPort-AV: E=Sophos;i="5.96,236,1665471600"; 
   d="scan'208";a="711390779"
Received: from smile.fi.intel.com ([10.237.72.54])
  by fmsmga008.fm.intel.com with ESMTP; 11 Dec 2022 05:34:13 -0800
Received: from andy by smile.fi.intel.com with local (Exim 4.96)
	(envelope-from <andriy.shevchenko@linux.intel.com>)
	id 1p4MT5-0080RS-0M;
	Sun, 11 Dec 2022 15:34:11 +0200
Date: Sun, 11 Dec 2022 15:34:10 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Jonathan Cameron <jic23@kernel.org>
Cc: Okan Sahin <okan.sahin@analog.com>, outreachy@lists.linux.dev,
	Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Caleb Connolly <caleb.connolly@linaro.org>,
	Ramona Bolboaca <ramona.bolboaca@analog.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	ChiYuan Huang <cy_huang@richtek.com>,
	Anand Ashok Dumbre <anand.ashok.dumbre@xilinx.com>,
	William Breathitt Gray <william.gray@linaro.org>,
	Manish Narani <manish.narani@xilinx.com>,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	linux-iio@vger.kernel.org
Subject: Re: [PATCH 0/5] staging: drivers: mfd: Add MAX77541 MFD and related
 device drivers
Message-ID: <Y5XcUtNInUJl98JP@smile.fi.intel.com>
References: <20221207090906.5896-1-okan.sahin@analog.com>
 <Y5B0btPjY6nHhYRm@smile.fi.intel.com>
 <20221211122043.424e095d@jic23-huawei>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221211122043.424e095d@jic23-huawei>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo

On Sun, Dec 11, 2022 at 12:20:43PM +0000, Jonathan Cameron wrote:
> On Wed, 7 Dec 2022 13:09:34 +0200
> Andy Shevchenko <andriy.shevchenko@linux.intel.com> wrote:
> > On Wed, Dec 07, 2022 at 12:08:39PM +0300, Okan Sahin wrote:
> > > This patchset adds mfd, regulator and adc driver and related bindings.The patches 
> > > are required to be applied in sequence.  
> > 
> > You have an indentation / wrapping issues in the above text.
> > 
> > Nevertheless, why staging? What does it mean?
> 
> The main reason to go via staging is because a driver is sitting out
> of tree and it is useful to bring it in on the basis that it can then be
> cleaned up in tree before moving out of staging.

But files are not in staging. Me being confused.

> For a relatively small driver like this, that's hard to argue.  Just
> clean it up in response to review feedback and then we can take it
> directly into relevant subsystems in the main tree.

-- 
With Best Regards,
Andy Shevchenko


