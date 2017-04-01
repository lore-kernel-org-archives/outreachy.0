X-GM-THRID: 6402531164952723456
X-Received: by 10.107.192.5 with SMTP id q5mr4937183iof.102.1491110431551;
        Sat, 01 Apr 2017 22:20:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.17.215 with SMTP id y23ls913921oty.7.gmail; Sat, 01 Apr
 2017 22:20:31 -0700 (PDT)
X-Received: by 10.129.182.11 with SMTP id u11mr4855567ywh.149.1491110431152;
        Sat, 01 Apr 2017 22:20:31 -0700 (PDT)
Received: by 10.202.94.136 with SMTP id s130msoib;
        Sat, 1 Apr 2017 16:48:26 -0700 (PDT)
X-Received: by 10.107.136.36 with SMTP id k36mr4226782iod.41.1491090506412;
        Sat, 01 Apr 2017 16:48:26 -0700 (PDT)
Return-Path: <stephen@networkplumber.org>
Received: from mail-pg0-x22f.google.com (mail-pg0-x22f.google.com. [2607:f8b0:400e:c05::22f])
        by gmr-mx.google.com with ESMTPS id s67si1333880pfs.4.2017.04.01.16.48.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 01 Apr 2017 16:48:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of stephen@networkplumber.org designates 2607:f8b0:400e:c05::22f as permitted sender) client-ip=2607:f8b0:400e:c05::22f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@networkplumber-org.20150623.gappssmtp.com;
       spf=pass (google.com: domain of stephen@networkplumber.org designates 2607:f8b0:400e:c05::22f as permitted sender) smtp.mailfrom=stephen@networkplumber.org
Received: by mail-pg0-x22f.google.com with SMTP id x125so93640944pgb.0
        for <outreachy-kernel@googlegroups.com>; Sat, 01 Apr 2017 16:48:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=networkplumber-org.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=GglY3ElDZIlvARrS7AlrZyPRQ6fXQeEjuxsHxyO3ZT0=;
        b=QIW7Hly05MRe7T3LUtUhI0V6qMAh+D3gHYmhNEdTUJvLr1cN4ikttzzcIEezankFto
         jPSyFKssb7NA7VcbJWUAiJ5xPe+Zk5KVW3pLRL4e0aSiun9SKy0YZ9jPiTJs0uR+4l7u
         6ORy+zGZNtZJfu+zqc2+hCaDVTYN0m1roklqgmc924Xo02F/gHRzGpsm4gP2DJqhnYEO
         svq+aGgspqj+8dINMiLHinc8JI7feMnrWbNbW4c4qiqnNGlgw3ISel12KWbSXB3e/d+T
         6ti2MDlAjDs//uiGC2a0WqkefpI/1hxjxtc/vKbziJVQvZeezYZBlRCcM+XuO8VAJGhg
         jilg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=GglY3ElDZIlvARrS7AlrZyPRQ6fXQeEjuxsHxyO3ZT0=;
        b=sfRVg7Pt3XvY0i5n9r5zM+J5hzwF5B8UUaOz9Uyf7yDmmLSv5do169LouVDAoOKQR3
         enXp3RG1vZmH1rrUMhmLIgorOaRfZJkf9hj8UPtUE7HGnsvsGf4m3/7C2lgHcOtbSUtT
         SJOU8sx6ZaqK3Ozi5UzF1aqkBn2E4ylwjF/IuMqHLK+rYSIMLUUNuwaCvvKLAYMcXOZe
         sUx+PhD9Hkt+eHNpJPCGcHaj77d7PEn3G9MV7GnqIXeKB8homw2lYoTebcfTNxT7t5s5
         iFLFaw0Ryac6zDkEgfLIRnGdzeZ3faSK+Gp1K4tNfRVlpV044jeAtUZgJ8AHYLjrUFnn
         3V1A==
X-Gm-Message-State: AFeK/H2A3LuLI74ymkkDOegvH+PNAGT/yjFPq4+aYGiTnOZ6WUSPhoWL9ypkv5d7y3hJYw==
X-Received: by 10.84.149.102 with SMTP id b35mr12063589plh.3.1491090506215;
        Sat, 01 Apr 2017 16:48:26 -0700 (PDT)
Return-Path: <stephen@networkplumber.org>
Received: from plumbers-lap.home.lan (cpe-98-155-35-236.hawaii.res.rr.com. [98.155.35.236])
        by smtp.gmail.com with ESMTPSA id i124sm17848157pgd.66.2017.04.01.16.48.24
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 01 Apr 2017 16:48:26 -0700 (PDT)
Date: Sat, 1 Apr 2017 16:48:21 -0700
From: Stephen Hemminger <stephen@networkplumber.org>
To: simran singhal <singhalsimran0@gmail.com>
Cc: pablo@netfilter.org, kadlec@blackhole.kfki.hu, davem@davemloft.net,
 netfilter-devel@vger.kernel.org, coreteam@netfilter.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, Alexey
 Kuznetsov <kuznet@ms2.inr.ac.ru>, James Morris <jmorris@namei.org>, Hideaki
 YOSHIFUJI <yoshfuji@linux-ipv6.org>, Patrick McHardy <kaber@trash.net>,
 bridge@lists.linux-foundation.org
Subject: Re: [PATCH v2] net: Remove unnecessary cast on void pointer
Message-ID: <20170401164821.036f1b41@plumbers-lap.home.lan>
In-Reply-To: <20170328190516.GA19531@singhal-Inspiron-5558>
References: <20170328190516.GA19531@singhal-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Wed, 29 Mar 2017 00:35:16 +0530
simran singhal <singhalsimran0@gmail.com> wrote:

> The following Coccinelle script was used to detect this:
> @r@
> expression x;
> void* e;
> type T;
> identifier f;
> @@
> (
>   *((T *)e)
> |
>   ((T *)x)[...]
> |
>   ((T*)x)->f
> |
> 
> - (T*)
>   e
> )
> 
> Unnecessary parantheses are also remove.
> 
> Signed-off-by: simran singhal <singhalsimran0@gmail.com>

Looks good

Reviewed-by: Stephen Hemminger <stephen@networkplumber.org>

