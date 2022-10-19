Received: from msg-4.mailo.com (msg-4.mailo.com [213.182.54.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D62ED53A3
	for <outreachy@lists.linux.dev>; Wed, 19 Oct 2022 20:04:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailo.com; s=mailo;
	t=1666209896; bh=xLGbYjUkXY0az+RwlYiB+Jy6qGPVMzJP2622Egu+7+4=;
	h=X-EA-Auth:Date:From:To:Cc:Subject:Message-ID:References:
	 MIME-Version:Content-Type:In-Reply-To;
	b=hLa/T0zGzmrBI9bSIsliPHRZ0IvRJ1jiOmiBudGE8GslLVHCNZsyDP/1/lxC5wdjf
	 7nafoKd6pa702MbaCAwKjnDEJmvQV5n4ecLCfdCRm5Wy/yIL8BeHMvVOxRYSN5QD3b
	 CnInzA7ncvODjM9UiHbiH5PeSSMjMtVg/lFMFJ4w=
Received: by b-3.in.mailobj.net [192.168.90.13] with ESMTP
	via [213.182.55.206]
	Wed, 19 Oct 2022 22:04:56 +0200 (CEST)
X-EA-Auth: 2OGhw3HfLR3gqmLcZPN5T66vcVoM4LMaM2RuLAe9k5+9Inm9ePRz9p3Ziakmj2JE322oDkk8OM+YZQDgLUM2r7w9ArQ/Ai1c
Date: Thu, 20 Oct 2022 01:34:52 +0530
From: Deepak R Varma <drv@mailo.com>
To: Emily Peri <eperi1024@gmail.com>
Cc: outreachy@lists.linux.dev
Subject: Re: Patch email not showing up in inbox
Message-ID: <Y1BYZBLFVGSsUaN4@debian-BULLSEYE-live-builder-AMD64>
References: <Y1BSP5ZT+yju8gLf@marshmallow>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y1BSP5ZT+yju8gLf@marshmallow>

On Wed, Oct 19, 2022 at 12:38:39PM -0700, Emily Peri wrote:
> Hi all,
> I sent a patch (staging: rtl8723bs) email to the list serv and ccd the maintainers, but didn't
> see the email show up in my inbox. Is there usually a delay with this?
> Did anyone else get it? I'm new to mutt so I just want to make sure I
> sent it correctly. Thanks!

I received an email from you for the mentioned patch.

We need to send the patch to the outreachy mailing list and maintainers &
mailing lists as provided by get_maintainer.pl script. There is no need to cc
the mentors separately. I made that mistake and was corrected.

There are short videos available on youtube for configuring and using mutt. I
referred to them when I started with mutt. They were helpful to me.

>
> Emily
>


