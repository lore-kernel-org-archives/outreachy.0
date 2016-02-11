X-GM-THRID: 6250021302893019136
X-Received: by 10.107.11.222 with SMTP id 91mr44887344iol.7.1455206300891;
        Thu, 11 Feb 2016 07:58:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.168.225 with SMTP id e94ls593094ioj.3.gmail; Thu, 11 Feb
 2016 07:58:20 -0800 (PST)
X-Received: by 10.107.128.102 with SMTP id b99mr44920176iod.1.1455206300540;
        Thu, 11 Feb 2016 07:58:20 -0800 (PST)
Return-Path: <htejun@gmail.com>
Received: from mail-yk0-x233.google.com (mail-yk0-x233.google.com. [2607:f8b0:4002:c07::233])
        by gmr-mx.google.com with ESMTPS id g136si667288ywb.5.2016.02.11.07.58.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 07:58:20 -0800 (PST)
Received-SPF: pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:4002:c07::233 as permitted sender) client-ip=2607:f8b0:4002:c07::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:4002:c07::233 as permitted sender) smtp.mailfrom=htejun@gmail.com;
       dkim=pass header.i=@gmail.com
Received: by mail-yk0-x233.google.com with SMTP id r207so22517700ykd.2
        for <outreachy-kernel@googlegroups.com>; Thu, 11 Feb 2016 07:58:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=kxoYmDbjPUmCKZ5cx1srpDrbEokQhVU9W93M8k5OMns=;
        b=CyxeLugg9oTwgwHgbYK/D2urlngd4ocpxrqjwCemLP2BXrJp3PEDRwebc0cQsQq/8W
         4qOIIm1tc9zA0VC/wuXqy5Rh5v3FGyLtucn+FMy2NUfh6cVKlfqUJfKy5D55akyWAEAs
         OsimD52J45+qVlAFT+KPX3nCz2FbNJbgk4fPp7LEyFEXlO2TlqgSQip0xVgXzeZmFWbV
         viYxsWeZstvlW48GlKIV0r0+KeaFMBzbCLORCu61B3zoOnm/k4btosBZAqI1KpR65AlX
         uGBy0nI9QGyF1wP2mbR50sjvxoR3ZdjZ+HDyzX6voRiFiJNC9KoEm/XXJtaKtS+scbAu
         XIXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-type:content-disposition
         :in-reply-to:user-agent;
        bh=kxoYmDbjPUmCKZ5cx1srpDrbEokQhVU9W93M8k5OMns=;
        b=CIZGN2Zc9k3Vhf5cgqShHDJayjYiPehCNQ/sNGotUJc6d9TBdlBkn05LTQpsWPenOL
         EEsNKHJFMd/FFIj0TavkunWcxY8qo7LscHwsAtiLMSo8eurwLybUkpl6Phz3kFt5/Qmo
         5CkBHMtLv+6+wECzDIcgiT+/0CDFqt6HVyGlYmpOKUShhi6MAbXD2MrwZtsCFOSxelNL
         vRoLxOvCxxrwPJCmxnDeol2Z+SlFfV2XDXnuusfl8OkuPLtnh2RZl/uMvZyEfvVR7Lgr
         Hm37Pvj3p9pbM5VbqybPk3hiNJp3J2GSufsR62u0z0lPAUcfFf3oNpZvVCF+G3LoY3CF
         t5NQ==
X-Gm-Message-State: AG10YORa+w2P+JbJZKmlpGwfhEoWmTaGk0r9GhqdTR6yv+tZglp7mTDjySuornSh7IV2bg==
X-Received: by 10.37.34.215 with SMTP id i206mr23978993ybi.175.1455206300387;
        Thu, 11 Feb 2016 07:58:20 -0800 (PST)
Return-Path: <htejun@gmail.com>
Received: from localhost ([2620:10d:c091:200::8:abaa])
        by smtp.gmail.com with ESMTPSA id m188sm6798045ywe.46.2016.02.11.07.58.19
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 07:58:19 -0800 (PST)
Sender: Tejun Heo <htejun@gmail.com>
Date: Thu, 11 Feb 2016 10:58:19 -0500
From: Tejun Heo <tj@kernel.org>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Aybuke Ozdemir <aybuke.147@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: dgnc: usleep_range is
 preferred over udelay
Message-ID: <20160211155819.GA3741@mtj.duckdns.org>
References: <1455196470-4026-1-git-send-email-aybuke.147@gmail.com>
 <20160211155049.GZ3741@mtj.duckdns.org>
 <alpine.DEB.2.10.1602111653060.2508@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.10.1602111653060.2508@hadrien>
User-Agent: Mutt/1.5.24 (2015-08-30)

Hello, Julia.

On Thu, Feb 11, 2016 at 04:53:49PM +0100, Julia Lawall wrote:
> > Please don't forget to cc the original author or maintainer of the
> > code being modified.
> 
> Actually, no, they should only write to the list.

OIC, gotta go back and read the introduction more carefully.  Sorry
about the confusion. :)

-- 
tejun

