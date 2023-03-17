Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E02727F1
	for <outreachy@lists.linux.dev>; Fri, 17 Mar 2023 07:41:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=GxCAudddnASCQT7PVAenv/niQ5lUNdinc2+P//GAjw8=;
  b=US/sor7fBUVjIiTDB7JgpPbZ1sSztWmuU4ZQ543sCJN8kpsxkfkg32y1
   XSX8AR3W1PEZAew96g59qAw2iP5cMJ2TuetxHD67b8IsC9t9z7CutwIEs
   aERNPzSYZVMfTcs0syNG8F30W7q1lND7+HQKjyCh31Mzb8W7GvF+GMSvx
   c=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="5.98,268,1673910000"; 
   d="scan'208";a="50453641"
Received: from dt-lawall.paris.inria.fr ([128.93.67.65])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Mar 2023 08:41:34 +0100
Date: Fri, 17 Mar 2023 08:41:33 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
To: Mark Heim <questioneight@gmail.com>
cc: outreachy@lists.linux.dev
Subject: Re: a bit more trouble
In-Reply-To: <CALfc2niC57eNmN5CMtOmwUmS-nW2jsK2uD_tD3eYZ=A359CK4w@mail.gmail.com>
Message-ID: <13bd5efb-7c28-6cd7-6e5f-7a7c71a317e3@inria.fr>
References: <20230317042159.GA423927@pikachu-Z97-D3H> <alpine.DEB.2.22.394.2303170656220.3105@hadrien> <20230317070102.GA433311@pikachu-Z97-D3H> <CALfc2niC57eNmN5CMtOmwUmS-nW2jsK2uD_tD3eYZ=A359CK4w@mail.gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

> I will take another look. Are you referring to these links:
>
> https://kernelnewbies.org/OutreachyfirstpatchSetup
> https://kernelnewbies.org/Outreachyfirstpatch

I was referring this one specifically.  If you have access to a printer,
print it out, go to some peaceful place and read the whole thing.  The
Linux kernel has many particularities, due eg to history, the large size,
the widespread set of developers, and anything you do based on your
intuition, you will do wrong.

julia
