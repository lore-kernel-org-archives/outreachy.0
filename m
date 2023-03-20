Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB4B01383
	for <outreachy@lists.linux.dev>; Mon, 20 Mar 2023 09:04:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=V9ooVE9C894/4D8bLqe/RtIGkSEAho3LzcBq7gumAlQ=;
  b=ZCnYXVBZ/NL1PAd6a13+IFhX44XkJhSbKh9yTSlJfSdZ0+hG3ezWWLEU
   VIlKg001zGm9XOo5vZlSg2VjfL4lNEgkLZWOmpt8J3xN67aSenm0yakPu
   k1NZU5J9cZ9p9szsj+5W7ClbrjdBiwe41SP9dy6rrQk9KFI7vvgoIFfQP
   0=;
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="5.98,274,1673910000"; 
   d="scan'208";a="98017911"
Received: from dt-lawall.paris.inria.fr ([128.93.67.65])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Mar 2023 10:04:43 +0100
Date: Mon, 20 Mar 2023 10:04:43 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
To: Bagas Sanjaya <bagasdotme@gmail.com>
cc: Sumitra Sharma <sumitraartsy@gmail.com>, outreachy@lists.linux.dev
Subject: Re: Unable to find module location
In-Reply-To: <a81b11ef-f77a-6c26-09bd-63214a1df5b7@gmail.com>
Message-ID: <fb2f6a38-da6-b797-d91-9ccc10558111@inria.fr>
References: <64997a6c-24f1-d551-1b87-735a699e4a8e@gmail.com> <20230318124937.GA39892@sumitra.com> <21c2da25-22cb-cbe7-153e-067377de4723@gmail.com> <20230318175746.GB49651@sumitra.com> <ee140dee-6db9-6d7e-0b84-b69f3c36cc13@gmail.com> <20230319083256.GB50179@sumitra.com>
 <alpine.DEB.2.22.394.2303190938080.2867@hadrien> <alpine.DEB.2.22.394.2303190956120.2867@hadrien> <20230319121026.GA53959@sumitra.com> <alpine.DEB.2.22.394.2303191336090.2867@hadrien> <20230320084630.GB126429@sumitra.com>
 <a81b11ef-f77a-6c26-09bd-63214a1df5b7@gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 20 Mar 2023, Bagas Sanjaya wrote:

> On 3/20/23 15:46, Sumitra Sharma wrote:
> > Hi julia,
> >
> > This did worked.
> >
> > But the main issue of creating NVEC_PAZ00 a module using make menuconfig still persist.
> >
>
> Oh dear, you don't know how to use menuconfig...
>
> When you execute `make menuconfig`, you'll be presented with menu when
> you can choose what config you want to enable. To find the desired config
> (NVEC_PAZ00 in this case), press `/` and type in the config name. If
> found, you will see menu location for config symbols that match. Then
> follow the shown path.

Actually, this isn't the issue.  You have to have the ARCH=arm as well.
Otherwise, / provides instructions, but there is no way to follow them.

julia

>
> Thanks.
>
> --
> An old man doll... just what I always wanted! - Clara
>
>
