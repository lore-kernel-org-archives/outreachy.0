Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52A5E9468
	for <outreachy@lists.linux.dev>; Fri, 20 Oct 2023 06:16:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="aPZPrwOP"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=tZIXK19mBdQYQEB0nXCCZ2Vn7SD6LIdyN90B1HCj4GE=;
  b=aPZPrwOPiJeab5KNtb94idZg8ydA4COXrKYb6Nv1xiqu5r29e9g04eGK
   Smxv6YdDrpqZkfxc94/0EC1Z9GeHrEc9mwD/iucSKG8F7W4oNIXprho3w
   s3Yzvg+hNKLzhxGhnTbC9QEqEwGAujyv0465p0iqZO/fbqoYGyrWEzt/1
   c=;
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.03,238,1694728800"; 
   d="scan'208";a="132242545"
Received: from unknown (HELO hadrien) ([87.129.180.234])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Oct 2023 08:16:12 +0200
Date: Fri, 20 Oct 2023 08:16:12 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
To: Soumya Negi <soumya.negi97@gmail.com>
cc: outreachy@lists.linux.dev
Subject: Re: Outreachy status
In-Reply-To: <20231020055948.GB27881@Negi>
Message-ID: <1b322b1-fe9-c8a2-b0f6-12791f113b6c@inria.fr>
References: <4ea53aff-32c0-dfe5-8ede-7aa22c9875b4@inria.fr> <20231020055948.GB27881@Negi>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 19 Oct 2023, Soumya Negi wrote:

> On Fri, Oct 20, 2023 at 07:28:04AM +0200, Julia Lawall wrote:
> > Hello,
> >
> > Thanks everyone (both applicants and reviewers) for all of the
> > contributions so far!
> >
> > There are 10 days left in the contribution period.  If you have a good
> > number of patches either accepted or in the pipeline, please contact
> > mentors for projects that you may be interested in.
> >
> > If you are interested in more than one project, please feel free to
> > contact more than one set of mentors.  In your final application, you can
> > apply for more than one project.  But it would be helpful to rank them, if
> > you have a preference between them.
> >
> > I look forward to seeing your future contributions, and let me know if you
> > have any questions.
> >
> > julia
> Hi Julia,
>
> While recording patchset contributions is mentioning the cover letter in
> the decription sufficient or should each patch be recorded in the
> application?

Each patch would be more clear.

julia
