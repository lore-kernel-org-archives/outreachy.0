Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C4167A
	for <outreachy@lists.linux.dev>; Fri, 15 Apr 2022 21:19:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1650057539;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Vc3emlvhr4q+PPGlUA2myv0HbC0goeaO/4hw/DaRDz8=;
	b=gGxHJZh0Hg4k9MlZKF3XiQRmg8psAQ8ca4CVsjkMS0vskaQ4R03gilkSJGeQ9tYCX7lpeN
	kvis7T5hZKyXxm/EXms0ALHIcIW8lI+6SMIx8Ir1eMmaJd4XXXy4bX8XYvuU2ivmh8lBFw
	tHcSeAcHFPINTkTfIitjUge9QV28fHQ=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-628-X2wQU8AmN9ihFShDbV8zsQ-1; Fri, 15 Apr 2022 17:18:58 -0400
X-MC-Unique: X2wQU8AmN9ihFShDbV8zsQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C78E6101AA45;
	Fri, 15 Apr 2022 21:18:57 +0000 (UTC)
Received: from maya.cloud.tilaa.com (unknown [10.40.208.6])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 9CC41111D3C8;
	Fri, 15 Apr 2022 21:18:57 +0000 (UTC)
Date: Fri, 15 Apr 2022 23:18:53 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: Alison Schofield <alison.schofield@intel.com>
Cc: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>, "outreachy@lists.linux.dev"
 <outreachy@lists.linux.dev>
Subject: Re: [PATCH v2] mbuto: support building a minimal image for kernel
 selftests
Message-ID: <20220415231853.6da3e7ad@elisabeth>
In-Reply-To: <20220415192339.GA1252106@alison-desk>
References: <20220414230923.GA594872@euclid>
	<20220415171019.091e123c@elisabeth>
	<20220415170543.GA1251615@alison-desk>
	<20220415202405.53ffd848@elisabeth>
	<20220415192339.GA1252106@alison-desk>
Organization: Red Hat
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=sbrivio@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Fri, 15 Apr 2022 12:23:39 -0700
Alison Schofield <alison.schofield@intel.com> wrote:

> On Fri, Apr 15, 2022 at 11:24:05AM -0700, Stefano Brivio wrote:
> > On Fri, 15 Apr 2022 10:05:43 -0700
> > Alison Schofield <alison.schofield@intel.com> wrote:
> >   
> > > On Fri, Apr 15, 2022 at 05:10:19PM +0200, Stefano Brivio wrote:  
> > > > This is really valuable work, thank you. I took the liberty of fixing
> > > > up a few things, listed below, and pushed:    
> > > 
> > > What repository is this in?  
> > 
> > https://mbuto.sh/mbuto -- we're tracking project-specific tasks at
> > https://board.net/p/Outreachy2022KernelNetworking and this is task #7 there.
> > 
> > Documentation is still a bit lacking (I'm working on it on and off), I
> > hope it can become finally usable for other applicants (to run
> > kselftests without semi-complicated VM installs) in a couple of days.  
> 
> I see, thanks!
> 
> So do you think "Minimal Builder Using Terse Options" will someday land
> in the kernels scripts/ directory?

That might be an attempt/possibility, yes, but not necessarily: it has
other use cases as well. I actually started it for a completely
different reason, and right now the only automated user it has is yet
another thing (tests for https://passt.top).

> Wondering why this isn't in a github repository? I think you (Stefano)
> told me something previously about access issues that some folks have with
> github.

First off, opinions expressed here are solely my own and do not express
the views or opinions of my employer. :)

Three categories of reasons:

1. GitHub is subject to US trade control laws (EAR), and access is
   currently excluded for at least developers residing in Cuba and Syria
   -- it looks like it's working fine for Iran-based developers, and I
   understand there's the will from GitHub to find workarounds for
   others:
	https://twitter.com/github/status/1346626296219099136?lang=en

   ...but I would still define the current situation somewhat exclusive
   (and only partially under control of GitHub, of course).

2. I don't like using proprietary software (especially since a. I'm
   volunteering and b. Outreachy is involved)

3. technical reasons: I think an email-based workflow has many
   advantages over "trendy" things, and for example contributing to
   mbuto can be "used" to get more familiar with the kernel changes
   workflow as well, as it's essentially the same.

   There are also some tricks I couldn't do on GitHub, for example
   arbitrary HTML/JavaScript in web pages:
	https://mbuto.sh/mbuto/tree/README.md

   ...and actually I have a ton of them, but I don't want to make this
   email overly long. :)

> Thanks for helping me understand!

You're welcome! Out of personal curiosity, and I'm mostly interested in
an instinctive/first-thought answer here: why did you expect it to be on
GitHub?

-- 
Stefano

