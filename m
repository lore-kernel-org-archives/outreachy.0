Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B9627B
	for <outreachy@lists.linux.dev>; Fri, 21 Oct 2022 21:46:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1666388775; x=1697924775;
  h=date:from:to:cc:subject:message-id:mime-version;
  bh=6+kq/55BE9C45EcIsNkwJERx3VE9RDtPzQsQg2Ir8zU=;
  b=ZlU6yLt946QyXzndrshpjtmuKXcmzC0NecyTktx5hy8hkGcc7BToIxVi
   6FhZ3vM4ZVvP0e7vrkbQAFWN198ZICrOq/4siWRxFwIwi/13sUfExrnXU
   pgTLKHddnCFFLwzDFmW4v79TLVITsjYatQ8BfYVlbv6YHIabMTy4d7UUC
   xlj9USc0U5H2IOs+u+MHk7dtri1z3skNwi82DVxtPFc1lnK8JncAUDtux
   SskBahHMOTagdPHugmEUUrA4lNjL2LzLnzO081vUAJeBT5rPCceXnnglm
   FQGgeC5sERbX6z0WNTUxy52OWRQo9gt1fPDdl5Lw7BKpD2KNWekWlUvWD
   A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10507"; a="371332975"
X-IronPort-AV: E=Sophos;i="5.95,203,1661842800"; 
   d="scan'208";a="371332975"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Oct 2022 14:46:14 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10507"; a="663913160"
X-IronPort-AV: E=Sophos;i="5.95,203,1661842800"; 
   d="scan'208";a="663913160"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO aschofie-mobl2) ([10.212.252.17])
  by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Oct 2022 14:46:14 -0700
Date: Fri, 21 Oct 2022 14:46:13 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: dvarma04@hotmail.com
Cc: Outreachy Linux Kernel <outreachy@lists.linux.dev>,
	Saurabh Singh Sengar <ssengar@linux.microsoft.com>,
	Praveen Kumar <kumarpraveen@linux.microsoft.com>
Subject: [Outreachy - To Deeva]
Message-ID: <Y1MTJTKdG2fiUT0N@aschofie-mobl2>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Deeva,

I saw your Outreachy Dashboard update that noted your past contributions:
https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git/log/?h=staging-testing&qt=grep&q=Deepak+R+Varma

You have plenty of cleanup patches in total and it would be great if you
could move on to try out some small tasks for the Coccinelle project.

There are notes on how to get started in the project description, including
how to contact the mentors.

Please try to keep your applicant/mentor communications CC'd to this
list.

Thanks,
Alison
