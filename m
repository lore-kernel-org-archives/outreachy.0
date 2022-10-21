Received: from msg-2.mailo.com (msg-2.mailo.com [213.182.54.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4B883208
	for <outreachy@lists.linux.dev>; Fri, 21 Oct 2022 15:33:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailo.com; s=mailo;
	t=1666366434; bh=f6BLChMTiub5Vz6/1fMZIBBJE3b4TfeoC5X7o1/QZJw=;
	h=X-EA-Auth:Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:In-Reply-To;
	b=KqyKKWkPTplX22KKdL6o/9N1rjY0t1bfEET4+Gdwr7hFcVtN0sNwlfGPRFO0bqXxv
	 KNOo+xVDOxwA1/+lcIi1o3wgELg1raLsVElUjEF0r/ljiyAqtUh1BIvKFvYpWIEQFT
	 orX2iCPBa/1vhEukPPRp3Od/67Qz+9Le9/ya3WnI=
Received: by b-1.in.mailobj.net [192.168.90.11] with ESMTP
	via [213.182.55.206]
	Fri, 21 Oct 2022 17:33:54 +0200 (CEST)
X-EA-Auth: dafmEOtDpAQhXK35Kl7nhWVeCc4zB7CccI1H8Sgrajj+WUWBm3n4Wv18Z/0VwdVMFbmMe6C97rItt3MSI5U+UwRL3DqzHN2X
Date: Fri, 21 Oct 2022 21:03:51 +0530
From: Deepak R Varma <drv@mailo.com>
To: outreachy@lists.linux.dev
Subject: Re: query on need for the function
Message-ID: <Y1K736xC2IhEF8PK@debian-BULLSEYE-live-builder-AMD64>
References: <Y1K7cei/TW0xkLCd@debian-BULLSEYE-live-builder-AMD64>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y1K7cei/TW0xkLCd@debian-BULLSEYE-live-builder-AMD64>

On Fri, Oct 21, 2022 at 09:02:01PM +0530, Deepak R Varma wrote:
> Hello,
> I was looking at removal of commented code when I came across this function
> ieee80211_tkip_null from the
> drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c file. I do not think
> the function is doing anything useful as it (simply returns back to the caller).
> I would like t confirm that I am understanding it right or if there is more to
> it that what I could analyze.
>
> I tried posting this question on the IRC channel, but I am unsure if my messages
> are even hitting the IRC server.
>
> What is the best way to clarify my query? Can I get a feedback from the mentors
> or Should I consult the mentors or simply send the patch with the function

s/mentors/maintainers

> being removed?
>
> Thank you,
> ./drv
>
>
>


