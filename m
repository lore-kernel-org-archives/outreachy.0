Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69A6877F11
	for <outreachy@lists.linux.dev>; Tue, 12 Mar 2024 09:01:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710234083; cv=none; b=U+3kKVE3kuaj77OsqvJQlk5pyS87poRvFN7oJc+btprccVDAQSAUJRVPh9tklsoV/T/W4KQWyRSKnF3xyAKw2LN/BiH2rwLKGT+a+HsLPde68WCr4MvamThUAmdnUw9Ki4oezj2WVddSWbATpil9VZludUGq9kcDposTmRqc3ZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710234083; c=relaxed/simple;
	bh=8y2DQPNhzOaxdj9KvjXtszQ/bn5b2LagZPzqGN36x4M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fFJ9L7xCnBEhJbCX1Y7D2JeupvvrpkseLJTIi+ame8drYGh0+n2BYflKWXDXpi6lQPjbZ8Ss3RdoIWfPiArpLvFeSWjG70AuJ4cHLuZPYOU94gAjLvguiTv2UnYghqsCW0rxIIWI29kbGrxom6SMmqCPn4V4yayq8JT5+dIo39Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=x7O9aFIk; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="x7O9aFIk"
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-a36126ee41eso696678266b.2
        for <outreachy@lists.linux.dev>; Tue, 12 Mar 2024 02:01:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710234080; x=1710838880; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=JP3cfM7mrXURBm82U67JdNSwwTeGi+Ghi4y8x6qCXGo=;
        b=x7O9aFIkXi4gn+ti0ZUtSj5ryKYAM8/JyzLmTCtF2bcqO7PZuFoQ3Tg6/fqNaSuH7b
         UarLfI6yueKqq7/+kzrO8bArgL0JktcxmGjl7UwFefzmFOA6YUqUv1rf5oTwKNDSsiLm
         UUo23mkRC3KizhPhiOADSK6IGjren5yeIHjePU67n624ZyjEoR2NWiWUflywm8LcWxc4
         Ou4MOp6OLZv5if9NgrCgjXkLQBdfQ5OAaqxNQsZmx9LxdcsTwpzmOh92JvD78l8JZFxq
         NdT4Zqd4nd+6MMjFGAWG6VfwQHNAYVPfC8DCI5E3ihygeupKNQV/lKfX4Ox70Yq/FMc3
         ExDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710234080; x=1710838880;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JP3cfM7mrXURBm82U67JdNSwwTeGi+Ghi4y8x6qCXGo=;
        b=TjQfcmJNwioplZH236kJMYolwWOo60rVTtMuGMj8Aa16O30JmcAf/5j8IcCcaHI+vx
         k6mn9xaVjIanCP43o7E4QcQyQA+X/EzLj5DvN3NIE5acKzrmYW7MXEQBHVYyfLF86XuT
         xz1YsBIEbcXLfm+amSkNKHqTbctMN2VORadFXrAxCWrwNbRBU4Go77Fm2wjOqDyCsjx6
         fQIAquVv3wQYKxjLzA2LTw2X9vMN2ZxbMKHBLrBVE1bt+DSZZ4JJgVnRc+tKOoMwG5nu
         whPt8sXNCkjek/q07zsoIOQr61hKD1oQ36YIFd3XQMYIID5+p1NMNlvKl1HC+7W2e+uV
         KUOA==
X-Forwarded-Encrypted: i=1; AJvYcCXukuu/r6d5ujCFjtNW5zYW8qmrbzL92zkkBvOpeEpIjfzS6NnzwWwFSGq+zegLTE7vP2bpXj/Xjd//5JcsWtcPoZtUXDDymZOX
X-Gm-Message-State: AOJu0YwneGaeUoA5a6FUkPoaNQVISvDF0sPAhQTyE/nenju18veTFh67
	0U7wN9L4/sYZzOXOGA1XGNgsOg+0O5/Is7ZJzz55BMc9D+2NEkLHI7e3zMh3F54=
X-Google-Smtp-Source: AGHT+IHwZrGE81YKbF2wM23szbAhUXytldSEaYxhYVB3Q19LP8guhW/J6+kuxH/HMd/98tZmJuGXbw==
X-Received: by 2002:a17:907:c001:b0:a46:20c6:b595 with SMTP id ss1-20020a170907c00100b00a4620c6b595mr4009913ejc.5.1710234079560;
        Tue, 12 Mar 2024 02:01:19 -0700 (PDT)
Received: from localhost ([102.222.70.76])
        by smtp.gmail.com with ESMTPSA id qa10-20020a170907868a00b00a43815bf5edsm3643280ejc.133.2024.03.12.02.01.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Mar 2024 02:01:19 -0700 (PDT)
Date: Tue, 12 Mar 2024 12:01:14 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Alison Schofield <alison.schofield@intel.com>
Cc: "Felix N. Kimbu" <felixkimbu1@gmail.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy@lists.linux.dev
Subject: Re: [PATCH] staging: p80211conv: Rename local foo to decrypt_check
Message-ID: <0ae5c6f0-dfb3-4c98-9798-8379f6206256@moroto.mountain>
References: <Ze9Ie67PCSvBU+og@MOLeToid>
 <Ze+JxSpqc/eHfCKn@aschofie-mobl2>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Ze+JxSpqc/eHfCKn@aschofie-mobl2>

On Mon, Mar 11, 2024 at 03:46:29PM -0700, Alison Schofield wrote:
> On Mon, Mar 11, 2024 at 07:07:55PM +0100, Felix N. Kimbu wrote:
> > This change renames the local variable foo to decrypt_check in functions
> > skb_ether_to_p80211(...) and skb_p80211_to_ether(...), giving intuitive
> > meaning to the identifier.
> 
> 'rc' is typically used for cases like this. If the name of the function
> being called is reasonably intuitive, then 'rc' suffices for the return
> value.
> 
> > 
> > It also indents the parameters to match the the opening parentheses.
> 
> 'Also' signals that this patch is trying to do more than one thing.
> One type of 'thing' per patch please.
> 

The name change did force a re-indent.  The v2 re-indent was wrong too
though.

regards,
dan carpenter

