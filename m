Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D7FC1363
	for <outreachy@lists.linux.dev>; Fri,  1 Apr 2022 22:10:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1648851034; x=1680387034;
  h=date:from:to:cc:subject:message-id:mime-version;
  bh=PZ611ef0bpytFasrVlmbWpNpu0qVf5JaEvGa6A1nVHw=;
  b=QJzTzu/qTdsk0eyDVPxE6djfOBp1A9SAQobV7Pm55vVQ/Jc0RV7/smA4
   G2ME0ILGhV9C8XHm46J0KhMTYe6+8eZsRFjVgOj85k8VZjguRzZxGpN3v
   wQrqaCBbnGpUCjsxyRFE+L6bAOyI03G4hK4D+OwngLZCqhySpJGLj/NZI
   XyAOYI5JbdyRwTa2h3wwg4rbReCLUGVzO2ZN2ANzmPX3npD9ZHyhfuBrW
   iD8QTmRYI+A4Be/cmu1Z1f0ASOb0wC3vxpPTyjVRESCUIvOaKS8VxkAyn
   x9XgQ9sMoEFsxF0ZjmcnXNp+MYeY0op+1tT5Xnio36W8LQGtPOYOnidbi
   g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10304"; a="240829873"
X-IronPort-AV: E=Sophos;i="5.90,228,1643702400"; 
   d="scan'208";a="240829873"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Apr 2022 15:10:33 -0700
X-IronPort-AV: E=Sophos;i="5.90,228,1643702400"; 
   d="scan'208";a="504314400"
Received: from alison-desk.jf.intel.com (HELO alison-desk) ([10.54.74.41])
  by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Apr 2022 15:10:33 -0700
Date: Fri, 1 Apr 2022 15:12:51 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: alison.schofield@intel.com
Cc: Outreachy Linux Kernel <outreachy@lists.linux.dev>
Subject: Testing Only - Ignore
Message-ID: <20220401221251.GA1188492@alison-desk>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This mailing list is very small (since it's so new), and friendly,
so I'm spamming it with my private email test.

Not even sure this is a reasonable test.

Mail in which I am in the To: is not coming through to my Intel email.
For example, Bruno's last email I see when I browse w Lore, but I 
didn't get it in my @intel.com INBOX. 

It reminded me of something Stefano mentioned about mail getting
de-dup'd and then you wind up with nothing.

Anyway, pardon the noise while I figure this out.

