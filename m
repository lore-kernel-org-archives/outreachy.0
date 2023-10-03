Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 632E729433
	for <outreachy@lists.linux.dev>; Tue,  3 Oct 2023 22:18:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1696371498; x=1727907498;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=ZU9Qr+iH9fauPZXizbBwamqf2b4D87KAwurPrTA7g00=;
  b=EWn4khub/1GgGGwmMAbD0k3cgTElfLCNzCOLzXlRPLcORo/usuwHMvny
   d1mk5I+1aKoM18NTIXZ97fsqM3PtTvXfZ6vvpwP6M8HfOEjeDIzFUbhJA
   c4gQtdWPbxqhUxZzhGCznNOcW8pjk/Ii0kWjWjKvfZIJWvXYLcV/SzLHF
   SvOo+8aGaz94e07t1RWIUvduA5tpCkHRf9RQsvZFQMkuEqk8qGdrO2GZe
   uvqMW+A7HeySc7OQtV8DK2Tz3C08P2nUz+i3Tk0LmpkwxAPdMqHSbFn2G
   H6pJOmsknAJ+8QfvXqYDkNhKgExzRdJmRcxsbRUXmzjss57qm1k9sMMq8
   g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="362348079"
X-IronPort-AV: E=Sophos;i="6.03,198,1694761200"; 
   d="scan'208";a="362348079"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Oct 2023 15:18:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="816872134"
X-IronPort-AV: E=Sophos;i="6.03,198,1694761200"; 
   d="scan'208";a="816872134"
Received: from adelynhu-mobl1.gar.corp.intel.com (HELO intel.com) ([10.214.161.181])
  by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Oct 2023 15:18:15 -0700
Date: Wed, 4 Oct 2023 00:18:07 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Isoken Ibizugbe <isokenjune@gmail.com>
Cc: outreachy@lists.linux.dev
Subject: Re: [Error]
Message-ID: <ZRyTH0WyHd3JJnNv@ashyti-mobl2.lan>
References: <CAJHH8bHfnuwWa-NQOpypQrgWTWuqYGdTuptVOz=9h0uG2mVkEA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAJHH8bHfnuwWa-NQOpypQrgWTWuqYGdTuptVOz=9h0uG2mVkEA@mail.gmail.com>

> while cloning the Linux kernel repo, I had this error, please I need
> help in resolving it;
> git clone -b staging-testing
> git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git

try with https instead of git:

git clone https://kernel.googlesource.com/pub/scm/linux/kernel/git/gregkh/staging.git

Andi
