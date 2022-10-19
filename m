Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E24142F33
	for <outreachy@lists.linux.dev>; Wed, 19 Oct 2022 20:42:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1666212176; x=1697748176;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=MMFpS4fKyCaz1l8hvD0J70wlmHfbsvASpnRU29lYYIM=;
  b=fGLo8xqufzrBHqEdZTnUvMzfmZZ90L4dsBqYS40re+biIOHBbEnVroI/
   RJAtkASmWofhg6yH1qMebjTBLedrTuZOo3woOtxOMyhZ0ROreaE0sPM2u
   YQHzGSvbTUr9wHBYBrtfHrIR+bBv97VahLO6emXCbTx7jZCWNRLP+uGmA
   JlsmrP62k4W4yzgIK6CaK9JL4TDXeGjiUOaYpSxjqU3RbMm37bH/xS8TH
   3N3ePu+xLVZQ6YAkY5ir4KVu2UQEHq5zGxknuksGSEal3UxD7XMGUzZ/T
   ZuSk/MdgAAJKJzjapbsJfWktYgN0FQZ2sAQkZ88dhNBSihlq2jmmpjwPY
   g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="306516160"
X-IronPort-AV: E=Sophos;i="5.95,196,1661842800"; 
   d="scan'208";a="306516160"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Oct 2022 13:42:51 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="692573479"
X-IronPort-AV: E=Sophos;i="5.95,196,1661842800"; 
   d="scan'208";a="692573479"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO aschofie-mobl2) ([10.212.214.128])
  by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Oct 2022 13:42:51 -0700
Date: Wed, 19 Oct 2022 13:42:49 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Deepak R Varma <drv@mailo.com>
Cc: outreachy@lists.linux.dev
Subject: Re: [KERNEL NEWBIES ACCESS] deepakrvarma
Message-ID: <Y1BhSXT+4rOcL89O@aschofie-mobl2>
References: <Y1BJrtzi5gk2lzXn@debian-BULLSEYE-live-builder-AMD64>
 <Y1BLWeccWuqI4u3h@debian-BULLSEYE-live-builder-AMD64>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y1BLWeccWuqI4u3h@debian-BULLSEYE-live-builder-AMD64>

On Thu, Oct 20, 2022 at 12:39:13AM +0530, Deepak R Varma wrote:
> On Thu, Oct 20, 2022 at 12:32:06AM +0530, Deepak R Varma wrote:
> > Hello,
> > I intend to contribute to the kernelnewbies wiki. Kindly allow me access to the
> > wiki edit capability.
> 
> Added user name in the subject line instead of email.

Added deepakrvarma to Editors list.

Thanks for the help maintaining the wiki!
Alison

> 
> >
> > Thank you,
> > ./drv
> >
> >
> >
> 
> 
> 
