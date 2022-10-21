Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9E9D7B
	for <outreachy@lists.linux.dev>; Fri, 21 Oct 2022 22:05:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1666389902; x=1697925902;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=K9j+irjWTXF0Pu6HZRHEPdn2wG1d+vMt2sO2daOrqtc=;
  b=nqpt2Wn6bRFQpiissOKI99g66k4pDOrzwahZd5oQTY31h+kqFa6ri7pG
   uGOHILozqq7Y1+AQC5AzcVDj+oCfFRH/PiowXKGaMiluZOXcONbPCk+ZE
   Yh44qwpCTYI7HVMMVYAUBjuGE7z5oYecprxf0U8TAy9OyNLiBdbk4dNis
   GyrV0Q+iA+KUfUbfbMoI7uayoX1RwHWJhq2ifv0VV5fLaeE6n6lvt5886
   gH9rxyoh7cuPxrc3v+HpLdMAOW+levuZJ63KsA7p2JlBLYKMGw2WgOYAw
   JjFOL0JqRouN65ZLwGQsrWlfAhRco3WP6gFsc4H3i//g1DQ0MjufzIgdD
   A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10507"; a="333691688"
X-IronPort-AV: E=Sophos;i="5.95,203,1661842800"; 
   d="scan'208";a="333691688"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Oct 2022 15:05:02 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10507"; a="773218608"
X-IronPort-AV: E=Sophos;i="5.95,203,1661842800"; 
   d="scan'208";a="773218608"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO aschofie-mobl2) ([10.212.252.17])
  by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Oct 2022 15:05:01 -0700
Date: Fri, 21 Oct 2022 15:05:00 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Tanju Brunostar <tanjubrunostar0@gmail.com>
Cc: outreachy@lists.linux.dev
Subject: Re: KERNEL NEWBIE ACCESS TanjuBrunostar
Message-ID: <Y1MXjLnjfJa9NIZ8@aschofie-mobl2>
References: <CAHJEyKVqaanNV4AWxnqBe0mg6=mT+-yBo+Y3UbQDfVjp46kvqw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAHJEyKVqaanNV4AWxnqBe0mg6=mT+-yBo+Y3UbQDfVjp46kvqw@mail.gmail.com>

On Fri, Oct 21, 2022 at 06:34:19PM +0100, Tanju Brunostar wrote:
> Please grant me access to edit the first patch tutorial wiki
>
Done
