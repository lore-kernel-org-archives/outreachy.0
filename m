Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 690832AD1E
	for <outreachy@lists.linux.dev>; Tue,  2 Apr 2024 16:57:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.175.65.9
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712077036; cv=none; b=uRUD/moEns/GNqTQ9V5W5fhyxNXYE6ClZ6DzroKt3GxXGIB2RQP+O1RsNwI8FKgXz6agjmhb7Jjfg1nq5B9+CqHjhVn5YygI9bKnuvnqVw5SECNjRHdVJ4Z1EG1jjfEn7WwEsXbt1uDoCW0pQvH8FAQNEX6ppnks1Ikpo/duCIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712077036; c=relaxed/simple;
	bh=8iW/RfJyqFiC2w6eDZ86ozqWeSiw3rxUCp/GNxrHzmU=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=EBLidn2Py18+39y/y26hfODQNZfWd5auRa8WBUA9igL5s1LqdLPfY48Cc+/47/jeIixCegmL02lv70RCx28qcx2mpVZDQkhFyt5drjYmKKfIHclMk9NVPTywMbZF+wfT98V+FeYDZ07dx5IbYHJQmIKei5jp/33U2me4r/qUoOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=WL9tTaYo; arc=none smtp.client-ip=198.175.65.9
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="WL9tTaYo"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1712077034; x=1743613034;
  h=date:from:to:subject:message-id:mime-version;
  bh=8iW/RfJyqFiC2w6eDZ86ozqWeSiw3rxUCp/GNxrHzmU=;
  b=WL9tTaYoVMM0Aq6HgjaY6VNNtfMDioBxCfXzze3CS5fokW/3XSaorVv+
   aRbH3VN5LZM1Ee5W7mMLpLsTh/XD/jgNdVfug7tb5WT1iQ+ZlOc6GXecU
   oB1dXK700Dyk95gF0aW3k+VILNEYU7XQEVEw/2jgdd6OCRat+GQqOl+FU
   As6M2Y0uDDWJedbVyX5Y1G7HrVq3wB1rWQ7DAnXr8RsgYbNIi1puqn0vZ
   WKzcJvmtpJA95+G8D4qD63nCG9Yg8oq+dEql3sbkktyyIxT8kOn94XZZs
   YEwUKYUXoQjLrD9yyLHNqfo9cNcOTS4X+e24uK2dkOip1ZdQ2YjNXXDG0
   w==;
X-CSE-ConnectionGUID: rV8LTEmKSYWy7J4DecPcGg==
X-CSE-MsgGUID: DZ75fb+DT5CWd5Drk4A9IA==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="29744885"
X-IronPort-AV: E=Sophos;i="6.07,175,1708416000"; 
   d="scan'208";a="29744885"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
  by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Apr 2024 09:57:14 -0700
X-CSE-ConnectionGUID: ncAjTr5ESfqiVzgoSeDlpw==
X-CSE-MsgGUID: 8+Y06yHYRDOY+cHRwDkXgA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,175,1708416000"; 
   d="scan'208";a="18177157"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO aschofie-mobl2) ([10.209.65.243])
  by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Apr 2024 09:57:13 -0700
Date: Tue, 2 Apr 2024 09:57:11 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Outreachy Linux Kernel <outreachy@lists.linux.dev>
Subject: Outreachy Applications Closed
Message-ID: <Zgw451LebWw5mu+Q@aschofie-mobl2>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


Thank-you to applicants, mentors, and reviewers for participating
in this contribution period. It is now closed.

Intern selections will be announced on the alums page on May 1st.

Our community was fortunate to have a talented, passionate, and
active group of applicants! Applicants who are not offered an
internship are encouraged to continue their participation in the
community and to consider participating in a future round. Dates
will be announced here: [2]

This list will not be monitored until the next contribution period
opens in Fall of 2024. If you have patches in flight, go ahead and
continue to copy this list until you get closure on them. (As you've
learned, we never drop folks from an ongoing mail thread.) If you have
new patches to send, use your get_maintainers script only, omitting the
Outreachy list.


All the best,
Alison

[1] https://www.outreachy.org/alums/
[2] https://www.outreachy.org/
