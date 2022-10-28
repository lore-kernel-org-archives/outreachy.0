Received: from msg-2.mailo.com (msg-2.mailo.com [213.182.54.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D25B2597
	for <outreachy@lists.linux.dev>; Fri, 28 Oct 2022 15:05:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailo.com; s=mailo;
	t=1666969524; bh=Sm90JJzV3OP8X1P3ig2ZLDSm8mYGRTTWtISC+uW9ITI=;
	h=X-EA-Auth:Date:From:To:Cc:Subject:Message-ID:References:
	 MIME-Version:Content-Type:In-Reply-To;
	b=LnO20ewioe6lzM2wc50VpNHqQVSiipuwVN0IXP7VHWvYS1EDGI/AHeLAy43qWNWlr
	 6YTxL7kJgoTNN+s7EV8HLp4P0ZwrNg/qdPKl5nD1pM8BKNmMdhYj99vI8cr8+01i0X
	 1Xt7+crw79g6xy3kKRHpXyXdv75J+tnD/XoR4L4w=
Received: by b-5.in.mailobj.net [192.168.90.15] with ESMTP
	via [213.182.55.206]
	Fri, 28 Oct 2022 17:05:23 +0200 (CEST)
X-EA-Auth: TSpDJhUQWM6lpGlsQ5MSh8B50rh9o2YYKWP9nBkVsNuWYVoBNjcwViFJc6CrsU4Q64ZVNgAFjnAMN25rXgtzeLgymGWGbqRd
Date: Fri, 28 Oct 2022 20:35:17 +0530
From: Deepak R Varma <drv@mailo.com>
To: Saurabh Singh Sengar <ssengar@linux.microsoft.com>
Cc: outreachy@lists.linux.dev
Subject: Re: understanding metavariable
Message-ID: <Y1vvreWJ+aBaAkI9@ubunlion>
References: <Y1vfuDzb3yu2CkzN@ubunlion>
 <20221028142616.GA25857@linuxonhyperv3.guj3yctzbm1etfxqx2vob5hsef.xx.internal.cloudapp.net>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="DEMpl8AGnKbrXODH"
Content-Disposition: inline
In-Reply-To: <20221028142616.GA25857@linuxonhyperv3.guj3yctzbm1etfxqx2vob5hsef.xx.internal.cloudapp.net>


--DEMpl8AGnKbrXODH
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Oct 28, 2022 at 07:26:16AM -0700, Saurabh Sengar wrote:
> On Fri, Oct 28, 2022 at 07:27:12PM +0530, Deepak R Varma wrote:
> > Hello,
> > I am seeing a few warnings reported by coccicheck where it is suggested to use a
> > metavariable. See this example warning:
> >
> > warning: line 223: should nonseekable_open be a metavariable?
>
> Can you share full more log along with the command you are trying to run.
> Also, please let me know the kernel version you are trying this on.

Hello Saurabh,
My Kernel version is: 6.1.0-rc1-DVK

I am using following coccicheck command to list the warnings:
drv@ubunlion:~/git/kernels/staging$ make coccicheck M=drivers/staging/ | grep -i warning

A snip of the log is attached with this email for your quick reference. Let me
know if you need to know anything further.

Thank you,
./drv

>
> - Saurabh
>
> >
> > I tried to understand about metavariable and how to address this coccicheck
> > warning, but did not fully conclude on my next steps.
> >
> > Could you provide some details on this concept of metavariables please?
> >
> >
>

--DEMpl8AGnKbrXODH
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="cocci_warn.log"

drv@ubunlion:~/git/kernels/staging$ make coccicheck M=drivers/staging/ -j4
/home/drv/.opam/default/bin/spatch -D report --no-show-diff --very-quiet --cocci-file ./scripts/coccinelle/api/stream_open.cocci --patch . --dir drivers/staging -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi --include ./include/linux/compiler-version.h --include ./include/linux/kconfig.h --jobs 4 --chunksize 1
warning: line 134: should no_llseek be a metavariable?
warning: line 141: should noop_llseek be a metavariable?
warning: line 223: should nonseekable_open be a metavariable?
warning: line 290: should nonseekable_open be a metavariable?
warning: line 338: should nonseekable_open be a metavariable?
10 files match


--DEMpl8AGnKbrXODH--


