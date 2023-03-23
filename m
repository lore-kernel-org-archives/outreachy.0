Received: from msg-4.mailo.com (msg-4.mailo.com [213.182.54.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24B1417CE
	for <outreachy@lists.linux.dev>; Thu, 23 Mar 2023 04:28:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailo.com; s=mailo;
	t=1679545721; bh=aDNqkyXVS4/wtRY9UBSJ1UdUwNE2IOwIENMfQEZuqpI=;
	h=X-EA-Auth:Date:From:To:Subject:Message-ID:MIME-Version:
	 Content-Type:Content-Transfer-Encoding;
	b=j6p5aYxO9TIzmNvMdE9UFya7Oypb/EN+G5acOT+eXpFtJguLntYN9zsPC9a6FeWIw
	 USlPUF+813Em5OAk2XguTrC8HXudm0t8SJ1YyHkEuhRxXS6fEy+rkD323x9CHXRJ+E
	 kSMi6wXc2u7/SqPwGIxGqTbQDcSNJqD2ojU2Wvtk=
Received: by b221-2.in.mailobj.net [192.168.90.22] with ESMTP
	via ip-20.mailobj.net [213.182.54.20]
	Thu, 23 Mar 2023 05:28:41 +0100 (CET)
X-EA-Auth: bPYsmfwoG9I+VgTsbjUMGMe+ltqRuJ7cRExzo64k9Ymhv3m0obMggzZVA+l6XGYUd6e/2IggQKE4YOq6Z2zm2TjWx7X4qAqQ
Date: Thu, 23 Mar 2023 09:58:22 +0530
From: Deepak R Varma <drv@mailo.com>
To: outreachy@lists.linux.dev
Subject: [eng.mennamahmoud.mm@gmail.com: Re: Outreachy]
Message-ID: <ZBvVZiXhOhvCTYjF@ubun2204.myguest.virtualbox.org>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Hi Menna,
This is another open opportunity to fix the checkpatch script. Is this something
you are planning to address as a contribution?

Thank you,
Deepak.

----- Forwarded message from Menna Mahmoud <eng.mennamahmoud.mm@gmail.com> -----

Date: Sun, 19 Mar 2023 13:20:15 +0200
From: Menna Mahmoud <eng.mennamahmoud.mm@gmail.com>
To: Lars-Peter Clausen <lars@metafoo.de>, Randy Dunlap <rdunlap@infradead.org>, Dan Carpenter <error27@gmail.com>
Cc: Michael.Hennerich@analog.com, jic23@kernel.org, gregkh@linuxfoundation.org, linux-iio@vger.kernel.org, linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org, Outreachy Linux Kernel
	<outreachy@lists.linux.dev>
Subject: Re: Outreachy
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101 Thunderbird/102.8.0


On ١٥‏/٣‏/٢٠٢٣ ٢٢:٠٩, Lars-Peter Clausen wrote:
> On 3/15/23 12:24, Randy Dunlap wrote:
> > 
> > On 3/15/23 07:03, Dan Carpenter wrote:
> > > On Wed, Mar 15, 2023 at 03:17:28PM +0200, Menna Mahmoud wrote:
> > > > Hi Mentors,
> > > > 
> > > > 
> > > > I am Menna, Outreachy applicant and I work on my clean-up patches.
> > > > 
> > > > Is it Okay to work on this error reported by checkpatch script?
> > > > 
> > > > 
> > > > drivers/staging/iio/frequency/ad9832.c
> > > > --------------------------------------
> > > > ERROR: Use 4 digit octal (0777) not decimal permissions
> > > > #256: FILE: drivers/staging/iio/frequency/ad9832.c:256:
> > > > +static IIO_DEV_ATTR_FREQ(0, 1, 0200, NULL, ad9832_write,
> > > > AD9832_FREQ1HM);
> > > What???  Is it complaining about the 0200?  That is octal. Why is
> > > checkpatch complaining about this?  Am I wrong?  Maybe I am misreading.
> > > 
> > > I could investigate, but I am leaving that task to you.  It may be that
> > > checkpatch has a problem and you can fix that instead.
> > > 
> > Yes, checkpatch seems to be confused here.
> It seems to make an assumption that everything starting with IIO_DEV_ATTR_
> has the mode field at the same position. Which is not the case.
> 
> https://github.com/torvalds/linux/blob/master/scripts/checkpatch.pl#L798
> 
> Still a good target to get this fixed as part of a outreachy task.


I see, Thanks Randy and Lars-Peter for your help I will try check this.



----- End forwarded message -----


