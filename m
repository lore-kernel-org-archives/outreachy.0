X-GM-THRID: 6669790779822571520
X-Received: by 2002:a81:3653:: with SMTP id d80mr10041846ywa.20.1552939597229;
        Mon, 18 Mar 2019 13:06:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:3414:: with SMTP id b20ls4321267yba.2.gmail; Mon, 18 Mar
 2019 13:06:36 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzNpBVGM6MqovYtXzL6cLvMTenNCu8RKwzKns40ybuG9m+gvOzSaGenGa6y6MfTOQEJCSoW
X-Received: by 2002:a25:2351:: with SMTP id j78mr9758102ybj.36.1552939596438;
        Mon, 18 Mar 2019 13:06:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552939596; cv=none;
        d=google.com; s=arc-20160816;
        b=uta/UbMNCCX+5sgN8ZtlPxCuImkWI7CIiHG+2IWw+GBDsHy8tozAOawlib6LdQdwL6
         s6TZU6LynjBb2SmaMnrdOOZhmrhd0pOIkN7/hvYQmftkudfNLaRd9fYWczSPB+s+Etpn
         1y4tqq4hrtsJ02tDFnFP82dQHiG5srLaBNOcylF6UECSDSbEsG3AlWW59AoP9dPYheGM
         9O7ROELyw9MTH6xPjUfjjk5kLIKJsbWM+FAPKQlKPnAX9Xhic4m3XM9aBcL56gUgYR+c
         YcIR114sMXBPkW0OtnFh9Ijom16zi5fqG/wOWkigp59Z9VEFaiJB6LCFIC+pmIZ6Lp+y
         uwcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=LEhqjmcTQwXE5byxFlAALusTcAof7T8V9xuj+MWJJMI=;
        b=PyczGc0LNlwNaV6p6cJQtPKAz69g8r33iu3XRknbg/X87UA235B4etN5cDHcjlFRmH
         aiege5EtUbQtTo/IzXSASQhtJ0Rb2zNn6gLDTVdUke1CLygWj2tlL7SB6RVHrloVIc3O
         5JRTutqTDQMFRt50XA8++yEgO1NS5UztdAcEuHDg8w+TH+No/Rpret2ERY0Qf/Ew72YG
         KpeBuLXgP87uZYr/hQJ48YZBkPiChOvvISFYRYk2Zuz8PbSMv66pvDSP7mVbwQGQcSOe
         wWj4LMcAYPXskrSWXtSBVA5ieS2S0L9E51dtWBvawGeX8cnLlBvyUMfr6OZ1Nh3a8BeK
         nWwA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=MHA+gKVc;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r128si738257ywd.0.2019.03.18.13.06.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Mar 2019 13:06:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=MHA+gKVc;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id E84F220989;
	Mon, 18 Mar 2019 20:06:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1552939595;
	bh=o4zMprhZXmgG3+Tyrd1MPo4L+JwvrxiMrgkEZRxdy90=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MHA+gKVcBj4pFCJOOKSMiSqaNzsuRikXfr+3+O9n72i7rkbJ67508wZbQyvEDzHxZ
	 HqPjvr1jt1rjFBJxOKwlnq7rTYtyvgM64jGtwmtxrYRHV/WXevSVabbldgB/jaAeaz
	 dsVNhbHoC6mhtvGwyl23dPuVqoldObN0mRAPXjoo=
Date: Mon, 18 Mar 2019 21:06:33 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v3] Staging: gasket: sysfs: Fix string split issue.
Message-ID: <20190318200633.GA21029@kroah.com>
References: <20190318175426.6507-1-sanjana99reddy99@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190318175426.6507-1-sanjana99reddy99@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Mon, Mar 18, 2019 at 11:24:26PM +0530, Sanjana Sanikommu wrote:
> Concatenate a multi-line string constant into a single
> line.Issue found by checkpatch.pl.
> 
> WARNING:quoted string split across line.
> 
> Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
> ---
> Changes in v3:
> Correct the subject line.

This patch is already in my tree.

thanks,

greg k-h

