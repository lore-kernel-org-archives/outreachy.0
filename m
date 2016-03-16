X-GM-THRID: 6261235815090749440
X-Received: by 10.13.232.201 with SMTP id r192mr3112389ywe.52.1458140591162;
        Wed, 16 Mar 2016 08:03:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.160.11 with SMTP id j11ls494094ioe.60.gmail; Wed, 16 Mar
 2016 08:03:10 -0700 (PDT)
X-Received: by 10.66.146.10 with SMTP id sy10mr3175477pab.24.1458140590406;
        Wed, 16 Mar 2016 08:03:10 -0700 (PDT)
Return-Path: <htejun@gmail.com>
Received: from mail-pf0-x22a.google.com (mail-pf0-x22a.google.com. [2607:f8b0:400e:c00::22a])
        by gmr-mx.google.com with ESMTPS id y20si557740pfa.2.2016.03.16.08.03.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 16 Mar 2016 08:03:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:400e:c00::22a as permitted sender) client-ip=2607:f8b0:400e:c00::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:400e:c00::22a as permitted sender) smtp.mailfrom=htejun@gmail.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pf0-x22a.google.com with SMTP id n5so78145819pfn.2
        for <outreachy-kernel@googlegroups.com>; Wed, 16 Mar 2016 08:03:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=We2aFXuCXwQeFp4rjzCLqNjAACR/GC2N6EwkC6tsySE=;
        b=wHMc3USiNfiy7DbAeUj/WmVnJBg3cHGNsz1yMCVKIaoDmgYuRq/lVa1YeNMfCWc8e3
         nUXDXkDI3txc0z1/jsHxlbrLLdGfGpfe3V/CsR2VHdwH8LdKpl8VVlHoY/lV/7mRqMLl
         pXjzlsf30Ja8ROjsa1vqV0IPiR6o2EB7T6cQU8+qgt5i7zWJoGfnVNBiTRlQvvQy96Ed
         VYtN6jcsreDxcB2Dfa/zBYmCTISk5EHxqB4lY36msTZVw1N/R9WBZ6yWvzBqok9XP/Ed
         JWx1W3hnWpBLGjk1Ffgusqucg7fM45/8WvAPxF2m+DttAz8oZyZ0LpyyFzdvREBaR6fk
         fDVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=We2aFXuCXwQeFp4rjzCLqNjAACR/GC2N6EwkC6tsySE=;
        b=IaxuqJfbUoNJ+W2/kBITN8rGkx+fWSTbWPXnl6VnqQJF5GPGPG6MzvDb9/ZUnWH4kv
         Sz2dfnPG+z3ed2x6+rIONqZBsfojTaliOBn1aXjpBrOO8MTYe3E9KB7Mq5HtvGwKDeX6
         IuromkIyrMwF4ENUBsHpCKMWHURrXHfm7Ezp9reQ2cZAzATOQCfE7YaJx8OzJfpN0a+d
         LUlhHEJYCYFV/fGE8rDxTgVkffQiE8Kq86e1JAHV3wo4MQalErKJFWMVI1Q097ozVorJ
         mZP1Ly8kMhId/dgLhDKSjZux2F8x/p4wXFN9V0ycbbn9jNzkSRyAPlji/Bnmg567vyMj
         gfjQ==
X-Gm-Message-State: AD7BkJK6Jx9w7bO6H2b6Sbm6ZYhaRDIq37TcKDikCx7kJz25ko6fMC4mClCPFxf9Jj7wjw==
X-Received: by 10.67.14.6 with SMTP id fc6mr6463690pad.55.1458140590169;
        Wed, 16 Mar 2016 08:03:10 -0700 (PDT)
Return-Path: <htejun@gmail.com>
Received: from localhost ([166.170.37.216])
        by smtp.gmail.com with ESMTPSA id n28sm6401053pfa.45.2016.03.16.08.03.09
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 16 Mar 2016 08:03:09 -0700 (PDT)
Sender: Tejun Heo <htejun@gmail.com>
Date: Wed, 16 Mar 2016 08:03:07 -0700
From: Tejun Heo <tj@kernel.org>
To: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8712: usb_intf:  Remove
 flush_scheduled_work()
Message-ID: <20160316150307.GH6980@mtj.duckdns.org>
References: <20160312183227.GA17219@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160312183227.GA17219@Karyakshetra>
User-Agent: Mutt/1.5.24 (2015-08-30)

Hello, Bhaktipriya.

On Sun, Mar 13, 2016 at 12:02:27AM +0530, Bhaktipriya Shridhar wrote:
> flush_scheduled_work() flushes out all work items in system_wq.
> Since one doesn't know what could be running there, flushinf work items
> individually is preferred.

And flush_scheduled_work() is deprecated as its behavior is
unpredictable and it makes system_wq less useful.

> Since there are finite number of work items to be flushed,(viz
> pwrpriv->SetPSModeWorkItem,pwrpriv->SetPSModeWorkItem,pLed->BlinkWorkItem)
> instead of flushing system_wq, each work item is separately flushed.
> 
> Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>

Acked-by: Tejun Heo <tj@kernel.org>

Thanks a lot!

-- 
tejun

