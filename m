Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 364AA7B
	for <outreachy@lists.linux.dev>; Sat, 22 Oct 2022 03:43:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1666410198; x=1697946198;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=0TJ3PKZiy4weiF/LGavqZu1gnE6NyzhbYh3NiydOre4=;
  b=jBLRCtRWqUeIBboxM2J+KEylKMZegqX+DH68xIqG/9TWxkquK/Ws3+bF
   RxIuFCcxaG1P07GCaosZsIZDUwrWc6egkR9GkxsO7mXNah5jdCziNu7IX
   ib+qoiqcZNZ+iENuETGmyuYFZVmBoVzwFlda3DFhTvv/YpgFVJwNWQXaK
   V1EouPANs8SyAmMl9Op98+SHbDs7noeFeJ8WjyUjgJ4UdroNp/cJnRtZv
   1IbNnatzOF/1KX9FRM3zokj55UiVhM27aksFp6w8pi2/XgyT5754QgvXj
   IS/NutBXYBLNx8Tra+UHvb9jdKBq3LQErsVPATHfl2DEvLmBTlgKGdt1Y
   w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10507"; a="286869754"
X-IronPort-AV: E=Sophos;i="5.95,204,1661842800"; 
   d="scan'208";a="286869754"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Oct 2022 20:43:17 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10507"; a="633167306"
X-IronPort-AV: E=Sophos;i="5.95,204,1661842800"; 
   d="scan'208";a="633167306"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO aschofie-mobl2) ([10.209.80.85])
  by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Oct 2022 20:43:17 -0700
Date: Fri, 21 Oct 2022 20:43:15 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Emily Peri <eperi1024@gmail.com>
Cc: outreachy@lists.linux.dev
Subject: Re: [KERNEL NEWBIES ACCESS] eperi
Message-ID: <Y1Nm05C00xBPIx3d@aschofie-mobl2>
References: <Y1MVjARgRcJl9xR1@marshmallow>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y1MVjARgRcJl9xR1@marshmallow>

On Fri, Oct 21, 2022 at 02:56:28PM -0700, Emily Peri wrote:
> Hi,
> 
> I'd like to contribute to the Kernel Newbies Wiki.
> Thanks!
> 
> Best,
> Emily
>
Done!
