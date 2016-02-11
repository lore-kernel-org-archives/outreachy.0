X-GM-THRID: 6250021302893019136
X-Received: by 10.31.52.207 with SMTP id b198mr43575713vka.5.1455205851063;
        Thu, 11 Feb 2016 07:50:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.183.7 with SMTP id ei7ls569210igc.16.gmail; Thu, 11 Feb
 2016 07:50:50 -0800 (PST)
X-Received: by 10.66.251.42 with SMTP id zh10mr37830629pac.23.1455205850413;
        Thu, 11 Feb 2016 07:50:50 -0800 (PST)
Return-Path: <htejun@gmail.com>
Received: from mail-yw0-x229.google.com (mail-yw0-x229.google.com. [2607:f8b0:4002:c05::229])
        by gmr-mx.google.com with ESMTPS id v197si682615ywa.1.2016.02.11.07.50.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 07:50:50 -0800 (PST)
Received-SPF: pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:4002:c05::229 as permitted sender) client-ip=2607:f8b0:4002:c05::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:4002:c05::229 as permitted sender) smtp.mailfrom=htejun@gmail.com;
       dkim=pass header.i=@gmail.com
Received: by mail-yw0-x229.google.com with SMTP id h129so42067684ywb.1
        for <outreachy-kernel@googlegroups.com>; Thu, 11 Feb 2016 07:50:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=niMmKa/oXK2+lxrYdDHbZqKtSm34tIuDRVD0sj8x8Cs=;
        b=OWpwZIWf3WJjEh39D8S1trFJqh/uph1V1n+5S5vnLfCiWNgCgrB0aeC+vF2CzcB8eZ
         rEqJBdjbJXcxA5S2/yqNaeDsksJJmaPgExn9fBn2z6bZPHkV80Bug5iD1glcptcB0jml
         TA7fFxPk+BvLgV/8eODv/0lqwhb69w3YtIcD4bpBCnbiTM+DHe0WK90TmDUdNa1dM0bl
         esfug0yFNslJUgQFIDoVn3XNk5mRPzSDTv8qeRFp7vVhSfscWyj0o0G1sgft9CC2ulh7
         oByi7zfvbs7NIkpaBgwVodQ1qYgPRdE4xKzSFN593ET5ZAMHTtnWQuc758jbkK369I+M
         QhMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-type:content-disposition
         :in-reply-to:user-agent;
        bh=niMmKa/oXK2+lxrYdDHbZqKtSm34tIuDRVD0sj8x8Cs=;
        b=FxNYIAYMHWrQwl2JgXoewvPqfdvzTqNQJZTQ7ooPN81xlzBiT/LtemH4dKmLOp+7oA
         V7OegAVORLQ1giJ0MvIV/ZUfudvb2Jpkot9Ximj/sKDxHJ5baEG0Xj2ccdGp7fVknXEJ
         3SK7eX1YsNExGSUOOea9X75REtlkjfDT+4ZWOjPEQ6yI4+P/senrU1E1Smh3go/FTPKJ
         gmaSduemw8sLjwBIcVdS74T4uZL5/6EDRX1mcBf+c1W9wenMTBo5T0On+wPYjYKDvyck
         QxSBe84uNRUyH+VRujDtjNzLCPuusKOT07Ejun7Tictt0GlKrS3nS4OEqiz+jepQDIde
         yUZw==
X-Gm-Message-State: AG10YOQSA8Dzye5RUCkjbJTT2Zs5IkYZbpO+p1yUbS1N61QI+7Ojj9O6D5uBKLyQ6JhXqA==
X-Received: by 10.129.49.201 with SMTP id x192mr15352573ywx.26.1455205850257;
        Thu, 11 Feb 2016 07:50:50 -0800 (PST)
Return-Path: <htejun@gmail.com>
Received: from localhost ([2620:10d:c091:200::8:abaa])
        by smtp.gmail.com with ESMTPSA id r84sm6760787ywe.54.2016.02.11.07.50.49
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 07:50:49 -0800 (PST)
Sender: Tejun Heo <htejun@gmail.com>
Date: Thu, 11 Feb 2016 10:50:49 -0500
From: Tejun Heo <tj@kernel.org>
To: Aybuke Ozdemir <aybuke.147@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: dgnc: usleep_range is
 preferred over udelay
Message-ID: <20160211155049.GZ3741@mtj.duckdns.org>
References: <1455196470-4026-1-git-send-email-aybuke.147@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1455196470-4026-1-git-send-email-aybuke.147@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Hello,

On Thu, Feb 11, 2016 at 03:14:30PM +0200, Aybuke Ozdemir wrote:
> @@ -956,7 +956,7 @@ static void cls_flush_uart_read(struct channel_t *ch)
>  	 * Presumably, this is a bug in this UART.
>  	 */
>  
> -	udelay(10);
> +	usleep_range(10, 100);
>  }

So, one important difference between udelay() and usleep_range() is
that the former can be called from any context while the latter only
from a blockable context as it's asking to be scheduled away.  These
uart functions seem to be accessing hardware directly which usually
indicate that they need to be synchronized somehow.

grepping for flush_uart_ shows that these function are called under a
channel_t->ch_lock spinlock, so this patch will end up triggering a
sanity check in the scheduler and leave the kernel in a buggy state
when the usleep_range()'s are called.

Please don't forget to cc the original author or maintainer of the
code being modified.

Thanks.

-- 
tejun

