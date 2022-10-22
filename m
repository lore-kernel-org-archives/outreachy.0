Received: from msg-4.mailo.com (msg-4.mailo.com [213.182.54.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0AE64680
	for <outreachy@lists.linux.dev>; Mon, 24 Oct 2022 18:09:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailo.com; s=mailo;
	t=1666634930; bh=hxp7ul803zhFR4oG6oD1P8aWzzNFY4AksMqMCKjzOH8=;
	h=X-EA-Auth:Date:From:To:Cc:Subject:Message-ID:References:
	 MIME-Version:Content-Type:In-Reply-To;
	b=nLmnzauZcVW/OwFD9H7qDuntJsM2ocJ5/E6JO2Q3r6Eu0LFDX/2yM/sXVpKqssyAL
	 XGoVLvhPPp8JL3IgPNM15LASU+l0vZptVEwR4ifTsDBP3rlw3fWhIoMMb8PH/v1n4H
	 2FBwN0UzZ1W1MWZrIz8i7tG26qunW9Ya0e4k21x8=
Received: by b-3.in.mailobj.net [192.168.90.13] with ESMTP
	via [213.182.55.206]
	Mon, 24 Oct 2022 20:08:50 +0200 (CEST)
X-EA-Auth: cIuI/i7ROPiOTT3QkmWjwquoO/bhdqQp67Z+0iodjPHKpjGsefCLmIXZTMcb8qFmJYWiqd5BWopPPUzIM+gcmmWMqTF7ILgo
Date: Sat, 22 Oct 2022 10:59:38 +0530
From: Deepak R Varma <drv@mailo.com>
To: Alison Schofield <alison.schofield@intel.com>
Cc: Outreachy Linux Kernel <outreachy@lists.linux.dev>
Subject: Re: [Outreachy] Wiki updated needed - Patchset Subject
Message-ID: <Y1N/wsr+Wd6sEaDf@debian-BULLSEYE-live-builder-AMD64>
References: <Y1XvjytS2GaafmyJ@aschofie-mobl2>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y1XvjytS2GaafmyJ@aschofie-mobl2>

On Sun, Oct 23, 2022 at 06:51:11PM -0700, Alison Schofield wrote:
> Greg KH has mentioned this a couple of times lately -
>
> >> Any reason you do not have "staging: vt6655:" as the prefix for
> >> this 0/X email subject line?
> >>
> >> thanks,
> >>
> >> greg k-h
>
> A quick peek in the tutorial tells me it could be made clearer.
> It needs to explicitly say the prefix is required, and then
> make sure any examples do it.

Hello Alison,
There already is a section named "Patch Subject formatting" on this link [1]
with enough description to determine the patch subject prefix. Can you please
review and confirm where we should improve further to make it clearer??

	[1] https://kernelnewbies.org/PatchPhilosophy

Thank you,
./drv

>
> Thanks,
> Alison
>


