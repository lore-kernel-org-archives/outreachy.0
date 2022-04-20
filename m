Received: from ms.lwn.net (ms.lwn.net [45.79.88.28])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89D437A
	for <outreachy@lists.linux.dev>; Wed, 20 Apr 2022 21:34:31 +0000 (UTC)
Received: from localhost (mdns.lwn.net [45.79.72.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ms.lwn.net (Postfix) with ESMTPSA id DCB90536;
	Wed, 20 Apr 2022 21:34:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 ms.lwn.net DCB90536
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lwn.net; s=20201203;
	t=1650490470; bh=6T0lvX8RNX9xGYkNbu6K5mxfaWl3HxhoGMIgYH6RZgk=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=EQpMNXKGIxm38WSQDxnU2OdP/4CzkhHcofv0U0qShswpXUT1Hkk9mmRTNoIfYP7YN
	 yd7D6NQU2ueg5+AjSzzYWO0YAs3ortCaoNy048kqLPG+qR7KUWMRE7oBBldiOwEbHG
	 6QPzRlP8bjEAPdGBzvP1d3cj3IgVmxiEezT/GofTarisxddOGNc0uTyrGkE7eyAKaV
	 xZdO6L0SfWQkgv4rla7xsCk0Wk7jLC/vbX/wzTw/C9+PKc4Fhyc3USGVAHFRu4lKBM
	 SExjDE70Y7pDHa8oXj/tn1s94SQxyY0T1GS0gdbWrDPOSxwbWn6VnWCvtY832M07Lw
	 UgolFy9dY8XQg==
From: Jonathan Corbet <corbet@lwn.net>
To: Bruno Moreira-Guedes <codeagain@codeagain.dev>
Cc: linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 outreachy@lists.linux.dev, Bruno's Patch Watchbox
 <patch-reply@codeagain.dev>
Subject: Re: [PATCH v2 0/2] Docs: Update information at changes.rst
In-Reply-To: <20220420172731.ru7kfrdkmprybtu7@AN5Bruno>
References: <cover.1650376049.git.codeagain@codeagain.dev>
 <8735i83xo1.fsf@meer.lwn.net> <20220420172731.ru7kfrdkmprybtu7@AN5Bruno>
Date: Wed, 20 Apr 2022 15:34:26 -0600
Message-ID: <878rrz30d9.fsf@meer.lwn.net>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain

Bruno Moreira-Guedes <codeagain@codeagain.dev> writes:

> On Wed, Apr 20, 2022 at 03:35:10AM -0600, Jonathan Corbet wrote:
>> Bruno Moreira-Guedes <codeagain@codeagain.dev> writes:
>> >
>> > The PATCH 1/2 fixes the missing cpio requirement, while PATCH 2/2 fixes
>> > the kernel version reference.
>> >
>> > Signed-off-by: Bruno Moreira-Guedes <codeagain@codeagain.dev>
>> 
>> Patches applied, thanks.
> Thanks, Jon! I have also been thinking whether this filename
> ('changes.rst') is a good description of the file contents. Do you think
> renaming it to something like 'requirements.rst' and updating its
> references would be a good patch?

It's best not to rename things unnecessarily, especially relatively
well-known files that a lot of people expect to find in a specific
place.  We've done a lot of renaming over the last few years, but this
is one I might let slide for now.

Thanks,

jon
