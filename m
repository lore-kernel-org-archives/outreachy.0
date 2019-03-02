X-GM-THRID: 6663863789016842240
X-Received: by 2002:a24:6283:: with SMTP id d125mr7145484itc.14.1551561537326;
        Sat, 02 Mar 2019 13:18:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:186:: with SMTP id 128ls3637987itk.4.canary-gmail; Sat,
 02 Mar 2019 13:18:56 -0800 (PST)
X-Google-Smtp-Source: APXvYqwVg6XWtq4686d5U0ePusXOezJ7I6RjnVoldEHtsApOY9LR3z+U/+5nv3WzaY2KEag7vU4l
X-Received: by 2002:a24:5dc9:: with SMTP id w192mr7311567ita.33.1551561536309;
        Sat, 02 Mar 2019 13:18:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551561536; cv=none;
        d=google.com; s=arc-20160816;
        b=HzygM8u/pAv/ctos6Qh100G5BA37N4oAwHWYzEuuEb+eIpnCGwNHscwNbclEm6OV+j
         lZdry0uW3VrY/dvKKWsWFXnWgxyBZdaUTU3Dedcokj5hmFtXek+LewiqkBDXoE/V3lMC
         DX1XuwdZeYyletMCpBACO5hAHnLebiOzqTkjd7ZLN/b0iY33meg8O0ykaHwmIG8XgNgz
         LH6zLV/tKXbgn14nz3/ZHGdhRA0hz4NQzGayLItlR4jqjAbWQFBtvgVkv2wbcw3AvEFx
         p+LCgteTJ0QXnBpHe46oGPODH9hjjaJYHO3/gF4zH21AMZ8jBjhO0d8bHXCvCvAnvI7P
         /lgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=ZIdpWNU3+iFQKOxblyySeXMLS6vQVRSVGolqVoljc28=;
        b=nNDotS40C19TIQNlQ58mLxAeSNFFoN70nXEO02bGTlmhPszsUPLUAFj11X6WATDIEd
         45D8c6TDn7GvRro5iQrrhm4XujMM02zPVy9DVgWuroz6lbmhK05ibQXJ7nnrtR5tNzVm
         FfmLYszpth9ZNAs4SB/yEGwFOnkkVczdI3CaS6JS2Ls5Jz9ab4Uqwc/rt2g9bUFPLXVg
         aEUgvWMWRnl4R19o6yYfV/UVAX4Fg5wC7T9c/Y43hGHBGAV6XI66x/qk7gFe+3Ooqhpk
         n9kRjVoBYVyyr4tE0YyN0rWoJ0ZymhmLm1IFLwV0e65jIywWNU7R3SAIEO2cvjfhMu9i
         KxVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=EWPw0nCn;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x22si133396ita.0.2019.03.02.13.18.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 02 Mar 2019 13:18:56 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=EWPw0nCn;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id EC12420663;
	Sat,  2 Mar 2019 21:18:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1551561535;
	bh=eo+IrYgrUdibXm2/nG0ieu8OpTvPWYl370catc093GA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EWPw0nCnDAS5NUfcsgTbwyD02OIv+7MkvUkw7h9Po1XHfmavZw/O2MKEnK0kvCAfJ
	 ApZcw+I6pHZeEiz35p36s5K/Kh6thkJE/p1WWmpwHqdJZHgh04KsNLXz9YxEchT28M
	 Z8VdTtvnUy7W0Nm81pmwfqC1Hlrn0q7sss9VaFwQ=
Date: Sat, 2 Mar 2019 22:18:50 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Cc: forest@alittletooquiet.net, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v4 0/2] Fix checkpatch.pl issues
Message-ID: <20190302211850.GA21688@kroah.com>
References: <cover.1551552831.git.madhumithabiw@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1551552831.git.madhumithabiw@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Sat, Mar 02, 2019 at 01:04:25PM -0600, Madhumitha Prabakaran wrote:
> This patchset fixes the comment styles of SPDX-License Identifier based
> on License Identifier syntax.
> 
> Madhumitha Prabakaran (2):
>   Staging: vt6655: channel.h: Fix comment style of SPDX License Identifier
>   Staging: vt6655: desc.h: Fix comment style of SPDX License Identifier

Again, these look fine.

Now go look at the subject lines of the patches you sent out.  It does
not match these.

Something is really wrong with either how you are generating this
message, or the patches, it does not make sense at all.  They should
always match up identically as git should do it all for you.

Please try sending the series to only yourself next, to verify you got
it right, before sending it to everyone.

thanks,

greg k-h

