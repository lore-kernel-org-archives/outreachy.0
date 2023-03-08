Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E817179CD
	for <outreachy@lists.linux.dev>; Wed,  8 Mar 2023 15:44:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1678290276; x=1709826276;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=YXbRrowlXLKZZQ7nZorEHQiWIQawaXZxoAGiQu1T0pQ=;
  b=k88yA3Z+TCzwoORMDi9kQeBwN6reD7T3iTA7ifAN9cpK54v4fM8XlTDT
   Lgv7PyzR0vhCD8HPtqexBwy0IgITP1iQ62bBxzjh2v/1ZhyvhLRS0ywJp
   9Nd+C0SktRCFL4sPgl9rvYuKSMbfi9/Y0uLEj2gAUM0Bj6IKjaWS9W6EI
   MWoVvIGUW6EUFKlQFhB4WJmDXr6+T4dtD2ifW6mVplNbsWubZaVe4SsT0
   4U+dm9jNNpg5VIeefP8j6eRwwCkB0HZGOzxXNZpVNjI97sCoAT1AVqCYl
   hHQ9CC2qkGB3LqAifTouS3fsgRAZ4HM8ZUMy99ULZ5Fhcovj873EG+qoe
   g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="336204304"
X-IronPort-AV: E=Sophos;i="5.98,244,1673942400"; 
   d="scan'208";a="336204304"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Mar 2023 07:44:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="679374734"
X-IronPort-AV: E=Sophos;i="5.98,244,1673942400"; 
   d="scan'208";a="679374734"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO aschofie-mobl2) ([10.212.215.12])
  by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Mar 2023 07:44:36 -0800
Date: Wed, 8 Mar 2023 07:44:34 -0800
From: Alison Schofield <alison.schofield@intel.com>
To: Sumitra Sharma <sumitraartsy@gmail.com>
Cc: outreachy@lists.linux.dev
Subject: Re: Introductory message
Message-ID: <ZAitYtamlSEMJme4@aschofie-mobl2>
References: <20230308114122.GA312977@ubuntu>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230308114122.GA312977@ubuntu>

On Wed, Mar 08, 2023 at 03:41:22AM -0800, Sumitra Sharma wrote:
> Hi I am Sumitra Sharma, an outreachy applicant. This is my first time

Hi Sumitra,

It's good that you posted this message for all to see and learn from.

It would be even better if posted as a new message and subject line.

There is another setup related question that is buried beneath an
intro. It's better to do a new message with appropriate subject line.

Thanks,
Alison

> applying to outreachy and linux-kernel. I am currently working on
> setting up the enviornment. I observed that building the kernel i.e.
> running "make -j2" command itself is taking a lot of time. I would
> appreciate some suggestions on it.
> Also I recieved an error stating "make[2]: *** No rule to make target
> 'debian/canonical-certs.pem', needed by 'certs/x509_certificate_list'.
> Stop." to which I edited the .config file as below
> #
> # Certificates for signature checking
> #
> CONFIG_MODULE_SIG_KEY="certs/signing_key.pem"
> CONFIG_MODULE_SIG_KEY_TYPE_RSA=y
> # CONFIG_MODULE_SIG_KEY_TYPE_ECDSA is not set
> CONFIG_SYSTEM_TRUSTED_KEYRING=y
> CONFIG_SYSTEM_TRUSTED_KEYS=""
> CONFIG_SYSTEM_EXTRA_CERTIFICATE=y
> CONFIG_SYSTEM_EXTRA_CERTIFICATE_SIZE=4096
> CONFIG_SECONDARY_TRUSTED_KEYRING=y
> CONFIG_SYSTEM_BLACKLIST_KEYRING=y
> CONFIG_SYSTEM_BLACKLIST_HASH_LIST=""
> CONFIG_SYSTEM_REVOCATION_LIST=y
> CONFIG_SYSTEM_REVOCATION_KEYS=""
> # CONFIG_SYSTEM_BLACKLIST_AUTH_UPDATE is not set
> # end of Certificates for signature checking
> 
