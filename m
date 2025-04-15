Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEE0725F99C
	for <outreachy@lists.linux.dev>; Tue, 15 Apr 2025 09:05:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.134.164.83
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744707908; cv=none; b=qB/x+1XOVx0jOYUmTwf/EYnYXIl7gXvWY+Da7aXPEda6jVg9FHbHulHQihelw/BmUa+pkeR5jOWob4wLNpX0ZEL8KVm4yFtWnnCivW9j4EgXQlDm/AOk94g2by8wj/08dbBomuBnb5wxjerkm3BbhhCLnpiJivrGDT6Ei23fmVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744707908; c=relaxed/simple;
	bh=c+mEJ4dUf2k9TlOCvEkmaaYjlUowdh79+uegQ2UURy0=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type; b=bDSo6G7VO4kOnqTHLyyBFQiqiNM25rbTmQAvSMVwfj7499iewNZkSvgFknQQYfFATS9UqnVY/WRHgKEWe39gIKVID+CKMVvluUYiYOIMxYe5122uJSxB0RFy2AuNkXT/dJIkQtsu2DW4YwAy8+DqsBcV+x/Cm/0MPDz1JPZ0bhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr; spf=pass smtp.mailfrom=inria.fr; dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b=FBU96Kni; arc=none smtp.client-ip=192.134.164.83
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="FBU96Kni"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=aKGIF8Ve9n5UNLwWFwvMvYblZD3kUx44wp8aitWtzWQ=;
  b=FBU96KniNh4S6MbODzqFz++OSVt0U1YCSoM+5AfCe5L5oRHgyBN2LWRv
   P6okEU/aCkyiuKmkBbhyYjmWsWsPUOrjaHcRXRLlzcndy2Qz7B2QnQ0UW
   pwPedtYjyV+Ie/8DUnjncpKsYydHtKV89tA+bZILCUOenXxEkorpspCA1
   k=;
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.15,213,1739833200"; 
   d="scan'208";a="217918012"
Received: from dt-lawall.paris.inria.fr ([128.93.67.65])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Apr 2025 11:04:57 +0200
Date: Tue, 15 Apr 2025 05:04:56 -0400 (EDT)
From: Julia Lawall <julia.lawall@inria.fr>
To: Richard Akintola <princerichard17a@gmail.com>
cc: Samuel Abraham <abrahamadekunle50@gmail.com>, outreachy@lists.linux.dev, 
    Julia Lawall <julia.lawall@inria.fr>
Subject: Re: Setup for sending mail via Mutt
In-Reply-To: <CAMyr_b+LNRxxbiqR_xWZvmEFMLV-XqB-fdskR2Eovv45ua+tVA@mail.gmail.com>
Message-ID: <1c557a-5e71-2938-38fc-f18aaa29d0c7@inria.fr>
References: <67ebe607.050a0220.396ffc.2dd5@mx.google.com> <CADYq+fYe2o6goZthVjmNqtNRnFT+PATGKwzuZJiDzhEYgfBYXQ@mail.gmail.com> <CAMyr_b+jCO2k+VbAB=Ahv9=Xi8adSUF3SM7UrO8FLa5JSfro6A@mail.gmail.com> <CADYq+fa94LXFe=sZbEYYKMN4wX7bWFkTtBOSD3_OpjjkhkRnFA@mail.gmail.com>
 <CAMyr_b+LNRxxbiqR_xWZvmEFMLV-XqB-fdskR2Eovv45ua+tVA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-2102294287-1744707896=:3460"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-2102294287-1744707896=:3460
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Tue, 15 Apr 2025, Richard Akintola wrote:

> On Tue, Apr 1, 2025 at 5:16 PM Samuel Abraham
> <abrahamadekunle50@gmail.com> wrote:
>
> > This is Okay without the 'Next' after the first paragraph is removed.
>
> I hope this is now appropriate.
>
> Gmail set up
>
> Enable two-step verification
> (https://myaccount.google.com/signinoptions/two-step-verification) if
> not enabled on your gmail account, then generate and use App Password
> (https://support.google.com/accounts/answer/185833?hl=en)

Hello Richard,

I'm not completely sure what the suggestion is.  The current text is:

---------------
Gmail set up

In gmail, go click the gear icon, go to "Settings", go to the tab
"Forwarding POP/IMAP", and click "Enable IMAP", then click on "Save
Changes".

Then click the "Configuration instructions" link at the very bottom of the
page. Note the outgoing mail server information in "Step 2", and copy it
into the .esmtprc file, as shown in the next section.

Next, make sure two-step verification is enabled on your gmail account,
then generate and use App Password.
---------------

What should it become?

julia


>
>
> Richard Akintola
>
--8323329-2102294287-1744707896=:3460--
