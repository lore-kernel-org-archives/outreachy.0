Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A8681F959
	for <outreachy@lists.linux.dev>; Fri,  6 Oct 2023 13:48:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="izkElsen"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0EB9CC433C7;
	Fri,  6 Oct 2023 13:48:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696600111;
	bh=YYwFKM2KvndQJ5NadTJI0169xLcJ9c7dgwHJRdjsRok=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=izkElsen4Gue0dXwAfbELGqr2lr1dejxZ3cAyYPaeq87NeOKqFdzZ0T+hmHWxDQ41
	 1gD00Hlsfh1QG1kFYMUqJyJ3MPvAMwduesFRxEsIT8oNcMkvmVXGKarJV5nqmOKk4K
	 sp5njVxolTxHQVIkQFRln1tVyIUbtBlGht/mvGa3blfRiVtVVrmR2yn93P3uuVpXk1
	 QYbRATZmVDc5LJv6jSrFrZ8rKgZjXHu+SxJ+AfgB2j5PeFwndWMP8Cj5TIEOgazsKd
	 TpktXtUehSAI1XAlRw1DgWEqf3TC1IiSn//cYLkR9Wv8sJThM1tFsNUtfjSoIbaaGu
	 nhTW1lNygp4yA==
Date: Fri, 6 Oct 2023 15:48:27 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: NAKITYO JOANITA <nakityojoanita51@gmail.com>
Cc: outreachy@lists.linux.dev
Subject: Re: Seeking assistance with the linux kernel installation
Message-ID: <20231006134827.4cywz2noo34d64c6@zenone.zhora.eu>
References: <CAOJCLCs2Qc1-rRttkGUTKJNQaUfoN9hA8H_5dnYJckkteRzMQg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAOJCLCs2Qc1-rRttkGUTKJNQaUfoN9hA8H_5dnYJckkteRzMQg@mail.gmail.com>

Hi,

On Fri, Oct 06, 2023 at 04:32:44PM +0300, NAKITYO JOANITA wrote:
> Hello,
> I hope you are doing well, I'm currently following the steps outlined
> in the article for setup directions, I have completed the first steps
> up to the 'installing the kernel' section.
> However when i run the provided command, i get an error of

I guess the command you are trying to run is

	sudo make modules_install install

right?

>   SYMLINK /lib/modules/6.6.0-rc1+/build
> make[3]: *** No rule to make target 'modules.order', needed by
> '/lib/modules/6.6.0-rc1+/modules.order'.  Stop.
> make[2]: *** [Makefile:1821: modules_install] Error 2
> make[1]: *** [/home/anita/git/kernels/staging/Makefile:359:
> __build_one_by_one] Error 2
> make: *** [Makefile:234: __sub-make] Error 2

I believe you failed the previous steps so that not all the
compiled files are in place.

Please, try to compile again and look out for errors.

Andi
