Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D194A10EC
	for <outreachy@lists.linux.dev>; Sun, 19 Mar 2023 08:40:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=zZNBUmdD1WiYde2HjelDCHYePRw+B+NWi8UDJ9If01Y=;
  b=QtRLSLxKCU7idrN4+KTcPEO/JS896Yuje6F3EsRUrEQiGfMCkrnpD4pD
   Oahhhf3rIc47qt0QqaIFCaVxv2WddF9Q0gRHffr+xBPTJyZNqUbsrYcTz
   zIXSNP5RDOV8u9R8a31bqZLcam868eq00D7lDPDY2Eq7MgP8ak4SEmBkE
   o=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="5.98,273,1673910000"; 
   d="scan'208";a="50598135"
Received: from 231.85.89.92.rev.sfr.net (HELO hadrien) ([92.89.85.231])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Mar 2023 09:40:09 +0100
Date: Sun, 19 Mar 2023 09:40:08 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Sumitra Sharma <sumitraartsy@gmail.com>
cc: Bagas Sanjaya <bagasdotme@gmail.com>, outreachy@lists.linux.dev
Subject: Re: Unable to find module location
In-Reply-To: <20230319083256.GB50179@sumitra.com>
Message-ID: <alpine.DEB.2.22.394.2303190938080.2867@hadrien>
References: <20230318084048.GC4434@sumitra.com> <ZBWA3rb9nVP8ho05@debian.me> <20230318121508.GA37278@sumitra.com> <64997a6c-24f1-d551-1b87-735a699e4a8e@gmail.com> <20230318124937.GA39892@sumitra.com> <21c2da25-22cb-cbe7-153e-067377de4723@gmail.com>
 <20230318175746.GB49651@sumitra.com> <ee140dee-6db9-6d7e-0b84-b69f3c36cc13@gmail.com> <20230319083256.GB50179@sumitra.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 19 Mar 2023, Sumitra Sharma wrote:

> On Sun, Mar 19, 2023 at 09:08:01AM +0700, Bagas Sanjaya wrote:
> > On 3/19/23 00:57, Sumitra Sharma wrote:
> > > Cleaning the build worked for me. Thanks.
> > > What do you mean by enabling the NVEC_PAZ00?
> > >
> >
> > I mean you should set the config as Y or M (if permitted).
> >
>
> Hi I am still not able to locate the driver when I am running the
> command 'make menuconfig'. Hence not able to configure it as 'M'.

Just to check for the obvious, you did try typing / and then NVEC_PAZ00?

julia

>
>
> Regards,
>
> Sumitra
> > --
> > An old man doll... just what I always wanted! - Clara
> >
>
>
