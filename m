X-GM-THRID: 6252531554516467712
X-Received: by 10.98.44.87 with SMTP id s84mr8940424pfs.3.1456666406917;
        Sun, 28 Feb 2016 05:33:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.31.117 with SMTP id e108ls2035789qge.77.gmail; Sun, 28 Feb
 2016 05:33:26 -0800 (PST)
X-Received: by 10.140.222.72 with SMTP id s69mr9048578qhb.15.1456666406253;
        Sun, 28 Feb 2016 05:33:26 -0800 (PST)
Return-Path: <htejun@gmail.com>
Received: from mail-oi0-x244.google.com (mail-oi0-x244.google.com. [2607:f8b0:4003:c06::244])
        by gmr-mx.google.com with ESMTPS id ph8si629708igb.0.2016.02.28.05.33.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 05:33:26 -0800 (PST)
Received-SPF: pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:4003:c06::244 as permitted sender) client-ip=2607:f8b0:4003:c06::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:4003:c06::244 as permitted sender) smtp.mailfrom=htejun@gmail.com;
       dkim=pass header.i=@gmail.com
Received: by mail-oi0-x244.google.com with SMTP id k81so209820oia.3
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 05:33:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=TYNScBeXe9ewHqumZ7mUmuBFmA4hq8IQ2J98tKebWB8=;
        b=yInkFl+NwStjsLIgpBasbnH/5iDMlmIH/HVJttIrnPpTyBBIhFrwbSGVi8MUW0/B+J
         pIOfh5vI7KlawI4ziMQld7Yx2fQrwYSYIM1yxByzCFr904L1Ycn4E8G+2IYiee1g5YkN
         ATrt0U75+Sb1437EGOh5NBgF1ubmC2u1xTXEN9zELEqJ43VmRCBsNSS1MSd/dgckN0jg
         NX7dM0shnflWDgnbL3TFwa1QlROBaHPExL1/JJf0IfszA316E/iVaz7PEzszR7QOyvgi
         /R238FJBE3dioxN6bHJibEDPi76gf8bhH7VttLVvf8V6dPpQZL4VQHMmoeLckPvvihCQ
         9nRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=TYNScBeXe9ewHqumZ7mUmuBFmA4hq8IQ2J98tKebWB8=;
        b=nG0d6j1zP7uItlRJaTOVRDgtfzTF8f5hLeMlSs0dS6xb7tUBT5ZzTBd0bTUY2HIW3W
         bwd52TFpEtQib6MDehPKjxoWtgv5gBVIk3GlGwYbWG+BRmYSvyErdwytijD7aQgvGVbe
         hshbdOc/qymvMbQ80W/6uqEghiu0fWz12DQ9pS5ax7X7CHCQb/R7L7kKzoo8+RdMh8iP
         0ko3VJ9PQbK2azKI14piKDnRnOlphVupUzozpBnWfiWNnookOajwEVfRgLgYbWge/hnB
         jmmX1T/K5IxzoQ61UPGNGWZSTHg6mdGmofDDfUuxUjCy2jzYMEtKV2EzdChfQSX/mY0X
         VvLg==
X-Gm-Message-State: AD7BkJIvKx53w6RYMCH1S1YCSeXXy6OTV96FycorY7hwa2t+6l4HFArbojR0WyipsA9VGw==
X-Received: by 10.202.74.197 with SMTP id x188mr1375670oia.67.1456666405947;
        Sun, 28 Feb 2016 05:33:25 -0800 (PST)
Return-Path: <htejun@gmail.com>
Received: from localhost ([2602:306:b8cd:a0d0::2f])
        by smtp.gmail.com with ESMTPSA id tt1sm14760558obb.8.2016.02.28.05.33.25
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 05:33:25 -0800 (PST)
Sender: Tejun Heo <htejun@gmail.com>
Date: Sun, 28 Feb 2016 08:33:25 -0500
From: Tejun Heo <tj@kernel.org>
To: Eva Rachel Retuya <eraretuya@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 5/5] staging: iio: light: fix multiple
 assignments in a single line
Message-ID: <20160228133325.GP3965@htj.duckdns.org>
References: <cover.1455730714.git.eraretuya@gmail.com>
 <aa152467c3b1fdef0a3e97b999c7801a94610a1e.1455730714.git.eraretuya@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aa152467c3b1fdef0a3e97b999c7801a94610a1e.1455730714.git.eraretuya@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Thu, Feb 18, 2016 at 03:35:40PM +0800, Eva Rachel Retuya wrote:
> Rewrite the multiple assignments to clear checkpatch check:
> 
> CHECK: multiple assignments should be avoided
> 
> Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>

Acked-by: Tejun Heo <tj@kernel.org>

Thanks.

-- 
tejun

