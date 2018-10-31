X-GM-THRID: 6618035235223240704
X-Received: by 2002:a25:4157:: with SMTP id o84-v6mr980918yba.0.1540962085660;
        Tue, 30 Oct 2018 22:01:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:bb8d:: with SMTP id y13-v6ls5926458ybg.4.gmail; Tue, 30
 Oct 2018 22:01:24 -0700 (PDT)
X-Google-Smtp-Source: AJdET5dYAARF59qPbC17gWagSaAz4cGbpNYdfPrM2S2kurqppglVXxUpeVfNkDesS7/ant2Vrifg
X-Received: by 2002:a25:ac90:: with SMTP id x16-v6mr1014011ybi.3.1540962084790;
        Tue, 30 Oct 2018 22:01:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540962084; cv=none;
        d=google.com; s=arc-20160816;
        b=X9kApZMN9yp/BY2TO4wIW9q2gTAZrjtBCTr0bCffT2AxizXs22popTGtBnTIhHc66/
         KlbKqh1ZlBob4HM3sJYJ9YQJVVRzOGNIR5QQYxq2/kJ0BB6j4JmW0gEfY39gXUHAur3s
         cg4MCCIm0HFvv6EG0io1js1Nl6DLlY9KPZJE6Sirvagsv2jakJjB/FZVocOrYiFTI/o+
         1I9d15/ZzV6yGMWsk8Abu5C0Osfj6tJr2UFKofhMGG4gmG8q5Mowl6ujU/5uZUybelta
         n8P0jGyrBFsevaMiXCMj4xCz5VowNHocMd2FbCMkP19iwDMYHStq1pVROj/PKdZdEFfN
         jaXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=nk1i7rcAIgdy77xueg/cG7+StiNTukwLB/+Jdv6szrw=;
        b=fj5y3Y1wifSf54uiY3XmtGq733B4spse89G0wVXew7rQNZJHwmVwRigmyUTpZYlWr6
         sGlqCobeotiY8OJHL4MqD+vR2dFUBq0uM2xWaxzpKCyjikpB+6aNZn5SLDhdHdaFi5D9
         Yvvnwth3OIvyukQ4WHc2AKj8aAH6QTtzq7fKY+v//FvCBQmg7hgfdAlpeEVU04rQol0u
         KNWtezspUdB0GGSqgfoQahXd5KfOErDVAXq4q5skoGkARccFEz7LP9muw6g9Mh5Et3vq
         ukX7ApiLBSHBVKcwwpuBpGisYT13SDRvKI/Rk7J9cq5K5JpLPapUJH1qx3nFnJdBbplg
         Kf9Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VbP8mlsJ;
       spf=pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) smtp.mailfrom=m.maya.nakamura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <m.maya.nakamura@gmail.com>
Received: from mail-io1-xd43.google.com (mail-io1-xd43.google.com. [2607:f8b0:4864:20::d43])
        by gmr-mx.google.com with ESMTPS id 192-v6si968847ybv.0.2018.10.30.22.01.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 30 Oct 2018 22:01:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) client-ip=2607:f8b0:4864:20::d43;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VbP8mlsJ;
       spf=pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) smtp.mailfrom=m.maya.nakamura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-io1-xd43.google.com with SMTP id f12-v6so5545881iog.0
        for <outreachy-kernel@googlegroups.com>; Tue, 30 Oct 2018 22:01:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=nk1i7rcAIgdy77xueg/cG7+StiNTukwLB/+Jdv6szrw=;
        b=VbP8mlsJiF7yfmlx0lEXRQpmLg1ML0vrc7wOYinCTlijJsAaYAl94INwOrrBU5G9NT
         FXRWQNdDFTb+Yr6HVb+6wPyP1IjuyYG22tAKIdvaACPqaLK0OYZCTrmr+xuZxwMdrECv
         WeGuIK6ylKTxl0VkS1ZWk1DJrcGqByP5+Sbt1pBCiA3T0WNdlmF4wRRZV4Nd0CEYL+Jt
         PO50KMPAtuw5jWa2LPeayOA4U04BOKx8JYfBjHwIt4rGzz9wotoH0Ot3XsD/Ek4NVWHA
         7CE+RMImfIPN55CoC6hgVZ3/Mim3gcC6AEW0i9JOm8m5hEznctfQnkbsNemGdhkY/AqS
         jNwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=nk1i7rcAIgdy77xueg/cG7+StiNTukwLB/+Jdv6szrw=;
        b=WyO1NkIjF4ILwczm0SEWvUusfUJafb1bCU2htr6YKP8ivoUzVR7t6/6QMwc9TpNJ/p
         HfyxtiKozGB5J0cGHxxoix5kk60LTLnst5xs9ZJ9prU3fXPmYMjxkorjSYZtkZKp5Hyi
         9Pp9cw4qp5KCTnZ4370iIeeZDnKU4i9Rg12gVM9KsDcraF0kWMbReY0M8F8NZtmo3jnF
         Be2YtRBflUf+1cxFwMqGqPy+6liNbeWcg+5diQQgb1tzaLpcqaNvN8FYAUk8e25C4aEo
         B1sSeIl7qzsg3b9KN5BLSGK9wnX8xAf7Na3f+YEuA650A2uoZPX3loFs1mRrRu5m5WDc
         /5/Q==
X-Gm-Message-State: AGRZ1gLJfeQDefbYbth4xGUYUPgE3Vjoy9KXm6IO89e3x5O7ArF2u0/G
	ILWO7wV80a2LVwPco0MlZ3ppVTpHGWQ=
X-Received: by 2002:a5e:8619:: with SMTP id z25-v6mr1115752ioj.28.1540962083924;
        Tue, 30 Oct 2018 22:01:23 -0700 (PDT)
Return-Path: <m.maya.nakamura@gmail.com>
Received: from k-vBox (50-47-85-193.evrt.wa.frontiernet.net. [50.47.85.193])
        by smtp.gmail.com with ESMTPSA id j1-v6sm8781465iok.33.2018.10.30.22.01.22
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 30 Oct 2018 22:01:23 -0700 (PDT)
Date: Tue, 30 Oct 2018 22:01:21 -0700
From: Maya Nakamura <m.maya.nakamura@gmail.com>
To: Sasha Levin <sashal@kernel.org>
Cc: Julia Lawall <julia.lawall@lip6.fr>, gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtlwifi: Remove unnecessary
 conditions
Message-ID: <20181031050120.GA3667@k-vBox>
References: <20181030063636.GA5098@k-vBox>
 <alpine.DEB.2.21.1810300845370.2443@hadrien>
 <20181031000614.GA2226@k-vBox>
 <20181031003131.GF194472@sasha-vm>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20181031003131.GF194472@sasha-vm>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Tue, Oct 30, 2018 at 08:31:31PM -0400, Sasha Levin wrote:
> On Tue, Oct 30, 2018 at 05:06:15PM -0700, Maya Nakamura wrote:
> > On Tue, Oct 30, 2018 at 08:46:21AM +0100, Julia Lawall wrote:
> > > On Mon, 29 Oct 2018, Maya Nakamura wrote:
> > > > @@ -168,9 +159,7 @@ void phydm_init_debug_setting(struct phy_dm_struct *dm)
> > > >  	dm->debug_level = ODM_DBG_TRACE;
> > > >
> > > >  	dm->fw_debug_components = 0;
> > > > -	dm->debug_components =
> > > > -
> > > > -		0;
> > > > +	dm->debug_components = 0;
> > > 
> > > 
> > > Does this belong here?  I don't see an if nearby.  You should make a
> > > series if you want to do two different things on the same file.
> > > 
> > > julia
> > 
> > Thank you, Julia, for reviewing my submission! I will separate different
> > types of fixes into their own patches and resend these.
> 
> Hi Maya,
> 
> I'm guessing that while you were working on your original plan to remove
> unnecessary conditions you saw the weird looking piece of code above and
> decided to fix it as well. As a result, while you dealt nicely with this
> cleanup, you ended up with unrelated changes in the same patch.
> 
> An easy way to work around it is the '-p' flag to 'git add'. This flag
> lets you interactively select hunks to stage in git; you don't have to
> 'git add' and entire file, but can just add parts of it.
> 
> This way, you stage only the relevant hunks and 'git commit' them when
> you're ready. Rinse and repeat for every set of hunks that represents a
> single logical change.
> 
> --
> Thanks,
> Sasha

Thank you for teaching me, Sasha!

You read my mind :-) I included changes that I had not targeted because
I found one and Julia told me about the other, and I thought that it
would be clear if I wrote about them as part of the commit message.
Sorry, lazy me.

I have never used that special flag. That is fantastic!

I will keep in mind: only a single logical type of change in a patch.

Maya

