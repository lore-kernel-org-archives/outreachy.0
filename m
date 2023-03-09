Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B294063C2
	for <outreachy@lists.linux.dev>; Thu,  9 Mar 2023 10:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=ubJ0lQj9ZLryu343Z5fXX+Pm/tjAgMFNvhkkaRbsCU4=;
  b=KG2DFxLXTdjmOycaZHtEmdW5coI5NGkD4Ap/FVxbTS0oZ5GuQHJkkJHH
   SL1CJzoK8qWHEH9LUlvpBxqfTL4a0y2nnOcOeVdwyuxj7aWZISXqdu8Jf
   HRHP0UKTN6FUqvhByf0PSlSCCnoRqeHMn3HwoRdnLHqRihcRocTp7iQWG
   Y=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="5.98,246,1673910000"; 
   d="scan'208";a="49670187"
Received: from dt-lawall.paris.inria.fr ([128.93.67.65])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Mar 2023 11:33:51 +0100
Date: Thu, 9 Mar 2023 11:33:51 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
To: Sumitra Sharma <sumitraartsy@gmail.com>
cc: outreachy@lists.linux.dev
Subject: Re: Help to setup enviornment
In-Reply-To: <20230309102755.GA6572@ubuntu>
Message-ID: <7e7150d4-e2ac-2253-868-15628889432@inria.fr>
References: <20230309102755.GA6572@ubuntu>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 9 Mar 2023, Sumitra Sharma wrote:

> Hi Julia
>
> Upgrading the VM RAM from 4 to 6 worked. Thank you for the help.

Sumitra,

Your email setup generates very strange reply to lines, eg:

Reply-To: dd924cf4-ddd6-45aa-292d-5762b769ca22@inria.fr

julia
