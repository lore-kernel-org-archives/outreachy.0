X-GM-THRID: 6666450306579038208
X-Received: by 2002:a9d:5f17:: with SMTP id f23mr21668752oti.31.1552411105059;
        Tue, 12 Mar 2019 10:18:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:c4c1:: with SMTP id u184ls803491oif.8.gmail; Tue, 12 Mar
 2019 10:18:24 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxvT2iY11DFfEss7cfMcds72esl645+eZXzLn6j/VYuobDbSahufT14Kv1KeO8okl0RaXWL
X-Received: by 2002:aca:e103:: with SMTP id y3mr2768748oig.52.1552411104042;
        Tue, 12 Mar 2019 10:18:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552411104; cv=none;
        d=google.com; s=arc-20160816;
        b=ZTRvifzTKV44rxvU5e7pZiuwFNrzT/2oszwc2jJrUbnZlwHwKic9PO/ejXUw4C4qmh
         lscTGnScMaZ9IcmrhOJs7USKqLKTAI/cfEiSheQ+o+0pTQ0XKKtAbRR60mQhtIaDS4e/
         RXlo0ydQ4crcnugeQJCgqvTTCOsdJLRK0CVlZOiNFDnYiJ6PGUznrNPvZkP/LzMzHo3I
         IPyzw80kzlhKLfI16jD89ftMz1Ei7UCHtP57W2rtp56qLg604a/OUFQK7wnBMzMCpyVt
         HZAKUpdrRcgmyAhiiBI7s+cMz6Acc26KatRuU8mZZym25hQjIRCZMFzKd+eZ4/FVz7qP
         5HAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=tn4coiS7E4VjUBjJL8zjLGC9GM2LCshZ3jxBnMfuyuE=;
        b=q6tirkyzH3oly5faxu/u1OpJZxSMJQHTU6b/YoEyRqqAoh0yNcdx/nvcuOMiOgkALj
         guA7dOXlO2nI52rZbtgMJxDLlJ8u8J9uk7CMXeNapUqMH1OzTN+zByfsy2DpB3UQGKcZ
         QB5HI6AYwmJz/O7zdvNHa6DcRfNHYRPtaOu4h1lazi36R78bB/Xm7fv5EbM2FC9cvl68
         77xbZBM2WaVl0lgCIm1HKLZMTPJQA2dHxpJevMsEqsxlVl1Xy0LAot/ISnt9ATUDeyJo
         OajU+fvc01QXEtEWFqqlq0eBtOkuXMMHsQNrX6fr+tNV/tI/e6ZwFQ9wnA+PLfOwZzrd
         tKig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=mK55hgH0;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 135si601223oia.1.2019.03.12.10.18.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Mar 2019 10:18:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=mK55hgH0;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [104.133.8.98])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 24988217F5;
	Tue, 12 Mar 2019 17:18:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1552411103;
	bh=9347abpTmy1uAeEh/n4UdcpzdOKVGKf+gvtGEkoOmGk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mK55hgH03+r3qHFFVcumF1wb3+eMh4QMkfrlx4KDnrZncy4FMOgPlr6KqQamhnDjK
	 KMI2pEhrMaoS5UMsfC8gRRgp6aC5Jp2gswdYQ5DE/+E6enBX50g37FOkjWPRCNbxuL
	 oqmknXfXrW86nojRNreTGLCV6X/XoHW8i42+09Zw=
Date: Tue, 12 Mar 2019 10:16:53 -0700
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Bhagyashri Dighole <digholebhagyashri@gmail.com>
Cc: Outreachy <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH v3] staging: rtl8712: Comparison to NULL.
Message-ID: <20190312171653.GA32716@kroah.com>
References: <1552410737-25750-1-git-send-email-digholebhagyashri@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1552410737-25750-1-git-send-email-digholebhagyashri@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Tue, Mar 12, 2019 at 10:42:17PM +0530, Bhagyashri Dighole wrote:
> Replace NULL comparison with '!' operator which is indicated
> by checkpatch.pl.
> 
> Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
> ---
> Changes in v3:
>   -- Make version three.

I know you made a v3, that's obvious from the subject line :)

What is not obvious is what actually changed from v2.

Please fix that up and make a v4.

thanks,

greg k-h

