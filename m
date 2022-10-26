Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D5CBAD20
	for <outreachy@lists.linux.dev>; Wed, 26 Oct 2022 19:00:45 +0000 (UTC)
Received: by mail-pf1-f169.google.com with SMTP id 192so9179241pfx.5
        for <outreachy@lists.linux.dev>; Wed, 26 Oct 2022 12:00:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=s5rgCT5nK/hUQP0oWwJvTY+a9pAeyuvHBtDtQWYApI0=;
        b=PQ7oCyP3VCEjzeEiCW39oeDFoLC31mrTJDFaucJ9p6DZcz58Gl/k3ygAAIOTWNSs0J
         Q5iJM5f4TCkAplMn4kMAVrQJ/++SAAa5CT9tygSupc6cCttLE8+4AbNxrd1adk0WXqu0
         3hejzzue8prk09T4jT1/in9OwHt4YImmKkuxNXStenZ1dt9GwTJ0yViPeP4oQ5qrOWDj
         LJL/2zK08haVgwUTplt8i6clyco08CHvh94/XsCiD2eId3zVvZjLj/rPPqS4QLl0/d7l
         w8EDKAxhIaYF3En2+Opyf0iJdZp9RtAtdruvhZQSHyEr1mzACzWPRlRbuhEBCUoNsneC
         wqxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=s5rgCT5nK/hUQP0oWwJvTY+a9pAeyuvHBtDtQWYApI0=;
        b=hPePJRtE/aYzKtkgKkOcdiEUuzl9IBhSK9bzvGVNt+FyOQT2GE8b706Wem98aXqY6j
         apRXFYu0+PYdtrLGeURJpYdJqDHnoofindwpggwYej5zlCLJACHRSBrKutkZaWIC40MP
         5PysEv5R2T4TsUK/6D/CqHJS64rP/tWmxWWz923FBpKL3RZQ7BfIWubIc/DTzdw/5BpY
         he61F+9jbCKo3t4xw8u36tMIwigmrDyO4FtxFNSKKLfstSg8Ennczb3aiJ9AUP5ZIIAc
         3OCff7K6vhh/7yb0DROE+vO6WUHMuAbjIzX/zPZQCfT5C7xXqZ6nd2s3WrTvVIW4OsSC
         ZqNQ==
X-Gm-Message-State: ACrzQf1cuSX/eVaDP27ALQhWMiXtqnLCkKB7JJglgeu6NfQ2pArR+czm
	3OYwQKnPmgrSelmijIJeUNayFnadgZAQNg==
X-Google-Smtp-Source: AMsMyM73U3UinGw68JTfhMtMKAhPHQhYPfbJmvxca0jL2chc6DyTxd1Dg1uvW9Uu5MElbuNCPxVE3g==
X-Received: by 2002:a63:90c1:0:b0:45f:c9a7:15c3 with SMTP id a184-20020a6390c1000000b0045fc9a715c3mr38503575pge.304.1666810844944;
        Wed, 26 Oct 2022 12:00:44 -0700 (PDT)
Received: from marshmallow (192-184-163-51.fiber.dynamic.sonic.net. [192.184.163.51])
        by smtp.gmail.com with ESMTPSA id i70-20020a628749000000b0056baebf23e7sm3404587pfe.141.2022.10.26.12.00.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Oct 2022 12:00:44 -0700 (PDT)
Date: Wed, 26 Oct 2022 12:00:42 -0700
From: Emily Peri <eperi1024@gmail.com>
To: Saurabh Singh Sengar <ssengar@linux.microsoft.com>
Cc: Deepak R Varma <drv@mailo.com>,
	Alison Schofield <alison.schofield@intel.com>, dvarma04@hotmail.com,
	Outreachy Linux Kernel <outreachy@lists.linux.dev>,
	Praveen Kumar <kumarpraveen@linux.microsoft.com>
Subject: Re: [Outreachy - To Deeva]
Message-ID: <Y1mD2lOM/Kdxmxs0@marshmallow>
References: <Y1MTJTKdG2fiUT0N@aschofie-mobl2>
 <Y1LMP/iEnzvXPBFS@debian-BULLSEYE-live-builder-AMD64>
 <Y1OAwaHKxueoCdyL@debian-BULLSEYE-live-builder-AMD64>
 <20221024185651.GA4377@linuxonhyperv3.guj3yctzbm1etfxqx2vob5hsef.xx.internal.cloudapp.net>
 <Y1lyaXrcv7cU1SSH@marshmallow>
 <20221026175307.GA6173@linuxonhyperv3.guj3yctzbm1etfxqx2vob5hsef.xx.internal.cloudapp.net>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221026175307.GA6173@linuxonhyperv3.guj3yctzbm1etfxqx2vob5hsef.xx.internal.cloudapp.net>

On Wed, Oct 26, 2022 at 10:53:07AM -0700, Saurabh Singh Sengar wrote:
> On Wed, Oct 26, 2022 at 10:46:17AM -0700, Emily Peri wrote:
> > On Mon, Oct 24, 2022 at 11:56:51AM -0700, Saurabh Singh Sengar wrote:
> > > On Sat, Oct 22, 2022 at 11:03:53AM +0530, Deepak R Varma wrote:
> > > > On Fri, Oct 21, 2022 at 10:13:48PM +0530, Deepak R Varma wrote:
> > > > > On Fri, Oct 21, 2022 at 02:46:13PM -0700, Alison Schofield wrote:
> > > > > > Hi Deeva,
> > > > > >
> > > > > > I saw your Outreachy Dashboard update that noted your past contributions:
> > > > > > https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git/log/?h=staging-testing&qt=grep&q=Deepak+R+Varma
> > > > > >
> > > > > > You have plenty of cleanup patches in total and it would be great if you
> > > > > > could move on to try out some small tasks for the Coccinelle project.
> > > > >
> > > > > Hello Alison,
> > > > > First, sorry for the delay in responding. I was travelling most part of the day
> > > > > today and just checking my emails now.
> > > > >
> > > > > Thank you for looking at my first-patch contribution record. Your message is
> > > > > encouraging. I will starting working on the Coccinelle project tasks outlined
> > > > > in the project description.
> > > > 
> > > > Hello,
> > > > I am reading through the Coccinelle.org link mentioned on the project
> > > > description page and following through. Is that the right approach to accomplish
> > > > the project tasks? Any additional guidance will be helpful.
> > > 
> > > Hi Deepak,
> > > 
> > > Yes you are on right track, look for how to use coccinelle/coccicheck and try to
> > > find some issues in staging directory. Please feel free to reach out to me and 
> > > Praveen if you face any difficulty in accomplishing it.
> > > 
> > > Regards,
> > > Saurabh
> > 
> > Hi Saurabh,
> > 
> > I'm also trying to follow along with this email thread, but I'm a little
> > stuck. I compiled coccinelle, but I'm not sure what to do next. When you
> > say 'try to find issues in the staging directory', do you mean the
> > staging directory of the linux kernel? I don't see a staging directory
> > in the source for coccinelle. Thanks!
> > 
> > Best,
> > Emily
>
> Hi Emily,
> 
> Yes look at drivers/staging folder in linux kernel. If you have completed the
> first 10 patches as part of 'contribution period' you should have worked on this
> folder already. The task here is to find run coccinelle over staging and find the
> issues, which will be followed by upstreaming the fixes for it.
> 
> Regards,
> Saurabh

Okay I think I understand better, but to clarify, is this how we run coccinelle?

	spatch -sp_file <somefile>.cocci -dir drivers/staging

Are we to create our own semantic patch file? If so, do you mean for us to
write a semantic patch that actually fixes existing errors in the driver
or just test out different patterns? When we find an issue, do we try
to fix it and create a patch or report it in github issues?

> > 
> > > > 
> > > > Thank you,
> > > > ./drv
> > > > 
> > > > >
> > > > > >
> > > > > > There are notes on how to get started in the project description, including
> > > > > > how to contact the mentors.
> > > > > >
> > > > > > Please try to keep your applicant/mentor communications CC'd to this
> > > > > > list.
> > > > >
> > > > > Sounds good. Will follow your guidance.
> > > > >
> > > > > Thanks again!
> > > > > ./drv
> > > > >
> > > > > >
> > > > > > Thanks,
> > > > > > Alison
> > > > > >
> > > > 
> > > 
