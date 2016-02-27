X-GM-THRID: 6255063011291037696
X-Received: by 10.140.98.197 with SMTP id o63mr22262698qge.9.1456575784266;
        Sat, 27 Feb 2016 04:23:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.104.13 with SMTP id z13ls1504970qge.36.gmail; Sat, 27 Feb
 2016 04:23:03 -0800 (PST)
X-Received: by 10.13.213.208 with SMTP id x199mr5111611ywd.48.1456575783577;
        Sat, 27 Feb 2016 04:23:03 -0800 (PST)
Return-Path: <htejun@gmail.com>
Received: from mail-ob0-x230.google.com (mail-ob0-x230.google.com. [2607:f8b0:4003:c01::230])
        by gmr-mx.google.com with ESMTPS id im4si61387igb.2.2016.02.27.04.23.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Feb 2016 04:23:03 -0800 (PST)
Received-SPF: pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:4003:c01::230 as permitted sender) client-ip=2607:f8b0:4003:c01::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:4003:c01::230 as permitted sender) smtp.mailfrom=htejun@gmail.com;
       dkim=pass header.i=@gmail.com
Received: by mail-ob0-x230.google.com with SMTP id ts10so99963797obc.1
        for <outreachy-kernel@googlegroups.com>; Sat, 27 Feb 2016 04:23:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=chzzy6/mN8reyG/BXlX42YEYT2RjSwMb+7mgb60vK4U=;
        b=ktfECt8IPSwo2uYzy5may+nPTcYKWx5W3w+CvLEDnZTfZVnoBojEgkodkgeYvnBNDk
         ezh0H7NAVVhM+htK5N48IpjnKQ1FeHlJuCufxt3e2t9C2iIauv1CEMKUhG0dPW/yxPrT
         2Dii7RqhJ33aMWDx5RmwfAnIxkuDlh00Pij986aiwKq0sIJbL+LRvF1mrg+u5+Q5AfcG
         QTlUUZzAB7+hsiwWKeGfxoHGCBP0JYQKt/mLK6AOodsnP3xDiP+Z94HswbEQ86aeFflL
         hVOSg63tdQpSdAhykorxuPG6NW600IQdic6sLK6QCeeyzprr8GZ1Pnv5at9+q0/KThfV
         VRNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=chzzy6/mN8reyG/BXlX42YEYT2RjSwMb+7mgb60vK4U=;
        b=Tp7ZB5T4kEuUqVMlWzPuKcdc8hrEOJuyW4uIxRjGXgYaXS29N7Od874/RhZ6KYscIv
         AhGX8liIAWgIaWzs/9mfD7LS/CgQaUlre2/u0o/lwjlrVKKRz4fe4389qr4mkmVuiXU+
         xmdIAkxQ1eVhA65cgvR9Ns94/ijzRNM3C1S6WMOuM/rAiYf8VDuYfcoTT70NpGhdEXBA
         iWGq/Oay5/pdP7k47N/lkB0MIzP9ZJbuga8l6T/MwUUDQNk30PNca7yG5qeQxduSu9Ug
         4BLiiYIYsi4bD5Z94VjoAFphpwqkffvTT+faOaqv7lrds/PjOIAX7hlENxSZQVF2CBEW
         A75A==
X-Gm-Message-State: AD7BkJKssNLwn9x76dWEWXQ+iLUA9DsAh594HgeOk369E7670B/nd8D2KaNMu6AZQJczcA==
X-Received: by 10.182.221.133 with SMTP id qe5mr5097516obc.35.1456575783343;
        Sat, 27 Feb 2016 04:23:03 -0800 (PST)
Return-Path: <htejun@gmail.com>
Received: from localhost (107-140-218-13.lightspeed.rcsntx.sbcglobal.net. [107.140.218.13])
        by smtp.gmail.com with ESMTPSA id s81sm1200013oif.0.2016.02.27.04.23.02
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Feb 2016 04:23:02 -0800 (PST)
Sender: Tejun Heo <htejun@gmail.com>
Date: Sat, 27 Feb 2016 07:23:02 -0500
From: Tejun Heo <tj@kernel.org>
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: gdm724x: gdm_usb: Remove
 create_workqueue()
Message-ID: <20160227122302.GF3965@htj.duckdns.org>
References: <20160225031900.GA23782@amitoj-Inspiron-3542>
 <20160225155402.GP13177@mtj.duckdns.org>
 <CA+5yK5H2T4=sO50YgsV2G9zLgbpK4364VyObK=JmGUFJLgkqsg@mail.gmail.com>
 <20160225212114.GD6092@mtj.duckdns.org>
 <CA+5yK5FraSGsQJV-qmqPiRKf5QwZM-XGUxUo43fRaFbqEMaefw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CA+5yK5FraSGsQJV-qmqPiRKf5QwZM-XGUxUo43fRaFbqEMaefw@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Fri, Feb 26, 2016 at 12:57:49PM +0530, Amitoj Kaur Chawla wrote:
> I checked in getmaintainers.pl, seems like Greg is the maintainer for
> both gdm724x and rtl8192e drivers. Should I be reposting in that case?

Greg may or may not have actual hardware.  While getmaintainers can be
useful, actually looking at who did what can be a lot more useful.
For example, for gdm724x, run "git whatchanged -p
drivers/staging/gdm724x" and scan through the history.  Try to find
significant changes which aren't part of global cleanup or usage
update and see if there are people who are actively involved in those
changes as author, reviewer or committer.

For gdm724x, most of recent changes are mechanical, the original
author Won Kang's last change is from 2013, and Alexey Khoroshilov
seems to have done non-trival fixes recently, so I'd cc Won, Alexey
and Greg.

Thanks.

-- 
tejun

