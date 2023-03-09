Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3720A29
	for <outreachy@lists.linux.dev>; Thu,  9 Mar 2023 16:43:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1678380232; x=1709916232;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=BHukIsyU9tVs+RXFLDzspqupFFy6+T8n3Axr8/UMwWk=;
  b=MzFn2BTdZs9QF8SZSwapDbhtqpyFQLewGCyv9RtDWuLl9yh1UvsybYOO
   XovMDDMREYsNPLQiq/v5sdqy6Q/l1gtGr8vJP/1xtrNfII9YHl1oaSeSh
   TfgE5fJmFcCCOck1wB5yxkRBveFMWnJlcdinWmwsw0L30f5ENUl4bMvcM
   mnchuR1d4XMoaLM8ylAKCx9IT7W33iwwbbAY/I3PgRCpPm0k72TY9fcvl
   xmj88/vgRTPoUn7QTrSX3w52qZrmx//WO1GF0c5louPanuN835TutmyMK
   DL6AD2L8MqA2yCznXYDiIeyYetokTMWqEyGf6tFOHMU8Pc4RgNkiXqkqw
   Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="324836184"
X-IronPort-AV: E=Sophos;i="5.98,247,1673942400"; 
   d="scan'208";a="324836184"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Mar 2023 08:43:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="766501379"
X-IronPort-AV: E=Sophos;i="5.98,247,1673942400"; 
   d="scan'208";a="766501379"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO aschofie-mobl2) ([10.251.16.84])
  by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Mar 2023 08:43:51 -0800
Date: Thu, 9 Mar 2023 08:43:49 -0800
From: Alison Schofield <alison.schofield@intel.com>
To: Kloudifold <cloudifold.3125@gmail.com>
Cc: outreachy@lists.linux.dev
Subject: Re: Questions on legal name/pseudyonym
Message-ID: <ZAoMxSPKNLoLg7Wl@aschofie-mobl2>
References: <ZAmUcfHfMUqxu67D@CloudiRingWorld>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZAmUcfHfMUqxu67D@CloudiRingWorld>

On Thu, Mar 09, 2023 at 04:10:25PM +0800, Kloudifold wrote:
> Thanks for your advice in thread "Problem in 'Pick a warning, and try to fix it'", I should use "drivers/staging/**/*.*" instead of "drivers/staging/*/*".
> 
> My legal name may change in the next few years, and the Outreachy Community Member Information page said
> "You may use a pseudonym or abbreviate your given or family names if you have concerns about privacy.",
> so I use "Kloudifold" as my Outreachy name and intend to use it as signed-off name when making kernel contributions.
> 
> I would now like to ask if my contribution will be considered by Outreachy if I use a pseudonym?
> If not, I will use my legal name instead.
> If it is OK, I intend to keep contributing under the name "Kloudifold".

Hi Kloudifold,

I'm glad this came up because I needed to learn the latest on this
topic. My prior knowledge was 'no pseudonyms', but I see the kernel
has recently changed that:

d4563201f33a0 Documentation/process/submitting-patches.rst (Linus Torvalds        2023-02-26 11:25:04 -0800 410) using a known identity (sorry, no anonymous contributions.)

diff --git a/Documentation/process/submitting-patches.rst b/Documentation/process/submitting-patches.rst
index 7dc94555417d..fab44ae732e3 100644
--- a/Documentation/process/submitting-patches.rst
+++ b/Documentation/process/submitting-patches.rst
@@ -407,7 +407,7 @@ then you just add a line saying::

        Signed-off-by: Random J Developer <random@developer.example.org>

-using your real name (sorry, no pseudonyms or anonymous contributions.)
+using a known identity (sorry, no anonymous contributions.)
 This will be done for you automatically if you use ``git commit -s``.
 Reverts should also include "Signed-off-by". ``git revert -s`` does that
 for you.

Alison


> 
> On Thu, 9 Mar 2023 at 08:12, Alison Schofield <alison.schofield@intel.com> wrote:
> >
> > On Thu, Mar 09, 2023 at 04:18:03AM +0800, Kloudifold wrote:
> > > Dear Outreachy team,
> > >
> > > I am an Outreachy applicant who recently followed the tutorial for the Kernel Firstpatch on your website. During the process, I encountered a couple of issues that I believe could benefit from an update to the tutorial.
> >
> > Hi Kloudifold,
> >
> > These sound like very helpful additions!
> >
> > I was about to add you to the Editors list for the wiki, but want
> > to check on the name. Have you looked at this yet:
> > https://www.kernel.org/doc/html/latest/process/submitting-patches.html?highlight=signed%20off#sign-your-work-the-developer-s-certificate-of-origin
> >
> > My question is if you go by 'Kloudifold' as your full legal name.
> > ie. will your SOB be:
> > Signed-off-by: Kloudifold <cloudifold.3125@gmail.com>
> >
> > Whatever you put as your name there, will be how your work is
> > discovered in the kernel from here forward. So, let's be sure
> > to get the name correct.
> >
> > And, I want to use that same name in the Editors file of the wiki.
> >
> > Let me know & thanks!
> > Alison
> >
> >
> > >
> > > Firstly, the tutorial assumes that the .config file used to compile the distribution kernel is stored in the /boot/ directory. However, some distributions, including the one I use, do not follow this convention. Instead, the .config file is stored in the /proc/ directory as a compressed file. To address this issue, I propose updating the tutorial with the command "zcat /proc/config.gz > .config" to extract the .config file from /proc/ and use it for compiling the kernel.
> > >
> > > Secondly, the tutorial instructs users to install the kernel using LILO as the boot manager. However, many modern distributions, including the one I use, use GRUB as the default boot manager. This results in an error when executing "sudo make modules_install install" as the system cannot find LILO. To resolve this issue, I suggest adding instructions for manually installing the kernel and initramfs and configure GRUB.
> > >
> > > In summary, my proposed updates to the Kernel Firstpatch tutorial include:
> > >
> > >     Adding a command to extract the .config file from /proc/ using "zcat /proc/config.gz > .config"
> > >     Updating the instructions for installing the kernel and initramfs manually and configuring GRUB
> > >
> > > I believe that these updates will improve the usability of the tutorial for users who encounter similar issues. Thank you for your consideration, and please let me know if you have any questions or concerns.
> > >
> > > Best regards,
> > > Kloudifold.
> > >
> > >
> 
