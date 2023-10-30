Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD7B7641
	for <outreachy@lists.linux.dev>; Mon, 30 Oct 2023 06:12:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="A+0eFwIF"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A887CC433C7;
	Mon, 30 Oct 2023 06:12:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1698646347;
	bh=Ug4po5vZ/T1QNjvM/VPywGQ9DmNudUFaQ7OPg9ieUAA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=A+0eFwIFv11wAubi2tHAy0EtaIUUU2lsk4bkTUH4kToJLOBDNji188qxpW2X8s6Cy
	 M+fDOpScaHJjcshDuMdAMoe3wCNggck1TUxTGkmK/GC5R59ehc1/5vNEqA6w6M28C4
	 ZvelFGyHWKSqQx9Vcma/lNP+GfwglCVxwsKjbCAU=
Date: Mon, 30 Oct 2023 07:12:24 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Dorine Tipo <dorine.a.tipo@gmail.com>
Cc: outreachy@lists.linux.dev
Subject: Re: [PATCH] Fix line Length
Message-ID: <2023103027-deceiving-dutiful-c2e3@gregkh>
References: <20231029135104.5136-1-dorine.a.tipo@gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231029135104.5136-1-dorine.a.tipo@gmail.com>

On Sun, Oct 29, 2023 at 01:51:04PM +0000, Dorine Tipo wrote:
> 
> Fix the line lengths of lines 8 and 49
> 
> Signed-off-by: Dorine Tipo <dorine.a.tipo@gmail.com>
> ---
>  drivers/gpu/drm/ci/igt_runner.sh | 6 ++++--

outreachy submissions should not be for files like this, please read the
application instructions again.  All of your changes are not following
the requirements and as such, I have deleted them all from my review
queue, sorry.

greg k-h
