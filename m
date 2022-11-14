Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69A591C13
	for <outreachy@lists.linux.dev>; Mon, 14 Nov 2022 07:22:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5F14AC433C1;
	Mon, 14 Nov 2022 07:22:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1668410550;
	bh=NeqDvH3Klq275YJgMK0Ecnzy+OAriRkVuZNg+bohCts=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OZlB0EBcxxnARfKR5McfkhArDm5fYwUoWqIlNmAJp4sN+hbI3BA7L5Nzm0i1+5A+s
	 YJ1Ul1ZWsfGIz4SEfaDUJr0zWm2KGp3A40PURwocb6req60Z3sbl6Al60Tme27ifv5
	 5+7CUPw9/h8K7EpAp3nvMJZ+yd/fnOWS0fLRntcM=
Date: Mon, 14 Nov 2022 08:22:26 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Hunter Chasens <hunter.chasens18@ncf.edu>
Cc: outreachy@lists.linux.dev, johan@kernel.org, elder@kernel.org,
	hvaibhav.linux@gmail.com, vireshk@kernel.org,
	pure.logic@nexus-software.ie
Subject: Re: [PATCH v3 2/2] Staging: greybus: Removes redundant 'int'
Message-ID: <Y3HssqWzfXqPdNk3@kroah.com>
References: <cover.1668395762.git.hunter.chasens18@ncf.edu>
 <ba94cc91fd452319a198e55884a1e4a18518bb75.1668395762.git.hunter.chasens18@ncf.edu>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ba94cc91fd452319a198e55884a1e4a18518bb75.1668395762.git.hunter.chasens18@ncf.edu>

On Sun, Nov 13, 2022 at 10:26:46PM -0500, Hunter Chasens wrote:
> Removes redundant 'int' from phrase `unsigned long long int`.

Why is it redundant?  This says what you did, but not _WHY_ you are
doing it.

Also you forgot to cc: the proper public mailing lists that
scripts/get_maintainer.pl will ask you to cc:  Without that, I can not
take your patches no matter how good they are.

thanks,

greg k-h
