Received: from msg-2.mailo.com (msg-2.mailo.com [213.182.54.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81C9E8F5B
	for <outreachy@lists.linux.dev>; Fri, 21 Oct 2022 08:22:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailo.com; s=mailo;
	t=1666340527; bh=6lor9NcBDr/33uXfz/CLeMs+0wr1auoAGl0bSDQD7XI=;
	h=X-EA-Auth:Date:From:To:Cc:Subject:Message-ID:References:
	 MIME-Version:Content-Type:In-Reply-To;
	b=XAB592z/fpS/ZQK4ycPBTnPRyYf6+UD3BiQeLtZVZFvoUhpRd5mlw0U/wgmohJ7Xf
	 tYQMc4D3EXnIcD/NOf4JhbrG8bRzX4smGSjAQcugUN+Fu+MSkblhkjuj9d4LjEMC2q
	 k6tVC99iil6IsAvODii32wWZrq1H/Dk0LLIAbZv8=
Received: by b-5.in.mailobj.net [192.168.90.15] with ESMTP
	via [213.182.55.206]
	Fri, 21 Oct 2022 10:22:07 +0200 (CEST)
X-EA-Auth: Pid5GLA5Gj0JkSRYsN9AhdRvcEifacyK522LZ9qRUiYzozmfW0Ngy7aB1ns3oJ3r1aNWc+ZDev3LWRGr/qMqEJuSI7RwYRtv
Date: Fri, 21 Oct 2022 05:06:43 +0530
From: Deepak R Varma <drv@mailo.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy@lists.linux.dev
Subject: Re: cleaning commented code
Message-ID: <Y1HbizCCEB08I0Wq@debian-BULLSEYE-live-builder-AMD64>
References: <Y1HSz9q7kQGmiWxF@debian-BULLSEYE-live-builder-AMD64>
 <alpine.DEB.2.22.394.2210210702310.2816@hadrien>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.22.394.2210210702310.2816@hadrien>

On Fri, Oct 21, 2022 at 07:03:00AM +0200, Julia Lawall wrote:
>
>
> On Fri, 21 Oct 2022, Deepak R Varma wrote:
>
> > Hello,
> > Is there any guideline on cleaning commented code, specifically printk debug
> > messages that appears to be added for basis program flow tracing. If yes, will
> > this be treated as a clean up contribution?
>
> You can remove commented code.

Thank you. Exploring making a patch for this clean up.

>
> Every change counts.
>
> julia
>
> >
> > e.g.
> >
> > ./wlan-ng/p80211netdev.c:884:                   /* printk("assocreq"); */
> > ./wlan-ng/p80211netdev.c:888:                   /* printk("assocresp"); */
> > ./wlan-ng/p80211netdev.c:892:                   /* printk("reassocreq"); */
> > ./wlan-ng/p80211netdev.c:896:                   /* printk("reassocresp"); */
> > ./wlan-ng/p80211netdev.c:900:                   /* printk("probereq"); */
> > ./wlan-ng/p80211netdev.c:904:                   /* printk("proberesp"); */
> >
> > Thank you,
> > ./drv
> >
> >
> >
> >


