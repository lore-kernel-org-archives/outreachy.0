Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3232610E
	for <outreachy@lists.linux.dev>; Wed,  4 Oct 2023 06:59:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1696402790; x=1727938790;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=NrJtZ4yBJeWtxvO57LhKCCupxJwCdcvfniwNEgdiDzE=;
  b=TRSfpDbJluBNy8Km6Ee2M5HDJh0RD8Rj3iAAXQfGOsoFE+qQLupxJt3F
   B3xoniiqg1/l6xJu81TJabFFFqrUqjfXOvK1YmH9wIqnQK8VZcBfkIGp5
   ncmXMFnfPxIIrZNCPFja7azsk7GSm+P7ydjX5tvup4a2gcS766QCvo0yh
   JrPHWOKNeDYM0K2X445hyy6m8AMOnDf9g7KbDV23uHAqceYn4N3wb0YvS
   74o8s90hxREXL//t/uOfbeiCKRF0ARmka4MsxlfK89lAwHvGifLMBX9hh
   g4bcKtHbfHB25tDESUdRBbRMoFroV1CCP8vnVw60WB8mppeWrvhbYbY9Z
   Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="362435694"
X-IronPort-AV: E=Sophos;i="6.03,199,1694761200"; 
   d="scan'208";a="362435694"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Oct 2023 23:59:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="998343050"
X-IronPort-AV: E=Sophos;i="6.03,199,1694761200"; 
   d="scan'208";a="998343050"
Received: from azainola-mobl3.gar.corp.intel.com (HELO intel.com) ([10.214.163.167])
  by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Oct 2023 23:59:27 -0700
Date: Wed, 4 Oct 2023 08:59:18 +0200
From: Andi Shyti <andi.shyti@intel.com>
To: Gilbert Adikankwu <gilbertadikankwu@gmail.com>
Cc: outreachy@lists.linux.dev, Julia.Lawall@inria.fr,
	karolinadrobnik@gmail.com
Subject: Re: [Outreachy Applicant] Introduction and Interest in Contributing
 to Linux Kernel
Message-ID: <ZR0NRvHkjcWIv9+f@ashyti-mobl2.lan>
References: <CAKrXSsZ-1AKg3FLmZj=Kt_7NqHhty0k3ob89LuNUgFBqdjgduw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAKrXSsZ-1AKg3FLmZj=Kt_7NqHhty0k3ob89LuNUgFBqdjgduw@mail.gmail.com>

Hi Gilbert,

> I am Gilbert Adikankwu, an Outreachy applicant for the December Cohort
> 2023. I want to use this medium to introduce myself to the community.
>  As a Linux user,  I appreciate the quality work that has gone into
> making Linux a rewarding experience. On this note, I'm interested in
> contributing to the Linux Kernel. Specifically, I want to contribute
> to the Linux Kernel through the project titled; "Improve i915 sysfs
> interface implementation". I am excited about collaborating with
> community members on this project.

I'm glad that this topic has raised your interest. Please feel
free to reach out for any questions and doubt.

For the time being, please, check for Julia's guidelines.

> I am eager to learn, contribute, and be part of the Linux Kernel
> community's journey. I'm reading the first patch tutorial to learn how
> to push my first patch. Any help you can offer me to make the process
> easier is welcomed.

Looking forward to seeing your first contribution... Linux Kernel
is a lot of fun ;-)

Thanks,
Andi
