Received: from msg-4.mailo.com (msg-4.mailo.com [213.182.54.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31F5B1374
	for <outreachy@lists.linux.dev>; Wed, 26 Oct 2022 12:48:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailo.com; s=mailo;
	t=1666788534; bh=XLMn9D8GkfeLlIxygOkimF5nMIuD9Vqmi4J2Sk/nhWU=;
	h=X-EA-Auth:Date:From:To:Cc:Subject:Message-ID:References:
	 MIME-Version:Content-Type:In-Reply-To;
	b=NmcW96nbRG1FDyofCzTACUX2dwhyJewx+GRzxw8S6lSfQIQspcAc/dWUvQp5U9DiK
	 yG+AsPMIH5+SXPJGrnFM+9UqwKHERE8/8LjJivkXWOiruPC+0vM0r2FC0NJHwXS+IY
	 EiHutJsOAamqVeFxFJt8R5zZFMbIM/gJ/3mMuaPs=
Received: by b-1.in.mailobj.net [192.168.90.11] with ESMTP
	via [213.182.55.206]
	Wed, 26 Oct 2022 14:48:53 +0200 (CEST)
X-EA-Auth: V6jJ+Yt4kA5Qg1lBjzPncR/JNDn2mM3ilzSXNP/syub2DH0ghW6w2XRaCR2M5XS8ZYSfx6dOSPaXzya5Y1H3o8UIxlNrvJfb
Date: Wed, 26 Oct 2022 18:18:54 +0530
From: Deepak R Varma <drv@mailo.com>
To: Julia Lawall <Julia.Lawall@inria.fr>
Cc: Outreachy Linux <outreachy@lists.linux.dev>
Subject: Re: coccinelle compilation issue
Message-ID: <Y1kstnWW9SJNNxWc@debian-BULLSEYE-live-builder-AMD64>
References: <Y1iNq2zGQ/2NSGdQ@debian-BULLSEYE-live-builder-AMD64>
 <1E55E1C2-527A-4814-A8D4-9D66A636E6E0@inria.fr>
 <Y1imvBLdIyTB1hQs@debian-BULLSEYE-live-builder-AMD64>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y1imvBLdIyTB1hQs@debian-BULLSEYE-live-builder-AMD64>

On Wed, Oct 26, 2022 at 08:47:21AM +0530, Deepak Varma wrote:
> On Wed, Oct 26, 2022 at 12:07:10PM +0200, Julia Lawall wrote:
> > Try typing spatchcock on the command line. Maybe you have a path problem. Did you do the unit env thing that open suggests?
>
> No, I have not done uint env you mentioned. I will look for that now.
> spatchcock is not recognised as a known command.

Hi Julia,
I tried doing "source env,sh" inside the coccinelle repo but that did not help.
It mostly looks like an environment / configuration issue.

I also tried a fresh rebuild by following the install.txt file instructions, but
still receiving the same error.

Can you please suggest the next steps? Is there an IRC channel for Coccinelle
that I join and seek help from the group?

./drv


>
> >
> > Sent from my iPhone
> >
> > > On 26 Oct 2022, at 10:38, Deepak R Varma <drv@mailo.com> wrote:
> > >
> > > Coccinelle
> >


