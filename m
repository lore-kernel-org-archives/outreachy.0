X-GM-THRID: 6392225228462751744
X-Received: by 10.36.124.71 with SMTP id a68mr121716itd.13.1488312708836;
        Tue, 28 Feb 2017 12:11:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.56.105 with SMTP id r38ls2191693otd.15.gmail; Tue, 28 Feb
 2017 12:11:48 -0800 (PST)
X-Received: by 10.176.4.67 with SMTP id 61mr1091040uav.30.1488312708406;
        Tue, 28 Feb 2017 12:11:48 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id f7si187210pfk.5.2017.02.28.12.11.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Feb 2017 12:11:48 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id x66so1732587pfb.1
        for <outreachy-kernel@googlegroups.com>; Tue, 28 Feb 2017 12:11:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=3bFUs5DCnqsmdMXfc4lLK6i1R2FcHuCRTnnJymbhHRs=;
        b=PEfie2X78a1UCksrEG8+1l3C64N08Gei0sYhkCZRw5gyWnBV7NrzAwfo5IjIitfU1P
         UOtOy67HEWjK3qIUvJfc+/pN4C2QPL6qDN9BWH/hJCGxQZ9g9ia5OgtvCLl4VbhzAuOH
         TrQ7+l9G4ue0C31OGiE8yTFewp/I+7LeAf7G8NIf+hMf8Hh4rc48qna8Koh6lXZaZpEG
         9H88/q1GMZ9CqPYIZyUaLjumMNAM/nChp10haug1pcb9FRzIKbF69HQ2XCFsPlYtyjMY
         HBZkIbI4nEnoIqDPxnFfz3Ul5NFPOM61L+5xLM1OCnYm3l4H+/jZSHMB41u5f5DW4yvX
         3HGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=3bFUs5DCnqsmdMXfc4lLK6i1R2FcHuCRTnnJymbhHRs=;
        b=gemee+VWl1jL/MxR/O1+6N918rFgqOJ2bdUWh8ptzfbCm8PjLPzH6Z15Yi55dkRUIs
         7qOry3JCbIqKljrEsHgjsi8m7phcho+/QQAoJCBsjlaXTXE5w1aTEAW9G4eHBGOpL32p
         GmmfCUsgz1dfZuQN6zZdD8Qn1bWCb0pup7f3zQh3C82KA7vppnvp2ze5vEVFFsf4C6Ez
         urOLC10H2TVEm2mX7Vh9Rdyx6fufCWA9UgQNYQY8vEm96j5rVjfgbjZxKn0UmF3Wn+1a
         Ut0q3p6YCQBk0vCg6OnRJSp5pGJx2+ZKOzuV3qpHdhqpe1VeGNOnkQT7uqHmR8OliYMd
         73Dw==
X-Gm-Message-State: AMke39lLQZC0vlf7W2NnW2AxIG+WFfo5lyyfzkbKirbxDXCAJHBrXly+gaTj4+i0bUVcYA==
X-Received: by 10.99.42.78 with SMTP id q75mr4495355pgq.144.1488312708147;
        Tue, 28 Feb 2017 12:11:48 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id t12sm5865756pfg.14.2017.02.28.12.11.47
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 28 Feb 2017 12:11:47 -0800 (PST)
Date: Tue, 28 Feb 2017 12:11:46 -0800
From: Alison Schofield <amsfield22@gmail.com>
To: Tamara Diaconita <diaconitatamara@gmail.com>
Cc: mchehab@kernel.org, gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com,
	Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 0/5] Fixing multiple checkpath issues
Message-ID: <20170228201145.GA19234@d830.WORKGROUP>
References: <20170228181756.22863-1-diaconita.tamara@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170228181756.22863-1-diaconita.tamara@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Tue, Feb 28, 2017 at 08:17:56PM +0200, Tamara Diaconita wrote:
> Made cxd2099.c file from cxd2099 driver more readable by fixing multiple checkpath issues.
> 
> Tamara Diaconita (5):
>   Add comment for struct mutex definition.
>   Added spaces around arithmetical operators.
>   Removed unnecessary blank lines.
>   Change a kzalloc parameter.
>   emoved redundant code.
> 
>  drivers/staging/media/cxd2099/cxd2099.c | 96 +++++----------------------------
>  1 file changed, 13 insertions(+), 83 deletions(-)

Hi Tamra -
I can see you have the suggestions on how to improve this patchset from
gregkh and julia, but let me offer one more thing:  This looks like your
first patch?  We try to encourage applicants to start with a single
patch to workout the mechanical details of patching and after they have
that working well, move onto doing small patchsets.
Perhaps you can pull one of these out, correct it, and get it accepted
as a single patch as a first step.
alisons

> 
> -- 
> 2.9.3
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170228181756.22863-1-diaconita.tamara%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.

