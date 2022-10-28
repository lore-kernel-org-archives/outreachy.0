Received: from msg-1.mailo.com (msg-1.mailo.com [213.182.54.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 491B52563
	for <outreachy@lists.linux.dev>; Fri, 28 Oct 2022 13:57:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailo.com; s=mailo;
	t=1666965435; bh=WaTRHwDOeR55ZwWxLzRq1y7uNjpTfFLP4hgqFxeUOxk=;
	h=X-EA-Auth:Date:From:To:Subject:Message-ID:MIME-Version:
	 Content-Type;
	b=Jc2OhNB5bXby5NReOH4eMOhg+uSyBlGm8U/bKyC8sMKSLUYPTwuZ1T+3sEkHsRPez
	 EEyfqJM96VxKOt3n04BS8YQYFDervML6rABuYeVAgP1tL0/MyUkxi4kbW6boC9QFqq
	 WyCtCy24uxEa9JZtZlUFFX9izJf39xDmVCR/5g1g=
Received: by b-1.in.mailobj.net [192.168.90.11] with ESMTP
	via [213.182.55.206]
	Fri, 28 Oct 2022 15:57:15 +0200 (CEST)
X-EA-Auth: EOIr27N1FA0+4pufngwcK1QOIEnbq1KqkmXawliE2YTuRE+gD9hsGgCVaa/6mc8d+3QCwtVvOQ2CUI85cu9CFudm41avDhhR
Date: Fri, 28 Oct 2022 19:27:12 +0530
From: Deepak R Varma <drv@mailo.com>
To: outreachy@lists.linux.dev
Subject: understanding metavariable
Message-ID: <Y1vfuDzb3yu2CkzN@ubunlion>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello,
I am seeing a few warnings reported by coccicheck where it is suggested to use a
metavariable. See this example warning:

warning: line 223: should nonseekable_open be a metavariable?

I tried to understand about metavariable and how to address this coccicheck
warning, but did not fully conclude on my next steps.

Could you provide some details on this concept of metavariables please?


