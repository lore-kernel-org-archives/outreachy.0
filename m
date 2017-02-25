X-GM-THRID: 6387816856867045376
X-Received: by 10.157.56.118 with SMTP id r51mr2282348otd.94.1488009984001;
        Sat, 25 Feb 2017 00:06:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.0.1 with SMTP id 1ls9101471ota.5.gmail; Sat, 25 Feb 2017
 00:06:23 -0800 (PST)
X-Received: by 10.129.43.194 with SMTP id r185mr2468917ywr.135.1488009983651;
        Sat, 25 Feb 2017 00:06:23 -0800 (PST)
Received: by 10.202.215.6 with SMTP id o6msoig;
        Fri, 24 Feb 2017 23:55:02 -0800 (PST)
X-Received: by 10.157.61.37 with SMTP id a34mr2426566otc.128.1488009302042;
        Fri, 24 Feb 2017 23:55:02 -0800 (PST)
Return-Path: <greg@kroah.com>
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com. [66.111.4.28])
        by gmr-mx.google.com with ESMTPS id c201si1133564ywb.3.2017.02.24.23.55.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Feb 2017 23:55:01 -0800 (PST)
Received-SPF: neutral (google.com: 66.111.4.28 is neither permitted nor denied by best guess record for domain of greg@kroah.com) client-ip=66.111.4.28;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@messagingengine.com;
       spf=neutral (google.com: 66.111.4.28 is neither permitted nor denied by best guess record for domain of greg@kroah.com) smtp.mailfrom=greg@kroah.com
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id 98FBA207BA;
	Sat, 25 Feb 2017 02:55:01 -0500 (EST)
Received: from frontend2 ([10.202.2.161])
  by compute6.internal (MEProxy); Sat, 25 Feb 2017 02:55:01 -0500
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:date:from:in-reply-to:message-id:mime-version:references
	:subject:to:x-me-sender:x-me-sender:x-sasl-enc:x-sasl-enc; s=
	smtpout; bh=sca3AmxOiNGO7oNMM6aEZKaCAFc=; b=JqcxCw00ukwkv7bH+q6c
	FTWlluOXTlz674w7AR4xfsXoR1/D5GOnfrwl9e6mosw5UM4FCkx7PnW1HDOp+S3b
	TywNhDwvK31PT177L7MLQS7EF58fAUoMDhQSDVQVAjiv77Uiu7QWsURmjvQlGLEg
	q3n4Xkq4JG7bvpc9lAq1sFk=
X-ME-Sender: <xms:VTixWHNDMIVufguFYelZo-kKIBgTZ4glC-WiNiIql3TexiTW_zVs_w>
X-Sasl-enc: Kqm5gupNBpZ2wVwhWB9hUyNFVcd+dfWpKjnjFgS1ZhF7 1488009301
Received: from localhost (unknown [78.192.101.3])
	by mail.messagingengine.com (Postfix) with ESMTPA id 3C16124335;
	Sat, 25 Feb 2017 02:55:01 -0500 (EST)
Date: Sat, 25 Feb 2017 08:54:32 +0100
From: Greg KH <greg@kroah.com>
To: SIMRAN SINGHAL <singhalsimran0@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] Re: [PATCH v2 3/3] staging: rtl8192u: Prefer
 using the BIT macro
Message-ID: <20170225075432.GC1614@kroah.com>
References: <20170217175059.GA26957@singhal-Inspiron-5558>
 <20170224171613.GA376@kroah.com>
 <e1cde734-003d-4b3d-bba0-d37f5edd8e2b@googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <e1cde734-003d-4b3d-bba0-d37f5edd8e2b@googlegroups.com>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Fri, Feb 24, 2017 at 12:10:21PM -0800, SIMRAN SINGHAL wrote:
> 
> 
> On Friday, February 24, 2017 at 10:46:21 PM UTC+5:30, gregkh wrote:
> 
>     On Fri, Feb 17, 2017 at 11:20:59PM +0530, simran singhal wrote:
>     > Replaces left shift operation (1 << d) by BIT(x) macro.
>     >
>     > Fix the checkpatch.pl issue:
>     > CHECK: Prefer using the BIT macro replacing
>     >
>     > Signed-off-by: simran singhal <singhal...@gmail.com>
>     > ---
>     > �
>     > �V2:
>     > � �-modified patch message.
>     >
>     > �drivers/staging/rtl8192u/ieee80211/ieee80211.h | 140
>     ++++++++++++-------------
>     > �1 file changed, 70 insertions(+), 70 deletions(-)
> 
>     The last chunk of this patch did not apply, please fix up and resend.
> 
>     thanks,
> 
>     greg k-h
> 
> 
> � Can you please elaborate what's the problem with the last chunk of this patch
> and�
> � to be more precise what do you mean by "last chunk of this patch". I am not
> getting�
> � what's the problem with this patch.

I don't know what the problem was, just that it did not apply properly.
Take your patch and try to apply it now to my tree and see what
happens...

thanks,

greg k-h

