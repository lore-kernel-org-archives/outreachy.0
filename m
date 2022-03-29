Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 705A433C2
	for <outreachy@lists.linux.dev>; Tue, 29 Mar 2022 23:54:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1648598082; x=1680134082;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=1mIERv2W/NL1hemvkbnYaUAjIO1Cm21xFZpdTN7oBGQ=;
  b=bBQYqike9JTquNJUMjgZE7dyhD9yjhSLqLNmrOuD3ewidAYlNDH2hM6l
   84GfPx9JoG6ao7XCTLbq2rJY0BFtppIvPOoO0CO2OGKhyWyGqZUDJ8d2d
   jDglOTPDmzAkdkEK83+XVhbh8vD/PqdFLCufDhvaHJ/7glHLA5SasS7Ir
   Yl4f/MSCVnqeygXzF7f6r1SRVxsl6/c/BmD14JwYy8UzCLCotRrUGwpnE
   nv7NIp7N+pcvhm0CueFBEMO/Z4bHPvj545vZxFfig2qRCMZuEMGa8K8UF
   RArh3J2Y0db2Ccam4ObMbksrNP7elrfuNmqKxeyCIof8kQVS4SI7S1/pY
   Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10301"; a="246903887"
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; 
   d="scan'208";a="246903887"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Mar 2022 16:54:41 -0700
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; 
   d="scan'208";a="653390342"
Received: from alison-desk.jf.intel.com (HELO alison-desk) ([10.54.74.41])
  by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Mar 2022 16:54:41 -0700
Date: Tue, 29 Mar 2022 16:57:06 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Jaehee Park <jhpark1013@gmail.com>
Cc: outreachy@lists.linux.dev
Subject: Re: mail question
Message-ID: <20220329235706.GA1172722@alison-desk>
References: <20220329235021.GA1009484@jaehee-ThinkPad-X1-Extreme>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220329235021.GA1009484@jaehee-ThinkPad-X1-Extreme>

On Tue, Mar 29, 2022 at 07:50:21PM -0400, Jaehee Park wrote:
> Hi I have two questions about sending a mail to the outreachy mailing list. 

Hi Jaehee,
Welcome to the community and good questions!

> 
> Q1: When sending a general question (not a patch), do people still use mutt to do this? I am asking because I sent it using my gmail web interface and it bounced back because it contained an html part. So I'm curious what other people use. To send this mail, I'm using mutt.

All mail to this list needs to be plain text. As you saw, it will get
returned if not.  So - yes all questions, comments, etc - please use
your mutt mailer.

> 
> Q2: I see that my patch was sent (https://lore.kernel.org/outreachy/) but I didn't get an email yet from the outreachy mailing list. I was wondering if there is a delay? 

Your patch is on the list. You can see it through lore - right?
I see it on the list, and since I'm subscribed, it came to my mailbox
too. There is no automatic reply from the outreachy list.

> 
> Sorry -- i'm still getting used to this mailing list system!
>
Appreciate you asking. Thanks,
Alison
