X-GM-THRID: 6262299386982694912
X-Received: by 10.107.198.150 with SMTP id w144mr3017177iof.9.1458139765757;
        Wed, 16 Mar 2016 07:49:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.117.68 with SMTP id kc4ls1675689igb.42.canary; Wed, 16 Mar
 2016 07:49:25 -0700 (PDT)
X-Received: by 10.50.61.100 with SMTP id o4mr21888953igr.10.1458139765238;
        Wed, 16 Mar 2016 07:49:25 -0700 (PDT)
Return-Path: <htejun@gmail.com>
Received: from mail-pf0-x235.google.com (mail-pf0-x235.google.com. [2607:f8b0:400e:c00::235])
        by gmr-mx.google.com with ESMTPS id ui7si594666pab.0.2016.03.16.07.49.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 16 Mar 2016 07:49:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:400e:c00::235 as permitted sender) client-ip=2607:f8b0:400e:c00::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:400e:c00::235 as permitted sender) smtp.mailfrom=htejun@gmail.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pf0-x235.google.com with SMTP id 124so78171393pfg.0
        for <outreachy-kernel@googlegroups.com>; Wed, 16 Mar 2016 07:49:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=4blMaQJRi0lfotBfTEJpLmyNBvVqoP+JhVrz46zj5MU=;
        b=fzrQWB//+bWm2eQf69cKSYAGTk4yJOb6LCRaoPJTVTL+/mKjQ78BIzgE9M7hgFl9KK
         B/4umnfPmElqXu8PuHmGcJIg+qrZ/Bjc0WsauAro4WzLfO4L7tlSAruQCOdGZWptIhb2
         Zvu8R0XDF11vi/8R7YtkIto0Ph1bH9K0VBEGzpCn+md2ExJ3eIGCQqYr8MUoctj6sQFE
         xOeKtGEeD+c6DG9LJWWkMYIzDWEs8vZReORf1w0LnkPucRpafkziMSG+XbCx0k1WMFRj
         GXE0HEjXO7+tvv6jXl+RSNfwaUegQNoKHfuNHHxbPTvxSfN4zAPzESTXIltr4A77CctJ
         pxMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=4blMaQJRi0lfotBfTEJpLmyNBvVqoP+JhVrz46zj5MU=;
        b=PkKCDMzmbEukW1SBnd2wFJ5xDJzTUB7KgYMu/yePZkgU/EcHy1Ns1P3uNNRJOhRRzi
         3nMgSiG+6kGrEEWTh4hmrhuC66rDUS2JPRqE6f7KcA5jT31kqEHyYBdFhn6vuZyKxfe2
         KWjWviz+cZtf92GLt5pZOD1ooQbQ+P1vzuAOCJsavbuVZx2zJaC3Je5E2SB4hS/FUUNA
         0qMH0PVl2KZ2+sbgzt5azd32ST5FzxLcpGzObRqiQ4g3i5vCFgkYnnoqIHH/cKqhXtuR
         VLe3hqXbRmbRKVgcxgFPUsWG7e3S0EVBBxqzUbsRgDIhpgpfDhAX7+Q8yZnvX4W5A4KS
         s3Xg==
X-Gm-Message-State: AD7BkJKQak47JtZb4mzfuREKnakuCh1U57BREsKrmNtNdgwF7bcF5vNnCWlSaXrTivI3Hw==
X-Received: by 10.98.31.147 with SMTP id l19mr6479872pfj.71.1458139765098;
        Wed, 16 Mar 2016 07:49:25 -0700 (PDT)
Return-Path: <htejun@gmail.com>
Received: from localhost ([166.170.37.216])
        by smtp.gmail.com with ESMTPSA id fn3sm6317923pab.20.2016.03.16.07.49.24
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 16 Mar 2016 07:49:24 -0700 (PDT)
Sender: Tejun Heo <htejun@gmail.com>
Date: Wed, 16 Mar 2016 07:49:22 -0700
From: Tejun Heo <tj@kernel.org>
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] iio: light: tsl2563: Remove
 flush_scheduled_work
Message-ID: <20160316144922.GD6980@mtj.duckdns.org>
References: <20160315151951.GA5890@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160315151951.GA5890@amitoj-Inspiron-3542>
User-Agent: Mutt/1.5.24 (2015-08-30)

Hello, Amiotj.

On Tue, Mar 15, 2016 at 08:49:51PM +0530, Amitoj Kaur Chawla wrote:
> flush_scheduled_work is scheduled for deprecation. 
> Replace cancel_delayed_work and flush_scheduled_work with
> cancel_delayed_work_sync instead to ensure there is no pending or
> running work item.

It'd be nice to note that there are no further dependencies flushed by
flush_scheduled_work() - ie. verify and note that there are no other
instances of schedule_work() usages by the driver or if there are they
are drained properly other ways.

> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>

 Acked-by: Tejun Heo <tj@kernel.org>

Can you please update the description accoringly, add the ack and
repost with the driver maintainers cc'd?

Thanks!

-- 
tejun

