Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FE5EC139
	for <outreachy@lists.linux.dev>; Tue, 10 Oct 2023 07:15:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=linux.intel.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="Vy2RlFNo"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1696922119; x=1728458119;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=NPXS9lZbBCFrTJlUDTH5/svcq0KKsbvMwmR/6TAYXQg=;
  b=Vy2RlFNoqJk8ydh1iZ7syYDDee64npodS0QBER3nIxB0tdw0Q4NS7u1z
   aimUOQlPy1tYLrHq1M4skXWGkOJidxvyAxat4vHXs87psGbgw9P02Klrz
   OgGqaR5Kjs5Dwd7QBl0raci5TlrvnHG5meRRixVNiQliHAH/PhwdjiwVt
   3f3k6hTjYfxiOlrmmmPh+sdU4a6elZYola+fAhs+tbOB0GP/7W8CTPtBg
   kURSg/76hNhA6EClpxi3aVCOJWDtTCB7UksLJdCiBZILt6pYESqiJhCBB
   aEv3URmmGk5QL8fvIKb+r+OMIz5H0gbLhp5aCBMse1hXduNRhPr8jMn+0
   Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="384185699"
X-IronPort-AV: E=Sophos;i="6.03,212,1694761200"; 
   d="scan'208";a="384185699"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Oct 2023 00:15:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="753297736"
X-IronPort-AV: E=Sophos;i="6.03,212,1694761200"; 
   d="scan'208";a="753297736"
Received: from ppalanyk-mobl.gar.corp.intel.com (HELO intel.com) ([10.213.148.82])
  by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Oct 2023 00:15:14 -0700
Date: Tue, 10 Oct 2023 09:15:07 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Gilbert Adikankwu <gilbertadikankwu@gmail.com>
Cc: andi.shyti@kernel.org, outreachy@lists.linux.dev, Julia.Lawall@inria.fr
Subject: Re: [Outreachy Applicant] NEEDS SOME CLARIFICATIONS
Message-ID: <ZST5+5a8Uq1pULop@ashyti-mobl2.lan>
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

Hi Gilbert,

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

Long story short: the .o files are object binary files that are
not supposed to be edited. The object files are then linked
together in a single file that will be your final driver's
object.

Check the file drivers/net/ethernet/intel/e1000e/Makefile:

obj-$(CONFIG_E1000E) += e1000e.o

e1000e-objs := 82571.o ich8lan.o 80003es2lan.o \
               mac.o manage.o nvm.o phy.o \
               param.o ethtool.o netdev.o ptp.o

This means that the compilation process will produce the objects
in the second group of .o files. At the end an e1000e.o file
will contain all of them.

It doesn't mean that you will necessarily have a e1000e.c file.

As Deepak recommended, you could find the probe file with the
grep command. You found it in netdev.c. As you can see from the
Makefile, you will also have a netdev.o that will end up inside
the e1000e.o.

This means that not always the driver is called the same way as
its directory or the final .o file.

This is true also you end up working for the i915 sysfs project.
Indeed the big set of files in the drivers/gpu/drm/i915/ with all
the subdirectories, will, at the end, create one single object,
called i915.o, even though there is no i915.c file in it.

I hope this cleared a bit things as in this list I have often
seen people looking for source code in .o files.

Andi

> I tried the above process for a couple more names in the list returned by lsmod and it is the same issue.
> 
> Please advise
> 
> Thanks
> Gilbert
> 
