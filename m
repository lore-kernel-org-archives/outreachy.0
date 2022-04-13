Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B885F23AE
	for <outreachy@lists.linux.dev>; Wed, 13 Apr 2022 14:56:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1649861781; x=1681397781;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=bG3YpEdyMU3+sdESGcm4VWbEga844Tq2XFHs6/A6+Mw=;
  b=NSRYX2/Hfd8sPuQU1ohHG/NsXfgxSkiJB2zU6iyOxwGYx7f2OsZiAm4x
   fVapvbq453HfitG1B3CoiSBZ0IasHjZmi0n9KuyW7E8RanGVA+Lw3D+at
   BQ3RzxoifAGvBylunYJEf7fhVB+nDvngGoGtiCIicyMHc+l4CJXnTcXIp
   B1p9WOtP2rmwQI1Xdw/uCcmtRFHqeDsKikqlWbZhetMqeQag6i3iUVLbq
   qJW8x3d4ZsAmZgH6NzTBs4IdsjeOCaoyuhbdqHggIHX7fg/1fXOTyLwU7
   zzaszi1z+tV5SFNIc1F+lOMqRkceoHmkFX7GVk3OGGY9/DtDmhptFCy/h
   w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10315"; a="262869295"
X-IronPort-AV: E=Sophos;i="5.90,257,1643702400"; 
   d="scan'208";a="262869295"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Apr 2022 07:56:21 -0700
X-IronPort-AV: E=Sophos;i="5.90,257,1643702400"; 
   d="scan'208";a="508009180"
Received: from alison-desk.jf.intel.com (HELO alison-desk) ([10.54.74.41])
  by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Apr 2022 07:56:20 -0700
Date: Wed, 13 Apr 2022 07:58:16 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: "outreachy@lists.linux.dev" <outreachy@lists.linux.dev>
Subject: Re: Should we Cc this list when submitting patches for subsystems
 other than "staging"?
Message-ID: <20220413145816.GA1241133@alison-desk>
References: <1859502.6tgchFWduM@leap>
 <20220412223603.GA1237891@alison-desk>
 <1891396.fIoEIV5pvu@leap>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1891396.fIoEIV5pvu@leap>

On Wed, Apr 13, 2022 at 12:09:46AM -0700, Fabio M. De Francesco wrote:
> On mercoled? 13 aprile 2022 00:36:03 CEST Alison Schofield wrote:
> > On Tue, Apr 12, 2022 at 10:21:31PM +0200, Fabio M. De Francesco wrote:


> Good to know, but unfortunately now is too late for sharing on this list 
> the patches which I've already sent to linux-kernel@vger.kernel.org and 
> other lists, but...
>

Your patches related to HIGHMEM project are of most interest to this list.
Please 'CC the outreachy list on the next rev of any of those patches,
and 'CC outreachy on any new ones related to HIGHMEM.

Same goes for any patches for memblock and networking projects.

Let's give all applicants easy access to all project related info.

Thanks,
Alison
> 
