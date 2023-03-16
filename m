Received: from ms.lwn.net (ms.lwn.net [45.79.88.28])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3F2C3C00
	for <outreachy@lists.linux.dev>; Thu, 16 Mar 2023 15:01:49 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:281:8300:73::5f6])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ms.lwn.net (Postfix) with ESMTPSA id B79677F9;
	Thu, 16 Mar 2023 15:01:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 ms.lwn.net B79677F9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lwn.net; s=20201203;
	t=1678978902; bh=r39TXwfU5ibGFuKiz/lz+KdHlMI9MyKXbnGhJMSGF1M=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=L4L3rXRDLOAp7CVaoBWzIX3EBahBUumiMc5w43E3HgEauZKiCf3eEeCSntKeq6qgb
	 1wn/0REJuJKKDjOZSvBatI+15qArXYXWMBXtGgwJp/SCRQdF8uaIqeJhmgwROuqPuK
	 iW6JsDBStQMw3E15v4+847HjLjbkrGhbnKMAj+Gla1fYCTdWrQs//SEmc2ydYziDEe
	 aGNPcIQO30Uz9n2ULV7mBxyp86jDiWwnV+Cc/HMSkV2gfLPioPWmRF6+KiLM5weGDH
	 NUUAU++L7+sCUqPMorohSI2g4/stmIsjso58rva/Ki5zs10ZM900oXudvaXRcIQxhs
	 MywgA/TBZFxeg==
From: Jonathan Corbet <corbet@lwn.net>
To: Theodore Ts'o <tytso@mit.edu>, Greg KH <gregkh@linuxfoundation.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Bagas Sanjaya
 <bagasdotme@gmail.com>, Linux Documentation <linux-doc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Linux Outreachy
 <outreachy@lists.linux.dev>, Thorsten Leemhuis <linux@leemhuis.info>,
 Lukas Bulwahn <lukas.bulwahn@gmail.com>, Akira Yokosawa
 <akiyks@gmail.com>, Alison Schofield <alison.schofield@intel.com>,
 Kloudifold <cloudifold.3125@gmail.com>, Sudip Mukherjee
 <sudipm.mukherjee@gmail.com>
Subject: Re: [PATCH] Documentation: submitting-patches: Disqualify style
 fixes from Fixes: tag
In-Reply-To: <20230316145503.GN860405@mit.edu>
References: <20230316082034.14191-1-bagasdotme@gmail.com>
 <fe15da9c-d03f-ccc3-ea6a-2b6401496aad@linaro.org>
 <ZBLSrXrxrV4dRjak@kroah.com> <20230316145503.GN860405@mit.edu>
Date: Thu, 16 Mar 2023 09:01:41 -0600
Message-ID: <87zg8cn3je.fsf@meer.lwn.net>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain

"Theodore Ts'o" <tytso@mit.edu> writes:

> On Thu, Mar 16, 2023 at 09:26:21AM +0100, Greg KH wrote:
>> > Coding style is not a bug, but that's obvious.
>> 
>> I agree, let's not make this file even longer than it is if at all
>> possible.
>>
>
> I've actually been wondering if there is some way to split the file
> since it's quite large already.  It's been unclear to me whether that
> would make it easier or harder to find stuff though.  :-/

I made a pass over it a few years ago and managed to shorten it a fair
amount, but it clearly still needs attention.  This is one of our most
important and heavily referenced documents, and it would be nice if
newcomers didn't feel like they were being asked to read a version of
War and Peace written by Kafka before they can contribute.

I'll try to find time to think about this some.

jon
