Received: from msg-2.mailo.com (msg-2.mailo.com [213.182.54.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02E56291F
	for <outreachy@lists.linux.dev>; Fri, 21 Oct 2022 15:32:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailo.com; s=mailo;
	t=1666366325; bh=XCl17Hd+6RV2l4NFpK4xcqXvgeOkRagpZvwLdDikZYc=;
	h=X-EA-Auth:Date:From:To:Subject:Message-ID:MIME-Version:
	 Content-Type;
	b=Pkm81lWdIEXskMGYP4s+1dp34+NSFsOTdLuT0YmY++u/Gg35dFtZ/XMEeJZmtaa6X
	 bYyV5LfWA5mYwI0qBdb4pTnSCMb/ReiGsprjmizgHQI9O2Doq1omCW/f7yRn2ONi9u
	 d4WYovKikdto7FWnRzLE3zT5jR8zP075uvsmts2U=
Received: by b-3.in.mailobj.net [192.168.90.13] with ESMTP
	via [213.182.55.206]
	Fri, 21 Oct 2022 17:32:05 +0200 (CEST)
X-EA-Auth: AXT9UeosMZEvIf7AHflhQZoj52m1Wl+MzQE8pwnpFXwP62QqfVqzRHgg94DJylsG8NKvaPCNsab2H0giu6QMSmIKGHzCujFs
Date: Fri, 21 Oct 2022 21:02:01 +0530
From: Deepak R Varma <drv@mailo.com>
To: outreachy@lists.linux.dev
Subject: query on need for the function
Message-ID: <Y1K7cei/TW0xkLCd@debian-BULLSEYE-live-builder-AMD64>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello,
I was looking at removal of commented code when I came across this function
ieee80211_tkip_null from the
drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c file. I do not think
the function is doing anything useful as it (simply returns back to the caller).
I would like t confirm that I am understanding it right or if there is more to
it that what I could analyze.

I tried posting this question on the IRC channel, but I am unsure if my messages
are even hitting the IRC server.

What is the best way to clarify my query? Can I get a feedback from the mentors
or Should I consult the mentors or simply send the patch with the function
being removed?

Thank you,
./drv


