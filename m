X-GM-THRID: 6255545204724465664
X-Received: by 10.50.57.17 with SMTP id e17mr2111728igq.11.1456574361447;
        Sat, 27 Feb 2016 03:59:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.18.90 with SMTP id a87ls971417ioj.9.gmail; Sat, 27 Feb
 2016 03:59:21 -0800 (PST)
X-Received: by 10.66.160.9 with SMTP id xg9mr4909729pab.38.1456574361190;
        Sat, 27 Feb 2016 03:59:21 -0800 (PST)
Return-Path: <htejun@gmail.com>
Received: from mail-oi0-x234.google.com (mail-oi0-x234.google.com. [2607:f8b0:4003:c06::234])
        by gmr-mx.google.com with ESMTPS id iq8si440089igb.0.2016.02.27.03.59.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Feb 2016 03:59:21 -0800 (PST)
Received-SPF: pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:4003:c06::234 as permitted sender) client-ip=2607:f8b0:4003:c06::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:4003:c06::234 as permitted sender) smtp.mailfrom=htejun@gmail.com;
       dkim=pass header.i=@gmail.com
Received: by mail-oi0-x234.google.com with SMTP id j125so78986554oih.0
        for <outreachy-kernel@googlegroups.com>; Sat, 27 Feb 2016 03:59:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=gP5t7lc+e/nmBG8h83xCYdoQ5eIONmHmHAlDixPQ0GY=;
        b=NzoGUddmutJC/LDsQQNExgNuuRNPQuKzZUM54swAntChxY/ZeA4murMMLfBzd8PbeJ
         ItRH8FnnV7C583Ks9vugTR1x3bIhjs96M9311q71D/OUZoJu3LfGT18xCL2lCsZ33UFm
         kXbWCdWR59kdlKROkEOTw9aV6xg0Nha8UPROAKYaV61kPvb2/3/A3YT6qAEfN6gr8G1N
         d+eN7aeDM/BI0OqONsPMcRYSHqbJmsEAEt22onpGYpnvcwxpDysXlZtZj6tVQbnCfDpM
         dK8PuV4budyELG2zAfulPYWZI7ifx+hr+SFG/2Xry9wKy7m/2gvepzthwIyxWr5PA1iT
         JGDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=gP5t7lc+e/nmBG8h83xCYdoQ5eIONmHmHAlDixPQ0GY=;
        b=LiSjyqZoYVp2q68NqJiptEhLh1HmkWA/2d6FMa0bTSmYI/h6SBtbwJpWdDFC8dAd2j
         3syXwLcBcYguu/110kZKhV5XtZUTBp5sgTBJSf+2AAD2fCQuceGYKXzm5EjA6wE6JfIl
         KUjK5MpO9ps/jue202EeFpOS1R+w0rYLp4cQvp2FMpsgbbAgvHixHOAFfpH/ZAC8hYi4
         smny1PuP3weJPtHOtIbWh7TUcoI6Hd8ZxbTbRPzwa6YWobAuJSaGtLqm7hti4jOxd6Tf
         R3hNZ8vErc0YrmUJ66W5iwEInSQfjd9d7zbpzVHWY2CHFhLJi0ySrsWHMDjQAL35Yqjs
         MSeg==
X-Gm-Message-State: AD7BkJLQ8naxFbFnfphrlfVxIpjyRdydf7DeQcnUF5Wys1gafWnIhuBcwH9F8J7RXZZpLA==
X-Received: by 10.202.183.7 with SMTP id h7mr4787122oif.25.1456574360982;
        Sat, 27 Feb 2016 03:59:20 -0800 (PST)
Return-Path: <htejun@gmail.com>
Received: from localhost (107-140-218-13.lightspeed.rcsntx.sbcglobal.net. [107.140.218.13])
        by smtp.gmail.com with ESMTPSA id v136sm11507384oif.15.2016.02.27.03.59.20
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Feb 2016 03:59:20 -0800 (PST)
Sender: Tejun Heo <htejun@gmail.com>
Date: Sat, 27 Feb 2016 06:59:20 -0500
From: Tejun Heo <tj@kernel.org>
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: unisys: visorbus:
 visorchipset: Remove create_singlethread_workqueue()
Message-ID: <20160227115920.GC3965@htj.duckdns.org>
References: <20160226103012.GA13970@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160226103012.GA13970@amitoj-Inspiron-3542>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Fri, Feb 26, 2016 at 04:00:12PM +0530, Amitoj Kaur Chawla wrote:
> With concurrency managed workqueues, use of dedicated workqueues
> can be replaced by using system_wq. Drop periodic_controlvm_workqueue 
> by using system_wq.
> 
> Since there is only one work item periodic_controlvm_work and different 
> periodic_controlvm_works do not need to be ordered, increase of concurrency 
> level by switching to system_wq should not break anything.
> 
> cancel_work_sync() is used to ensure that work is not pending or
> executing on any CPU.
> 
> Lastly, since all devices are suspended, which shutdowns the work item
> before the driver can be unregistered, it is guaranteed that no work
> item is pending or executing by the time exit path runs.
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>

For the workqueue part,

 Acked-by: Tejun Heo <tj@kernel.org>

Let's cc the driver maintainers and get the patch tested.

Thanks.

-- 
tejun

