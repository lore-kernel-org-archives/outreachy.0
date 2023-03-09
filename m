Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A0FB367
	for <outreachy@lists.linux.dev>; Thu,  9 Mar 2023 00:12:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1678320775; x=1709856775;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=YiTQZsbH1ndr5NNlvIe+VueruhrIerwnjw15WDny4ww=;
  b=B579M+UJYwgjTu/KMim2GaSQ/3eP0iccrcJHDEOX25qsYMGXgnRZUnoW
   4zH4nnAklxDp8hii7gbZIOEIjtM5B+VBuSlnfab6nA5CwL4TLCqluibRd
   JrCwI7tgNwv5nmBtJyIBo5zmm55op5nywwvf3s9YnboDkAtVnlMPzMh63
   43NGkNkoaIQgOLSSg9gzN1ODXwe1dIfyY2Fa4D2sCxq5mkCO7h3vD2IOy
   IfhW7Q+tT3PSxg73T88klPZ0C3AM54SMeY1/jIbsAEIrvNNThPKvLGRBB
   qFzdDRtAM2Gwg4howx54Dhsv3PwPO6jp5HXE4jkdG0nt7c7NkRMAOQl1r
   A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="320141797"
X-IronPort-AV: E=Sophos;i="5.98,244,1673942400"; 
   d="scan'208";a="320141797"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Mar 2023 16:12:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="707393159"
X-IronPort-AV: E=Sophos;i="5.98,244,1673942400"; 
   d="scan'208";a="707393159"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO aschofie-mobl2) ([10.212.215.12])
  by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Mar 2023 16:12:54 -0800
Date: Wed, 8 Mar 2023 16:12:53 -0800
From: Alison Schofield <alison.schofield@intel.com>
To: Kloudifold <cloudifold.3125@gmail.com>
Cc: outreachy@lists.linux.dev
Subject: Re: [KERNEL NEWBIES ACESS] Kloudifold
Message-ID: <ZAkkhfpPwEfA8Rx/@aschofie-mobl2>
References: <ZAjteyeSt2rfa+El@CloudiRingWorld>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZAjteyeSt2rfa+El@CloudiRingWorld>

On Thu, Mar 09, 2023 at 04:18:03AM +0800, Kloudifold wrote:
> Dear Outreachy team,
> 
> I am an Outreachy applicant who recently followed the tutorial for the Kernel Firstpatch on your website. During the process, I encountered a couple of issues that I believe could benefit from an update to the tutorial.

Hi Kloudifold,

These sound like very helpful additions! 

I was about to add you to the Editors list for the wiki, but want
to check on the name. Have you looked at this yet:
https://www.kernel.org/doc/html/latest/process/submitting-patches.html?highlight=signed%20off#sign-your-work-the-developer-s-certificate-of-origin

My question is if you go by 'Kloudifold' as your full legal name.
ie. will your SOB be:
Signed-off-by: Kloudifold <cloudifold.3125@gmail.com>

Whatever you put as your name there, will be how your work is
discovered in the kernel from here forward. So, let's be sure
to get the name correct.

And, I want to use that same name in the Editors file of the wiki.

Let me know & thanks!
Alison


> 
> Firstly, the tutorial assumes that the .config file used to compile the distribution kernel is stored in the /boot/ directory. However, some distributions, including the one I use, do not follow this convention. Instead, the .config file is stored in the /proc/ directory as a compressed file. To address this issue, I propose updating the tutorial with the command "zcat /proc/config.gz > .config" to extract the .config file from /proc/ and use it for compiling the kernel.
> 
> Secondly, the tutorial instructs users to install the kernel using LILO as the boot manager. However, many modern distributions, including the one I use, use GRUB as the default boot manager. This results in an error when executing "sudo make modules_install install" as the system cannot find LILO. To resolve this issue, I suggest adding instructions for manually installing the kernel and initramfs and configure GRUB.
> 
> In summary, my proposed updates to the Kernel Firstpatch tutorial include:
> 
>     Adding a command to extract the .config file from /proc/ using "zcat /proc/config.gz > .config"
>     Updating the instructions for installing the kernel and initramfs manually and configuring GRUB
> 
> I believe that these updates will improve the usability of the tutorial for users who encounter similar issues. Thank you for your consideration, and please let me know if you have any questions or concerns.
> 
> Best regards,
> Kloudifold.
> 
> 
