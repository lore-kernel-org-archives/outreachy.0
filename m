Received: from msg-4.mailo.com (msg-4.mailo.com [213.182.54.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A3688462
	for <outreachy@lists.linux.dev>; Wed,  8 Mar 2023 18:22:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailo.com; s=mailo;
	t=1678299767; bh=4yH1zqUeTddrgSo09jQ/GYyCa1KQQdBwN9sUSPJM23I=;
	h=X-EA-Auth:Date:From:To:Cc:Subject:Message-ID:References:
	 MIME-Version:Content-Type:In-Reply-To;
	b=Q2J0WBeaFNlOjFolg5deybV4z43/EyG3BE/Tf69wlp1NpkPNO1BrxoyKMVQtqwHwM
	 Q8kPpDfBQBs4iJMjA65o3Up0mmYM+oczik1/ab6s/VjouyflRRbeLpA09iKO/UFmrK
	 cKqe7C1qujoNx6vyM5km7SzvEkKqPxXaifxmOoV4=
Received: by b221-4.in.mailobj.net [192.168.90.24] with ESMTP
	via ip-20.mailobj.net [213.182.54.20]
	Wed,  8 Mar 2023 19:22:47 +0100 (CET)
X-EA-Auth: ouR5Pxddsaeke9hxIufbXd+P16OHw1b5lDUMncpXOuQAkfWEvuyuXb+TcQRAOMlyIX67zV3Y/c/3uztBC6ISRNVzhIICaBY5
Date: Wed, 8 Mar 2023 23:52:36 +0530
From: Deepak R Varma <drv@mailo.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Sumitra Sharma <sumitraartsy@gmail.com>, outreachy@lists.linux.dev
Subject: Re: Help to setup enviornment
Message-ID: <ZAjSbIXuljfdk26r@ubun2204.myguest.virtualbox.org>
References: <20230308171509.GA4056@ubuntu>
 <dd924cf4-ddd6-45aa-292d-5762b769ca22@inria.fr>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <dd924cf4-ddd6-45aa-292d-5762b769ca22@inria.fr>

On Wed, Mar 08, 2023 at 06:27:39PM +0100, Julia Lawall wrote:
> 
> 
> On Wed, 8 Mar 2023, Sumitra Sharma wrote:
> 
> > Thank you Julia for your response. I followed your instructions and  get rid of the earlier mentioned error. But on running the command "make -j2" it shows the error:
> > ##
> > Killed
> > make[1]: *** [scripts/Makefile.vmlinux_o:61: vmlinux.o] Error 137
> > make[1]: *** Deleting file 'vmlinux.o'
> > make: *** [Makefile:1231: vmlinux_o] Error 2
> > ##
> > As per the system logs, the process is killed due to insufficent memory.
> > I am running the linux on windows machine in VMPlayer and I have provided 4.6 GB of RAM to this machine. My systems RAM has a limit of 8 GB. I would appreciate some more help in it. Thank you.
> 
> Maybe just add more memory?  6 instead of 4?

Hi Sumitra,
Less likely, but do ensure you have sufficient Hard drive space available to
accommodate intermediate files and the Linux Image files created during the build
process. I hope you have done the partitioning well during your base Linux OS
setup on the VM.

Deepak.

> 
> julia
> 


