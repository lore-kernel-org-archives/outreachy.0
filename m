Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7ADE633C9
	for <outreachy@lists.linux.dev>; Fri, 17 Mar 2023 11:13:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=GycmVrKCO+puv1p4pmFTr2pN24oWcltHgpe6B9c+ntw=;
  b=QJg6FIdHSVOi6RuP6vHcR/LzqxZriZFnaPWC7cDWBnF7ByB20u92Ar6W
   PHsBHma3/gcWgXYxGU7SmiwZtc1v4hiJWpIUx3hRR2/mFj5Ay78EqyGf+
   QNINvn0VqLKS/tOzaq+ZG0p33thaCF8w60tKovO0MzzNdDV10gkKc4qby
   0=;
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="5.98,268,1673910000"; 
   d="scan'208";a="97745959"
Received: from dt-lawall.paris.inria.fr ([128.93.67.65])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Mar 2023 12:12:54 +0100
Date: Fri, 17 Mar 2023 12:12:55 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
cc: Sumitra Sharma <sumitraartsy@gmail.com>, outreachy@lists.linux.dev, 
    Sumitra Sharma <sumitraartsy@gmail.com>
Subject: Re: [KERNEL NEWBIES ACCESS] Sumitra Sharma
In-Reply-To: <10119311.0AQdONaE2F@suse>
Message-ID: <e23e11e4-a5f-54f9-664c-54ddaf896774@inria.fr>
References: <20230316083116.GB47053@sumitra.com> <10119311.0AQdONaE2F@suse>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-324306228-1679051575=:4023"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-324306228-1679051575=:4023
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: 8BIT



On Fri, 17 Mar 2023, Fabio M. De Francesco wrote:

> On giovedì 16 marzo 2023 09:31:16 CET Sumitra Sharma wrote:
> > On Sun, Mar 12, 2023 at 10:07:57AM -0700, Sumitra Sharma wrote:
> > > 2. The outreachy document directly links the ".rst" file
> > > https://elixir.bootlin.com/linux/latest/source/Documentation/process/
> coding-
> > > style.rst at many places under different sections. And as noted by fabio
> > > there is a difference between the .rst source files content and its
> > > corresponding .html file which can lead to confusions and missing
> important
> > > information. I would like to suggest to change the links to the .html/.pdf
> > > files rather than the > .rst source files.
> > Hi mentors
> >
> > I would like to have some update on this.
> >
> > Regards,
> >
> > Sumitra
>
> Hi Sumitra,
>
> As you know I'm for this change.
> AFAIK, only Alison can grant you the permission to access that document in
> write mode.
> If she hasn't granted that access to you yet, please ask her directly with an
> email to her address.
>
> Thanks for working on this (important, from my POV) change.

I have the impression that there hasn't been any update for the email
instructions, to show how to receive mail in mutt?  There has been a lot of
discussion in the mailing list, but in the next round the problem will
arise again.

thanks,
julia
--8323329-324306228-1679051575=:4023--
