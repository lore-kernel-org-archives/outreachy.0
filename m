Received: from msg-1.mailo.com (msg-1.mailo.com [213.182.54.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38399538A
	for <outreachy@lists.linux.dev>; Sun, 12 Mar 2023 17:16:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailo.com; s=mailo;
	t=1678641394; bh=/U4JhBHTRVbsseXLfLyptU1KC3ol9OUqDtknmhIdQKM=;
	h=X-EA-Auth:Date:From:To:Cc:Subject:Message-ID:References:
	 MIME-Version:Content-Type:In-Reply-To;
	b=iW7u2X9Fn7ErJJn0VlcQWSqHgTNwsaI6Ht3two9BAodaY0LoeKAKhPMRU8K65NeMT
	 EuFa4TLACVb/jd+apPOHO2cpcBYieUE+J/wXfGrbR/7iqx3mph2llTU4h1ly4rmG+T
	 5HEyvdgGdbXkVAIxdI57ilcFR3MWtCDGw4wpZ5js=
Received: by b221-5.in.mailobj.net [192.168.90.25] with ESMTP
	via ip-20.mailobj.net [213.182.54.20]
	Sun, 12 Mar 2023 18:16:33 +0100 (CET)
X-EA-Auth: U9zhAleb6fSe7JN6tEGhlumkAPO1mnL9TQIhLRu36WhA55BqFSU+rG26MG4SWd7GPSwUTVVfG87muGaslE5WInQObdrjoid3
Date: Sun, 12 Mar 2023 22:46:27 +0530
From: Deepak R Varma <drv@mailo.com>
To: Khadija Kamran <kamrankhadijadj@gmail.com>
Cc: Julia Lawall <julia.lawall@inria.fr>,
	Sumitra Sharma <sumitraartsy@gmail.com>, outreachy@lists.linux.dev
Subject: Re: [PATCH] Staging: qlge: Fix indentation in conditional statement
Message-ID: <ZA4I6xqU1uq32gR/@ubun2204.myguest.virtualbox.org>
References: <20230312122928.GL14247@ubuntu>
 <alpine.DEB.2.22.394.2303121412090.2865@hadrien>
 <20230312152701.GA28100@ubuntu>
 <alpine.DEB.2.22.394.2303121631170.2865@hadrien>
 <ZA32KCmxGEM8jVwl@khadija-virtual-machine>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZA32KCmxGEM8jVwl@khadija-virtual-machine>

On Sun, Mar 12, 2023 at 08:56:24PM +0500, Khadija Kamran wrote:
> On Sun, Mar 12, 2023 at 04:31:48PM +0100, Julia Lawall wrote:
> > OK.  Was the information in the outrechy tutorial sufficient?  If not, it
> > could be good to extend it.
> > 
> > julia
> >
> 
> Hey Julia!
> 
> I thought I should reply here too. I hope that is not a problem.
> 
> I had a hard time configuring mutt, from the information in the
> outreachy tutorial. I could send my patches but I had no idea how to
> respond to mails from INBOX and how to send inline replies.

Hello,
Using mutt was equally difficult for me when I started with the Linux community
couple of years ago. I did this following to build some comfort with this tool
and learn the Linux Community Patch communication protocol.

1. Install and configure mutt
	I followed this youtube video for my first setup of mutt: https://www.youtube.com/watch?v=2jMInHnpNfQ
	Note that some settings may vary from one email service provider to
	another. You may need to do additional search to get the correct email
	server settings for your email service provider.
2. Practice mutt
	I had another account that used to exchange emails with from my newly
	configured mutt account. I started with 4 paragraph dummy email and kept
	on sending it across a few times to learn the mutt commands such as
	write new mail, reply, reply-all, switch to sent emails folder,
	fold/unfold, move emails across mailboxes, delete emails, recover
	deleted emails etc.
3. I subscribed to couple of Linux Kernel development mailing lists available
at http://vger.kernel.org/vger-lists.html My objective was to understand how
developers communicate on patch submissions. Just reading through these email
exchanges for a 2-3 days helped me understand how community emailing works.
If you wish to do this, choose a mailing list that has moderate traffic [bellow
80 emails in a day, otherwise this can distract you.

4. Refer to the mutt.org documentation for additional learning and configuration.

I suppose most of the applicants have by now configured mutt well. Please read
through the previous advice offered by the mentors and experts. If you still
have questions, feel free to ask.

It is a nice proposal to update documentation about using mutt in the Outreachy
tutorial. But you all should also continue to focus on getting good patches
submitted and accepted within the stipulated time frame of the application
period.



> 
> Regards,
> Khadija
> 
> 


