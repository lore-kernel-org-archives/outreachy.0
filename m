Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0087C8BE1
	for <outreachy@lists.linux.dev>; Tue, 21 Mar 2023 09:55:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=TLkPoEW3xbL/AvfHyfQMFwLNXlunH/Yalpug/Q4is8c=;
  b=TBnk1jDoYc/2U9X2FNzUPh4uDN6fpYgvZXpECm3HZjfZdWoeG+SA/kRg
   zFEA04tXCeaomMhqfc8WViAMlllNjaPOKZwLbqmHYvKf79mVl5487O/1I
   Y2nOsiwmq4elzZT1m+w+j+jFTMuckc1tdWIMEvyqIJhV3qb6s6R2wiIM3
   g=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="5.98,278,1673910000"; 
   d="scan'208";a="50784837"
Received: from dt-lawall.paris.inria.fr ([128.93.67.65])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Mar 2023 10:55:24 +0100
Date: Tue, 21 Mar 2023 10:55:23 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
To: Bagas Sanjaya <bagasdotme@gmail.com>
cc: Deepak R Varma <drv@mailo.com>, Kloudifold <cloudifold.3125@gmail.com>, 
    outreachy@lists.linux.dev, teddy.wang@siliconmotion.com, 
    sudipm.mukherjee@gmail.com, gregkh@linuxfoundation.org, 
    alison.schofield@intel.com, linuxstaging@lists.linux.dev, 
    linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4] staging: sm750: Rename sm750_hw_cursor_* functions
 to snake_case
In-Reply-To: <ZBlnrWywCfDftf0+@debian.me>
Message-ID: <5fcfed41-6cef-405b-775-66a5cbfbd15@inria.fr>
References: <ZBfpbgvYguJnzIOx@CloudiRingWorld> <ZBiEnFxlHb/OES0B@ubun2204.myguest.virtualbox.org> <ZBlnrWywCfDftf0+@debian.me>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 21 Mar 2023, Bagas Sanjaya wrote:

> On Mon, Mar 20, 2023 at 09:36:52PM +0530, Deepak R Varma wrote:
> > Hello,
> > Looks like you missed some maintainer list recipients in your to/cc of this
> > patch. How are you extracting the maintainer list?
>
> The easiest way to copy the list is by passing `--norolestats
> --separator , ` to get_maintainer.pl.

There should be a suggested command line in th tutorial.

julia

>
> --
> An old man doll... just what I always wanted! - Clara
>
