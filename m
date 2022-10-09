Received: from msg-2.mailo.com (msg-2.mailo.com [213.182.54.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B21E71876
	for <outreachy@lists.linux.dev>; Sun,  9 Oct 2022 17:51:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailo.com; s=mailo;
	t=1665337893; bh=kzXTZ2ck6xTYOnKTQNDLb5bGJugzyfyDM03Tee8jQ8M=;
	h=X-EA-Auth:Date:From:To:Subject:Message-ID:MIME-Version:
	 Content-Type;
	b=HM42Clf7VBh7Pg5Dj2PRNt9kH0HMT+OMfbMQSakPAF8Hh/xiujy8PR92fnrJDNTY7
	 0DvVZ4bqMH0w3RvmnmsYChh4ngyWIIdtQTPwNa+xyxb+F32ZXVQ67PzcoWmUK0j/RT
	 tBSJt3ArrfCFFGXiMhiLeYuIF63Urb8cpyJkwmZo=
Received: by b-6.in.mailobj.net [192.168.90.16] with ESMTP
	via [213.182.55.206]
	Sun,  9 Oct 2022 19:51:32 +0200 (CEST)
X-EA-Auth: YDR8sHZ+3/CQVUotYua2C3kkz+rIknJzpdM8JcBoxAI0bonv5uvLmWUD/1dCiUIVEZd5nItc7SKz6Hx0/+b7Oxh9lu7pkW/3
Date: Sun, 9 Oct 2022 23:21:25 +0530
From: Deepak R Varma <drv@mailo.com>
To: outreachy@lists.linux.dev
Subject: trouble booting into staging kernel
Message-ID: <Y0MKHfWsqsh4S9ld@lion>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello,
I am natively running 5.15.0-48-generic on my HP Laptop with Secure boot on. I
tried to follow the Kernel First patch tutorial steps and managed to build
Kernel release 6.0.0rc4. There were issues during the module building associated
with the certificates / signing of the modules. I got those supressed by
emptying the following two config parameters as copied over from the native
config file:

CONFIG_SYSTEM_TRUSTED_KEYS="debian/canonical-certs.pem"
CONFIG_SYSTEM_REVOCATION_KEYS="debian/canonical-revoked-certs.pem"

set to new value

CONFIG_SYSTEM_TRUSTED_KEYS=""
CONFIG_SYSTEM_REVOCATION_KEYS=""

The build was successful, however, I am unable to boot into my new kernel and
have received following errors:

error: bad shim signature
Loading initial ramdisk
error: you need to load the kernel first

I tried to seek from net, but did not find any workable resolution. Can you
please suggested how can I correct this error or if I missed any steps?

Thank you,
Deepak.




