Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0302A1FB8
	for <outreachy@lists.linux.dev>; Tue, 21 Mar 2023 06:47:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=ijY5JR++hfQkinmD8vFPMnOB34Bb08O0s0fFYOu8TXg=;
  b=Z9UMSLrfGBLyk2Lrp1NvJSQyL7pWLiiGfmMVVFLEC84n/42vEePvBuGp
   ZTKXS3m7g7J9BOGpmmC0IqtZOqFntPs4vRlYwZ5r/0JZIEPWtmxPRRirg
   rrRIKihYUxg4fU7/V6nqlR+8CyI6Xz6MDK8qAuOAAV7PmFeH9NiTQg9/I
   0=;
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="5.98,278,1673910000"; 
   d="scan'208";a="98200335"
Received: from 231.85.89.92.rev.sfr.net (HELO hadrien) ([92.89.85.231])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Mar 2023 07:47:30 +0100
Date: Tue, 21 Mar 2023 07:47:29 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Ira Weiny <ira.weiny@intel.com>
cc: outreachy@lists.linux.dev
Subject: Re: Code cleanups are not always simple.
In-Reply-To: <6418f59a8b3c1_2c274e2942e@iweiny-mobl.notmuch>
Message-ID: <alpine.DEB.2.22.394.2303210744321.2866@hadrien>
References: <6418f59a8b3c1_2c274e2942e@iweiny-mobl.notmuch>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

> Most importantly, don't be afraid to take your time when submitting patches.

Thanks Ira.

But don't be afraid to mess up either :)  We're here to help correct
mistakes and help you (and everyone else) learn. There are a lot of little
details, and it is hard to think of everything in advance.  This point of
the application period is that thinking of all of these issues become
second nature, so that you can interact with the community during your
project in a productive way.

julia
