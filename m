Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DB0F7B
	for <outreachy@lists.linux.dev>; Fri,  1 Apr 2022 15:17:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1648826277; x=1680362277;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=wRdsJnV7L47enwRYdoNj+F2fBENubMXiEP2h1ijvgK8=;
  b=fSydKGZN2gsKAERHMnmlxBsCfRJ+R1hR1TG7O5W6HxnV8iIsxSclZLoa
   HkAprqiH/IxVKP7JV6GilkpKEP2XSSEwp1D7aLeZ6OA+fy9v0auCXWxPE
   cn7DBmmd8C9SzK9zzP8bxkF0pQkZdnTd0FOrpt5Z23L+iwl1lsuD/5t1A
   XUKyqnDiXPHsvB4+Wf8dPxS1H5ew9zjy6jjhZvYLvfXLl4wUr6+rPuy+T
   R98WfWAxPh3oNnP7E8K573dIVyCyBlFqCiLQI/zy1R3JMv0yLwoq3Cxvv
   RNPRyAQ5fb+inAPGnkeZ4HRqp2n42MYcgJJ3WNo+CusjeoowotzYAzt+2
   w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10304"; a="260339018"
X-IronPort-AV: E=Sophos;i="5.90,228,1643702400"; 
   d="scan'208";a="260339018"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Apr 2022 08:17:56 -0700
X-IronPort-AV: E=Sophos;i="5.90,228,1643702400"; 
   d="scan'208";a="521462609"
Received: from alison-desk.jf.intel.com (HELO alison-desk) ([10.54.74.41])
  by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Apr 2022 08:17:55 -0700
Date: Fri, 1 Apr 2022 08:20:15 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Jaehee Park <jhpark1013@gmail.com>
Cc: Outreachy Linux Kernel <outreachy@lists.linux.dev>
Subject: Re: Finding Clean-up Tasks
Message-ID: <20220401152015.GA1186574@alison-desk>
References: <20220331183805.GA1182645@alison-desk>
 <20220401142803.GA38814@jaehee-ThinkPad-X1-Extreme>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220401142803.GA38814@jaehee-ThinkPad-X1-Extreme>

On Fri, Apr 01, 2022 at 10:28:03AM -0400, Jaehee Park wrote:
> On Thu, Mar 31, 2022 at 11:38:05AM -0700, Alison Schofield wrote:

snip

> > Confidence to send the patch:
> > -----------------------------
> > Go ahead and search on this mailing list for the checkpatch
> > string. You should find many examples that match what you
> > are about to do. See what worked well, what needed rework.
> > 
> > If you have a patch AND a question, you can send the patch
> > and put your question below the scissors line. For example,
> > you might see multiple instances of something but are not sure
> > the patch will be well-received. Fix one instance - and below
> > the scissor line ask you question: "There are 10 more of these
> > in this file, just want to sanity check that my approach here
> > is wanted."  (If I were doing cleanup today, I'd use this tactic
> > for drivers/staging/iio checkpatch ERROR about octals.)
> > 
> 
> Thank you for advice! I had a question about where to put the questions
> in the patch. When you say scissor line, are we putting dashed lined
> somewhere in the patch and writing our questions? Or did you mean we
> should reply to our patch?   
> 
Below the 'scissor line' is the same place you would place a Changelog
when versioning the patch. Anything below the "---" and before the
diffstat gets automagically tossed when the patch is applied.
So, it looks something like this:

>> bssid_filter and num_of_ssids have the ssid separated from the rest of
>> the words with an underscore.
>> 
>> Signed-off-by: Jaehee Park <jhpark1013@gmail.com>
>> ---

Insert question, additional comment here. 
In the future, you'll learn about RFC patches, where we are sometimes
asking for a greater conceptual review before posting. But, for small
questions about a specific patch - this space works well.

>>  drivers/staging/wfx/hif_tx.c | 10 +++++-----
>>  drivers/staging/wfx/sta.c    | 20 ++++++++++----------
>>  2 files changed, 15 insertions(+), 15 deletions(-)

Alison

