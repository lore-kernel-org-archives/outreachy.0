Received: from mailo.com (msg-1.mailo.com [213.182.54.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F58CFBF0
	for <outreachy@lists.linux.dev>; Sun,  8 Oct 2023 18:38:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=mailo.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mailo.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mailo.com header.i=@mailo.com header.b="k9X/ZK1u"
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailo.com; s=mailo;
	t=1696790318; bh=Wcx+hIDm7RPNKI02dqVTGAX3/40sM6VL8Eet8AEBq3M=;
	h=X-EA-Auth:Date:From:To:Cc:Subject:Message-ID:References:
	 MIME-Version:Content-Type:Content-Transfer-Encoding:In-Reply-To;
	b=k9X/ZK1uSZBVgnQNdTVcADc1YSZ67p4rm6pp1Wwm4eYrJkChS3R7Jf3XZx0+1ESeA
	 Jm428M8A1u1iGQnmOO6R5bJbF1F+4lMxasMMiYFHLx6nT2zYsnfCBqGSZPsxtdMB0T
	 NFz91kyy/dVjnM3BnAN+/GZlHWZ6av5VsWDeR/GU=
Received: by b221-4.in.mailobj.net [192.168.90.24] with ESMTP
	via ip-20.mailobj.net [213.182.54.20]
	Sun,  8 Oct 2023 20:38:38 +0200 (CEST)
X-EA-Auth: NlDYNi9h6ETISjm+6vhnFZ23945TUTK4dRK3sV8k6jp9Rgj0BGIyY7wijNQmVJ5bBWDDD7C/7b05qpObDveppO/45e0l/h4D
Date: Mon, 9 Oct 2023 00:08:30 +0530
From: Deepak R Varma <drv@mailo.com>
To: NAKITYO JOANITA <nakityojoanita51@gmail.com>
Cc: Julia Lawall <julia.lawall@inria.fr>, outreachy@lists.linux.dev
Subject: Re: Assistance Needed: Error sending message, child exited 70
 (Internal error.).
Message-ID: <ZSL3Jm9LfQwt6O7M@runicha.com>
References: <alpine.DEB.2.22.394.2310081254370.3223@hadrien>
 <CAOJCLCsbVPuN9S1GK0g0XmPp8hW26vrbiPOCUSBo7pbCQdDtNQ@mail.gmail.com>
 <alpine.DEB.2.22.394.2310081349520.3223@hadrien>
 <CAOJCLCswxE=xNorJ3XROW1DRLBGRNyF=YY0BoOdW=9pdj2U6wA@mail.gmail.com>
 <alpine.DEB.2.22.394.2310081411300.3223@hadrien>
 <CAOJCLCsxH8jFPW9+o01hWJmNwPVTKMMdn0aB3R3-r-rySmpCtQ@mail.gmail.com>
 <alpine.DEB.2.22.394.2310081423550.3223@hadrien>
 <CAOJCLCsBxra_E30bb5kzSdSotJfaj546LJ_r1qLW-RXpOhjLhw@mail.gmail.com>
 <alpine.DEB.2.22.394.2310081454060.3223@hadrien>
 <CAOJCLCv39n+W4VPwXTwqsKPo6XmaQ9XcCDVqLb4j3=t-cCQjEQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAOJCLCv39n+W4VPwXTwqsKPo6XmaQ9XcCDVqLb4j3=t-cCQjEQ@mail.gmail.com>

On Sun, Oct 08, 2023 at 09:33:47PM +0300, NAKITYO JOANITA wrote:
> When sending an email with Mutt, I'm prompted to enter a KeyID for
> outreachy@lists.linux.dev as shown in the screenshot at the bottom of
> the screen. What specific value should I enter for this?

If you are using GPG, the configuration may need to be corrected. Check if this
thread helps: https://stackoverflow.com/questions/49332245/cant-reply-to-email-via-mutt-with-gnupg-asks-for-keyid

deepak.

>
> On Sun, Oct 8, 2023 at 3:55 PM Julia Lawall <julia.lawall@inria.fr> wrote:
> >
> >
> >
> > On Sun, 8 Oct 2023, NAKITYO JOANITA wrote:
> >
> > > I think it's due to the different applications we're using. In Gmail,
> > > messages are displayed in a conversation view, similar to the
> > > screenshot attached below.
> >
> > Yes, I see that point.  But the point is that you can't use that interface
> > when working on the Linux kernel.  Now that you have mutt working, maybe
> > you can use mutt for all of your communication about the project.
> >
> > Or maybe someone else has a suggestion about how to avoid the
> > conversation view in the Gmail interface?
> >
> > julia




