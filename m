Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 601BA23A6
	for <outreachy@lists.linux.dev>; Tue, 12 Apr 2022 22:34:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1649802851; x=1681338851;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=zZFWm2ZvTNl3DBVLXTHE3LSe5J6Xzl/eJCit39wlEMQ=;
  b=OKQtoGVIFfj07HcSnVCoUbSJth7A6iV8KjMmnhLyb5xekMunvFQOklCS
   Xb07F65PgAbRKRFS8Zp5YdTletK09es7IppqqzioJHwJVzajc/TGQard3
   gWIPPH9C145y0qu4MAVgOdn14od8KM6944kxM8Ch1ogD/GaJyIQW9HYQF
   ZjtL767Azri7NTzFgdGmxnYSDxYzesjA/gVHTBhMr2yKhKBfjf/mQuNG4
   Lozwv31+IR/qUUDGWsf1/tze8vZu1HQDIO1lbXgDIqdFddbrRUl4i6zwr
   wWlgaWhvMW8MqQjqr9+c+StFCay7ERw0P7YoBGDVo+vM41lHOhgsCtdRj
   g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10315"; a="243105902"
X-IronPort-AV: E=Sophos;i="5.90,254,1643702400"; 
   d="scan'208";a="243105902"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Apr 2022 15:34:07 -0700
X-IronPort-AV: E=Sophos;i="5.90,254,1643702400"; 
   d="scan'208";a="700021983"
Received: from alison-desk.jf.intel.com (HELO alison-desk) ([10.54.74.41])
  by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Apr 2022 15:34:07 -0700
Date: Tue, 12 Apr 2022 15:36:03 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: outreachy@lists.linux.dev
Subject: Re: Should we Cc this list when submitting patches for subsystems
 other than "staging"?
Message-ID: <20220412223603.GA1237891@alison-desk>
References: <1859502.6tgchFWduM@leap>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1859502.6tgchFWduM@leap>

On Tue, Apr 12, 2022 at 10:21:31PM +0200, Fabio M. De Francesco wrote:
> Hello,
> 
> During the current month I have submitted some patches for subsystems other
> than drivers/staging. When I sent them I thought that those shouldn't be 
> Cc'ed also to this list. Now I'm not anymore sure if I did it correctly.
> 
> My question is if all patches sent by the Outreachy's applicants until 
> April 22nd should also be sent to this list, even when they are for 
> subsystems other than drivers/staging.
> 
> Furthermore, one of the above-mentioned patches is strictly related to one
> of the three Linux projects, being it a reworking and extension of a large 
> section of the documentation of HIGHMEM. Is it sufficient to add that patch 
> to the page where we register our contributions in the Outreachy's website? 
> 
> I'm also asking because during these days I'm preparing further patches to
> other subsystems and I'm going to submit them well before April 22nd. 

Thanks for asking Fabio,

Yes, all contributions that an applicant considers to be part of their
application should be shared on this list.

There's always an exception! Perhaps if a mentor gives out a small
task for which a posting to this list would spoil the task for others,
only gets sent to the mentor(s). I expect project mentors would tell
you that case explicitly.

We like to see everything you all are doing and we want the list archive 
to accurately reflect all contributions and communications.

Alison

> 
> Thanks,
> 
> Fabio M. De Francesco
> 
> 
> 
