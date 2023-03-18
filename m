Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 408DD63D2
	for <outreachy@lists.linux.dev>; Sat, 18 Mar 2023 20:02:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1679169735; x=1710705735;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=O9UeOanGwFSJ0QHtLx63Bjo3tEn8wZWpqqSvUMN+ros=;
  b=l2dEGwaUPdHQQ5Kf0gXrzQTG7tpt/5r8f36FTW5zf/mOpnmxQhJ0XFVn
   gxOyhupAVS1Hi9o350USA2Rbk9oqd1GGxknm6l4SN1rpIu/Q/RxL1HZ0x
   EIZl8MM8EmeQ6ygzQVtdhQIniXgxVhwW3q6SpmM20PwE9Q3y0vF52fq/9
   keeo6gjzCVtG5byGY2ILxRb8vASxCaIxE8EmHs+9E5S7DjN4JeHoUKUBU
   KiHXoZPJHM0tjM2FD8X73L9/g45jJwJdqlh3fd8+Db41ZVeyH1lq+iH/9
   nwJDqtpklAowA6wBYYlI4K8jtzziO1gDTkdls618l9T23I4fU4E9rv6wv
   Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10653"; a="318859881"
X-IronPort-AV: E=Sophos;i="5.98,272,1673942400"; 
   d="scan'208";a="318859881"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Mar 2023 13:02:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10653"; a="673920450"
X-IronPort-AV: E=Sophos;i="5.98,272,1673942400"; 
   d="scan'208";a="673920450"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO aschofie-mobl2) ([10.212.197.194])
  by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Mar 2023 13:02:14 -0700
Date: Sat, 18 Mar 2023 13:02:12 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Sumitra Sharma <sumitraartsy@gmail.com>
Cc: outreachy@lists.linux.dev
Subject: Re: [KERNEL NEBIES ACCESS] Sumitra Sharma
Message-ID: <ZBYYxMfFgTej3DqB@aschofie-mobl2>
References: <20230317175007.GA3275@sumitra.com>
 <ZBUQh7FJptcUEPy0@aschofie-mobl2>
 <20230318063045.GA4434@sumitra.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230318063045.GA4434@sumitra.com>

On Fri, Mar 17, 2023 at 11:30:45PM -0700, Sumitra Sharma wrote:
> On Fri, Mar 17, 2023 at 06:14:47PM -0700, Alison Schofield wrote:
> > On Fri, Mar 17, 2023 at 10:50:07AM -0700, Sumitra Sharma wrote:
> > > Hi Alison,
> > > 
> > > The outreachyfirstpatch document directly links the ".rst" files at many places under different sections. And as Fabio says that .rst files are source files and are only meant to be used for making changes and not to consult. Therefore,  I would like to propose the idea of changing the
> > > links of the .rst source files to their respective .html/.pdf files.
> > 
> > Hi Sumitra, Is you Kernel Newbies Account Name "Sumitra Sharma" with
> > a space?  I didn't think they allowed spaces. Please confirm. 
> > Thanks!
> >
> 
> Hi Alison,
> 
> Sorry it is "SumitraSharma" without a space.
> 
> Regards,
> 
> Sumitra

You are now in the wiki editors file.
After you've completed your edits, just post a *new* message to the 
list (this thread is getting long ;)) calling our attention to your
edit.  Then folks can take a look at the diff (if they are site
editors) and the results.

Thanks,
Alison


> 
> > 
> > 
> >
