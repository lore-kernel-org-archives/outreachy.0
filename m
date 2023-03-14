Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91A6023A0
	for <outreachy@lists.linux.dev>; Tue, 14 Mar 2023 06:13:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=yGpgB3RNW0vIW1lv/tq6uS3PalT7+cU5oDEj9WuTPUg=;
  b=B0Tq+cyoYFavshYFIqUTP2D/N+ssAAKLctcqYWsWtoiLKdmXIcrUYZcf
   ha7lnM7OEIugHgqyvczikMpDWvwlYi0LUscT84omMfhMMOW0Ltzw8cLzH
   ZHhdqx/JQFNKPQGUp33YlhNFf/paP0cKPNNyZdrRhumj3rU6x/DbxY2we
   s=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="5.98,259,1673910000"; 
   d="scan'208";a="50084589"
Received: from 231.85.89.92.rev.sfr.net (HELO hadrien) ([92.89.85.231])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Mar 2023 07:13:34 +0100
Date: Tue, 14 Mar 2023 07:13:32 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Kloudifold <cloudifold.3125@gmail.com>
cc: alison.schofield@intel.com, outreachy@lists.linux.dev
Subject: Re: Help in patch message
In-Reply-To: <ZA/Tql5l6dfNaMZ7@CloudiRingWorld>
Message-ID: <alpine.DEB.2.22.394.2303140711370.2705@hadrien>
References: <ZA/Tql5l6dfNaMZ7@CloudiRingWorld>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

> Recently, I submitted a patch that has been rejected, and I am not
> sure whether to go ahead and fix it or create a new one.
> I would greatly appreciate your guidance on how to proceed

Please include relevant context in your message.  If a patch has been
rejected, eg someone says "This change is not a good idea for reason XYZ",
then you should move on to something else.  If you have gotten some
feedback on a patch, you should follow the feedback, and try to improve
the patch.

julia
