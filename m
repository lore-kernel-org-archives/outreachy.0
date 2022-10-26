Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26410EDF
	for <outreachy@lists.linux.dev>; Wed, 26 Oct 2022 06:09:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:subject:message-id:mime-version;
  bh=C5cF6wbCDhXp3j3cBIxGASpzlbGz1E0wNc+HEW0eCXY=;
  b=KyphW5qBhoHlbvwx4FvILOSney7s4uvBjF5rwfLFjv1XKHApxu52U841
   0SG1bkD1Vi5wf72mPDTfJNJl/mjt2E4oKLJTjmVDuTbRfLLd6N0kXAeJR
   O3mmakLGardRRILOtQhjVFv6SJEZmUzIy6UG3ehd+gWZRJj2xhuRIwDJD
   c=;
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="5.95,213,1661810400"; 
   d="scan'208";a="71561521"
Received: from 51.123.68.85.rev.sfr.net (HELO hadrien) ([85.68.123.51])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Oct 2022 08:09:51 +0200
Date: Wed, 26 Oct 2022 08:09:51 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: outreachy@lists.linux.dev
Subject: coccinelle compilation issue
Message-ID: <alpine.DEB.2.22.394.2210260808100.3523@hadrien>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

If you are not able to compile the code from github, you can install opam
(the OCaml package manager) and then get Coccinelle from there.

Information about installing opam is available here:

https://opam.ocaml.org/doc/Install.html

Once you have done that, I guess you can run

opam install coccinelle

julia
