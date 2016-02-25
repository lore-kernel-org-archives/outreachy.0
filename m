X-GM-THRID: 6255063011291037696
X-Received: by 10.107.15.79 with SMTP id x76mr2826376ioi.31.1456415644914;
        Thu, 25 Feb 2016 07:54:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.241.10 with SMTP id we10ls235306obc.77.gmail; Thu, 25 Feb
 2016 07:54:04 -0800 (PST)
X-Received: by 10.182.120.106 with SMTP id lb10mr43095835obb.24.1456415644466;
        Thu, 25 Feb 2016 07:54:04 -0800 (PST)
Return-Path: <htejun@gmail.com>
Received: from mail-yk0-x233.google.com (mail-yk0-x233.google.com. [2607:f8b0:4002:c07::233])
        by gmr-mx.google.com with ESMTPS id g136si505885ywb.5.2016.02.25.07.54.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 07:54:04 -0800 (PST)
Received-SPF: pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:4002:c07::233 as permitted sender) client-ip=2607:f8b0:4002:c07::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:4002:c07::233 as permitted sender) smtp.mailfrom=htejun@gmail.com;
       dkim=pass header.i=@gmail.com
Received: by mail-yk0-x233.google.com with SMTP id u9so23731606ykd.1
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 07:54:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=E+ky4fRKdX5kZKXlSG5CW9Y8jXYJ7lnYNIDFdW005L4=;
        b=gXJd+TlKQqJWz1WjA7n8Xdj5ec+XKtmCBQviH9NvNtxZirml0zaTYo5+NtR132Ym96
         33NEDgoN8peIoWx1+2xIZSFGpAzY6Qmv96PKD6Kp5QGFoHG432HCp+Kh2tHZE5rhtwqo
         au3CX60VIbIptPRCDW1HpjK8XSkrNf5R37rUlqlDY9yset78Jj8cDIU4OApErh2rIzL1
         R/cWhlsjIq69X8/Wwnoq3JxzPqAx5QvvgTkePu26IAK4oHQZpadhAyB91hFAiBUrfnBl
         2Ic2Mctj4sZmUmd+/nDxn6kIyu5HSxNhGJ4L5kBaCvvYurAlP8rE7A9pqtfUWhpYIlvQ
         bZRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-type:content-disposition
         :in-reply-to:user-agent;
        bh=E+ky4fRKdX5kZKXlSG5CW9Y8jXYJ7lnYNIDFdW005L4=;
        b=RGqm0yIOiG4kirl7HBdiWnqfWnj9OhIjc6P9yCo567Yj57IdKJJ15cwq6dTNiib8jW
         axJh/OK3TZaNLhejSsMN/dHNoopPDp3Knj7OtmLZe3rIlRPAuwQ+Aa3ofhUw/3FXKVw1
         uiYmIUodcnhFqyiAdNTC3E2vwJZBqrM3o7A7sZZvzEP5ZYmBMjbc8o9k47V0YcFS2Yz0
         jh4GWGSA0eiuJ9yLadbnvS3U1OM0GKWeaNpYf/3ymXBgAq2woN+ja4SbAWgcz5TImSUq
         aFJRHnSZw8q/5oL/gI+EP0o5USS7YRWpUOJ0uTtL4dlIC6RB3Vs0UXEu/V7jP+LecPc6
         W+Yg==
X-Gm-Message-State: AG10YOTS3cbeWaDZ0UMB45u/uwu9eymmgclZ29ffflH3toKuANabzZl/ZgP19ZJb9MH/tw==
X-Received: by 10.37.41.214 with SMTP id p205mr8009494ybp.85.1456415644248;
        Thu, 25 Feb 2016 07:54:04 -0800 (PST)
Return-Path: <htejun@gmail.com>
Received: from localhost ([2620:10d:c091:200::1:6d3])
        by smtp.gmail.com with ESMTPSA id o23sm6372249ywd.30.2016.02.25.07.54.03
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 07:54:03 -0800 (PST)
Sender: Tejun Heo <htejun@gmail.com>
Date: Thu, 25 Feb 2016 10:54:02 -0500
From: Tejun Heo <tj@kernel.org>
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: gdm724x: gdm_usb: Remove
 create_workqueue()
Message-ID: <20160225155402.GP13177@mtj.duckdns.org>
References: <20160225031900.GA23782@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160225031900.GA23782@amitoj-Inspiron-3542>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Thu, Feb 25, 2016 at 08:49:00AM +0530, Amitoj Kaur Chawla wrote:
> With concurrency managed workqueues, use of dedicated workqueues
> can be replaced by using system_wq. Drop usb_tx_wq and usb_rx_wq by 
> using system_wq.
> 
> Since there are multiple work items per udev but different udevs
> do not need to be ordered, increase of concurrency level by switching
> to system_wq should not break anything.
> 
> cancel_work_sync() is used to ensure that work is not pending or
> executing on any CPU.
> 
> Lastly, since all devices are suspended, which shutdowns the work item
> before the driver can be unregistered, it is guaranteed that no work
> item is pending or executing by the time exit path runs.
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>

Excellent work.  It'd be great if the somebody can test the changes on
the actual hardware but for the workqueue part.

Acked-by: Tejun Heo <tj@kernel.org>

Thank a lot!

-- 
tejun

