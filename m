Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B2874C97
	for <outreachy@lists.linux.dev>; Sun, 12 Mar 2023 16:16:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=MuXXxuV7/4LKJSBb0BKYizPNVlyU5Bo+0JtycXk73vM=;
  b=NJDbef7roG7J5gNVYwbKixlb9YIsh3w05zcxy/bOxfVNdjnA2Dy9lyo4
   Qo1XEgZVyl/CB15vfoiAeRWFcpzVPPcQQh8YhvY0B85CkXQJJ5eK6aNot
   q4N9P23EoaWlxlCpzIetnLT5/Q5h6/SgSp4RpokWvVN3gNHdZAA2TcpHE
   8=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="5.98,254,1673910000"; 
   d="scan'208";a="49931504"
Received: from 231.85.89.92.rev.sfr.net (HELO hadrien) ([92.89.85.231])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Mar 2023 17:16:00 +0100
Date: Sun, 12 Mar 2023 17:15:59 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Khadija Kamran <kamrankhadijadj@gmail.com>
cc: Sumitra Sharma <sumitraartsy@gmail.com>, outreachy@lists.linux.dev
Subject: Re: [PATCH] Staging: qlge: Fix indentation in conditional
 statement
In-Reply-To: <ZA32KCmxGEM8jVwl@khadija-virtual-machine>
Message-ID: <alpine.DEB.2.22.394.2303121714530.2865@hadrien>
References: <20230312122928.GL14247@ubuntu> <alpine.DEB.2.22.394.2303121412090.2865@hadrien> <20230312152701.GA28100@ubuntu> <alpine.DEB.2.22.394.2303121631170.2865@hadrien> <ZA32KCmxGEM8jVwl@khadija-virtual-machine>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 12 Mar 2023, Khadija Kamran wrote:

> On Sun, Mar 12, 2023 at 04:31:48PM +0100, Julia Lawall wrote:
> > OK.  Was the information in the outrechy tutorial sufficient?  If not, it
> > could be good to extend it.
> >
> > julia
> >
>
> Hey Julia!
>
> I thought I should reply here too. I hope that is not a problem.
>
> I had a hard time configuring mutt, from the information in the
> outreachy tutorial. I could send my patches but I had no idea how to
> respond to mails from INBOX and how to send inline replies.

OK, now Sumitra can help you :)

julia


>
> Regards,
> Khadija
>
>
