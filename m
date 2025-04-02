Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D12A1B7F4
	for <outreachy@lists.linux.dev>; Wed,  2 Apr 2025 07:38:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.134.164.83
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743579538; cv=none; b=FCM6V9hx0nXsi4XfWdNhkdCcTiqJnSgjGwLhWGG62l0Z12JLjLi49aJyccFvydQ8kAQC0uSxdr6UZxY7OnrqR015eLVW+Up0TUGz/kFSc6fHz2/wJqoiDdSGhWF8OP0XswP44sjJyPv56DdrK37h0nsoSnPlCTOuzbH11BL3qx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743579538; c=relaxed/simple;
	bh=cvLBiMzFE74sDP287rNh8BzuUr7Pi0LlfuRQbzswDJs=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type; b=qYt9zHwRxax2K3N3Ohip2UZyhqFFZjGJXa71dOlEvDDiQMHmHU+DXH7oGMEasGAgXirblpj4svixkgMqOLmAjR8+iL6tmas6W8qEt4qifQG2GsxMpN9J8OInq7AHD+GRjHz8dBXvK+J8IzzFi3uLVEN7JGNGH4ezSqaWZBl2kiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr; spf=pass smtp.mailfrom=inria.fr; dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b=cbSKfq1x; arc=none smtp.client-ip=192.134.164.83
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="cbSKfq1x"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=fgYu6rYIzGN80j8Kvb9TVOHAocSWp7qrKIBs2AbSxkA=;
  b=cbSKfq1xjgTPLJxZmoEu7RbJlxFJTTnH6AmJw0OO5qGNlFOzZhjSF2a2
   SBPnjC2FvzFSpEGMqYzYX9ia4q86K5Eo6MXQOQE5LMtXzc/vDA4eFh32E
   gmtoQNl2Ma+PtAf2KeP/WB26GCEvCpp9umN+vhEq+Yu4tiMnhwBIFXZ2t
   E=;
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.14,295,1736809200"; 
   d="scan'208";a="215927135"
Received: from a81-173-67-6.dsl.pocosnet.nl (HELO hadrien) ([81.173.67.6])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Apr 2025 09:38:53 +0200
Date: Wed, 2 Apr 2025 09:38:52 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
To: Erick Karanja <karanja99erick@gmail.com>
cc: outreachy@lists.linux.dev
Subject: Re: patches
In-Reply-To: <7d2e32b800eb14343084b06ed93a2e5070426011.camel@gmail.com>
Message-ID: <4692c01c-5478-1ad4-a698-2ab56fbce064@inria.fr>
References: <cd684867-6bd3-f7ef-9672-6513e0efa336@inria.fr> <7d2e32b800eb14343084b06ed93a2e5070426011.camel@gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-403175492-1743579533=:3162"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-403175492-1743579533=:3162
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Wed, 2 Apr 2025, Erick Karanja wrote:

> On Wed, 2025-04-02 at 08:43 +0200, Julia Lawall wrote:
> > Hello,
> >
> > Please send more patches.  Greg has been busy with a conference in
> > the
> > past few days, so it's not necessary to wait for feedback. 
> > Generally, I
> > will send some feedback if there is a concern or suggestion for
> > further
> > work.
> >
> > If you have sent some patches already with no issues, try running
> > Coccinelle and sending some patches according to the suggestions.  It
> > is
> > not necessary to send such patches at a large scale.  Working on one
> > file
> > at a time is fine.
> >
> > julia
> >
> Hello, Thank you for the update I run one of the scripts you sent
> earlier and found that the suggested changes were on a struct defined
> in a header library. I would love to check further that truly this are
> boolean definitions but I can't access the header file. How do I go
> about this. Thank you.

What is the file you are concerned about?  The Linux kernel is entirely
self contains, so you should be able to find all relevant header files.
Perhaps a path is indicated in the Makefile.  So you may have to use find
. -name file.h to find the file.

julia
--8323329-403175492-1743579533=:3162--
