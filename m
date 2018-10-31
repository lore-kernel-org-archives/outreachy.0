X-GM-THRID: 6618627943350403072
X-Received: by 2002:a24:9085:: with SMTP id x127-v6mr3354046itd.17.1541020589263;
        Wed, 31 Oct 2018 14:16:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:f80a:: with SMTP id o10-v6ls1310196ioh.2.gmail; Wed, 31
 Oct 2018 14:16:28 -0700 (PDT)
X-Google-Smtp-Source: AJdET5eLBSzwRfXwPfHzMBPARo7AVlO8aj9o1fBb6oUhYlR3ZPYok0U4ySoat9t+K9tvIWeOCnIt
X-Received: by 2002:a6b:e00c:: with SMTP id z12-v6mr3364897iog.32.1541020588508;
        Wed, 31 Oct 2018 14:16:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1541020588; cv=none;
        d=google.com; s=arc-20160816;
        b=PbxZC5AdQeDL4rWQPCp0Wb9PKdhMtS4yFeVlsGfL8Eo/C6P56L++ayElzo7UVyA7K6
         l8qlgLi02ZhlVH0UO7Mr19ZKwFcR2l7pNh6L/ZGCpEFRernsidhlmBFmZM2XNbwmkmUl
         2nXMt9kNFt2nkJuUMY7py3V4/6verL1d61S2ICDRUrZ+3g77b2Mrj9nK7nkR8gSWC8nQ
         7tcECCRfTHc9Gtn2vC09oaFoxZNB0QdxTgLLDvUHiSamTYJrNNfAAOz9Rtx4DYE6+F6t
         8Z1VpqYkOtDBMlrpiBQgACNI55TiNb11ds8p8BOR93zSeFkU2lETypn3phoETuFuCXck
         uhvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=fWFaTgC8G/r6xb61YAtf09uX6fg7ZK0jdGhcK76ZF04=;
        b=gIkXAKIIbcRHTjLpXw0opcs7Wt3STbWl6u/tldxyiqkLXN6LzVL/GM5PiWTRGT7aSC
         zpKdrvaVKjES5ZwBrC2dRcioX1N6dPVaONG2zgbruGlfgcughx6ZAkeDJBguCsE2OwU7
         bBxKdGykcW93oCaLmOG0C+/7t3KnMK0r2wy1qA1h/jKGz1e1GdfrCAQw72tOngxWsT46
         SeKACR+Nl8QScOS45CBClFWTqrlSLFZAmZPxwjpmoCPed0yAfgyDSfMvokOd+2y2DgZG
         YBr9qzu2aonw9qbSLv4V8bPYau23pw2Gzzlv1dQuYrJ3lFl5dvJ6vzNx3+0B0go+L9mX
         EBHg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=f2UB+EpG;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Return-Path: <sashal@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v6-v6si199975iop.0.2018.10.31.14.16.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 31 Oct 2018 14:16:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=f2UB+EpG;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from localhost (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 603A32080A;
	Wed, 31 Oct 2018 21:16:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1541020587;
	bh=7QSrXiNRPfkpb5YPVAKT7W6TOfNYVfrIFqW5yY9zuoY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=f2UB+EpGuqdV83D765S+aEyAyzKgPk1ecOl929p3pNSk+Q2Qm0ykbjFS6zCbDdZMn
	 V11hFYyg2DQpz3h9VwUOZwF9Nmv88qmrySCVOBTicUT7BGn/bSLDgobW3kyDeOfRgM
	 267ud5drds54E1cUJcgzTbPD2Y8Xhlf/CR8+EaaA=
Date: Wed, 31 Oct 2018 17:16:26 -0400
From: Sasha Levin <sashal@kernel.org>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Ioannis Valasakis <code@wizofe.uk>, outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org, sasha.levin@microsoft.com
Subject: Re: [Outreachy kernel] [PATH v3] staging: gasket: Create a memory
 allocation error handling path
Message-ID: <20181031211626.GW194472@sasha-vm>
References: <20181031205636.GA13583@kvasir.local>
 <alpine.DEB.2.21.1810312158190.2391@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1810312158190.2391@hadrien>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Wed, Oct 31, 2018 at 09:58:58PM +0100, Julia Lawall wrote:
>
>
>On Wed, 31 Oct 2018, Ioannis Valasakis wrote:
>
>> Create an error handling path for memory allocation. It avoids repeating
>> the same assignments and returns the respective ENOMEM.
>
>I think you are again making a patch based on your previous patch.  You
>need to undo everything to get back to the state of Greg's tree.

An easy way to deal with the situation you're in now is to use git's
interactive rebase. Interactive rebase lets you merge ("squash") two
or more commits together, so you can merge all your commits on top of
Greg's tree into a single commit.

To use that, try: "git rebase -i HEAD~5". The number "5" stands for the
amount of commits to go back; if you have more than that feel free to
change this number to a more appropriate one.

Once you've done that, you will see an editor window with lines in the
form of:

	pick [commit hash] [commit subject]
	[...]

You can merge a commit with a previous commit by changing "pick" into
"fixup", and then saving and closing the editor.

For example:

	pick 11111111 "my first commit"
	fixup 22222222 "my second commit"
	pick 33333333 "my third commit"

Using the above, git will merge the second commit into the first, and
leave the third one as it is.

--
Thanks,
Sasha

