Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7620B614D
	for <outreachy@lists.linux.dev>; Wed, 23 Mar 2022 17:49:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1648057766; x=1679593766;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=lKU5rNldyqISVfIJzmKQtrIDjmA9sC/XgYl5lrkwH3Q=;
  b=T05YzaEGWHgC4fTAHjDYMrmBRbnk/YT/UbuaRmoN0kIA2wn6CzE+nRKF
   KFqqQXGH/XTLveTUaPpjJzPmZm6LF+UwpUHi3kDfwn5q2EW0wkZqFdky2
   y0WpT5Mzp31cxoyudSJgiWxOMSKTiLMmedZlSfXvvJupDaLIyfuX7/aYk
   up08pUaym+9QIosbNu68gzncc6Z0a1YN0YYWXMFu2CVxsf4em4Zxn6Hgu
   PKxsJblNXuBDCGVjtVQHQX10z9s4fOuaIKoypqQWBryAW1qbgOPuZ+yyb
   n9xr60oIVP/XYYP7MQ7cWnExuxMnwdOlfakCOSk+6aBaCnU/goTOed58g
   w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10295"; a="258377905"
X-IronPort-AV: E=Sophos;i="5.90,204,1643702400"; 
   d="scan'208";a="258377905"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Mar 2022 10:49:21 -0700
X-IronPort-AV: E=Sophos;i="5.90,204,1643702400"; 
   d="scan'208";a="519459840"
Received: from alison-desk.jf.intel.com (HELO alison-desk) ([10.54.74.41])
  by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Mar 2022 10:49:21 -0700
Date: Wed, 23 Mar 2022 10:51:59 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Hans Verkuil <hverkuil@xs4all.nl>
Cc: gregkh@linuxfoundation.org,
	Outreachy Linux Kernel <outreachy@lists.linux.dev>
Subject: Re: Outreachy drivers/staging patch restrictions
Message-ID: <20220323175159.GA1142102@alison-desk>
References: <20220323164815.GA1141800@alison-desk>
 <90ee9960-517c-8d5c-eb8f-6d7847c6e35a@xs4all.nl>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <90ee9960-517c-8d5c-eb8f-6d7847c6e35a@xs4all.nl>

On Wed, Mar 23, 2022 at 06:35:52PM +0100, Hans Verkuil wrote:
> Hi Alison,
> 
> On 23/03/2022 17:48, Alison Schofield wrote:
> > Hi Greg, Hans,
> > 
> > We are preparing to kick off the next contribution period for
> > Outreachy Interns. (March 25 - April 22)
> > 
> > Last round we ran with one restriction:
> >>> Do not send patches for drivers/staging/media/atomisp
> > 
> > Hans handled drivers/staging/media (except for atomisp) and
> > Greg picked up all the rest.
> > 
> > Will that work in the upcoming round?
> 
> Actually, I think it is best to skip drivers/staging/media altogether.
> 
> I have a lot less time for code review this round, and in addition
> the media staging drivers are usually not a good match for code cleanups:
> usually they are either already in very good shape and just stuck
> in staging because they are waiting for some missing core functionality,
> or they are being deprecated.

Got it. We'll restrict driver/staging/media completely.
Thanks for letting me know!

> 
> Regards,
> 
> 	Hans
> 
> > Anything else contributors should be aware of for this round?
> > 
> > Thanks for your support,
> > Alison
> > 
> 
