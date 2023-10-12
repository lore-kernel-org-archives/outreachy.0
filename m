Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 017CC6116
	for <outreachy@lists.linux.dev>; Thu, 12 Oct 2023 04:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="GXvapSsk"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=HI1C+Nbr6Hj1EN46eSo1otxiWiXilFBE5PKc4xgy8aE=;
  b=GXvapSskYBclwzlM1X3dD3NNJa0eYOxPwyG3nnulPgRrHsh1m29db87x
   egntPozw/1/moiKXx/ymX+Ge9uPY+KLQXWxvKmiS/XuMX43WjhD5WRAb+
   ymtXfJUZ4TQtOZLVe2aCUCWCqdn3BT4e1bhdy5D1NZ3Y3FTHVXc2fIT+j
   Q=;
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.03,217,1694728800"; 
   d="scan'208";a="130772717"
Received: from 231.85.89.92.rev.sfr.net (HELO hadrien) ([92.89.85.231])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Oct 2023 06:34:16 +0200
Date: Thu, 12 Oct 2023 06:34:15 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Soumya Negi <soumya.negi97@gmail.com>
cc: outreachy@lists.linux.dev
Subject: Re: [Outreachy Applicant] Introduction and a quick question
In-Reply-To: <20231012024411.GC16374@Negi>
Message-ID: <alpine.DEB.2.22.394.2310120633190.3080@hadrien>
References: <20231012024411.GC16374@Negi>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 11 Oct 2023, Soumya Negi wrote:

> Hello!
>
> My name is Soumya. I'm one of the applicants to Outreachy's December 2023
> round. Very excited to get working with everyone here:)
>
> For our final application, can we include old patches as well? Or are we to
> record only recent ones?

You need to contribute patches in this round.  You can mention previous
patches in your application, but indicate that they are from a previous
round.

julia


>
> Looking forward to contributing,
> Soumya Negi
>
>
>
