Received: from msg-4.mailo.com (msg-4.mailo.com [213.182.54.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AD587B
	for <outreachy@lists.linux.dev>; Thu, 13 Oct 2022 09:21:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailo.com; s=mailo;
	t=1665652905; bh=AJnXB4EE9Sg2MggLZFRIxSXd5YpGgN1sn6fF2xvlpHA=;
	h=X-EA-Auth:Date:From:To:Subject:Message-ID:MIME-Version:
	 Content-Type;
	b=b6FvHMm+pz0VX/rSXXoifHFZ9DaSgiv78bcoOWfBKwq2vBUlT3uISB3WHL8LoUlG7
	 bwke8IsGgVXiASgrmbiwdkQXjvhKy8qs/lRn+egiWBXB2L5pO3ksL0P8a6g+CHbD9n
	 TMqRb0/2MkAhkT6xNqUz0/gLIhTq8zclbJlP19w0=
Received: by b-6.in.mailobj.net [192.168.90.16] with ESMTP
	via [213.182.55.206]
	Thu, 13 Oct 2022 11:21:45 +0200 (CEST)
X-EA-Auth: 5DNiMrCF/+uhzkC68iWLHQ1mgpw9m2rwY6leK9SO7pgVU5Y/TRVg3ChVFtO+6l0MbQuxM9G29iidTuiRUeOZ6uAhZKtAbkQA
Date: Thu, 13 Oct 2022 14:51:42 +0530
From: Deepak R Varma <drv@mailo.com>
To: outreachy@lists.linux.dev
Subject: question: locate kernel img
Message-ID: <Y0fYprY+eMS2kGzE@lion>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello,
In the first patch steps, there is a instruction to confirm following files are
built post module install step.
	1. Kernel: vmlinuz-YourKernelName
	2. Initramfs: Initramfs-YourKernelName.img
	3. System Map: System.map-YourKernelName
	4. System Map kernel symlink

Questions:
1. Are these to be looked into the kernel source tree or /boot or another
location?
2. I did not find Initramfs-... but it built initrd.img... under the /boot
directory. I assume it is the same thing. Is my understanding correct?
3. There is a System.map under /boot for the newly built kernel. However, there
is no symlink associated with it. Am I looking into the right location?

Thank you.
./drv


