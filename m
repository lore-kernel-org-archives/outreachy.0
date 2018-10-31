X-GM-THRID: 6618035235223240704
X-Received: by 2002:aa7:8118:: with SMTP id b24-v6mr435665pfi.64.1540945894293;
        Tue, 30 Oct 2018 17:31:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:4b16:: with SMTP id y22-v6ls5449831pfa.1.gmail; Tue, 30
 Oct 2018 17:31:33 -0700 (PDT)
X-Google-Smtp-Source: AJdET5f5Xk8x6k36Ssx84ps7p6jLIlk5frbTjnPPNfZSoJZ9wjkfxzYxCd0Aq4RnPInZgChma3kE
X-Received: by 2002:aa7:8118:: with SMTP id b24-v6mr435627pfi.64.1540945893431;
        Tue, 30 Oct 2018 17:31:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540945893; cv=none;
        d=google.com; s=arc-20160816;
        b=NaGinzrdMXdEEyV87Bikx9XYwJtVjA310g7guIiu3pROunPr8o4q8dymWf6C1QN3x+
         jrj/5UMnbooKITTZH+qJJfoJ/tk2x9y7VuQPDKllIZsBlfB8bho0OylAQTrg025V5UwY
         WA1zz0aIz7Bwi4DcHsb9gq+sCIchMlefP7VyNRCmWcAimQgoLeGj6RfzS4pV75i4ZDw/
         UXypN2XGMmQSy+DYWnaYPVu4u6WAKeju2oZLNZOprCyyqJWwaYAgr3fmrD8QaOyhbFy2
         6EzO/CEbLq44qiJ6W7dXSiW0Puyymx8YhBtNiqE1z7CkcgmuI2olmlQvUqslicvtdihz
         1idw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=vm7puGjn0qOKsKN7i+hCkegMfdH6p38ili0A4BxdJ5Q=;
        b=vk+prNUhfi1Y+4DmCG6TTfhOnVjNZ83Nge0Xco5hqy/kh7Jim4l2NjO8E04Nm4n4Gw
         EJIO7PgKLRCTSovrWzFil+JBxHmeNUvQ4Kd8tjvi1jR4TPZRxGlJXCtzQpKMjfbMurxC
         j4vzAIM9a3ermzBNiY6h8z8nd2WLpY9B5OXsx5Cczl9r7K/RnYO+TIfTnxg13mPZzxpq
         GXLDyxmZ3nKbQkTtj9ggpZg8rRjUJHXwoN/VF39MKP4vxniloZk5f1wGsvLAoLT5RTVx
         S+HJ3ajFL/a8C2+2Z6mC9KOWlW8OsW9sr+MvBlRNU3Co9v2RYlZvsEGj4ds7tzXxLwEM
         bSoA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=K44BUCIL;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Return-Path: <sashal@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v9-v6si900964plp.1.2018.10.30.17.31.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 30 Oct 2018 17:31:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=K44BUCIL;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from localhost (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C88022082B;
	Wed, 31 Oct 2018 00:31:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1540945893;
	bh=I4kTTugzuYx9xgFRm8UP8vP4nejKXDT/a8eVmsRTUZE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=K44BUCILYVkiXAA+pKHsVOvcdytW0CTKRsuG4vdrpBueCoxH8pXRlOGp+YIO2P/9R
	 DTSBw4p3x99tLKATlQl1Om/oHfZh+Ic1RwIhW3NLl66SKDF1DAlmpu0V3T/iACLL8+
	 noM6jKwyWZqX0MKIAhlcRanvI/+UTf1j2mmkc+7k=
Date: Tue, 30 Oct 2018 20:31:31 -0400
From: Sasha Levin <sashal@kernel.org>
To: Maya Nakamura <m.maya.nakamura@gmail.com>
Cc: Julia Lawall <julia.lawall@lip6.fr>, gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtlwifi: Remove unnecessary
 conditions
Message-ID: <20181031003131.GF194472@sasha-vm>
References: <20181030063636.GA5098@k-vBox>
 <alpine.DEB.2.21.1810300845370.2443@hadrien>
 <20181031000614.GA2226@k-vBox>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20181031000614.GA2226@k-vBox>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Tue, Oct 30, 2018 at 05:06:15PM -0700, Maya Nakamura wrote:
>On Tue, Oct 30, 2018 at 08:46:21AM +0100, Julia Lawall wrote:
>> On Mon, 29 Oct 2018, Maya Nakamura wrote:
>> > @@ -168,9 +159,7 @@ void phydm_init_debug_setting(struct phy_dm_struct *dm)
>> >  	dm->debug_level = ODM_DBG_TRACE;
>> >
>> >  	dm->fw_debug_components = 0;
>> > -	dm->debug_components =
>> > -
>> > -		0;
>> > +	dm->debug_components = 0;
>>
>>
>> Does this belong here?  I don't see an if nearby.  You should make a
>> series if you want to do two different things on the same file.
>>
>> julia
>
>Thank you, Julia, for reviewing my submission! I will separate different
>types of fixes into their own patches and resend these.

Hi Maya,

I'm guessing that while you were working on your original plan to remove
unnecessary conditions you saw the weird looking piece of code above and
decided to fix it as well. As a result, while you dealt nicely with this
cleanup, you ended up with unrelated changes in the same patch.

An easy way to work around it is the '-p' flag to 'git add'. This flag
lets you interactively select hunks to stage in git; you don't have to
'git add' and entire file, but can just add parts of it.

This way, you stage only the relevant hunks and 'git commit' them when
you're ready. Rinse and repeat for every set of hunks that represents a
single logical change.

--
Thanks,
Sasha

