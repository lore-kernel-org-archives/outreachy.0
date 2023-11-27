Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DE753033D
	for <outreachy@lists.linux.dev>; Mon, 27 Nov 2023 13:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="LcaHi/lx"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2A11CC433CA;
	Mon, 27 Nov 2023 13:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1701093273;
	bh=i2QwajOfLLkRsf4eKc/nXld43PDMTLxczZMFNpC2hU8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LcaHi/lxbE0deddjNuWtgxuSvvM4gX3QR4gK22i9q/oGKJ6uUFtHNxRa4pW4WhhSK
	 pSE+p5Sei9ayQlMNujGuCcJ7HE8chHf4qOqlUUnfwib+UY5jkn0Aj/25eTnWDzUVLh
	 uN6F4hQKdFgBkIp5os/AMcTWN8yjP5KmrfiT348c=
Date: Mon, 27 Nov 2023 13:44:47 +0000
From: Greg KH <gregkh@linuxfoundation.org>
To: Dorine Tipo <dorine.a.tipo@gmail.com>
Cc: outreachy@lists.linux.dev
Subject: Re: [PATCH] Subject: staging: fix alignment in function call
Message-ID: <2023112735-paparazzi-dweller-7f72@gregkh>
References: <20231029230612.15852-1-dorine.a.tipo@gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231029230612.15852-1-dorine.a.tipo@gmail.com>

On Sun, Oct 29, 2023 at 11:06:12PM +0000, Dorine Tipo wrote:
> - Fix alignment in the tty_alloc_driver function call
> 
> The alignment in the code did not match the open parenthesis. This
> commit corrects the alignment to match the open parenthesis for better
> code readability.
> 
> Signed-off-by: Dorine Tipo <dorine.a.tipo@gmail.com>
> ---
>  drivers/staging/gdm724x/gdm_tty.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

This was missed as it never was sent to the public mailing list :(
