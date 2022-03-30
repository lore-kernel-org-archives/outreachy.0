Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5879F36E
	for <outreachy@lists.linux.dev>; Wed, 30 Mar 2022 05:44:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1648619072; x=1680155072;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=R46waiA4p7zLOLtfujLnI+T/QZgEaPDjM8Bv6/D8A6I=;
  b=Yyq8EjRxHcFQYcWjp5nJxApRuKFcU/NbfXaOoaEQYDsRXad+vaPnCHb/
   lVueS55cyfyWu6X67tj3vONqHnzKvk9LXMJSKWTPJxrvC+aQf46jl3/XS
   TRXg3GS9rHtUHpieYTcL9+4uY0W5Fl45dmj5zVUAhGCiws8ZvN/1VVfIA
   Y6YzuzymfrgnE2qmYVJo8KffUwYBY5uz4FoDMf0zNHEInw+dLvnkeNyFO
   Ckp9r/0NUF0V8Vn4vQxvmdo1BwrhUkTcCZjpno5W1j8nGzoIcjMU+v9Wx
   ppvNiNcr96OFoxR8nEzBi6G9Rbs7vEA9mg40BkV8tUISjnJ5o0oCsOYPB
   g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10301"; a="241608614"
X-IronPort-AV: E=Sophos;i="5.90,221,1643702400"; 
   d="scan'208";a="241608614"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Mar 2022 22:44:31 -0700
X-IronPort-AV: E=Sophos;i="5.90,221,1643702400"; 
   d="scan'208";a="649737146"
Received: from micastro-mobl1.amr.corp.intel.com (HELO localhost) ([10.212.81.34])
  by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Mar 2022 22:44:31 -0700
Date: Tue, 29 Mar 2022 22:44:11 -0700
From: Ira Weiny <ira.weiny@intel.com>
To: Alison Schofield <alison.schofield@intel.com>
Cc: Jaehee Park <jhpark1013@gmail.com>, outreachy@lists.linux.dev
Subject: Re: mail question
Message-ID: <YkPuK2VDeNizlpzR@iweiny-desk3>
References: <20220329235021.GA1009484@jaehee-ThinkPad-X1-Extreme>
 <20220329235706.GA1172722@alison-desk>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220329235706.GA1172722@alison-desk>

On Tue, Mar 29, 2022 at 04:57:06PM -0700, Alison Schofield wrote:
> On Tue, Mar 29, 2022 at 07:50:21PM -0400, Jaehee Park wrote:
> > Hi I have two questions about sending a mail to the outreachy mailing list. 
> 
> Hi Jaehee,
> Welcome to the community and good questions!
> 
> > 
> > Q1: When sending a general question (not a patch), do people still use mutt to do this? I am asking because I sent it using my gmail web interface and it bounced back because it contained an html part. So I'm curious what other people use. To send this mail, I'm using mutt.
> 
> All mail to this list needs to be plain text. As you saw, it will get
> returned if not.  So - yes all questions, comments, etc - please use
> your mutt mailer.

Yea mutt is probably better...  I prefer it.  But when using gmail there is a
'plain text mode' which can be set on the web interface.

Ira
