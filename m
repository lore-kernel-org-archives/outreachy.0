Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 646B0137A
	for <outreachy@lists.linux.dev>; Sun, 10 Apr 2022 17:57:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1649613430; x=1681149430;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=FlnHj3cTgum/S1z4yFxWwL5TmpFTrwJt3yOXuLOFu9E=;
  b=DTX4t5SZ+m/lPD1Tv15ATNf6LnRY9FlrzqLFFYR+4jPYYr1zxyW9qywv
   eZqckQLG/poOfgpQ4/tUdYwAwU1wSLg291vePIyPfTz96FnEgHxHkygDF
   /xU8QgUNKk5hIzIaNARCCksxKDa7fFNfzqRGl1L6lGlpwGD/AvoOV+2l9
   kdzC1v7Nf4yPbia1sg1mYu6FDx9S7dk1kxmBZhvlGF/K6LXMq3juUDgWA
   GSObrGKuQkH67y9P0rnZW8btBQj9ISX3TUCm9imTanqCYxh2hhzWZO25B
   kvQHAtFgHo910qPhTd2uZmgW+Di4ktMwhxqh+eO0AFpQMb77l01fc+6m4
   Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10313"; a="242575994"
X-IronPort-AV: E=Sophos;i="5.90,250,1643702400"; 
   d="scan'208";a="242575994"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Apr 2022 10:57:09 -0700
X-IronPort-AV: E=Sophos;i="5.90,250,1643702400"; 
   d="scan'208";a="506827762"
Received: from alison-desk.jf.intel.com (HELO alison-desk) ([10.54.74.41])
  by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Apr 2022 10:57:09 -0700
Date: Sun, 10 Apr 2022 10:59:10 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Soumya Negi <soumya.negi97@gmail.com>
Cc: outreachy@lists.linux.dev
Subject: Re: Applicant introduction
Message-ID: <20220410175910.GA1227283@alison-desk>
References: <CAHH-VXfEno3K6azNLKibRwCxsDm1Xu0w-PFpi6cJdR3f=hJJFw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAHH-VXfEno3K6azNLKibRwCxsDm1Xu0w-PFpi6cJdR3f=hJJFw@mail.gmail.com>

On Sat, Apr 09, 2022 at 10:51:23PM -0700, Soumya Negi wrote:
> Hello,
> My name is Soumya Negi and I am a CS masters student at USC. Please
> pardon my late introduction( due to overlapping midterms). I took an
> Operating Systems course last semester and have thus worked with C on
> academic projects. I hope it will be a good foundation for the Linux
> projects offered this year. I am excited to finally get started and
> contribute to the linux kernel community!
> 
> Regards,
> Soumya Negi
>

Soumya - Welcome to the Outreachy Linux Kernel Community!
Alison
