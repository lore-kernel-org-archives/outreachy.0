Received: from msg-1.mailo.com (msg-1.mailo.com [213.182.54.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FCF54685
	for <outreachy@lists.linux.dev>; Mon, 24 Oct 2022 18:13:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailo.com; s=mailo;
	t=1666635187; bh=EQRFWs25ZuBldxkQYWMu/1wtPbV73u6bJ8F+bcVb4os=;
	h=X-EA-Auth:Date:From:To:Cc:Subject:Message-ID:References:
	 MIME-Version:Content-Type:In-Reply-To;
	b=PAlSAKqTMpVLoPhkX1wehDI2oCv+Z2RnZdwQ76e6GDKmLorrTP3QILy7xbxxG3nzN
	 5AEp46VNrMb4Nw9XnufNGMr+ndStL/QK5PlZCp5sw+cxywOHNn6WtXY6RMQAkbROol
	 LnBdB4RJrU2gKAONVXhe9MlLMIEYQQ5UwAPWx/uE=
Received: by b-4.in.mailobj.net [192.168.90.14] with ESMTP
	via [213.182.55.206]
	Mon, 24 Oct 2022 20:13:07 +0200 (CEST)
X-EA-Auth: Nw/3rmDrogp3fqsrW3hvNm8YkMPyOQfghug85YtbssjNRoTyaaU72t6jwXojsobb4ytEtuFl33mtQaCEOur+bOdPK25iGwKW
Date: Sat, 22 Oct 2022 11:03:53 +0530
From: Deepak R Varma <drv@mailo.com>
To: Alison Schofield <alison.schofield@intel.com>
Cc: dvarma04@hotmail.com,
	Outreachy Linux Kernel <outreachy@lists.linux.dev>,
	Saurabh Singh Sengar <ssengar@linux.microsoft.com>,
	Praveen Kumar <kumarpraveen@linux.microsoft.com>
Subject: Re: [Outreachy - To Deeva]
Message-ID: <Y1OAwaHKxueoCdyL@debian-BULLSEYE-live-builder-AMD64>
References: <Y1MTJTKdG2fiUT0N@aschofie-mobl2>
 <Y1LMP/iEnzvXPBFS@debian-BULLSEYE-live-builder-AMD64>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y1LMP/iEnzvXPBFS@debian-BULLSEYE-live-builder-AMD64>

On Fri, Oct 21, 2022 at 10:13:48PM +0530, Deepak R Varma wrote:
> On Fri, Oct 21, 2022 at 02:46:13PM -0700, Alison Schofield wrote:
> > Hi Deeva,
> >
> > I saw your Outreachy Dashboard update that noted your past contributions:
> > https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git/log/?h=staging-testing&qt=grep&q=Deepak+R+Varma
> >
> > You have plenty of cleanup patches in total and it would be great if you
> > could move on to try out some small tasks for the Coccinelle project.
>
> Hello Alison,
> First, sorry for the delay in responding. I was travelling most part of the day
> today and just checking my emails now.
>
> Thank you for looking at my first-patch contribution record. Your message is
> encouraging. I will starting working on the Coccinelle project tasks outlined
> in the project description.

Hello,
I am reading through the Coccinelle.org link mentioned on the project
description page and following through. Is that the right approach to accomplish
the project tasks? Any additional guidance will be helpful.

Thank you,
./drv

>
> >
> > There are notes on how to get started in the project description, including
> > how to contact the mentors.
> >
> > Please try to keep your applicant/mentor communications CC'd to this
> > list.
>
> Sounds good. Will follow your guidance.
>
> Thanks again!
> ./drv
>
> >
> > Thanks,
> > Alison
> >


