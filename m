Received: from outgoing.mit.edu (outgoing-auth-1.mit.edu [18.9.28.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 941E13C00
	for <outreachy@lists.linux.dev>; Thu, 16 Mar 2023 14:55:42 +0000 (UTC)
Received: from cwcc.thunk.org (pool-173-48-120-46.bstnma.fios.verizon.net [173.48.120.46])
	(authenticated bits=0)
        (User authenticated as tytso@ATHENA.MIT.EDU)
	by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id 32GEt4Al021811
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 16 Mar 2023 10:55:04 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mit.edu; s=outgoing;
	t=1678978507; bh=yhm5b9mPFSKMOcDgABpZ+qzHWLja8JAG7RVsNaKkefU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=YQ8egNPLdVqlLZ77H2rkpBvA2nj67hh5Teyl6FjnMo4/7ASY4BGgn+yM/BGbIm6AI
	 DLjbh7NgHioTrS83WSaXaRnxKMFvzxfuliUhwo7f1GqHupvR5vGdeIJheizTQ+BSaa
	 Sc7LddU3a366oWKJxzld0h9v2r1Oqki0i53vMVFXZettnWnulPrYy3Y40HYkZ++1Rq
	 5VfZWUFLSfOjen4XXLYacw0sm2RkJMlCwoYsJvw9+nj1HbroDBZSOdbnfbeGcIk7oK
	 PfNsmajaCok+qZTp1io6rus/hQxWa4sMtoLeEU5tyNeTuFvIT07pW5uCUrdnL5psS7
	 OMIk8Z4Whz1pw==
Received: by cwcc.thunk.org (Postfix, from userid 15806)
	id F16D815C33A7; Thu, 16 Mar 2023 10:55:03 -0400 (EDT)
Date: Thu, 16 Mar 2023 10:55:03 -0400
From: "Theodore Ts'o" <tytso@mit.edu>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Bagas Sanjaya <bagasdotme@gmail.com>,
        Linux Documentation <linux-doc@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Linux Outreachy <outreachy@lists.linux.dev>,
        Jonathan Corbet <corbet@lwn.net>,
        Thorsten Leemhuis <linux@leemhuis.info>,
        Lukas Bulwahn <lukas.bulwahn@gmail.com>,
        Akira Yokosawa <akiyks@gmail.com>,
        Alison Schofield <alison.schofield@intel.com>,
        Kloudifold <cloudifold.3125@gmail.com>,
        Sudip Mukherjee <sudipm.mukherjee@gmail.com>
Subject: Re: [PATCH] Documentation: submitting-patches: Disqualify style
 fixes from Fixes: tag
Message-ID: <20230316145503.GN860405@mit.edu>
References: <20230316082034.14191-1-bagasdotme@gmail.com>
 <fe15da9c-d03f-ccc3-ea6a-2b6401496aad@linaro.org>
 <ZBLSrXrxrV4dRjak@kroah.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZBLSrXrxrV4dRjak@kroah.com>

On Thu, Mar 16, 2023 at 09:26:21AM +0100, Greg KH wrote:
> > Coding style is not a bug, but that's obvious.
> 
> I agree, let's not make this file even longer than it is if at all
> possible.
>

I've actually been wondering if there is some way to split the file
since it's quite large already.  It's been unclear to me whether that
would make it easier or harder to find stuff though.  :-/

      	      	     	       	  - Ted
