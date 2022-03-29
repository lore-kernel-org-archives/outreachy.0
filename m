Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD956258C
	for <outreachy@lists.linux.dev>; Tue, 29 Mar 2022 20:11:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1648584703; x=1680120703;
  h=date:from:to:subject:message-id:mime-version;
  bh=rg8qUBtzaoWBqIfC1N6DSMtXt7HOZ7mjakn0SixGD2s=;
  b=dz3vfdp4hSYNoyWO+6ku4tstO7JAHz8fiWwI1I+wVNUEZXPlmabaxEyo
   EF9sMxZ2yEBS67HnvGyy8wNLPYZOp9X0Vw+QORjIRCfOecI7J3qyI7xno
   0RPlombYUxvXbKIkcYGgapLLebHcfe85k9IRDc/wO8qTHhvfCZ0PhTRdT
   Ife4CiV6SeKVeAj90I9zRhI8+NpaVVJMDpvl4KEb490M0v5BFDEsWtvj7
   v0fszqCZXBhO/mMwXkqod7PjhDH9xQhMTbXmMLJyCItZWizIF6xCIwQ64
   WSXZpRVRCRkwwZPdQU3vAHWn2sXPlEHIdYkd23O/XFw633/9P97IsThRO
   w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10301"; a="259335513"
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; 
   d="scan'208";a="259335513"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Mar 2022 13:11:43 -0700
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; 
   d="scan'208";a="694849613"
Received: from alison-desk.jf.intel.com (HELO alison-desk) ([10.54.74.41])
  by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Mar 2022 13:11:42 -0700
Date: Tue, 29 Mar 2022 13:14:07 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Outreachy Linux Kernel <outreachy@lists.linux.dev>
Subject: [ANNOUNCE] No drivers/staging/media PATCHes
Message-ID: <20220329201407.GA1171146@alison-desk>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

We won't be accepting patches for drivers/staging/media in
this round of Outreachy. 

If you are interested in the why, see appended discussion.

Date: Wed, 23 Mar 2022 10:52:00 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Hans Verkuil <hverkuil@xs4all.nl>
Cc: gregkh@linuxfoundation.org, Outreachy Linux Kernel
	<outreachy@lists.linux.dev>
Subject: Re: Outreachy drivers/staging patch restrictions

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

----- End forwarded message -----
