Received: from mailo.com (msg-4.mailo.com [213.182.54.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A689F2584
	for <outreachy@lists.linux.dev>; Sun,  8 Oct 2023 21:31:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=mailo.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mailo.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mailo.com header.i=@mailo.com header.b="IgN/MrWB"
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailo.com; s=mailo;
	t=1696800702; bh=zH1OcgYAlgfztt3f3Zxrn/n0J4HYsMacrDd8gNyThG0=;
	h=X-EA-Auth:Date:From:To:Cc:Subject:Message-ID:References:
	 MIME-Version:Content-Type:In-Reply-To;
	b=IgN/MrWBrrseOalyJAJ792+197i5fpJYx8Vqpx/ODZouyeKNp1dgWhr/HsKnNSgoE
	 j8EAyVRhaRDVZgFJpoDT1xtDY/PhJQsWkCYLKEDUneEr49kKnRxlpHryyDdYlHOPKI
	 6e6G6NUe81M2BmYe1EuoT8E905eb4zjFyqmQTnTA=
Received: by b221-6.in.mailobj.net [192.168.90.26] with ESMTP
	via ip-20.mailobj.net [213.182.54.20]
	Sun,  8 Oct 2023 23:31:42 +0200 (CEST)
X-EA-Auth: Vc7OzjLejB0PDy9/0PI+UF/+InriGHg64W1juMLMyQy2iURzZBLl4qNsA46Y19uZMA/9f5+SclnvBQ0Grjib50oPdKNk5e+8
Date: Mon, 9 Oct 2023 03:01:39 +0530
From: Deepak R Varma <drv@mailo.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: NAKITYO JOANITA <nakityojoanita51@gmail.com>, outreachy@lists.linux.dev
Subject: Re: Assistance Needed: Error sending message, child exited 70
 (Internal error.).
Message-ID: <ZSMfu/rf3zKmsdKl@runicha.com>
References: <alpine.DEB.2.22.394.2310081349520.3223@hadrien>
 <CAOJCLCswxE=xNorJ3XROW1DRLBGRNyF=YY0BoOdW=9pdj2U6wA@mail.gmail.com>
 <alpine.DEB.2.22.394.2310081411300.3223@hadrien>
 <CAOJCLCsxH8jFPW9+o01hWJmNwPVTKMMdn0aB3R3-r-rySmpCtQ@mail.gmail.com>
 <alpine.DEB.2.22.394.2310081423550.3223@hadrien>
 <CAOJCLCsBxra_E30bb5kzSdSotJfaj546LJ_r1qLW-RXpOhjLhw@mail.gmail.com>
 <alpine.DEB.2.22.394.2310081454060.3223@hadrien>
 <CAOJCLCv39n+W4VPwXTwqsKPo6XmaQ9XcCDVqLb4j3=t-cCQjEQ@mail.gmail.com>
 <ZSL3Jm9LfQwt6O7M@runicha.com>
 <alpine.DEB.2.22.394.2310082046560.3223@hadrien>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.22.394.2310082046560.3223@hadrien>

On Sun, Oct 08, 2023 at 08:47:09PM +0200, Julia Lawall wrote:
>
>
> > If you are using GPG, the configuration may need to be corrected. Check if this
> > thread helps: https://stackoverflow.com/questions/49332245/cant-reply-to-email-via-mutt-with-gnupg-asks-for-keyid
>
> How does one not use GPG?

I do not have any GPG configuration, keyrings for my setup, but I have been able
to work without any issues. I am not sure if mutt internally manages that for
me, but I did not do anything exclusively.
Please enlighten me if I am missing a point.

>
> julia
>
>


