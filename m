Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DBDE18DB0A
	for <outreachy@lists.linux.dev>; Wed, 19 Mar 2025 08:11:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.134.164.83
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742371911; cv=none; b=PciwnvlhoXHQLvqWvx1JEeSu5YTf3bDNZmsWoWKnY8wdmTgIPeO9XMTYgw0lxb79Khs2AVnUf44PjiVN6ArlqAwOHKix4bH6N5fsKl7SgfZcWKapsPwbBYb+aqLVXLz2O8lA84dt2o94sVMVCSoo4/BJR69Wr5tpr5sAXbppwtw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742371911; c=relaxed/simple;
	bh=GCTJjOKV+rZbmEtcVmMS+zHA5rN8Xjrx7XSnuN5ohrg=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type; b=XfQV5v3yiDFnNKXY0JFDmq8Ks41ncYMshEkL7A0rG22x4m3Gzy8aMrGmBgSTnxjm1gXT6vF0Rs2yRNXCz7c5kb8npzrc8bCDxiilf9mATq4IDO4tqQ1cA48IcCxsa1JZuJuB+ncztX3cpsoUIbfwbw8YsKvB/6X7JGsO1lIRjNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr; spf=pass smtp.mailfrom=inria.fr; dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b=chgBzP8O; arc=none smtp.client-ip=192.134.164.83
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="chgBzP8O"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=ZBoO0ijGCPYT+rqXj1PZCMTgMQiqJkCYf2H2Xt84eNg=;
  b=chgBzP8OV85mdx+eNo/35CyqhDrzWMk+SDZ0Nxdsltp6taQ73KK2gCQu
   86bXIcMjFq5kMj5SSSU3t/A78rl2Kgp94XZSf5F2/FFLahiFbNrLV9xGx
   ZZ3i2nh6ISd0kWyzj7Im54/PGHKJ9ZCjwpQaoDZx4EfdN0Bzn3N7H/XXa
   s=;
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.14,259,1736809200"; 
   d="scan'208";a="213625903"
Received: from pd9ef1166.dip0.t-ipconnect.de (HELO hadrien) ([217.239.17.102])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Mar 2025 09:11:44 +0100
Date: Wed, 19 Mar 2025 09:11:40 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
To: erick karanja <karanja99erick@gmail.com>
cc: outreachy@lists.linux.dev
Subject: Re: outreachy 2025 introduction
In-Reply-To: <CAK=KnqS9617NnkUkmuQeVBu50dQVApL081-f0b1MSMMt9QgF=A@mail.gmail.com>
Message-ID: <41f82b19-0af-1b7b-79c7-64988e987219@inria.fr>
References: <CAK=KnqS9617NnkUkmuQeVBu50dQVApL081-f0b1MSMMt9QgF=A@mail.gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 19 Mar 2025, erick karanja wrote:

> Hello community, my name is Erick Karanja.I am currently applying for
> outreachy internship and I would love to contribute to the linux
> kernel.Thank you.

Welcome!  Please see the Linux kernel outreachy tutorial:
https://kernelnewbies.org/Outreachyfirstpatch

julia
