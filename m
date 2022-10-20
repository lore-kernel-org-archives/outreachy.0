Received: from msg-1.mailo.com (msg-1.mailo.com [213.182.54.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CA515C96
	for <outreachy@lists.linux.dev>; Thu, 20 Oct 2022 17:36:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailo.com; s=mailo;
	t=1666287350; bh=QKBqzhvDkuzbCEfW0Seeb+RMuE4v+skfk6dsLT/dS14=;
	h=X-EA-Auth:Date:From:To:Cc:Subject:Message-ID:References:
	 MIME-Version:Content-Type:In-Reply-To;
	b=a1aUKYL1sxG7126ayN0wy27dX/cihPWzKHaxuFUKeSnlB2ZxK+yJpDxpIxTPdHTo5
	 lql95E3ieS5eLSSgidD2TAm1YAynPMZ4y1xwIyVDN12m9povIQJ4UOOHbwwkCOghHQ
	 YNZ2+9FeSBFE0n2XO6nFtYl5ywcFogEHNY1S+7Ek=
Received: by b-2.in.mailobj.net [192.168.90.12] with ESMTP
	via [213.182.55.206]
	Thu, 20 Oct 2022 19:35:50 +0200 (CEST)
X-EA-Auth: XokXmZir76Dvxrcb8VjJORiUYhkHoSdnnj3GKIG+eAHppjNcEIUtPhNpHoe+Uu98/I8e/SkrohEXN9Mn3ZPBssBtqYERL7Rs
Date: Thu, 20 Oct 2022 23:05:47 +0530
From: Deepak R Varma <drv@mailo.com>
To: Alison Schofield <alison.schofield@intel.com>
Cc: Outreachy Linux Kernel <outreachy@lists.linux.dev>
Subject: Re: [Outreachy Info] Track patches in staging tree
Message-ID: <Y1GG83UKI3sEN/+B@debian-BULLSEYE-live-builder-AMD64>
References: <Y1GE6ImSoBuYCTjT@aschofie-mobl2>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y1GE6ImSoBuYCTjT@aschofie-mobl2>

On Thu, Oct 20, 2022 at 10:27:04AM -0700, Alison Schofield wrote:
>
> In case you are wondering the status of your patches -
>
> When GregKH accepts your patch you get an acknowledgment email directly.
> If he specifically rejects it, you also get feedback from him on what
> to improve. He won't accept a patch where another reviewer has already
> requested an update. So, once you get any feedback, revise and send the
> new version.
>
> You can follow the staging-testing tree [1] and see if Greg has
> merged patches since your submittal. Those *are* accepted patches
> and should be recorded as contributions in your Outreachy dashboard.
>
> Occasionally a patch gets missed in a flurry of patches. That might
> make you think about RESENDing. See the tutorial directions about
> resending.
>
> For example, at this moment I can see that Tanjuate, Deepak, and
> Emily (sorry if I'm not recognizing another name yet) had patches
> accepted in the last couple of hours.
>
> Hope that's useful,
> Alison
>
> [1] https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git/log/?h=staging-testing

Thank you very much Alison for the update and direction. This is helpful.

./drv

>
>


