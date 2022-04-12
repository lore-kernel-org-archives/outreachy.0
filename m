Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CAB53D87
	for <outreachy@lists.linux.dev>; Tue, 12 Apr 2022 21:30:17 +0000 (UTC)
Received: by mail-pf1-f174.google.com with SMTP id a42so184794pfx.7
        for <outreachy@lists.linux.dev>; Tue, 12 Apr 2022 14:30:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cs-iitr-ac-in.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=bKc2RsG7u0Dt9SRYrdepMbEzWeuJkK4ThHyJlKzG4oQ=;
        b=KvGviDahz+0YxI4Ikdgo2vKDTpdEKuUdKS0LYj1ul1SopRDHL2WTRg3B7lZb+G5BXQ
         LLz2+aXrSvqvyscboBTUiCg7RIFAhidq6am/3nwGtpp5axMP3ebS5boDlxfZzXH+aRhx
         qaLgBg9AvSkRfR1pX9sJbgmlEhK88ttwpgCX4dIrOdy3O5ZoIHCYxixh+IAfj1OucRJW
         eCeb3DHLKPyIOayoBJcK1HZT7L09K3TYhIR1BtzUdbbCWTTAotB5hSHUcWyS4Mwq/Ezj
         ebREbAEiDq+b/h1CDf8gxUMUHRiPQCbP9d0GYjxEqP3itNGatAptHDF87Wk/PS8suAVw
         +clQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=bKc2RsG7u0Dt9SRYrdepMbEzWeuJkK4ThHyJlKzG4oQ=;
        b=XXcTXZHoLbiNojiXKtN9QuP6WQy30hhdac2w1fRQbhHeznqd2twXYwvyOHUc77WOJ3
         Tu9zOHwIM3bd+idLu4PS64bGMzGNXcaz9q3dtSKogtiKrVwc/lmwFaU5LnxSKUD+x02L
         2f8W4Uu4UzVCexrJ7G7GI3tnkcJ+nkk45uTcQG4/L4pV4i/UbYUFWiBToOkdTI+872Ow
         qhyyqVLptN+bO9a573qp+rYacgJ4OWEkp3rCa7h87FpqxFjCbJeJNbwOfeJLNNKfMTTX
         fW6G3osUwjKksaOebwzJ3i1NDIdN+f1cSUiM/9rxfhTZgIJHisjGs4v5B0IrDBfR21X9
         v8hA==
X-Gm-Message-State: AOAM5330IUq9MQlaEA50gYouvPv0d1fHji89LG19lZuk0RWZockFuPRY
	XLrORWtWaD7hkaOnYf7wwMfE1g8hQA9IG51EMFb7Yw==
X-Google-Smtp-Source: ABdhPJyyil8BZGNUAaxupefL2LwqP4c7rGgTZBi2Ndy2D3Tc3LXcIpd0IqCPcKte9vCXggWHFoPkUNDd64ZCAnDRD9E=
X-Received: by 2002:a65:638d:0:b0:39d:74ad:ce0b with SMTP id
 h13-20020a65638d000000b0039d74adce0bmr7400676pgv.103.1649799016617; Tue, 12
 Apr 2022 14:30:16 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <20220411205321.13109-1-mahak_g@cs.iitr.ac.in> <c5fc1685-b1cc-7cfa-1ddd-e2f93105c2a5@intel.com>
 <027acae3-29ee-ae35-4448-a56e66383849@lwfinger.net>
In-Reply-To: <027acae3-29ee-ae35-4448-a56e66383849@lwfinger.net>
From: MAHAK GUPTA <mahak_g@cs.iitr.ac.in>
Date: Wed, 13 Apr 2022 02:59:39 +0530
Message-ID: <CANnaPbBpWmp3PUgp=yRxhykzKjpP1HHh9Fk0aEBJ_+EGNUStvA@mail.gmail.com>
Subject: Re: [PATCH] staging: r8188eu: correct multiple misspellings in driver r8188eu
To: Larry Finger <Larry.Finger@lwfinger.net>
Cc: Dave Jiang <dave.jiang@intel.com>, Phillip Potter <phil@philpotter.co.uk>, 
	gregkh@linuxfoundation.org, linux-staging@lists.linux.dev, 
	linux-kernel@vger.kernel.org, outreachy@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

On Tue, Apr 12, 2022 at 10:48 PM Larry Finger <Larry.Finger@lwfinger.net> wrote:
>
> On 4/11/22 16:28, Dave Jiang wrote:
> > Subject:
> >
> > staging: r8188eu: fix multiple spelling errors in driver source
> >
> > Given that it already annotated that it's the r8188eu driver, no need to add "in
> > driver r8188eu".
> >
> > Maybe the log can be something less terse:
> >
> > Fix multiple spelling errors reported by checkpatch.
> >
> >
> > Probably doesn't hurt to fix other issues on the same line while you are at it.
> > See below...
>
> Wrong on the first and last points. That subject is exactly what should be used
> - it describes what is being modified.
>
> A given patch should fix one, and only one, problem.
>
> Yes, the commit message could be less terse, but that is not a problem.
Ok so considering the last comment, I am sending version 2 of this
patch with an appropriate commit message.
>
> Larry
