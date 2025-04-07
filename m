Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF523219306
	for <outreachy@lists.linux.dev>; Mon,  7 Apr 2025 12:32:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.134.164.83
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744029131; cv=none; b=fF9HKjlAqe5/vlHDoZff7bZg7WYNXuf5UZp6s/LWGGI8CNaMMT20GkWcwDJNf8J27FXrPOhUonNJWQ80llVxYemFAEUVq3g9jYsgI1kdTbKFJ/DnmARgb4JgvgqLj1+ZnrfaWaLJNBlbv4fP8RHfzUUJGXKE1YgkAWLgSez7FV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744029131; c=relaxed/simple;
	bh=aSsEItFaQml3n1R4v0nnLaWlYqgFVH88aVqrO1puvGM=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type; b=EAQInxRduzGu3KYLa/WKWRgQFT0oFmzUW4UTeBez5Ddn0IdN1gL5iHgSb6p6L4xNLWV0RLfxBrLKMkeEmyoaF3UNOqsQ5p7eKGiMZk7xIBluxa57gbwCopr1ziOH4mhUB5dxG2Zu4hhnuwes7lUymyxdh2ASYvABAcKFP5WxPA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr; spf=pass smtp.mailfrom=inria.fr; dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b=TKSy4SdZ; arc=none smtp.client-ip=192.134.164.83
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="TKSy4SdZ"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=oia6Cxa9twVXUXiHnwzEhOaYEVghIpKqg6odN4ruy5Y=;
  b=TKSy4SdZZIH8FW71pvKfbc/pB6sJJPnhue54n3313a5/tNXQixjpZ1YL
   hBaPdD5jWqYL33XgsHJhex1uGKBSHP6UFfhajrumZGm5xUUSeJBIFispK
   sBC8dQyiFHXFCcqCK3XdM/NJ9ztb0k8Lh2Mvel46qRWaJBzoT+lMimv6t
   o=;
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.15,194,1739833200"; 
   d="scan'208";a="216693171"
Received: from unknown (HELO hadrien) ([4.26.64.170])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Apr 2025 14:32:05 +0200
Date: Mon, 7 Apr 2025 08:32:03 -0400 (EDT)
From: Julia Lawall <julia.lawall@inria.fr>
To: Erick Karanja <karanja99erick@gmail.com>
cc: outreachy@lists.linux.dev, Julia Lawall <Julia.Lawall@inria.fr>, 
    Dan Carpenter <dan.carpenter@linaro.org>
Subject: Re: Local-variable initialization semantic patch update
In-Reply-To: <844b0916a2198527090255a2b065bffda9084188.camel@gmail.com>
Message-ID: <9f6a8d2a-5829-3adb-3324-8eeeafb61038@inria.fr>
References: <844b0916a2198527090255a2b065bffda9084188.camel@gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 7 Apr 2025, Erick Karanja wrote:

> The original semantic patch had deficiencies in handling
> local variable initialization, especially with function calls in
> declarations.
> This reduced readability, obscured side effects and made debugging
> harder.

It is best to inline the semantic patches in the email, so that people can
easily read and comment on it.

Also, please try to be more direct in your comments.  "had deficiencies"
is not informative.  What was the problem?  What have you done about it?
The log message should be a guide to help the person receiving the new
code to know what to look for and to find out what is going on.

julia

>
> Suggested-by: Greg KH <gregkh@linuxfoundation.org>
> Suggested-by: Julia Lawall <Julia.Lawall@inria.fr>
> Suggested-by: Dan Carpenter <dan.carpenter@linaro.org>
>
>
