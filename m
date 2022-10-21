Received: from msg-1.mailo.com (msg-1.mailo.com [213.182.54.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C47D0441F
	for <outreachy@lists.linux.dev>; Sat, 22 Oct 2022 19:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailo.com; s=mailo;
	t=1666467588; bh=tUXdWdzPaUfB1G6BE5cHucxcIxp4XQLFGpbv3eZGjBM=;
	h=X-EA-Auth:Date:From:To:Cc:Subject:Message-ID:References:
	 MIME-Version:Content-Type:In-Reply-To;
	b=YTVOJRc2ANneAAUzRfDzylsXxHEzWjfe1Q1Lsix/5Ygf7Sa8HgNZrlTw8JwipgOLu
	 EIn1BnKpp82KUEQPMNXQOzk0j+6ygSxa4Vy9P1gUyy4bC/ZCNA+l59X5gjzRQot7hh
	 AlUZzCFYkPZf2LkliDcFxWBoaT7GQBCZVZzwe3GM=
Received: by b-2.in.mailobj.net [192.168.90.12] with ESMTP
	via [213.182.55.206]
	Sat, 22 Oct 2022 21:39:48 +0200 (CEST)
X-EA-Auth: 2pWjpTvv8rkcHEA/xwu3+SYt6/Vk/lagwIJoSTL9ND5Lw/l8gmOnNs/w3UOvHfWIMs1gimKe2ARuBekpjQh/dwQPBdmlzmu8
Date: Fri, 21 Oct 2022 22:13:43 +0530
From: Deepak R Varma <drv@mailo.com>
To: Alison Schofield <alison.schofield@intel.com>
Cc: dvarma04@hotmail.com,
	Outreachy Linux Kernel <outreachy@lists.linux.dev>,
	Saurabh Singh Sengar <ssengar@linux.microsoft.com>,
	Praveen Kumar <kumarpraveen@linux.microsoft.com>
Subject: Re: [Outreachy - To Deeva]
Message-ID: <Y1LMP/iEnzvXPBFS@debian-BULLSEYE-live-builder-AMD64>
References: <Y1MTJTKdG2fiUT0N@aschofie-mobl2>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y1MTJTKdG2fiUT0N@aschofie-mobl2>

On Fri, Oct 21, 2022 at 02:46:13PM -0700, Alison Schofield wrote:
> Hi Deeva,
>
> I saw your Outreachy Dashboard update that noted your past contributions:
> https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git/log/?h=staging-testing&qt=grep&q=Deepak+R+Varma
>
> You have plenty of cleanup patches in total and it would be great if you
> could move on to try out some small tasks for the Coccinelle project.

Hello Alison,
First, sorry for the delay in responding. I was travelling most part of the day
today and just checking my emails now.

Thank you for looking at my first-patch contribution record. Your message is
encouraging. I will starting working on the Coccinelle project tasks outlined
in the project description.

>
> There are notes on how to get started in the project description, including
> how to contact the mentors.
>
> Please try to keep your applicant/mentor communications CC'd to this
> list.

Sounds good. Will follow your guidance.

Thanks again!
./drv

>
> Thanks,
> Alison
>


