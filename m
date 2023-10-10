Received: from mailo.com (msg-4.mailo.com [213.182.54.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A862A55
	for <outreachy@lists.linux.dev>; Tue, 10 Oct 2023 06:21:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=mailo.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mailo.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mailo.com header.i=@mailo.com header.b="KZ/5PW0y"
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailo.com; s=mailo;
	t=1696918838; bh=0j+DU5qzOOvHOCZrKvauXE1+amJVHwSzfl3ojruTNIs=;
	h=X-EA-Auth:Date:From:To:Cc:Subject:Message-ID:References:
	 MIME-Version:Content-Type:In-Reply-To;
	b=KZ/5PW0yKiZ/4DqPiLl4pHZkoZWyVE51+NFvJ1+BK1K+lBfU23VuZWcBDyMJAF2dS
	 1xymI43rcW7yqr97Av920UlOPtE/UfXkt9Pt6ycMAvETwv0tK8DrEgIqBuSBPJ10rf
	 sNMK73Z/xVz7yv/VVhOFSEnQDmNrpQwdOcUi60K0=
Received: by b221-5.in.mailobj.net [192.168.90.25] with ESMTP
	via ip-20.mailobj.net [213.182.54.20]
	Tue, 10 Oct 2023 08:20:38 +0200 (CEST)
X-EA-Auth: yFnVMRwa1VLjRUSYp5keIqO1bYfrblzKLuewS8dlOFYGqTfT4mn0qECeBkbr5wiwPqCFANwzdGknnCRJp7jkc0ad2ZA0V0n0
Date: Tue, 10 Oct 2023 11:50:32 +0530
From: Deepak R Varma <drv@mailo.com>
To: 20231008212812.tw674m2hbhpyhi5v@zenone.zhora.eu
Cc: andi.shyti@kernel.org, andi.shyti@intel.com, outreachy@lists.linux.dev,
	Julia.Lawall@inria.fr
Subject: Re: [Outreachy Applicant] NEEDS SOME CLARIFICATIONS
Message-ID: <ZSTtMFxdpYzwMFVJ@runicha.com>
References: <ZSTRETv7sO+1A6/G@gilbert-PC>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZSTRETv7sO+1A6/G@gilbert-PC>

On Tue, Oct 10, 2023 at 05:20:33AM +0100, Gilbert Adikankwu wrote:
> Hello Andi and Julia,
>
> Thank you so much for your responses.
>
> I need some help with moving forward in the tutorial.
>
> I am at the "Make a driver change" step of the first patch tutorial. The tutorial made the look like finding the _main.c file of the driver and locating its probe function was quite easy.
>
> I ran lsmod as instructed and picked e1000e. I used git grep e1000e -- '*Makefile' to search for its subdirectory in the kernel tree. This is where it got tricky for me, I thought I would find a .c file like e1000e.c or e1000e_main.c as was shown in the VM example(I'm using native Linux) but I can see in the subdirectory are .o files that I can't modify. And I don't what to do or how to find the probe function I'm supposed to modify
>

Hello,
Are you saying you do not have any .c files under the
drivers/net/ethernet/intel/e1000e/ directory?

On my machine, I see the following on trying to locate the probe function of
this driver:

	drv@runicha:~/git/kernels/linux-next$ grep 'probe(' drivers/net/ethernet/intel/e1000e/*.c
	drivers/net/ethernet/intel/e1000e/netdev.c:static int e1000_probe(struct pci_dev *pdev, const struct pci_device_id *ent)

Can you check if you see something similar?

Thanks,
Deepak.

> I tried the above process for a couple more names in the list returned by lsmod and it is the same issue.
>
> Please advise
>
> Thanks
> Gilbert
>
>


