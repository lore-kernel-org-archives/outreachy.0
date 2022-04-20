Received: from ms.lwn.net (ms.lwn.net [45.79.88.28])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50F911365
	for <outreachy@lists.linux.dev>; Wed, 20 Apr 2022 09:35:16 +0000 (UTC)
Received: from localhost (mdns.lwn.net [45.79.72.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ms.lwn.net (Postfix) with ESMTPSA id 71CAF378;
	Wed, 20 Apr 2022 09:35:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 ms.lwn.net 71CAF378
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lwn.net; s=20201203;
	t=1650447315; bh=/drfVWlpA5rvL+Fx11EF7dxixc4TXy05BiVzmO3nX6Q=;
	h=From:To:Subject:In-Reply-To:References:Date:From;
	b=BNoyTCusYisehvH1uDCtgaTeCCwQWpDmKVC5M5AMsgEulgiLPO3HfoSUlZZyOlM8h
	 JC/7h0TpOjDpNBtOn+17ID99REjcprINr4UaklTLdHHhSkFGmW44wcyj19aOklrdpY
	 a/PrFfnGKYQik4i9hgbdLNWSsTgjFk4sx9ok4XsrwjFxGUtkUsKB8mxsBQ/djWlG+4
	 FQFR0exYECfzMKfLJfJZ8CTjeAtmzD73fk+AbqexelSkUxfEBk1Y1cV/EVOugeSM1S
	 CXloiBRrDBRdlr7UhOne2BlDGxIbP4eLlAh6EkbupWuZPydIiTncKvcUrNvQx3DjBZ
	 NFSAbM5MAfeVQ==
From: Jonathan Corbet <corbet@lwn.net>
To: Bruno Moreira-Guedes <codeagain@codeagain.dev>,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 outreachy@lists.linux.dev, Bruno's Patch Watchbox
 <patch-reply@codeagain.dev>
Subject: Re: [PATCH v2 0/2] Docs: Update information at changes.rst
In-Reply-To: <cover.1650376049.git.codeagain@codeagain.dev>
References: <cover.1650376049.git.codeagain@codeagain.dev>
Date: Wed, 20 Apr 2022 03:35:10 -0600
Message-ID: <8735i83xo1.fsf@meer.lwn.net>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain

Bruno Moreira-Guedes <codeagain@codeagain.dev> writes:

> Add and update information at 'Documentation/process/changes.rst'. The
> text has outdated kernel version and misses the 'cpio' build
> requirement, necessary for the `kernel/gen_kheaders.sh` script called by
> the install target.
>
> The PATCH 1/2 fixes the missing cpio requirement, while PATCH 2/2 fixes
> the kernel version reference.
>
> Signed-off-by: Bruno Moreira-Guedes <codeagain@codeagain.dev>

Patches applied, thanks.

jon
