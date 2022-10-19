Received: from msg-2.mailo.com (msg-2.mailo.com [213.182.54.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D6BC2F22
	for <outreachy@lists.linux.dev>; Wed, 19 Oct 2022 12:40:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailo.com; s=mailo;
	t=1666183228; bh=PMVeShtbJqZcL2dTYpyLgrkKGiiq7ikW2Aem4+mpPyI=;
	h=X-EA-Auth:Date:From:To:Subject:Message-ID:MIME-Version:
	 Content-Type;
	b=mag8dTkJbmuoYf5Pkj97Rmz1FMcwxBTY9bLKAFNTO7L7DkRWUUoBV0hzKx3ZA1oNT
	 jbSl1OoH0jpJg3Jpb9mYq3hVTlfnUFBKM+TdHP3peHSpyf6ztib9PJR7gfXJ75uwqu
	 gVy2H2QImw9DMM+RThZ7pzkc4L3r4YyRL+I/MU7o=
Received: by b-1.in.mailobj.net [192.168.90.11] with ESMTP
	via [213.182.55.206]
	Wed, 19 Oct 2022 14:40:28 +0200 (CEST)
X-EA-Auth: EAm8TvSWHhyI1ZP8iszE4rLYmQVuoZU6XqlN243AVikSL5UdGJ2GUaLsQSMQWlgIOtTxf38T5Mz1yKbD7LCRWv2SsH3J8TX9
Date: Wed, 19 Oct 2022 18:09:09 +0530
From: Deepak R Varma <drv@mailo.com>
To: outreachy@lists.linux.dev
Subject: first patch acceptance confirmation
Message-ID: <Y0/v7elLBLCfLmV8@debian-BULLSEYE-live-builder-AMD64>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello,
What will confirm that a patch was accepted and can be recorded as a
contribution in the Outreachy website? Is an "Ack'ed-by" response good enough?

Thank you,
./drv



