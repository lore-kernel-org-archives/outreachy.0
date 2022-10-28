Received: from linux.microsoft.com (linux.microsoft.com [13.77.154.182])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5E5128E8
	for <outreachy@lists.linux.dev>; Fri, 28 Oct 2022 15:21:11 +0000 (UTC)
Received: by linux.microsoft.com (Postfix, from userid 1127)
	id 6390C210DD4C; Fri, 28 Oct 2022 08:21:11 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com 6390C210DD4C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.microsoft.com;
	s=default; t=1666970471;
	bh=aGYsuql/JopP+GYNyz+uu86CsvhNu/g4C7EIlYa9Z1c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SU3US4alYA7R0JRNwsWUwo0c/a2t8wy87U2yaUztxfJ8f5pUW05JyVccEzC/c35XX
	 eMKamkhXqI9kCQTAtO6FPjVAYergXJrEk+fRsi0wD5dAAjrzfp/Oxn/JMyja0Y85Bo
	 XVuAPAhAFQg4XCAVbePdsvqSMIp6F/q42MLhAMCM=
Date: Fri, 28 Oct 2022 08:21:11 -0700
From: Saurabh Singh Sengar <ssengar@linux.microsoft.com>
To: Deepak R Varma <drv@mailo.com>
Cc: outreachy@lists.linux.dev
Subject: Re: understanding metavariable
Message-ID: <20221028152111.GA2195@linuxonhyperv3.guj3yctzbm1etfxqx2vob5hsef.xx.internal.cloudapp.net>
References: <Y1vfuDzb3yu2CkzN@ubunlion>
 <20221028142616.GA25857@linuxonhyperv3.guj3yctzbm1etfxqx2vob5hsef.xx.internal.cloudapp.net>
 <Y1vvreWJ+aBaAkI9@ubunlion>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y1vvreWJ+aBaAkI9@ubunlion>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Fri, Oct 28, 2022 at 08:35:17PM +0530, Deepak R Varma wrote:
> On Fri, Oct 28, 2022 at 07:26:16AM -0700, Saurabh Sengar wrote:
> > On Fri, Oct 28, 2022 at 07:27:12PM +0530, Deepak R Varma wrote:
> > > Hello,
> > > I am seeing a few warnings reported by coccicheck where it is suggested to use a
> > > metavariable. See this example warning:
> > >
> > > warning: line 223: should nonseekable_open be a metavariable?
> >
> > Can you share full more log along with the command you are trying to run.
> > Also, please let me know the kernel version you are trying this on.
> 
> Hello Saurabh,
> My Kernel version is: 6.1.0-rc1-DVK
> 
> I am using following coccicheck command to list the warnings:
> drv@ubunlion:~/git/kernels/staging$ make coccicheck M=drivers/staging/ | grep -i warning
> 
This appear to be a warning in script itself, not the WARNING from the report. I tried applying
this patch and it appear to fix the problem.
https://www.spinics.net/lists/kernel/msg4306085.html . Julia can add more about this issue or
the patch status.

I can suggest you a different command which will avoid showing you any scripts warning. You can
give it a try :
make coccicheck DEBUG_FILE=debug.txt M=drivers/staging/

Make sure you don't have debug.txt in you local folder where you run this cmd.

- Saurabh

> A snip of the log is attached with this email for your quick reference. Let me
> know if you need to know anything further.
> 
> Thank you,
> ./drv
> 
> >
> > - Saurabh
> >
> > >
> > > I tried to understand about metavariable and how to address this coccicheck
> > > warning, but did not fully conclude on my next steps.
> > >
> > > Could you provide some details on this concept of metavariables please?
> > >
> > >
> >

> drv@ubunlion:~/git/kernels/staging$ make coccicheck M=drivers/staging/ -j4
> /home/drv/.opam/default/bin/spatch -D report --no-show-diff --very-quiet --cocci-file ./scripts/coccinelle/api/stream_open.cocci --patch . --dir drivers/staging -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi --include ./include/linux/compiler-version.h --include ./include/linux/kconfig.h --jobs 4 --chunksize 1
> warning: line 134: should no_llseek be a metavariable?
> warning: line 141: should noop_llseek be a metavariable?
> warning: line 223: should nonseekable_open be a metavariable?
> warning: line 290: should nonseekable_open be a metavariable?
> warning: line 338: should nonseekable_open be a metavariable?
> 10 files match
> 

