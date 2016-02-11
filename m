X-GM-THRID: 6250100054886973440
X-Received: by 10.182.65.135 with SMTP id x7mr34991482obs.13.1455215475763;
        Thu, 11 Feb 2016 10:31:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.61.175 with SMTP id q15ls548138igr.3.gmail; Thu, 11 Feb
 2016 10:31:15 -0800 (PST)
X-Received: by 10.107.15.79 with SMTP id x76mr45053972ioi.31.1455215475198;
        Thu, 11 Feb 2016 10:31:15 -0800 (PST)
Return-Path: <htejun@gmail.com>
Received: from mail-yw0-x229.google.com (mail-yw0-x229.google.com. [2607:f8b0:4002:c05::229])
        by gmr-mx.google.com with ESMTPS id q187si724980ywf.4.2016.02.11.10.31.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 10:31:15 -0800 (PST)
Received-SPF: pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:4002:c05::229 as permitted sender) client-ip=2607:f8b0:4002:c05::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:4002:c05::229 as permitted sender) smtp.mailfrom=htejun@gmail.com;
       dkim=pass header.i=@gmail.com
Received: by mail-yw0-x229.google.com with SMTP id h129so46235688ywb.1
        for <outreachy-kernel@googlegroups.com>; Thu, 11 Feb 2016 10:31:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=UgN+mD5Es4siS0YgS2nWkl0bPPHlSZsP3210hQvt1A4=;
        b=ZmdTDNtOPfLlTZjA/MI6DLbjyOgeBRgyhPTPfGxYF+3G8Hutx2fwhofphgOBEEe1os
         xVznOIQPre/o3ELW2PLlJS7VSuBwLza7EYE3a2nWKl0xup5V8GIMjSnagDRC94l5ZBgA
         w1LVL0nG9pmfOyomzYeetevmOIMf2CUpYlA2kK0YTx0Q6Ig9JtEzer7zDmmRlxzVn4iK
         i+3AVo+BDhqw2LEW+daRUkZLrGxfcxrFEw+RfzPpyU3pkILojQdQqz5JnEIVBKtQlHRC
         qhk4bWNw+EA6Mes3etqNxpz5WADJnAMf//TsmP5hVgCtUMWStDjFqK5bjGwvxraSoHV1
         3P3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-type:content-disposition
         :in-reply-to:user-agent;
        bh=UgN+mD5Es4siS0YgS2nWkl0bPPHlSZsP3210hQvt1A4=;
        b=jAln+VtAanK8WJGRBaCweNcthuEuy3m0elXLx200UVTPITbiU6hvNz6GIEHyIxf6Ev
         JaIOJcRAZk2AIWaPyajDaAkQ6DwvRIo+ZXqYr/kki0BOPZ18k1+sFQgVM5vobPl5GnXA
         XyBGdEtiQecYDtdwEcI8xZ2mBtqCMFHiYcW9LKJ6cxxySTNOn5owx98/FfqgRr8BM1l3
         Y0p+M5ilI/HfQ5hueWXnu8ZYLlZCfVocDV/33P8QUtaXb6yutiBIZPPjoXjOKp035r8C
         a6RduHy1huxj2SuGeVw15OjjRDtTEfQwtQPmPOVw2ohYsMqc9PIOacAghz8Ox8Wa8jiy
         fu6A==
X-Gm-Message-State: AG10YOQ66HPByhxRMv8RNVd2xhiaWuwajzEYsktQalJYumbFmv+HGmnZDVz6+CjslOKbNA==
X-Received: by 10.13.233.66 with SMTP id s63mr24475083ywe.36.1455215475086;
        Thu, 11 Feb 2016 10:31:15 -0800 (PST)
Return-Path: <htejun@gmail.com>
Received: from localhost ([2620:10d:c091:200::8:abaa])
        by smtp.gmail.com with ESMTPSA id u190sm7267237ywd.17.2016.02.11.10.31.14
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 10:31:14 -0800 (PST)
Sender: Tejun Heo <htejun@gmail.com>
Date: Thu, 11 Feb 2016 13:31:13 -0500
From: Tejun Heo <tj@kernel.org>
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: gdm724x: gdm_mux: Remove
 create_workqueue()
Message-ID: <20160211183113.GB3741@mtj.duckdns.org>
References: <20160211182011.GA10882@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160211182011.GA10882@amitoj-Inspiron-3542>
User-Agent: Mutt/1.5.24 (2015-08-30)

Hello, Amitoj.

On Thu, Feb 11, 2016 at 11:50:11PM +0530, Amitoj Kaur Chawla wrote:
> Remove deprecated create_workqueue() by using system_wq since we do
> not require a dedicated workqueue here.

It'd be great if you can explain how the conversion is okay.

>  #define USB_DEVICE_CDC_DATA(vid, pid) \
> @@ -275,7 +273,7 @@ static void gdm_mux_rcv_complete(struct urb *urb)
>  		r->len = r->urb->actual_length;
>  		spin_lock_irqsave(&rx->to_host_lock, flags);
>  		list_add_tail(&r->to_host_list, &rx->to_host_list);
> -		queue_work(mux_rx_wq, &mux_dev->work_rx.work);
> +		schedule_work(&mux_dev->work_rx.work);

1. because there's one work item per mux_dev and different mux_devs
   don't need to be ordered, increase of concurrency level by
   switching to system_wq shouldn't break anything.

> @@ -602,6 +600,8 @@ static int gdm_mux_suspend(struct usb_interface *intf, pm_message_t pm_msg)
>  	mux_dev = tty_dev->priv_dev;
>  	rx = &mux_dev->rx;
>  
> +	flush_work(&mux_dev->work_rx.work);
> +

If work_rx is self-requeueing, cancel_work_sync() would be the right
option here because flush_work() only guarantees that the current
pending or executing instance is finished.

> @@ -672,11 +665,6 @@ static void __exit gdm_usb_mux_exit(void)
>  {
>  	unregister_lte_tty_driver();
>  
> -	if (mux_rx_wq) {
> -		flush_workqueue(mux_rx_wq);
> -		destroy_workqueue(mux_rx_wq);
> -	}

2. and because all devices are suspended, which shutsdown the work
   item, before the driver can be unregistered, it's guaranteed that
   no work item is in flight by the time exit path runs.

JFYI, there's more info on the conversion in the following page.

  http://kernelnewbies.org/Tejun_Heo

Thanks.

-- 
tejun

