Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A40863C
	for <outreachy@lists.linux.dev>; Wed,  7 Dec 2022 11:09:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1670411387; x=1701947387;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=nU9rp5jPyY8+mI11cKJ1NzPBmuYJiOn2HvINnV2bBUQ=;
  b=ndfz1yXvgYOhjf8HytMq71gs05FAF6fMiktpbv8AuQxQxlNWWcB1jboV
   xHpb8Pyf+T9tJI18ix8qR0GwX/o/IhVXGEjN3KVZeVFF/bkLuYLQFKvgz
   4FRsPHbopD+IRXKeNNLP1uGlcYyCvcR2GWiob+hi7cGvGw75wlg5lNlUe
   neRBKQEOLHfaHcU+KYHM9AekM1kZh5RZ0uqco7omRNqBpIRNFvCrdJnkQ
   mkm5zPT1sgZzjhaioEyv5GQZgqDJ168tUbsj0Egu5dD1BGI1J1ehOt0Jj
   shkiEQlVkrjRWpcstxOfvsOea4OW/nUupCC9he2IpWJXsVsz6QQSs6//z
   A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="343895790"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; 
   d="scan'208";a="343895790"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Dec 2022 03:09:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="753052960"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; 
   d="scan'208";a="753052960"
Received: from smile.fi.intel.com ([10.237.72.54])
  by fmsmga002.fm.intel.com with ESMTP; 07 Dec 2022 03:09:37 -0800
Received: from andy by smile.fi.intel.com with local (Exim 4.96)
	(envelope-from <andriy.shevchenko@linux.intel.com>)
	id 1p2sIw-005jbc-2U;
	Wed, 07 Dec 2022 13:09:34 +0200
Date: Wed, 7 Dec 2022 13:09:34 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Okan Sahin <okan.sahin@analog.com>
Cc: outreachy@lists.linux.dev, Lee Jones <lee@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Jonathan Cameron <jic23@kernel.org>,
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
Message-ID: <Y5B0btPjY6nHhYRm@smile.fi.intel.com>
References: <20221207090906.5896-1-okan.sahin@analog.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221207090906.5896-1-okan.sahin@analog.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo

On Wed, Dec 07, 2022 at 12:08:39PM +0300, Okan Sahin wrote:
> This patchset adds mfd, regulator and adc driver and related bindings.The patches 
> are required to be applied in sequence.

You have an indentation / wrapping issues in the above text.

Nevertheless, why staging? What does it mean?

-- 
With Best Regards,
Andy Shevchenko


