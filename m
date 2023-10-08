Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DE0314A93
	for <outreachy@lists.linux.dev>; Sun,  8 Oct 2023 21:28:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BkRFzhMk"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 58D2AC433C8;
	Sun,  8 Oct 2023 21:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696800496;
	bh=0AoNaV5wHou92r7sa+ynPf4UFq6+mKnMvL+qbnGNrOs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BkRFzhMkKAU/88cVHhYK9DxumeU21Aec8rD46fNzu5H+AGnnw/eCu8uhHVNDX1eYS
	 Ls/INLg7bvWZLCyLQhZYYXV6K/nuIvm/OAadqHR3/4LOGq3PnlpgzD2UO2tFxyg2t7
	 CTw1dpHuWBwx+Haom4eaV0eu5awKVJjjQlY2MhQ4Ll0bYFwkpny6TnhzHZqVXOuK9t
	 B7BuToCyBIxhPcf3EkP8A5Jxx2TZIQfH2OCRJiDzkuyJZUrEyElD52Smuh/t55DyjY
	 gxt/f8Bo0ZrwCJOOy6Mvi3d+iN3J5THJ0CfIE1Oe7DcEVzEHO1aP02eJsor5e9IdZw
	 LRiMLW2vn3Xrg==
Date: Sun, 8 Oct 2023 23:28:12 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Gilbert Adikankwu <gilbertadikankwu@gmail.com>
Cc: Andi Shyti <andi.shyti@intel.com>,
	outreachy <outreachy@lists.linux.dev>,
	Julia Lawall <Julia.Lawall@inria.fr>
Subject: Re: [Outreachy Applicant] Introduction and Interest in Contributing
 to Linux Kernel
Message-ID: <20231008212812.tw674m2hbhpyhi5v@zenone.zhora.eu>
References: <CAKrXSsafYQSb2YH128da-+CcnxejZ4V=n-xO5UDmTJLUk_zG8A@mail.gmail.com>
 <ZR6xRGp4uD+jbzJ/@ashyti-mobl2.lan>
 <CAKrXSsbRm9-nmZNj_i8DkW=a=px4DL_bt=ggAfiEnMjHVs3HqQ@mail.gmail.com>
 <ZR7C3u2IdLt3IVlV@ashyti-mobl2.lan>
 <CAKrXSsaC-3c1knSmGbSL6ivkJg8QgDJv7=j4C6ffB6Mjs5PRKQ@mail.gmail.com>
 <ZR7j0Vc0y/K0arAF@ashyti-mobl2.lan>
 <ZR+q/KtzEQ+FNw1l@ashyti-mobl2.lan>
 <CAKrXSsaO3=b5f0YOBhRXn04j8jj5oL5WP4NXvCckcnJGu9++jQ@mail.gmail.com>
 <ZSBrsmdAK9Q9DawP@ashyti-mobl2.lan>
 <CAKrXSsZqwcwcgXfEbd+9wKjRWCxMfWf+j5=dXCgg9VVvGYSqkA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAKrXSsZqwcwcgXfEbd+9wKjRWCxMfWf+j5=dXCgg9VVvGYSqkA@mail.gmail.com>

Hi Gilbert,

On Sat, Oct 07, 2023 at 10:47:39PM +0100, Gilbert Adikankwu wrote:
> Hello Andi,
> 
> Thank you for your response. I ended up searching "how to increase the
> shrink volume of my hard drive" and found resources that helped me
> increase the volume of the partition to 100GB. I'm sending this email
> from a natively installed Linux OS on my computer.

That's a great news and I'm happy that you chose to have a
natively installed Linux based OS. 100GBs are more than enough!

You will see that everything will be easier for you.

Now I look forward to seeing some patches from you ;-)

Andi

> Thanks
> Gilbert
> 
> On Fri, Oct 6, 2023 at 9:19 PM Andi Shyti <andi.shyti@intel.com> wrote:
> >
> > Hi Gilbert,
> >
> > On Fri, Oct 06, 2023 at 03:16:45PM +0100, Gilbert Adikankwu wrote:
> > > Hello Andi,
> > >
> > > Thank you for your response. I have found a resource online that will
> > > guide me through the process of dual-booting Linux on my machine. But
> > > I have another question, the project's system requirement says 50GB is
> > > recommended for the hard drive space by 5GB is the minimum. I am only
> > > able to partition 27GB on my current hard drive can it still work?
> >
> > I don't know, I feel like nowadays 27GB are a bit tight.
> >
> > The 50GB we wrote was arbitrary... if you are able to fit things
> > in 27GB, then OK... consider also that after the compilation, the
> > kernel directory and other tools become a bit fatter.
> >
> > Andi
> >
> > > On Fri, Oct 6, 2023 at 7:40 AM Andi Shyti <andi.shyti@intel.com> wrote:
> > > >
> > > > Hi Gilbert,
> > > >
> > > > please, do not remove the mailing list from the Cc.
> > > >
> > > > For such cases there is never a single solution and I'm able to
> > > > provide ony my experience. Besides, I'm not experienced in VMs.
> > > >
> > > > The point of reaching a community throught a mailing list is that
> > > > you can collect a wider range of thoughts and opinions.
> > > >
> > > > Please, keep asking questions for clearing out your doubts.
> > > >
> > > > Andi
> > > >
> > > > On Thu, Oct 05, 2023 at 06:27:08PM +0200, Andi Shyti wrote:
> > > > > Hi Gilbert,
> > > > >
> > > > > On Thu, Oct 05, 2023 at 05:15:02PM +0100, Gilbert Adikankwu wrote:
> > > > > > Hello Andi
> > > > > >
> > > > > > I looked up my system properties and I have an Intel integrated GPU: Intel (R)
> > > > > > HD Graphics 4400.
> > > > >
> > > > > Excellent!
> > > > >
> > > > > > I will go with your advice and try installing natively Linux.  I usually have
> > > > > > been avoiding this process for a long time because I am scared of mistakenly
> > > > > > wiping my computer's memory in the process but I guess I have to take the risk
> > > > > > now 😅
> > > > >
> > > > > you could even use an external hard drive if you are afraid to
> > > > > wipte your computer's memory, but it's going to be a bit slower.
> > > > >
> > > > > Let me know if you need further help in this process.
> > > > >
> > > > > Andi
> > > > >
> > > > > > Thanks
> > > > > > Gilbert
> > > > > >
> > > > > >
> > > > > > On Thu, Oct 5, 2023 at 3:06 PM Andi Shyti <andi.shyti@intel.com> wrote:
> > > > > >
> > > > > >     Hi Gilbert,
> > > > > >
> > > > > >     On Thu, Oct 05, 2023 at 02:36:03PM +0100, Gilbert Adikankwu wrote:
> > > > > >     > Hello Andi,
> > > > > >     >
> > > > > >     > Thank you for your reply.
> > > > > >     >
> > > > > >     > So I use WSL2 as my Linux environment on a Dell running Windows 10
> > > > > >     >
> > > > > >     > This is what I got when I ran the command lspci
> > > > > >     >
> > > > > >     > 4234:00:00.0 SCSI storage controller: Red Hat, Inc. Virtio filesystem
> > > > > >     (rev 01)
> > > > > >     > 495f:00:00.0 SCSI storage controller: Red Hat, Inc. Virtio filesystem
> > > > > >     (rev 01)
> > > > > >     > 87ba:00:00.0 System peripheral: Red Hat, Inc. Device 105a (rev 01)
> > > > > >     > e8a6:00:00.0 SCSI storage controller: Red Hat, Inc. Virtio console (rev
> > > > > >     01)
> > > > > >     > f883:00:00.0 SCSI storage controller: Red Hat, Inc. Virtio filesystem
> > > > > >     (rev 01)
> > > > > >     >
> > > > > >     >
> > > > > >     > Seems like my system doesn't meet the requirement, is there a workaround?
> > > > > >
> > > > > >     doing kernel development on a virtual machine is challenging and
> > > > > >     I'm not sure you can run i915 on a VM.
> > > > > >
> > > > > >     I'm not a Windows user, but I guess, from the control panel you
> > > > > >     should be able to see the graphic card you have. Try to look on
> > > > > >     google, I'm sure you'll find plenty of answers.
> > > > > >
> > > > > >     If you have an Intel GPU, then you could consider installing
> > > > > >     natively Linux on your machine in dual boot with Windows. That
> > > > > >     would make your life so much easier.
> > > > > >
> > > > > >     Andi
> > > > > >
> > > > > >     > Thanks
> > > > > >     > Gilbert
> > > > > >     >
> > > > > >     >
> > > > > >     >
> > > > > >     > On Thu, Oct 5, 2023 at 1:51 PM Andi Shyti <andi.shyti@intel.com> wrote:
> > > > > >     > >
> > > > > >     > > Hi Gilbert,
> > > > > >     > >
> > > > > >     > > > How do I check to see if my system meets the system requirements?
> > > > > >     > >
> > > > > >     > > If you run lspci, you should check that your VGA controller is
> > > > > >     > > Intel.
> > > > > >     > >
> > > > > >     > > E.g., in my current laptop is:
> > > > > >     > >
> > > > > >     > > $ lspci
> > > > > >     > > ...
> > > > > >     > > 00:02.0 VGA compatible controller: Intel Corporation TigerLake-LP GT2
> > > > > >     [Iris Xe Graphics] (rev 01)
> > > > > >     > > ...
> > > > > >     > >
> > > > > >     > > Another way is to check the modules running in your PC with
> > > > > >     > > lsmod. The module (i.e. the driver) is called i915. In my laptop:
> > > > > >     > >
> > > > > >     > > $ lsmod
> > > > > >     > > ...
> > > > > >     > > i915                 3756032  19
> > > > > >     > > ...
> > > > > >     > >
> > > > > >     > > Besides, i915 will be the piece of software this project is based
> > > > > >     > > on.
> > > > > >     > >
> > > > > >     > > Let me know,
> > > > > >     > > Andi
> > > > > >
