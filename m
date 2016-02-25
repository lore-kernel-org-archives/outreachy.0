X-GM-THRID: 6255063011291037696
X-Received: by 10.66.63.104 with SMTP id f8mr42838287pas.4.1456423818815;
        Thu, 25 Feb 2016 10:10:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.29.136 with SMTP id b8ls593213qgb.96.gmail; Thu, 25 Feb
 2016 10:10:18 -0800 (PST)
X-Received: by 10.129.71.85 with SMTP id u82mr45004111ywa.9.1456423818074;
        Thu, 25 Feb 2016 10:10:18 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qk0-x233.google.com (mail-qk0-x233.google.com. [2607:f8b0:400d:c09::233])
        by gmr-mx.google.com with ESMTPS id g136si544387ywb.5.2016.02.25.10.10.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 10:10:18 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c09::233 as permitted sender) client-ip=2607:f8b0:400d:c09::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c09::233 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x233.google.com with SMTP id s5so22604227qkd.0
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 10:10:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=7vI3iSv07/TrBZ+ziP2+faHydazhd+5EbVXzio+8u84=;
        b=oi1c8BPni/0pNfs8SzuRYoWis/VXr+7qo6QMyuyD1LG/2S/4CvIvDVOpBVy/4kCJYM
         xE2a1epqJt8TY5lHAswgSnz9moWa+49sdVQTuALY0taOZI8K3JVH4hfkHTPlw+oUucf7
         i6jGRlkWvs40U/rMUf21F8UrT8xaHc7y8xZQW/ZteqHQ9h80q3c1RySP5mzuK9ia49TJ
         n9CZiY9LCaqYZApy+Nccq0lxbAMleGON36wFsqjquGcOgn9kROMn0VRi0GOIAWFpJwth
         gmdQmLye1iW2f79QJzPls50vEtvMTNIHQDG9XSpx+lha9v9eX8ewy2uTaLVIL8HJiMac
         yV5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=7vI3iSv07/TrBZ+ziP2+faHydazhd+5EbVXzio+8u84=;
        b=VFFnkPH/9/58+DXMJTxkwmSu50Ha+bZLrmPrBuovXzQgjRt1CUW6sNJeIur+EVlH8v
         RGaDIqIQzGvIhzRIu4vr23StGYdyxS9YAnnN8cP+C/aDG+DI6sLLrlyXT9h+LnelWb/m
         LStoJEZCy2fRVfudePhRFQYpRvNplb2O/xRF1/MnH5r1n3hcXZqUzp0iphWucEEI4m7V
         7qy4556obdR5xh7JwE+oZibyeTZGECYSZ0S8nt1ccpii62N62mXtIfcYns4yaLO37uIB
         8KeTWiZFctVyqgiqbWi4GtNY9pKPef84WlvckHvovD4NYoxZE3NTYqkdl5d10bE26b5S
         vbVQ==
X-Gm-Message-State: AG10YOT3+BT+lfCvWBTFMuKDy2BhwB73CvdgxXF3gn7SB7YoCztgcE/AeBdmvg3899H3eLAS79ZZlbrzN2Et0w==
MIME-Version: 1.0
X-Received: by 10.55.74.141 with SMTP id x135mr57564091qka.20.1456423817866;
 Thu, 25 Feb 2016 10:10:17 -0800 (PST)
Received: by 10.140.44.99 with HTTP; Thu, 25 Feb 2016 10:10:17 -0800 (PST)
In-Reply-To: <20160225155402.GP13177@mtj.duckdns.org>
References: <20160225031900.GA23782@amitoj-Inspiron-3542>
	<20160225155402.GP13177@mtj.duckdns.org>
Date: Thu, 25 Feb 2016 23:40:17 +0530
Message-ID: <CA+5yK5H2T4=sO50YgsV2G9zLgbpK4364VyObK=JmGUFJLgkqsg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: gdm724x: gdm_usb: Remove create_workqueue()
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Tejun Heo <tj@kernel.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Thu, Feb 25, 2016 at 9:24 PM, Tejun Heo <tj@kernel.org> wrote:
> On Thu, Feb 25, 2016 at 08:49:00AM +0530, Amitoj Kaur Chawla wrote:
>> With concurrency managed workqueues, use of dedicated workqueues
>> can be replaced by using system_wq. Drop usb_tx_wq and usb_rx_wq by
>> using system_wq.
>>
>> Since there are multiple work items per udev but different udevs
>> do not need to be ordered, increase of concurrency level by switching
>> to system_wq should not break anything.
>>
>> cancel_work_sync() is used to ensure that work is not pending or
>> executing on any CPU.
>>
>> Lastly, since all devices are suspended, which shutdowns the work item
>> before the driver can be unregistered, it is guaranteed that no work
>> item is pending or executing by the time exit path runs.
>>
>> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
>
> Excellent work.  It'd be great if the somebody can test the changes on
> the actual hardware but for the workqueue part.
>
> Acked-by: Tejun Heo <tj@kernel.org>
>
> Thank a lot!
>
> --
> tejun

Thanks Tejun :)

Not sure how to go about testing on hardware. I guess the maintainers
should be cced?

Amitoj

