Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF8A6538A
	for <outreachy@lists.linux.dev>; Sun, 12 Mar 2023 17:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=ISFcuaDdjYHv+PSCxdo2+m4YfH1TBzY8Y4m1ACaEKyo=;
  b=FiNcFORFRmuNoV0IXXsHjZkudDfXkLtHE+cjWgqDyIHByVdxtBM1kKyj
   tHz2lKE8uLAZZ9ql5rWYUaxzF7aIq6RgvLWM7xSTTobIFDt3SdlweoRvu
   IUzKXnW+hengzUwFOEs72x80DSpD6uS5p8OpGxAS9QfLK+o9De3HCSA2W
   g=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="5.98,254,1673910000"; 
   d="scan'208";a="49934145"
Received: from 231.85.89.92.rev.sfr.net (HELO hadrien) ([92.89.85.231])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Mar 2023 18:18:15 +0100
Date: Sun, 12 Mar 2023 18:18:14 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Sumitra Sharma <sumitraartsy@gmail.com>
cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>, 
    outreachy@lists.linux.dev
Subject: Re: [PATCH] Staging: qlge: Remove parenthesis around single
 condition
In-Reply-To: <20230312171517.GF28100@ubuntu>
Message-ID: <alpine.DEB.2.22.394.2303121817320.2865@hadrien>
References: <20230312071700.GH14247@ubuntu> <5367184.29KlJPOoH8@suse> <20230312171517.GF28100@ubuntu>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 12 Mar 2023, Sumitra Sharma wrote:

> On Sun, Mar 12, 2023 at 11:39:17AM +0100, Fabio M. De Francesco wrote:
> > On domenica 12 marzo 2023 08:17:00 CET Sumitra Sharma wrote:
> > > Hi Fabio,
> > >
> > > Thank you for the insights.
> >
> > Hi Sumitra,
> >
> > Please pay attention to the suggestions that Julia kindly provides to you.
> >
> > A moment ago I read these other words from her to you: "Sorry to press the
> > point, but you should be doing it now, not promising to do it in the future.".
> >
> > She is sorry to press because of her special attitudes. I've been helped
> > uncountable times by Julia who, despite her major role and commitments, is so
> > kind to spend time here in a Sunday morning.
> >
> > I think that it's you who should be sorry for pushing her that way...
> >
> > You are doing it again and again: in your last message you did not provide the
> > necessary context. You are asking me to recall which "insights" you are
> > talking about. I know for sure that here there is someone who read hundreds of
> > emails per day.
> >
> > > I went to the .rst files because they are directly
> > > linked in the first-patch document. I also noticed the difference between a
> > > ".rst" file and its counter human readable ".html" file. You were right that
> > > many information is being missed when anyone will read the .rst instead of
> > > .html/.pdf.
> >
> > Don't summarize my own words in order to make me understand what question you
> > are answering. Just put my question/objection/comment inline while replying.
> >
> > Most mentors here read several tens of emails per day. You should not expect
> > them to skim the whole thread. Just reply inline, so they find all the
> > necessary context in one place and so there is no need to traverse the thread
> > to understand what you are referring to.
> >
> > You have been told so several times. You risk that someone starts to ignore
> > your messages in order to save time for other applicants.
> >
>
> I am sorry for repeating my mistakes again and again as I was struggling
> setting up the inbox in email-client and because of which I was unable
> to respond inline. However, with the help of julia now I have set up the
> inbox well. Hope this time I am doing it correctly.
>

This looks perfect.  Under the text you are responding to, and with some
blank lines around it, so it it easy to see.  Thanks!

julia

> > > I would like to suggest that the links that redirect to the .rst
> > > source files in the first-patch document must be changed to the links that
> > > redirect to there corresponding human readable format. Let me know if I
> > could
> > > do it under the [KERNEL NEWBIEs ACCESS].
> >
> > This is a great idea and I fully agree with you.
> > Please ask Alison to grant access to change that documentation (it's not
> > something I can do myself).
> >
> > > Apart from this I will be happy to patch the style guide after this
> > > contribution period.
> >
> > Best applicants go on with further contributions after the end of these
> > period. This fact has been observed several times in the other rounds.
> > I'd like to see more people who are seriously willing to be part of this
> > Community, regardless of the Outreachy project's deadlines.
> >
>
> I would be happy to be part of the community.
>
> > > Regards,
> > >
> > > Sumitra
> >
> > Thanks,
> >
> > Fabio
> >
> > P.S.: I probably went a bit too far in the first part of this email. I am
> > sorry about it. However, please demonstrate that you finally got it, not with
> > further promises but with actual changes in the way you communicate :-)
> >
> >
> >
>
>
