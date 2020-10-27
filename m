X-GM-THRID: 6883028084998537216
X-Received: by 2002:aa7:cb8f:: with SMTP id r15mr1315865edt.356.1603791823119;
        Tue, 27 Oct 2020 02:43:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:c04e:: with SMTP id k14ls924620edo.1.gmail; Tue, 27 Oct
 2020 02:43:40 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxywiqLCitqd3mRSsZ9u9zk/mOkGkb11ZfhPPv153H63DDxYOJWPMtfAGINWxKAGzDHBxF+
X-Received: by 2002:aa7:cf99:: with SMTP id z25mr1297586edx.139.1603791820851;
        Tue, 27 Oct 2020 02:43:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603791820; cv=none;
        d=google.com; s=arc-20160816;
        b=yYg/ExE2JPWvnTLbWFhT86vZUwwLwWT9THJZASSsCKDM3/fI5CmJeqlo89Uc/WBoHo
         1xvR4OzU1sny5eapC07w3j+pc5xWC3RizGKniI1KW2R0yxTYQW6wzJ8C41l9JsH1y+mP
         mX8NY41gQ4IIg4SZZudv3xhtGtCdG8QCXkbtobsz9p53qH++M8njZBFLyGW06YbkubDr
         mk2WaFVACrxxK3e+nucINo7FuCSeY/39mBwN3gcNlnMpm/I0zvJgFQKFSJ31KopZs1At
         uNhR/JwpavHLwSkO/w/DCbZlA0KVgoSRezBOqmUiaxE6fiTnGfXs7NQPpv4+8o2ZPtcP
         aRCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=7OvPOOfouHzaQwZRc3tsjxhY1NbEiPztHNA6LhXeztg=;
        b=nylX0AE3Gk1LCM/Fnl6zRHEZvXbgLb0FQLPcGh8kDK5YY/EE6zf8KDTMh+irZIaoZ2
         pl/UtwLVZV1BEjFFx5biDVZrLS3QPTwZQ8E4cwfJxMrMS7pT+ZVQANTiRwBtadUh39bC
         hITFO8GSOOn5EpTBnGK8S651FB5H0S4QqhYCEZB2YQS2P9/AOwJegsjYHpOuxjCtkA2J
         5JS3ABLLgaJF9QW9m11u+CxtGNrSZFaHAE16Wp81Hka3afsTBZiyziLxEDA4gNa1eCQO
         XUjo6XMb42BWsofQuchYSFWwvRpxASd7TpMd1m/g9IaMfLslwAEZJa5kA5JoSsrEEmYP
         wK+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@xs4all.nl header.s=s1 header.b=Ce5c3gri;
       spf=pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.25 as permitted sender) smtp.mailfrom=hverkuil@xs4all.nl
Return-Path: <hverkuil@xs4all.nl>
Received: from lb2-smtp-cloud8.xs4all.net (lb2-smtp-cloud8.xs4all.net. [194.109.24.25])
        by gmr-mx.google.com with ESMTPS id u2si33564edp.5.2020.10.27.02.43.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Oct 2020 02:43:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.25 as permitted sender) client-ip=194.109.24.25;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@xs4all.nl header.s=s1 header.b=Ce5c3gri;
       spf=pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.25 as permitted sender) smtp.mailfrom=hverkuil@xs4all.nl
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
	by smtp-cloud8.xs4all.net with ESMTPA
	id XLVwk5zHLTPdiXLVzksttd; Tue, 27 Oct 2020 10:43:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s1;
	t=1603791820; bh=7OvPOOfouHzaQwZRc3tsjxhY1NbEiPztHNA6LhXeztg=;
	h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
	 Subject;
	b=Ce5c3griuE3rq7Hm1ZJXguo3ZHYTQFgMf+ACLjGIanmZSAghtnMgveq0Tj/ydvKBu
	 75K33Le8aM52XKP+gplF5hHMIksLNgvCgDJTA69pfBGGydphXGzd/tdhcNM9m9sAFD
	 umlEgP2Vsxckoi82cafPuZ+R0XVXhXYexywSLrtvnIceCOijEHikktoYaCMIxbwgj0
	 MpnfIlKteD9Q7v1FB+IquSPFs2mDizWMkLhUL4IoGjGpQZjbQwDuudM512+mMzT8iI
	 2jVgV+pzEkUwvGvyY4enISeiZGS0VdSmcsHEvgWcZmmXWOO/FJYlScrc2/yrKi4Oak
	 /VNTQnI1WwFbg==
Subject: Re: [PATCH v5 1/2] staging: media: imx: remove commented code
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Deepak R Varma <mh12gx2825@gmail.com>
Cc: outreachy-kernel@googlegroups.com,
 Steve Longerbeam <slongerbeam@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 linux-media@vger.kernel.org
References: <9fd1e7dd9e8f944b520f2a789e66e458aeb7b555.1602869338.git.mh12gx2825@gmail.com>
 <20201026040017.GA5074@my--box> <20201026055631.GA779791@kroah.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <81449e51-957e-9478-5146-9c467248ccd3@xs4all.nl>
Date: Tue, 27 Oct 2020 10:43:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20201026055631.GA779791@kroah.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-CMAE-Envelope: MS4xfBckpXBuqDk++qNrP/DL2fhtT53LWzR/R0H3WH/Yh68JaQqDu0rrcpYSVqhFm37W2WbSMRXIBPZK1MYD+6zcIdIVEaR157OHYDnN4BndhFYlUsEB5N4R
 FdbldL2NBZ3CKC9SgECWB2fw0TstvvWEI03+QAI51tf/pAYVI9tP1l+esggEoR27MidNLJUQj8ZtWiBLIkG0vahKZHjDAELnBs16KgUMQiKOiHwc9mHlkv7j
 GfWCF0al32i9gSOxY5S5MeOjFa2+STT7znfn8TQZQQumSauGldGNAq8hSwKtSmr4MhvmOa1rXWlr5lt84zHPM+ZO914QKt3eLZKkGlffJHz+QWzw+Dq16WET
 axiHwZQfJf2NtDUFkGyfFLEO9U2kWSNr8oemLkCVdPvstE+4JdGIAC01QIqNw5pxbkzOkm3aj7hfkmcrk96qjU06S85sCdQ3zMuBmwm5aPnoeeAUeoReV6ji
 Wh/6GDQYbEw+i6teGfbti5YCJDTsmuVKb8q8WglH6mxLRxlBd8bXfU5D54mnQP+ur5IqPWorzlyrV1wnh21zCpiw6xti7Aj8ha6cRw==

On 26/10/2020 06:56, Greg Kroah-Hartman wrote:
> On Mon, Oct 26, 2020 at 09:30:17AM +0530, Deepak R Varma wrote:
>> On Fri, Oct 16, 2020 at 11:10:33PM +0530, Deepak R Varma wrote:
>>
>> Hello All,
>> Request for review / ack of this patch.
> 
> Please never top-post :(
> 
> The merge window only opened up a few hours ago, give maintainers time
> to get to patches (like 2 weeks now).  Also remember, for the outreachy
> project, drivers/staging/media/ patches are not considered and take much
> longer to get reviewed and accepted, as the outreachy documentation
> states.

As media reviewer I've been very, very busy with other things for the past 3 weeks.
I plan to use most (all?) of next week to catch up on things.

Regards,

	Hans

