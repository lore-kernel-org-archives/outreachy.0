Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C7EE3D38E
	for <outreachy@lists.linux.dev>; Fri,  6 Oct 2023 20:19:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="BHp/Vouu"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1696623549; x=1728159549;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=rXSRRPzVgdlVpPS76schJkP1pDv4j1Fdp7P+stFHps0=;
  b=BHp/Vouu0dP6DJlMaFjRQ5aDVoZuPoqTN97NeI+joVk8Ntp52w65dHej
   UzxFhA4lc8H1b7tbgsWrXJpISLuFn3Vh90sMI9vcuo8+9kfifIw8W4A0f
   UIkGJW6XY9+n8SCeTJHzdY5pCjtg86Gs8SpRCCuw2mCSE9GIkmKIRK3o5
   NYysYwc5/XD68TAMwSHmba96oGVPwFpkV5CejY5vOF7Nlxn55iWTEanqY
   iEsz6wjCZ29DUkEmyIuvMG2H6eMOrNABTngMeH96S2E+nsOz/2Qb7mRyC
   llVFuj983K24RCpUR/aPIrqftg3PEwYGOi9SZ2nhufBwm9xbk3yOjfd8t
   Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10855"; a="363176765"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; 
   d="scan'208";a="363176765"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Oct 2023 13:19:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10855"; a="1083574857"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; 
   d="scan'208";a="1083574857"
Received: from pmanogar-mobl.gar.corp.intel.com (HELO intel.com) ([10.213.157.100])
  by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Oct 2023 13:19:04 -0700
Date: Fri, 6 Oct 2023 22:18:58 +0200
From: Andi Shyti <andi.shyti@intel.com>
To: Gilbert Adikankwu <gilbertadikankwu@gmail.com>
Cc: outreachy <outreachy@lists.linux.dev>
Subject: Re: [Outreachy Applicant] Introduction and Interest in Contributing
 to Linux Kernel
Message-ID: <ZSBrsmdAK9Q9DawP@ashyti-mobl2.lan>
References: <CAKrXSsZ-1AKg3FLmZj=Kt_7NqHhty0k3ob89LuNUgFBqdjgduw@mail.gmail.com>
 <ZR0NRvHkjcWIv9+f@ashyti-mobl2.lan>
 <CAKrXSsafYQSb2YH128da-+CcnxejZ4V=n-xO5UDmTJLUk_zG8A@mail.gmail.com>
 <ZR6xRGp4uD+jbzJ/@ashyti-mobl2.lan>
 <CAKrXSsbRm9-nmZNj_i8DkW=a=px4DL_bt=ggAfiEnMjHVs3HqQ@mail.gmail.com>
 <ZR7C3u2IdLt3IVlV@ashyti-mobl2.lan>
 <CAKrXSsaC-3c1knSmGbSL6ivkJg8QgDJv7=j4C6ffB6Mjs5PRKQ@mail.gmail.com>
 <ZR7j0Vc0y/K0arAF@ashyti-mobl2.lan>
 <ZR+q/KtzEQ+FNw1l@ashyti-mobl2.lan>
 <CAKrXSsaO3=b5f0YOBhRXn04j8jj5oL5WP4NXvCckcnJGu9++jQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAKrXSsaO3=b5f0YOBhRXn04j8jj5oL5WP4NXvCckcnJGu9++jQ@mail.gmail.com>

Hi Gilbert,

On Fri, Oct 06, 2023 at 03:16:45PM +0100, Gilbert Adikankwu wrote:
> Hello Andi,
> 
> Thank you for your response. I have found a resource online that will
> guide me through the process of dual-booting Linux on my machine. But
> I have another question, the project's system requirement says 50GB is
> recommended for the hard drive space by 5GB is the minimum. I am only
> able to partition 27GB on my current hard drive can it still work?

I don't know, I feel like nowadays 27GB are a bit tight.

The 50GB we wrote was arbitrary... if you are able to fit things
in 27GB, then OK... consider also that after the compilation, the
kernel directory and other tools become a bit fatter.

Andi

> On Fri, Oct 6, 2023 at 7:40 AM Andi Shyti <andi.shyti@intel.com> wrote:
> >
> > Hi Gilbert,
> >
> > please, do not remove the mailing list from the Cc.
> >
> > For such cases there is never a single solution and I'm able to
> > provide ony my experience. Besides, I'm not experienced in VMs.
> >
> > The point of reaching a community throught a mailing list is that
> > you can collect a wider range of thoughts and opinions.
> >
> > Please, keep asking questions for clearing out your doubts.
> >
> > Andi
> >
> > On Thu, Oct 05, 2023 at 06:27:08PM +0200, Andi Shyti wrote:
> > > Hi Gilbert,
> > >
> > > On Thu, Oct 05, 2023 at 05:15:02PM +0100, Gilbert Adikankwu wrote:
> > > > Hello Andi
> > > >
> > > > I looked up my system properties and I have an Intel integrated GPU: Intel (R)
> > > > HD Graphics 4400.
> > >
> > > Excellent!
> > >
> > > > I will go with your advice and try installing natively Linux.  I usually have
> > > > been avoiding this process for a long time because I am scared of mistakenly
> > > > wiping my computer's memory in the process but I guess I have to take the risk
> > > > now 😅
> > >
> > > you could even use an external hard drive if you are afraid to
> > > wipte your computer's memory, but it's going to be a bit slower.
> > >
> > > Let me know if you need further help in this process.
> > >
> > > Andi
> > >
> > > > Thanks
> > > > Gilbert
> > > >
> > > >
> > > > On Thu, Oct 5, 2023 at 3:06 PM Andi Shyti <andi.shyti@intel.com> wrote:
> > > >
> > > >     Hi Gilbert,
> > > >
> > > >     On Thu, Oct 05, 2023 at 02:36:03PM +0100, Gilbert Adikankwu wrote:
> > > >     > Hello Andi,
> > > >     >
> > > >     > Thank you for your reply.
> > > >     >
> > > >     > So I use WSL2 as my Linux environment on a Dell running Windows 10
> > > >     >
> > > >     > This is what I got when I ran the command lspci
> > > >     >
> > > >     > 4234:00:00.0 SCSI storage controller: Red Hat, Inc. Virtio filesystem
> > > >     (rev 01)
> > > >     > 495f:00:00.0 SCSI storage controller: Red Hat, Inc. Virtio filesystem
> > > >     (rev 01)
> > > >     > 87ba:00:00.0 System peripheral: Red Hat, Inc. Device 105a (rev 01)
> > > >     > e8a6:00:00.0 SCSI storage controller: Red Hat, Inc. Virtio console (rev
> > > >     01)
> > > >     > f883:00:00.0 SCSI storage controller: Red Hat, Inc. Virtio filesystem
> > > >     (rev 01)
> > > >     >
> > > >     >
> > > >     > Seems like my system doesn't meet the requirement, is there a workaround?
> > > >
> > > >     doing kernel development on a virtual machine is challenging and
> > > >     I'm not sure you can run i915 on a VM.
> > > >
> > > >     I'm not a Windows user, but I guess, from the control panel you
> > > >     should be able to see the graphic card you have. Try to look on
> > > >     google, I'm sure you'll find plenty of answers.
> > > >
> > > >     If you have an Intel GPU, then you could consider installing
> > > >     natively Linux on your machine in dual boot with Windows. That
> > > >     would make your life so much easier.
> > > >
> > > >     Andi
> > > >
> > > >     > Thanks
> > > >     > Gilbert
> > > >     >
> > > >     >
> > > >     >
> > > >     > On Thu, Oct 5, 2023 at 1:51 PM Andi Shyti <andi.shyti@intel.com> wrote:
> > > >     > >
> > > >     > > Hi Gilbert,
> > > >     > >
> > > >     > > > How do I check to see if my system meets the system requirements?
> > > >     > >
> > > >     > > If you run lspci, you should check that your VGA controller is
> > > >     > > Intel.
> > > >     > >
> > > >     > > E.g., in my current laptop is:
> > > >     > >
> > > >     > > $ lspci
> > > >     > > ...
> > > >     > > 00:02.0 VGA compatible controller: Intel Corporation TigerLake-LP GT2
> > > >     [Iris Xe Graphics] (rev 01)
> > > >     > > ...
> > > >     > >
> > > >     > > Another way is to check the modules running in your PC with
> > > >     > > lsmod. The module (i.e. the driver) is called i915. In my laptop:
> > > >     > >
> > > >     > > $ lsmod
> > > >     > > ...
> > > >     > > i915                 3756032  19
> > > >     > > ...
> > > >     > >
> > > >     > > Besides, i915 will be the piece of software this project is based
> > > >     > > on.
> > > >     > >
> > > >     > > Let me know,
> > > >     > > Andi
> > > >
