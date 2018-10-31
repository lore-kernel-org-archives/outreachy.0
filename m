X-GM-THRID: 6618627943350403072
X-Received: by 2002:a67:2287:: with SMTP id i129mr4304025vsi.22.1541023445600;
        Wed, 31 Oct 2018 15:04:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:e146:: with SMTP id o6ls396387vsl.6.gmail; Wed, 31 Oct
 2018 15:04:04 -0700 (PDT)
X-Google-Smtp-Source: AJdET5eLp6aXpAcXFwyLCTxLRkCdGhJLTOWSJptEBNzj8KUh0ESp0MEl0/iFXZuYLrAloGVoQdHx
X-Received: by 2002:a67:8509:: with SMTP id h9mr4290433vsd.16.1541023444864;
        Wed, 31 Oct 2018 15:04:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1541023444; cv=none;
        d=google.com; s=arc-20160816;
        b=wi0s9LzW4mCrpQwul64Noi1eECHlhgH2N8vV/WQvn5wsfqzVSZ+lieaYxWtOxmHP0e
         EGk2qUGXSZ689mjPzgKbW/0Z8vY55H4LMNVzIqcoxkD010xBuK5gXUwOJHfi1AwvBHPG
         Q0ZKrS+kSkDZ7wds88VmuPG8m1HlO7ci7fY+uZdz0qtWx/sXHIZnt+AC1a2mH469A/RA
         l/UFnV9EglNCp/r5jDNdXE5NkZsDN+DLnvvhsB4CJ4TPvuEjkhoyU1uI88h1QsyvUM4j
         Df01+vOdTDaJHPPvYIHbTOoAanTwubQpqKZDIOHdC48QQXUSh/qsUkJgdTPQdlOcLVl+
         lHBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=0SvtflMpxdgVOG0mW9QZs2zECjRfULcDNrCg6ZHgC3Y=;
        b=kMLhL9jvGVLCM9lb9YQbxtwnRzD+M5j/YBBZrEhVC02f/wRP1r+A66e4VaONvU3w+X
         nq4Dg6vbQuc3nIuNTw19PNjRFzNyu7QnnpqFkegXxCmqHaDuZ9ue0xo59KRod9wU3o3A
         se1lV2Po8Nj0JcZO/4ay8iT7nI4lyMo+QfG7X4aLxcLQS/JZ2Z1Hr1RdnFZpSP6Ue1Od
         vkEcW7hNpo5QmhyKUoOH+vPjBPgAm/bqMe7Yk4jaH6hzs20Jpe8DK9TT9toQzxmhwK9j
         dYgh56Jb3OQ4mDXRvZ2oupRwg4b6uR0QtfgBTO1Q69R0AvO554Ez/7twrM8UV6sR/y0w
         C/xg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=FXtCRYC6;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Return-Path: <sashal@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o138si1100022vkf.2.2018.10.31.15.04.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 31 Oct 2018 15:04:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=FXtCRYC6;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from localhost (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 47F0D2080A;
	Wed, 31 Oct 2018 22:04:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1541023443;
	bh=tPRYjr4f24RUnuoLRrI+n+MKCYoiuWM/SO9U/m4rWqE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FXtCRYC6+lHpfjN3nBrCMfcZp/qoV9L/nUw89uaN64gxf8jo0m8UDD0nRvlPUMNct
	 bJCVOonWO/jPF047GbNicFciDCFkPRYisk6R+qvpc73ZefkBgP6MNFci8SruXXF5Sr
	 jqg5uxUuhNeGcjBqdH8cGlmdP7q6AvcUp48OM0bg=
Date: Wed, 31 Oct 2018 18:04:02 -0400
From: Sasha Levin <sashal@kernel.org>
To: Ioannis Valasakis <code@wizofe.uk>
Cc: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org, sasha.levin@microsoft.com
Subject: Re: [Outreachy kernel] [PATH v3] staging: gasket: Create a memory
 allocation error handling path
Message-ID: <20181031220402.GX194472@sasha-vm>
References: <20181031205636.GA13583@kvasir.local>
 <alpine.DEB.2.21.1810312158190.2391@hadrien>
 <20181031211626.GW194472@sasha-vm>
 <20181031212451.GA10228@kvasir.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20181031212451.GA10228@kvasir.local>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Wed, Oct 31, 2018 at 09:24:51PM +0000, Ioannis Valasakis wrote:
>On Wed, Oct 31, 2018 at 05:16:26PM -0400, Sasha Levin wrote:
>> On Wed, Oct 31, 2018 at 09:58:58PM +0100, Julia Lawall wrote:
>> >
>> >
>> > On Wed, 31 Oct 2018, Ioannis Valasakis wrote:
>> >
>> > > Create an error handling path for memory allocation. It avoids repeating
>> > > the same assignments and returns the respective ENOMEM.
>> >
>> > I think you are again making a patch based on your previous patch.  You
>> > need to undo everything to get back to the state of Greg's tree.
>>
>> An easy way to deal with the situation you're in now is to use git's
>> interactive rebase. Interactive rebase lets you merge ("squash") two
>> or more commits together, so you can merge all your commits on top of
>> Greg's tree into a single commit.
>Thank you Sasha for your helpful comment. I tried already with git's
>rebase option but that made it a bit complicated as apparently the
>source tree had many changes (even one of the memory allocations was
>totally removed!)
>
>That's why I just removed my commits and did a fresh git checkout master
>&& git pull. Apparently thousands of changes can happen at very specific
>times of the day :)
>
>Is there an 'automatic way' to do often git pulls, so you are sure you
>are working on the latest source tree?

Did you try 'git pull --rebase'? It will update the branch, but leave
your commits on top.

--
Thanks,
Sasha

