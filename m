Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BE674699
	for <outreachy@lists.linux.dev>; Mon, 17 Oct 2022 16:18:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1666023537; x=1697559537;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=8AogwcpawFWdo0ZAUM6JCNow/H9ok5EdIN1QpNVBNmA=;
  b=cwdxqHLDYhiDT1sE4/KV04UdW2M2a8kSw0VW25wDYkWdoxkqPqKr1cra
   4Pxno22rCLU1D4/adlbPhiI7Y3jZwvYTlSax++FQntx/qxUmcetxzltqL
   A0yx8rjQqU0BOEcJKcQwxXRGEjokOnEPgBIHNqZvG7PQYRVqzSFm0+ZQi
   /KXiBq8H+eEXbJPCMLCAootH1U7wwJFFgOQnQoyZlUX8u0YMnKg+5iKS0
   chvkQFtXJfiQE4bajxpNtfonvG/AbdYimSOQVOr5JymqCbjt1L/Tl+kbJ
   9bLR9U84xTRNf345Lzj1hQBfxKoi0yDUMsxsCtmfDTmPZG21zqKxPMxY8
   Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10503"; a="293213513"
X-IronPort-AV: E=Sophos;i="5.95,192,1661842800"; 
   d="scan'208";a="293213513"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Oct 2022 09:18:15 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10503"; a="661542812"
X-IronPort-AV: E=Sophos;i="5.95,192,1661842800"; 
   d="scan'208";a="661542812"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO aschofie-mobl2) ([10.255.230.132])
  by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Oct 2022 09:18:15 -0700
Date: Mon, 17 Oct 2022 09:18:13 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Hiba Mohammood <hibacm911@gmail.com>
Cc: Outreachy Linux Kernel <outreachy@lists.linux.dev>
Subject: Re: unable to subscribe to the mailing list.
Message-ID: <Y02ARf2RjyAtOai2@aschofie-mobl2>
References: <D255D177-DA92-47EE-A1DE-D54F1461BA9C@hxcore.ol>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <D255D177-DA92-47EE-A1DE-D54F1461BA9C@hxcore.ol>

On Sat, Oct 15, 2022 at 08:35:18PM +0530, Hiba Mohammood wrote:
>    Hello Alison,
> 
>    I’m Hiba and I was trying to subscribe to Outreachy Mailing List but my
>    message is getting blocked by the SpamAdmin. Is there any way I can be
>    subscribed to the mailing list? Thanks.

+ outreachy

Hi Hiba,

https://subspace.kernel.org/lists.linux.dev.html has this suggestion:
To report abuse of with any other requests, please email postmaster@kernel.org.

Also, note that you can still send email to the list, and view the
list archive while you are waiting for your subscription to get
sorted out.

Subscribe: outreachy+subscribe@lists.linux.dev
More subscriber options: https://subspace.kernel.org/lists.linux.dev.html
View the archive: https://lore.kernel.org/outreachy/

Thanks,
Alison
> 
>     
> 
>     
> 
>    Sent from Mail for Windows
> 
>     
