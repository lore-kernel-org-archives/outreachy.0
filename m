Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0216C211C
	for <outreachy@lists.linux.dev>; Sun, 29 Oct 2023 12:22:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="ZfVzUrlo"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:subject:message-id:mime-version;
  bh=MVfqsMmR7AOUYNfiHDacFOb/UPKgY4jOqYwMXWXrE0A=;
  b=ZfVzUrloork5VmpDRFYBnPqNyVxHdsXFp+wki0NxNUk7vDSSH+ySOhKG
   J5NdF+U/55lgGeZ7xnrkF41rjdG4eXt7HKDrtEHEchr8w7vJe5w7oYkv5
   e9/K6II0MnqKbJiJo5fzkoRgvJrX4Rolz70xG13eT5AW2GFTF5dmJlWzc
   A=;
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.03,261,1694728800"; 
   d="scan'208";a="133749958"
Received: from 231.85.89.92.rev.sfr.net (HELO hadrien) ([92.89.85.231])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Oct 2023 13:22:45 +0100
Date: Sun, 29 Oct 2023 13:22:45 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: outreachy@lists.linux.dev
Subject: [outreachy] more about applications
Message-ID: <alpine.DEB.2.22.394.2310291318181.3136@hadrien>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

I think it was not made clear anywhere, but a contribution is a patch that
has been accepted into the Linux kernel.  So that it is obvious that this
is the case, you can best include links to your patches in Greg's tree,
not links to lore where you submitted the patch.

To get a link to Greg's tree, you can go to the following URL:

https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git/tree/?h=staging-testing

In the upper right hand corner, there is a pull down menu that says log
message and a button that says Search.  Change log message to author and
type your name in the box.  Then you will get a link to each of your
patches.

If you don't see this message in time to update your application, we will
look up the information for you.

thanks,
julia
