Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D53023C00
	for <outreachy@lists.linux.dev>; Thu, 16 Mar 2023 15:07:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1678979259; x=1710515259;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=bwi0X60eGoj2bkkk/b0/R18e/8OgckdKm9C+tbsLI0E=;
  b=cLLIHJK/nPvzhSnWEc05PQ7+AW7Q4loW2zVNNkzOMhjKRhugbRfzptaQ
   QB+oSM5ynNrJXCvVfipZFJBuddzAvI1Ai3AoI+jFA3qUnU2HMzZqpky5C
   lzFg/O/taBYoGBDMyZjLspeMJJ0i4OTikCSBSdgdQWfDdliZzgeDgn6HI
   mJXQCfX25LydcANd8P1aTOIPVJm9ffklcqDw2yzQJ65RD6UmjqnPKbEXJ
   EZ7sBYiwI+3SdqvuIqYuPhbY4bAeLEVn8+XAi+SNVKG1ObcEDm9WXDbcV
   vVRlAiBAWSLhJAlRQldV9L58+bO8T1P3oTNYnsVjk31pML1tIqVABUoho
   A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="339560425"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; 
   d="scan'208";a="339560425"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Mar 2023 08:07:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="744185037"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; 
   d="scan'208";a="744185037"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO aschofie-mobl2) ([10.209.19.33])
  by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Mar 2023 08:07:18 -0700
Date: Thu, 16 Mar 2023 08:07:16 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Sumitra Sharma <sumitraartsy@gmail.com>
Cc: outreachy@lists.linux.dev
Subject: Re: [Outreachy Info] Ask for help finding cleanups
Message-ID: <ZBMwpDSM3W2IDso4@aschofie-mobl2>
References: <ZBEIAKymniRkamjr@aschofie-mobl2>
 <20230316131656.GB47401@sumitra.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230316131656.GB47401@sumitra.com>

On Thu, Mar 16, 2023 at 06:16:56AM -0700, Sumitra Sharma wrote:
> On Tue, Mar 14, 2023 at 04:49:20PM -0700, Alison Schofield wrote:
> > Hi Applicants,
> > 
> > We want to support you finding cleanups. Today I spent some time
> > looking through staging and am working up a small todo list that
> > may be useful.
> > 
> > I posted one such cleanup to Menna because I saw them submit a
> > couple of attempts at a first patches.
> > 
> > I think that Kloudifold, Khadija, and Sumitra are busy iterating on
> > their first patches. Keep going! Ask for help finding your second
> > patch if needed.
> > 
> 
> Hi Alison,
> 
> My first patch is accepted. I will appreciate if you could help me to find a
> second patch.
>  
> Regards,
> 
> Sumitra

Congratulations on getting the patch accepted!
I do see you sent another patch, and GregKH responded that it needs
followup. He sent his automatic, problem with commit message and or
commit log email. Revisit the docs he suggested and the first patch
tutorial and see if you can come up with a rev 2 where the commit
message 'says what you did' and the commit log 'says why you did it'.

> 
> > Anyone else who wants help in finding their first patch, please reach
> > out. I imagine their are some folks exploring here, that I haven't
> > met on the list yet. 
> > 
> > Finally, it seems we won't be holding to the traditional 10 cleanup
> > patch requirement this round! Please continue your efforts and I'll
> > redirect you towards projects after a 'few' cleanup patches are
> > accepted into staging.
> > Thanks,
> > Alison
> > 
> > 
> > 
> 
