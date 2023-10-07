Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19748E553
	for <outreachy@lists.linux.dev>; Sat,  7 Oct 2023 08:12:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="PEf9Uv3s"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=sv4N9/A2v5BoC1dlQPHWZ3uhn/PDhELlfBrjyhLZO0w=;
  b=PEf9Uv3spNQ/bJDPKMCTCu/mqjWgi9OWXDMNLca+qG9b05RFPzPXFL/4
   RJlH8DjHomBhDHiGcyRxv/fi5S2y2ExBYfZx5wzfvn6NR1Op6klXwk+bd
   QmaKOshC7zEr6KPgz5dozAELJyLzIPS01yUbP7pzSe4xT2fQ4J5EysFBu
   A=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.03,205,1694728800"; 
   d="scan'208";a="68033622"
Received: from 231.85.89.92.rev.sfr.net (HELO hadrien) ([92.89.85.231])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Oct 2023 10:12:02 +0200
Date: Sat, 7 Oct 2023 10:12:00 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: K <maduechesik@gmail.com>
cc: outreachy@lists.linux.dev
Subject: Re: [Outreachy Applicant] Help needed
In-Reply-To: <CAAFs_TEEPRjMGovLtqPVteSAiWtS0bMqo_ekHEajtNU05448bg@mail.gmail.com>
Message-ID: <alpine.DEB.2.22.394.2310071010050.3101@hadrien>
References: <CAAFs_TEEPRjMGovLtqPVteSAiWtS0bMqo_ekHEajtNU05448bg@mail.gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 7 Oct 2023, K wrote:

> Hello, Kenechukwu! Thank you all for your efforts. Please, I have been
> having this issue since yesterday. Anytime i logout of my Vmware,
> every file I got from my git clone staging folder disappears when I
> log back into Ubuntu on my Vmware. Yesterday I was already building
> before I logged out and now I am back to square 1. Please, I need help
> urgently.

I'm sorry, but I don't use Linux in VMs.  Maybe someone else can help you.

Maybe there is a way to make the disk of your machine visible from within
your VM?

I don't know what you mean by logout.  If you shutdown the VM, and the
file system is in memory, then it is normal that everything disappears.

julia
