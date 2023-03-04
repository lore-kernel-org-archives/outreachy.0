Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D4F01FD0
	for <outreachy@lists.linux.dev>; Sat,  4 Mar 2023 11:52:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F1055C433EF;
	Sat,  4 Mar 2023 11:52:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1677930757;
	bh=TrhiXYLjHOBivywn6kdQjxP092lVClaBp6Gh7myzgzE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bOzbdghnofC648LqlVmZ7mq+rCK8bzAZmqKbxUDkeB+L7ZW130tsmJfOdD8N29mSQ
	 17QGXn/t1A6M0LkMycest6OoVwXsHznPh+saatWTVTEJGJJpVBjnCfAYwEFW/uVQ3t
	 bZlpVY5ke+XsWZvxLtqHznEkfKS2XuQXVOewpu4U=
Date: Sat, 4 Mar 2023 12:52:34 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Alison Schofield <alison.schofield@intel.com>
Cc: Outreachy Linux Kernel <outreachy@lists.linux.dev>, hverkuil@xs4all.nl
Subject: Re: [Outreachy Info] staging/ patch restrictions
Message-ID: <ZAMxAmMcbBAC0/Q1@kroah.com>
References: <ZAJF5E+1HVkN294U@aschofie-mobl2>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZAJF5E+1HVkN294U@aschofie-mobl2>

On Fri, Mar 03, 2023 at 11:09:24AM -0800, Alison Schofield wrote:
> Hi Greg,
> 
> We are about to kick off the next contribution period for Outreachy Interns.
> (March 6 - April 3)
> 
> We'll run with this restriction: No patches to drivers/staging/media.
> 
> Is there anything else you'd like us to avoid, or perhaps focus on?

Not that I can think of, sorry.  Make sure they cc: the staging mailing
list as well, as I require that in order to take the patch directly from
the lore.kernel.org archives.

thanks,

greg k-h
