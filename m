Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 417071FC0
	for <outreachy@lists.linux.dev>; Thu, 24 Mar 2022 14:17:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 38C99C340ED;
	Thu, 24 Mar 2022 14:17:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1648131429;
	bh=s83B8fGqdcAzh7YOFIklTd+mMS1iVLYLkXmO7dgzR20=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=k+cZf+DKxvGEJIZVXg6B0K2w8Xr/V2OjZe0uVbwQmjr3JuwUTOpUYAgvkPV4w2noR
	 B/m8yzmYb/m46u79Ls6fporsaEptEZEx4a3fVp+/ucVijzHDtSDAV2GIj1LKZ3cDsT
	 QRXZDHUCuVdTmaFsJ1qHLpSl7cwoApZuN6Th60hc=
Date: Thu, 24 Mar 2022 15:17:06 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Alison Schofield <alison.schofield@intel.com>
Cc: hverkuil@xs4all.nl, Outreachy Linux Kernel <outreachy@lists.linux.dev>
Subject: Re: Outreachy drivers/staging patch restrictions
Message-ID: <Yjx9YkGSJDf/DHWH@kroah.com>
References: <20220323164815.GA1141800@alison-desk>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220323164815.GA1141800@alison-desk>

On Wed, Mar 23, 2022 at 09:48:15AM -0700, Alison Schofield wrote:
> Hi Greg, Hans,
> 
> We are preparing to kick off the next contribution period for
> Outreachy Interns. (March 25 - April 22)
> 
> Last round we ran with one restriction:
> >> Do not send patches for drivers/staging/media/atomisp
> 
> Hans handled drivers/staging/media (except for atomisp) and
> Greg picked up all the rest.
> 
> Will that work in the upcoming round?

Note that I am not on any outreachy mailing lists anymore, so the
interns will have to remember to properly cc: the staging list and me
and the other results of get_maintainer.pl.

And I agree, no drivers/staging/media/ changes please.  I just ignore
them all anyway :)

thanks,

greg k-h
