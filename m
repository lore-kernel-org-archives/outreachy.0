X-GM-THRID: 6949336424403435520
X-Received: by 2002:a92:ce4c:: with SMTP id a12mr6588768ilr.242.1618043504902;
        Sat, 10 Apr 2021 01:31:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:2811:: with SMTP id l17ls2575942ilf.2.gmail; Sat, 10 Apr
 2021 01:31:44 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzDSjl4hlArggo8qeNpLjTyEk6D4vLD871IUTbAobhkdbqfImyons0GyYtbi4mdHMmD3oj/
X-Received: by 2002:a05:6e02:160a:: with SMTP id t10mr4280880ilu.261.1618043504186;
        Sat, 10 Apr 2021 01:31:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618043504; cv=none;
        d=google.com; s=arc-20160816;
        b=q7LlYBMsaPc37nTQs4uNhQEBOnNkdh9/PFDqx+7mshBcDhzEapm2VAITEvW+nTaErO
         g3cbyXWXavaEB2Rzus35sJ3XQiFjcM38kDZczWklxdRR3ZKLtH4HVO1gLAlGW6XoNrbH
         Sl2+/a5dinaBASAE3PzP2ZV8WNkSDFKtdX61zghe9WSVjCe0q5m/WkkAgBEw5rxTqPbA
         fvbMBuaJHV50lJUzPOMpcIZd29IjpoX7FjD8a57VgS/drEkcMrPaaEpd7MfJbmTccZUa
         j94LSDU2VtfcUCSsdDOjvLOLXGwiH289RhdAD2zJU3cZWrRvexzC9JndErMzh3FlnRqn
         V67Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=PubiMCJ/JcSvbHYsL6pJjo35Om7dnNselwNu5MbXugw=;
        b=thNLBMAacY+HMuvAsT0cPhNxGGY2eCd7t03OpcndBkFnrSuVWqAtU96KEF19JPU6x/
         bLxC5aKbaRkOkbn5hB81HVZnNfAWc4j8y8hCr6q1w7R6owDtTfVl5Qg/1t+3aAXC+9VR
         m3A0XBEtKG+86mfmouDMNv/TlEH4kxSeeTd5ABClhfh37Xaxvy8gxJkhpg1REx3IKetG
         6/O6RBNGkRJNEQFl9MV1NTxYMGJiGWCpRhipO5TDDeDZe5kUNLaRu9kATMIS2cGzqXJN
         f3BxPCCscPdIAA+k2WfuBKVyJJzo/RDvrrCjyKtl0d4uTFgHJkprmEXZU91tHRUPzGZ4
         yAbQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=XOWTgARk;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c1si347374iot.4.2021.04.10.01.31.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Apr 2021 01:31:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=XOWTgARk;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id D7CCB610C8;
	Sat, 10 Apr 2021 08:31:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1618043503;
	bh=TLe3b6eYl5WXk+SrGIqyCYCg/bSYEiSQG3SxWxQ8LvE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XOWTgARkjElBB5yfl2YiPxa34rMrEFaaSfFy4aj8LQhv51SAGx8kkJnE8Zsw5OIMQ
	 GtjRRgNIG6KKlmq6Xw56aJN5xl+ZAKr1CHYAP1/AqawFIMr+nwsXnozcD5oHroHaEU
	 4FBOy9Ackv95/ZB573PW3fxr9HnEq++B1TyNRpGY=
Date: Sat, 10 Apr 2021 10:31:40 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Mitali Borkar <mitaliborkar810@gmail.com>
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: Re: [PATCH 0/6] staging: rtl8192e: cleanup patchset for style issues
Message-ID: <YHFibAvRrun6Jk6T@kroah.com>
References: <YHEAnyO11wgp5PNZ@kali>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YHEAnyO11wgp5PNZ@kali>

On Sat, Apr 10, 2021 at 07:04:23AM +0530, Mitali Borkar wrote:
> This patches fix the cleanup style issues.
> 
> Mitali Borkar (6):
>   staging: rtl8192e: add spaces around binary operators
>   staging: rtl8192e: remove unnecessary blank line before brace
>   staging: rtl8192e: remove unncessary blank line after brace
>   staging: rtl8192e: matched alignment with open parenthesis
>   staging: rtl8192e: removed multiple blank lines
>   staging: rtl8192e: align statements properly
> 
>  drivers/staging/rtl8192e/rtl819x_HTProc.c | 43 +++++++++--------------
>  drivers/staging/rtl8192e/rtl819x_TSProc.c | 28 +++++++--------
>  2 files changed, 29 insertions(+), 42 deletions(-)

You emails are not threaded properly at all :(

Look at how this showed up on lore.kernel.org:
	https://lore.kernel.org/linux-staging/YHEAnyO11wgp5PNZ@kali/

See, only the first email shows there.

But here is a properly threaded series of patches:
	https://lore.kernel.org/r/161793058309.10062.17056551235139961080.stgit@mickey.themaw.net

Look down at the bottom of the page to see all patches, and the
responses, linked together.

Please use 'git send-email' to send your patches out as it will
correctly thread things if you do not know how to do this "by hand".
And note, "by hand" is hard to do...

I have now dropped all pending patches from you from my queue, please
fix up your two patch series and resend.

thanks,

greg k-h

