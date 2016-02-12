X-GM-THRID: 6250100054886973440
X-Received: by 10.31.165.1 with SMTP id o1mr2081542vke.12.1455293249728;
        Fri, 12 Feb 2016 08:07:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.161.6 with SMTP id k6ls800524ioe.87.gmail; Fri, 12 Feb
 2016 08:07:29 -0800 (PST)
X-Received: by 10.50.183.39 with SMTP id ej7mr3090468igc.3.1455293249221;
        Fri, 12 Feb 2016 08:07:29 -0800 (PST)
Return-Path: <htejun@gmail.com>
Received: from mail-yk0-x22f.google.com (mail-yk0-x22f.google.com. [2607:f8b0:4002:c07::22f])
        by gmr-mx.google.com with ESMTPS id v197si1129936ywa.1.2016.02.12.08.07.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Feb 2016 08:07:29 -0800 (PST)
Received-SPF: pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:4002:c07::22f as permitted sender) client-ip=2607:f8b0:4002:c07::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:4002:c07::22f as permitted sender) smtp.mailfrom=htejun@gmail.com;
       dkim=pass header.i=@gmail.com
Received: by mail-yk0-x22f.google.com with SMTP id u9so35838181ykd.1
        for <outreachy-kernel@googlegroups.com>; Fri, 12 Feb 2016 08:07:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=hxo86KPG/9RF5uG5HhUa8weh07D5fg1veDw5lyxWZvQ=;
        b=d2pPjH6NKwxlOs7G2jJmArX4CbwvWYm3kkXlK0PUHlc8VYzeZPiDsf6a+QtXvYCClu
         Webm63i7TvmoKhu6bqSUn03Aiawn+FnMg5yfTPEkA00s4DXd7EQJYhcMthjr3KG+tRF3
         +JhmentqikrujzFaBaEa6fk+1RxMOi9WC5xBu98XMzbiqMkgJgUV/+juzQQR5Bn2DxRG
         T2Q/Y9nDKmAOfNmSwBLCFkNYUycF12wrD+0EpNbYAWvJe+oiN9XvsYsLqCPLZiy2OEAt
         13yWjRCpMygugYRvAW/6bx8Tv1ogJF2x0Qu0i7bRPEjc7DXoOhYot/tEAgfjlT55dr/t
         3i2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-type:content-disposition
         :in-reply-to:user-agent;
        bh=hxo86KPG/9RF5uG5HhUa8weh07D5fg1veDw5lyxWZvQ=;
        b=Y1n6t6hX/5IIOqRd/hvx48R+hfDjxqdtGYyVa09hzbD6xra+SRkHP9uZtl4AOdcVbj
         FVvuuIqWFzAkBW/ysB3Mt881rJNPq9CZo5mC2rnQWlPiYfgxkbOKHmYcdJ0KcxxLTQvm
         HDcioCdXNNAa6TlMpEThdDQEjZmDtHPjzjyJKNLaKBx3dAW5Uuh6g2eSQMMmxaLe2MTZ
         YNmB2kBHDDcun5mhnN9+/Zxp4GSOHgP4u/mHomfiaRX4dPnsvwzShSYUrqBcB3J4gz/a
         B/KXtMvj5BSxWNIRQFc385QVqcFTXYNuax1c6ASmvWzG6NQ4z1/RkuWhkgwRj14mhyaU
         hHiQ==
X-Gm-Message-State: AG10YOQ2o5Up4eU7279kI0P8/q21yzkToNb5XmPQj+uqWrrgGZJh5tHMaEG9SpUiXiRSQA==
X-Received: by 10.37.14.132 with SMTP id 126mr1440935ybo.69.1455293249081;
        Fri, 12 Feb 2016 08:07:29 -0800 (PST)
Return-Path: <htejun@gmail.com>
Received: from localhost ([2620:10d:c091:200::a:8dab])
        by smtp.gmail.com with ESMTPSA id o23sm10407870ywd.30.2016.02.12.08.07.28
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Feb 2016 08:07:28 -0800 (PST)
Sender: Tejun Heo <htejun@gmail.com>
Date: Fri, 12 Feb 2016 11:07:27 -0500
From: Tejun Heo <tj@kernel.org>
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: gdm724x: gdm_mux: Remove
 create_workqueue()
Message-ID: <20160212160727.GF3741@mtj.duckdns.org>
References: <20160211182011.GA10882@amitoj-Inspiron-3542>
 <20160211183113.GB3741@mtj.duckdns.org>
 <CA+5yK5EWjvLZS7v_kwNrXdZpxvmn+qJhXNXNwnMbd8WUNzOeVg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CA+5yK5EWjvLZS7v_kwNrXdZpxvmn+qJhXNXNwnMbd8WUNzOeVg@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Hello,

On Fri, Feb 12, 2016 at 12:46:06PM +0530, Amitoj Kaur Chawla wrote:
> > If work_rx is self-requeueing, cancel_work_sync() would be the right
> > option here because flush_work() only guarantees that the current
> > pending or executing instance is finished.
> 
> How do I determine whether work_rx is self-requeueing or not?

By seeing whether the work function re-queues the work item it's
running off of.

Thanks.

-- 
tejun

