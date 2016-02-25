X-GM-THRID: 6253312643978756096
X-Received: by 10.140.20.204 with SMTP id 70mr15673402qgj.18.1456435812574;
        Thu, 25 Feb 2016 13:30:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.23.229 with SMTP id 92ls755739qgp.65.gmail; Thu, 25 Feb
 2016 13:30:12 -0800 (PST)
X-Received: by 10.140.29.75 with SMTP id a69mr15625848qga.0.1456435812080;
        Thu, 25 Feb 2016 13:30:12 -0800 (PST)
Return-Path: <htejun@gmail.com>
Received: from mail-yk0-x22f.google.com (mail-yk0-x22f.google.com. [2607:f8b0:4002:c07::22f])
        by gmr-mx.google.com with ESMTPS id v197si664916ywa.1.2016.02.25.13.30.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 13:30:12 -0800 (PST)
Received-SPF: pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:4002:c07::22f as permitted sender) client-ip=2607:f8b0:4002:c07::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:4002:c07::22f as permitted sender) smtp.mailfrom=htejun@gmail.com;
       dkim=pass header.i=@gmail.com
Received: by mail-yk0-x22f.google.com with SMTP id z13so27956622ykd.0
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 13:30:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=lpTONlUy31GqsDmXjNkI2STIlpuDI/wh6XqClg7ESUc=;
        b=wAfT8aMoeqEvsG7TyKJv1Jl1V+D2kvqmuePEARbaX8lwSo78lFl2GPGK/hEUIHDz75
         8ryzsQxXUsVuARQRWcymiI9SiZ4N4R3HH+U158erZMLalp5Ki1oPolZwQzi/sYzZBdMd
         u4me+ym4idCA5KKGeUWotGrz7LF5IGYW/VSrRLNO2nqDMYTtEg5NstriINLXDv6Z+QSA
         aAkx2yAAMXrnHbHgT0ujofpsfuvKYY2+T42SurRWsSU4am3fC0eSRhfKV84szeGif3KF
         SQ50nkigBAT4Wd1Ok74+B7MsHFDtDDup/7d5a3xqkCXboRo8eF/Rb0B3w7iitct64xmi
         kQ7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-type:content-disposition
         :in-reply-to:user-agent;
        bh=lpTONlUy31GqsDmXjNkI2STIlpuDI/wh6XqClg7ESUc=;
        b=ejeoo4df9BmEdQfeacA7ODbkzSCb/BCBaZy5eTBiAsYkBtXPzm35gcFfBteO8mt1Vj
         R9/0Xv3AUoCzvPixMqSAIMZUU0zmqUW6U82nr4M934YJDtNU6fBbnk4Ufhu2KkcM59E9
         5SoxMbNXLs9xzj62gQ/BETi4HIg+cUkBHoSRzlZ9HNIZUiYJtui0oOjU42tkImiaIe4p
         jbu0K+CbzZ0pg4vrYpUi5oCHibBnkpO+dhAOaVWv4c2KdXI6DphX5zpEk4Kf9NN12l2x
         he+4ldWPLlbmflDOkW0p96giz25UQMQBx+zLIQ8UUmzOPFw86HBSKOzGziD3zgyynbDr
         NV+Q==
X-Gm-Message-State: AG10YOSPMY978tJLhVJDCSQXFWa3oGJthtGl+DmZO0tpHxYxP7B1IzVunkKjgp26T/e5zA==
X-Received: by 10.37.230.151 with SMTP id d145mr6063427ybh.132.1456435811851;
        Thu, 25 Feb 2016 13:30:11 -0800 (PST)
Return-Path: <htejun@gmail.com>
Received: from localhost ([2620:10d:c091:200::1:aef7])
        by smtp.gmail.com with ESMTPSA id t76sm7435568ywe.47.2016.02.25.13.30.10
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 13:30:11 -0800 (PST)
Sender: Tejun Heo <htejun@gmail.com>
Date: Thu, 25 Feb 2016 16:30:10 -0500
From: Tejun Heo <tj@kernel.org>
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8192e: Remove
 create_workqueue()
Message-ID: <20160225213010.GF6092@mtj.duckdns.org>
References: <20160220100626.GA16969@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160220100626.GA16969@amitoj-Inspiron-3542>
User-Agent: Mutt/1.5.24 (2015-08-30)

Hello, Amitoj.

On Sat, Feb 20, 2016 at 03:36:26PM +0530, Amitoj Kaur Chawla wrote:
> With conccurency managed workqueues, use of dedicated workqueues can
> be replaced by system_wq. Drop wq by using system_wq.
> 
> Since there are multiple work items per rtllib but they do not need to
> be ordered, increase of concurrency by switching to system_wq should
> not break anything.
> 
> All work items are sync canceled on rtllib_stop_protocol() so it is
> guaranteed that no work is running when rtl92e_disable/reset/restart
> functions are called.
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>

For workqueue part,

Acked-by: Tejun Heo <tj@kernel.org>

The same thing with the other patch.  Let's get it tested.

Thanks.

-- 
tejun

