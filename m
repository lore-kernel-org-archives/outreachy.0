X-GM-THRID: 6252315246455685120
X-Received: by 10.107.11.23 with SMTP id v23mr4092338ioi.13.1455731339590;
        Wed, 17 Feb 2016 09:48:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.2.10 with SMTP id 10ls1541844igq.2.canary; Wed, 17 Feb 2016
 09:48:59 -0800 (PST)
X-Received: by 10.107.11.222 with SMTP id 91mr4107776iol.7.1455731339100;
        Wed, 17 Feb 2016 09:48:59 -0800 (PST)
Return-Path: <htejun@gmail.com>
Received: from mail-io0-x232.google.com (mail-io0-x232.google.com. [2607:f8b0:4001:c06::232])
        by gmr-mx.google.com with ESMTPS id k15si1688406igt.3.2016.02.17.09.48.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Feb 2016 09:48:59 -0800 (PST)
Received-SPF: pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:4001:c06::232 as permitted sender) client-ip=2607:f8b0:4001:c06::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:4001:c06::232 as permitted sender) smtp.mailfrom=htejun@gmail.com;
       dkim=pass header.i=@gmail.com
Received: by mail-io0-x232.google.com with SMTP id z135so45500517iof.0
        for <outreachy-kernel@googlegroups.com>; Wed, 17 Feb 2016 09:48:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:sender:in-reply-to:references:date:message-id:subject
         :from:to:cc:content-type;
        bh=dPIGTYDAxDWtRA4pOw3oObqegwCaPS8l0p1F1AoSY8Y=;
        b=F1Rp34Yv6sXDJs0BGAV1qWWV0D8D1sMdge1ERZtd5UgRs0VJEYII9UPmi4XMaLZmg8
         xFC2550P5D+KnNEa6ZrtuvXe5yVNgsCM7U7ZBFEpf/rQ4ZPa8U/cHxnWRAJfmDkJTq2I
         9qp43Km/16g9hf5SbHw1/aaZtO3Yok8D2dmPlEdSFhM5Uxu2tv2tNQv+xJlJNUwihbKG
         7ac9lxzDDoqfRsiHxKFMTPCr+/+e4xfOdTrm3iDhhub+Y1bO3ZVB3dfIJ6M6Y5aiOtTH
         NJHZGCfSUok7hZR8TcW5Xda9OneiUaPg33tvBw3RZDyfZX5z37TZtBynY6B93SHGU3je
         pCIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:sender:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=dPIGTYDAxDWtRA4pOw3oObqegwCaPS8l0p1F1AoSY8Y=;
        b=DhIp/ipNqvgjXExbaGLW8bg040776Z+X6Wx9QEC4qA4RRuVdJrS/xGJo+CovscHmq+
         g+PUgJt2qYhjtEL0dDUuV6CPGE7rLEZH2xsq0VpmF7jHQY3gkjrj7KbTPBlEAcExkDRI
         yXQ7yEa0Vssvg7o/wE/sHP6o40qsFtyL+bjAB+xYVLkxJWHEU3qjHhE3ElgVrf7yR27p
         N8EqtFxkDlT8RU3DEGu5sDGuvtVEyHkuccTh48ZxbNu3K778rtRdconWEXBUr1SfjNVN
         cXy3Dy7Luek7JKqhrDDf5Ae+x13QWT6BZC204ZCvP6K5mSKPjk+FW1z/wrBlpsGij0xn
         /cTg==
X-Gm-Message-State: AG10YOTuuBOLDdli4MIhViNzKgpvChhutu9CsO7w7tjLyuGlFlS28APe7byU+NMwEPZkJc9sIRs45Wcml8OY+w==
MIME-Version: 1.0
X-Received: by 10.107.157.70 with SMTP id g67mr4305703ioe.38.1455731339003;
 Wed, 17 Feb 2016 09:48:59 -0800 (PST)
Sender: htejun@gmail.com
Received: by 10.64.76.77 with HTTP; Wed, 17 Feb 2016 09:48:58 -0800 (PST)
In-Reply-To: <20160217173614.GA9911@amitoj-Inspiron-3542>
References: <20160217173614.GA9911@amitoj-Inspiron-3542>
Date: Wed, 17 Feb 2016 12:48:58 -0500
X-Google-Sender-Auth: W9t5frHAHY1ikdLkz3ZkTD3buN8
Message-ID: <CAOS58YO6-rtAaUrH_7LMGDWAe5jYz1X=eOn5AjRLjFKJvoLADg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: wlan-ng: Remove flush_scheduled_work
From: Tejun Heo <tj@kernel.org>
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

Hello,

On Wed, Feb 17, 2016 at 12:36 PM, Amitoj Kaur Chawla
<amitoj1606@gmail.com> wrote:
> flush_scheduled_work() is scheduled for deprecation. Use
> cancel_work_sync() instead to ensure that there is no pending or
> running work item.
>
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>

Acked-by: Tejun Heo <tj@kernel.org>

Thanks.

-- 
tejun

