X-GM-THRID: 6263377185768210432
X-Received: by 10.50.23.68 with SMTP id k4mr424884igf.10.1458321138956;
        Fri, 18 Mar 2016 10:12:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.138.158 with SMTP id c30ls1165287ioj.109.gmail; Fri, 18
 Mar 2016 10:12:18 -0700 (PDT)
X-Received: by 10.107.135.101 with SMTP id j98mr12434247iod.2.1458321138455;
        Fri, 18 Mar 2016 10:12:18 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qg0-x233.google.com (mail-qg0-x233.google.com. [2607:f8b0:400d:c04::233])
        by gmr-mx.google.com with ESMTPS id w126si907898ywe.6.2016.03.18.10.12.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 18 Mar 2016 10:12:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::233 as permitted sender) client-ip=2607:f8b0:400d:c04::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::233 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x233.google.com with SMTP id y89so106028208qge.2
        for <outreachy-kernel@googlegroups.com>; Fri, 18 Mar 2016 10:12:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc;
        bh=VFfQg8JWvBRaDxF6roPAlmv1YLHHq9Ha2LDGG7L62KA=;
        b=Px716mtNv8tT5rCwcWXZMbfu8kxL1jxjYOVmkDXGxDHarj2SD1ZMub2GAqoO7oZEwm
         5UBQw5++/EaZrw/lVxUUjVw7biG3mHqo403HGWvimjSKLYb5akCbim2yjpNUdw6gH2Jc
         oYx6UvvnABmwgBSRLwZKaj6ArPxMHeh6ghm9q+vzFsTnlkULI90gl9u8tOHIyYY3CTyn
         qVeFMjivHFnYpAHPBilVv66jNlrxE0GmK0O+ldYWZLGB0m4pAEb2fdzsFzwaL/aVhSks
         IxIAZ0mdUviXzQXBwcmNg45vjWD1purjVm/7DGB6lGA7RBpUbkZfUP5fXmXXVv2C1K1x
         B/4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc;
        bh=VFfQg8JWvBRaDxF6roPAlmv1YLHHq9Ha2LDGG7L62KA=;
        b=mqSq3xRqhjOdnhAK0vzJDkiN8i0mGbv0HlnhU8lLQzoFOYWmdT5wjEbrzhDt7/L0xr
         7MjPEePDs8lG3Im2TtZdllKhv1mscYXqhq03nk4ALEPtZL7+xvQiYHDAZncTLaL9NKCR
         Sw8HxKPogvtt1fbk5n0E9YUha7DQptoGZPTAUQSCbBrKLfwv/CI9PfsEgWdOfxfcoI57
         /y0/cXGeSxkz2jJ7p2RUb/z/jjVVMN3X5ptCdj5f9eH7+UJ5pmPY3eq6knPLSAyOn+uJ
         mpcqI+pNy5KNok3lukEwDABE5L5KsJlDduT78si1Gm/o65T327BKvK0oTLllA1vq4vXU
         w+Ig==
X-Gm-Message-State: AD7BkJKc5sm4UeRT1Iq+6eBNDIx7+/uwDHD0I4Tq+KEEGdTmzkilW9FTRxEDv/XAj7KwUjDY13SKWIeGl03twg==
MIME-Version: 1.0
X-Received: by 10.140.233.85 with SMTP id e82mr23905877qhc.86.1458321138171;
 Fri, 18 Mar 2016 10:12:18 -0700 (PDT)
Received: by 10.140.44.99 with HTTP; Fri, 18 Mar 2016 10:12:18 -0700 (PDT)
In-Reply-To: <20160318141409.GA2555@arch.fritz.box>
References: <20160318130215.GA24475@amitoj-Inspiron-3542>
	<20160318141409.GA2555@arch.fritz.box>
Date: Fri, 18 Mar 2016 22:42:18 +0530
Message-ID: <CA+5yK5H2u6TYyM889uE3TfVjSzzcVS_8qkrrYap-up3BBuxwsQ@mail.gmail.com>
Subject: Re: [PATCH] staging: most: hdm-dim2: Remove possible dereference error
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Andrey Shvetsov <andrey.shvetsov.ml@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, 
	Dan Carpenter <dan.carpenter@oracle.com>, devel@driverdev.osuosl.org
Content-Type: text/plain; charset=UTF-8

On Fri, Mar 18, 2016 at 7:44 PM, Andrey Shvetsov
<andrey.shvetsov.ml@gmail.com> wrote:
> On Fri, Mar 18, 2016 at 06:32:15PM +0530, Amitoj Kaur Chawla wrote:
>> Commit 3eced21a5afb ("staging: most: hdm-dim2: Replace request_irq
>> with devm_request_irq") introduced the following static checker
>> warning:
>> drivers/staging/most/hdm-dim2/dim2_hdm.c:841 dim2_probe()
>> error: 'dev->netinfo_task' dereferencing possible ERR_PTR()
>>
>> Remove the warning by returning PTR_ERR immediately rather than
>> storing in a variable and returning at the end of the function
>> since we do not need to free anything.
> This patch is not about a warning.
>
> This patch fixes the bug introduced in the previous patch that has
> changed the control flow so that the error code returned by the
> kthread_run was overwritten by the "ret = dim2_sysfs_probe" below.
>
> regards
> andy

I'll revise the commit message and resend.

Thanks,
Amitoj

