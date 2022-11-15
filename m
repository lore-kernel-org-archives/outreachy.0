Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86A36AD47
	for <outreachy@lists.linux.dev>; Tue, 15 Nov 2022 14:01:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=VoDAUh+WlO5PFR7i+kzWZcdKnjNc3+EhgETNHs0Bb8Q=;
  b=SjXIu7jmuCVxhR1gqamexZybZRPiuafc8ThUB2od2VHY+d1fRQ81HyF2
   UsUncasPh8xwBdvimiYYyIoMlkzYnZnOfaPoyfFzHXPZvKnc0PqaU0J60
   XKBisihoHPmHpD5NERu/MEWq8+WqK3ZmWa2Ch6epIoVRV91zIcupAKn/a
   s=;
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="5.96,166,1665439200"; 
   d="scan'208";a="78302593"
Received: from unknown (HELO hadrien) ([203.116.172.26])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Nov 2022 14:59:50 +0100
Date: Tue, 15 Nov 2022 21:59:47 +0800 (+08)
From: Julia Lawall <julia.lawall@inria.fr>
To: jovial umwari <umwarijovial@gmail.com>
cc: Alison Schofield <alison.schofield@intel.com>, 
    Outreachy Linux <outreachy@lists.linux.dev>, 
    kumarpraveen@linux.microsoft.com, Saurabh Sengar <saurabh.truth@gmail.com>
Subject: Re: Help
In-Reply-To: <CAMk1CBNq41M0Kq_LMZ2o2ixCnWofHknKsUaoHUwriGV5oesbSQ@mail.gmail.com>
Message-ID: <908f246-8ab1-c5e3-cd47-1eebcdcdc150@inria.fr>
References: <CAMk1CBNq41M0Kq_LMZ2o2ixCnWofHknKsUaoHUwriGV5oesbSQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 15 Nov 2022, jovial umwari wrote:

> Greetings to everyone
> Hope you are doing well
> i  am Umwari jovial  an outreach applicant
> in these past days i faced  a challenge  when i was configuring the kernel
> i went ahead and changed the kernel version in .config  then i had to
> do make j4(i have 4 cores) and all was well but when i restarted the
> computer  i was not able to access my normal  operating system and i
> had to use  the recovery mode to access it  up to now  i am not able
> Note: i am using Ubuntu ,
> Running  Linux natively on my own machine.
> other setups are working well
>
> Seeking for help on to resolve the issue any advice or help i will appreciate

Hello,

There is not really enough information for me to understand the problem.
But I have noticed that sometimes there is an error or more probably a
warning in the kernel compilation process, and then it will not reboot.
Perhaps that is your problem.

julia
