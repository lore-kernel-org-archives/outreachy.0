Received: from msg-1.mailo.com (msg-1.mailo.com [213.182.54.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2EA16110
	for <outreachy@lists.linux.dev>; Thu, 20 Oct 2022 22:59:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailo.com; s=mailo;
	t=1666306770; bh=Wmigwc1ri+sW3BQCERUEDtXhxYeymLxSWkId/AB+BNc=;
	h=X-EA-Auth:Date:From:To:Subject:Message-ID:MIME-Version:
	 Content-Type;
	b=USpQvyz/W1hxb1hkhN+KI9adKNgA7VppMJANtpU8TMDcuaPOd7nm3QR5yycDUfVT/
	 tglLNoQFPKhCJ0YFbGV2ebET7BAesgK/dVl+dsOxHtRIf+1udljXDUdE/LU312MbAP
	 22XcUtD/6Nl1Veo17EMew8WPptYuCmlye27CDWVI=
Received: by b-1.in.mailobj.net [192.168.90.11] with ESMTP
	via [213.182.55.206]
	Fri, 21 Oct 2022 00:59:29 +0200 (CEST)
X-EA-Auth: 7iuGxgEAQ2TgCfjoxEdjMZp/UZLcPSPDyXaVw7q9RX2ylx0YIxlKxEQVzfn60iyuvD2DDjs7IexFd5EyJB+jWb5SHWWlykbt
Date: Fri, 21 Oct 2022 04:29:27 +0530
From: Deepak R Varma <drv@mailo.com>
To: outreachy@lists.linux.dev
Subject: cleaning commented code
Message-ID: <Y1HSz9q7kQGmiWxF@debian-BULLSEYE-live-builder-AMD64>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello,
Is there any guideline on cleaning commented code, specifically printk debug
messages that appears to be added for basis program flow tracing. If yes, will
this be treated as a clean up contribution?

e.g.

./wlan-ng/p80211netdev.c:884:                   /* printk("assocreq"); */
./wlan-ng/p80211netdev.c:888:                   /* printk("assocresp"); */
./wlan-ng/p80211netdev.c:892:                   /* printk("reassocreq"); */
./wlan-ng/p80211netdev.c:896:                   /* printk("reassocresp"); */
./wlan-ng/p80211netdev.c:900:                   /* printk("probereq"); */
./wlan-ng/p80211netdev.c:904:                   /* printk("proberesp"); */

Thank you,
./drv


