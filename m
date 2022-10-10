Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EE3B5CAE
	for <outreachy@lists.linux.dev>; Mon, 10 Oct 2022 20:37:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1665434259; x=1696970259;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=qxi4R+D6cRcuneEHTiBsJXbiFAlYufDzOeYs8VCBmdY=;
  b=Y60Z07Zk7DY4Hu3Z06h05WmBIGJJ9lq2Rq9lEQPdz7Zbx337/nyCKkWZ
   dNLql4DIUp6i2nrsHZ/VJxCMZJ+429bhYq/lxs2QFKA396o4Lm5q6V+4V
   b05/eDctRk/Ju9Oyquq1b+2q+Fbu/CH0a0bgKt9JKlf6OxGsTXuiiERpb
   GVXG/W6/x3jy9QLCb13tN65fBAF/ltp8c2dx0FJrKfqMHQ8UyA1IXwzeH
   8pBEY4HULy8aTXLaeo3DM8MfzQvLQ51MoM2H5g1i3tgXHnnmUCejbG2MI
   XGf3UUF+EKVCXYhCBeNKpxYiyz8qIqkKrB+FQFlgJ8VbSgXdwS0nxJGvW
   Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="284710871"
X-IronPort-AV: E=Sophos;i="5.95,173,1661842800"; 
   d="scan'208";a="284710871"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Oct 2022 13:37:38 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="715246134"
X-IronPort-AV: E=Sophos;i="5.95,173,1661842800"; 
   d="scan'208";a="715246134"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO aschofie-mobl2) ([10.255.228.180])
  by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Oct 2022 13:37:38 -0700
Date: Mon, 10 Oct 2022 13:37:37 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Hunter Chasens <hunter.chasens18@ncf.edu>
Cc: Julia Lawall <julia.lawall@inria.fr>, outreachy@lists.linux.dev
Subject: Re: [PATCH] Staging: greybus: Fixed whitespace style issues
Message-ID: <Y0SCkStgeGN3z282@aschofie-mobl2>
References: <20221010155736.117492-1-hunter.chasens18@ncf.edu>
 <6a157246-b4af-273b-8f6a-352c82aa5a2c@inria.fr>
 <CAFJe6O0ADLWOcem3-=EHdKKUHozVP-M1M7VQVY1PCkHr=nMMWg@mail.gmail.com>
 <cb9ed48e-3b83-8a4-773a-39e25483bfb5@inria.fr>
 <Y0ROSX0ZxGQwmMLT@aschofie-mobl2>
 <Y0RoTagEGMQhoXFM@zeda>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y0RoTagEGMQhoXFM@zeda>

On Mon, Oct 10, 2022 at 02:45:33PM -0400, Hunter Chasens wrote:
> Thank you. I only learned about outreach yesterday so I've not had a chance to look through the archives. I'll be sure to do so however! I was very excited to learn about it!


Hi Hunter,

If you only learned about Outreachy 'yesterday' I'm wondering if you
are an approved applicant. You are welcome to work in our sandbox here
during this month long contribution period but only approved applicants
can apply for the actual internships.

See: https://www.outreachy.org/

Alison 
