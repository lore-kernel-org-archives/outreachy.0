X-GM-THRID: 6342434702247329792
X-Received: by 10.66.150.199 with SMTP id uk7mr1693892pab.168.1476716520449;
        Mon, 17 Oct 2016 08:02:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.105.201 with SMTP id e192ls2420738itc.11.canary; Mon, 17
 Oct 2016 08:01:56 -0700 (PDT)
X-Received: by 10.98.152.204 with SMTP id d73mr4566374pfk.32.1476716516491;
        Mon, 17 Oct 2016 08:01:56 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-lf0-x243.google.com (mail-lf0-x243.google.com. [2a00:1450:4010:c07::243])
        by gmr-mx.google.com with ESMTPS id p70si4025119vkd.0.2016.10.17.08.01.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 17 Oct 2016 08:01:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:4010:c07::243 as permitted sender) client-ip=2a00:1450:4010:c07::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:4010:c07::243 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x243.google.com with SMTP id x23so21395855lfi.1
        for <outreachy-kernel@googlegroups.com>; Mon, 17 Oct 2016 08:01:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Vd9aEFnFbbFdGUbZSCvdUKSW9w5cmPXzNzs0xFfjxB8=;
        b=1GEwF0Sfvfn6Qkedgqse/Sfq0BDxoNcQ+vHaDiy1vZDDE/i2lvAa4HdM0MiS7UZxpn
         It352BPAYuBsVvKU6Cg9XLP2N6l4we3yI7fjQkXVrP2LAZT2ciXXeXQPd511oc534yZv
         mi5rd6l6fQliJcCN1CpAFkOr++xe1B9kv6xXnftKr5nQWhCtaz6QAyKXVZZAvhUPqBE8
         toStZ2JqWYVLe62WylTaMgOp8mDwRSSMpZpUfNqr96XQul6dL3JNzIp94N0d95O3Aubd
         bN2SkCe8nUnYqCrGVJiDPMk7pmFJfD+n9KAKzjAEltTkqmiWS/GaArJmT8CY3InoZ6+q
         bfGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Vd9aEFnFbbFdGUbZSCvdUKSW9w5cmPXzNzs0xFfjxB8=;
        b=DlizyKY3fTV1R+R+0c6Ar3hC8M0WrbmJhY9PBdAVaBzC8dgewZJaPlrLz6IvLA/b8F
         qRFTor+0TExZ7huV+7aGO0yEtNycFQetqROD7eRqpwciwllwBbjZ0q6m8LWN9TquIWad
         Umwg9d6Sp2OZOqPW4V3kUbf/uQa2w97hFGvEFhYXGgbWm4P4OvLSfKu/CdWycSP0wDzM
         6CkRXCzUn0sGLnMAaBjRomJOyEE9OmoMoeEJE6s0U2IGGurTbl2CmeKTC0IwG9jesnFb
         HZICpwU+lEk7jgiST/D8Y4LDT721w9lZw4LtB1TL/MSQ2eJAwHBS4C+UndTlflKLF1uq
         vcFw==
X-Gm-Message-State: AA6/9RnxNoiJg7Kus7gKmdZKZKyU0PyEgfiBAKr7WnuvrNUYfFqB5/GEj5DK9KpKYztydQ==
X-Received: by 10.28.191.92 with SMTP id p89mr8360268wmf.114.1476716515962;
        Mon, 17 Oct 2016 08:01:55 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([92.81.89.162])
        by smtp.gmail.com with ESMTPSA id v3sm53834620wjm.4.2016.10.17.08.01.54
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 17 Oct 2016 08:01:55 -0700 (PDT)
Date: Mon, 17 Oct 2016 18:01:54 +0300
From: Muraru Mihaela <mihaela.muraru21@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: wilc1000: Replace a name of
 a variable
Message-ID: <20161017150154.GA16119@domino-MS-16Y1>
References: <20161017140550.GA4699@domino-MS-16Y1>
 <20161017143647.GA18273@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161017143647.GA18273@kroah.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Mon, Oct 17, 2016 at 04:36:47PM +0200, Greg Kroah-Hartman wrote:
> On Mon, Oct 17, 2016 at 05:05:50PM +0300, Mihaela Muraru wrote:
> > This patch replace the name '*Error' variable with 'err'.
> 
> It also changes the type of one of them, which you don't mention doing
> in the changelog, which isn't good :(

Thank you for reply,

So, I should mention that I have a case, where I manually modify the
type and the name of one variable, because I don't know how to treat
that case in particular?

Should I resend it with this mention or should I solve the problem
first and resend even if is after deadline? 

thank you,

mihaela

