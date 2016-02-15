X-GM-THRID: 6250833929703522304
X-Received: by 10.107.15.143 with SMTP id 15mr15221925iop.15.1455501197287;
        Sun, 14 Feb 2016 17:53:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.32.7 with SMTP id g7ls2765663qgg.49.gmail; Sun, 14 Feb
 2016 17:53:16 -0800 (PST)
X-Received: by 10.129.3.69 with SMTP id 66mr13436542ywd.41.1455501196718;
        Sun, 14 Feb 2016 17:53:16 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qg0-x234.google.com (mail-qg0-x234.google.com. [2607:f8b0:400d:c04::234])
        by gmr-mx.google.com with ESMTPS id v197si1904310ywa.1.2016.02.14.17.53.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 14 Feb 2016 17:53:16 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::234 as permitted sender) client-ip=2607:f8b0:400d:c04::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::234 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x234.google.com with SMTP id b35so101434291qge.0
        for <outreachy-kernel@googlegroups.com>; Sun, 14 Feb 2016 17:53:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=ZhvColgBmauHol1hEC0wyEH++/hqoX6BsoqEUoFQU2U=;
        b=c0GXTajeA7bKGVVKzjAxkBuP4jg6nF2G3qbNERUdlmMRsGmMot+Jg4M7HQY8IEBIlg
         jvWsltjlSRLCXHSRszH1X1TUBYwRwv0esvy/rmZHyLd1O4JpBFqF9T+afCHq3cMbHejT
         ZrVHFQxVVP9foU+7jSDYTq9gSg46tQMMs7Fxf1ex6FfgRPSwZLfIYKyoDW9FlvaNWXYk
         +mtwRANdByGlwyiFsgQDbos1zLpHZiNa9z7V3YWu3wRG2rwaagukQwZJv+GhvHhVTTDT
         cl5vv9OsRDAhlSWl2apjdxGM/SG9/5jz+yHmZS9g4oa7W+N+baFyTomruhWm1MoFJr/8
         7M2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=ZhvColgBmauHol1hEC0wyEH++/hqoX6BsoqEUoFQU2U=;
        b=kc6jWLTgVzp+M8OeASNVv0BjQHdz19XdjRM6El7L9g8rVIs+BEJhF8rH88ZIrY0Xz4
         XRR/Tk7Ay/Vz1HvDra9YH/eQnyQAuc+d7qgQz8bKJwh1jkB4es6I0KYq/Eu2c/2945ee
         0PKt6N/AEokFniU5AvVPZBgewiAhcK6jHv+e2mVp8INear7VCenTDZYt2WbypZcjGoFo
         25HwiGGEqWQA5JojNMoWa+3XTBeb8lJFnsbb8uz8OqeLIsKpMhq+6njBiLRGObqqDSk9
         /oDEaw15Sd3/46pQfCNKVW0+EDmOe+3Oe4Q1sxd3cFUSUaETGNqC1vZDQmjPZ6mWngIX
         pqGw==
X-Gm-Message-State: AG10YOQFThlEWfqUrcGQB6HF5+il+IcX+jmQPAsjrXRvMv6jQuDaKHz4bsI89UfLJlEGPeIPm8X4MtK/7Ig0wg==
MIME-Version: 1.0
X-Received: by 10.140.167.135 with SMTP id n129mr17698423qhn.73.1455501196556;
 Sun, 14 Feb 2016 17:53:16 -0800 (PST)
Received: by 10.140.44.99 with HTTP; Sun, 14 Feb 2016 17:53:16 -0800 (PST)
In-Reply-To: <20160215005209.GA19167@kroah.com>
References: <20160213174801.GA15312@amitoj-Inspiron-3542>
	<20160215005209.GA19167@kroah.com>
Date: Mon, 15 Feb 2016 07:23:16 +0530
Message-ID: <CA+5yK5Gokz562syiw+sYokr3Z_4Ksc=sP0Skzte-SLF4DPQqcA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: most: hdm-dim2: Use devm_ functions
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Mon, Feb 15, 2016 at 6:22 AM, Greg KH <gregkh@linuxfoundation.org> wrote:
>
> That's a lot to just do in one patch :(
>
> Do only one conversion at a time, and be _VERY_ careful about the
> request_irq() change, that has some tricky side-affects if you don't
> watch out.  If you don't know about the side affects, don't make the
> change please.
>
> So please break this up into different patches, and no need for the
> device.h change, that's not needed at all.

Okay, thanks for the feedback.

Will send v2 as a patchset.

Amitoj

