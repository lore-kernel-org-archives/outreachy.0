X-GM-THRID: 6392991510876389376
X-Received: by 10.25.79.23 with SMTP id d23mr613463lfb.27.1488565435625;
        Fri, 03 Mar 2017 10:23:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.14.1 with SMTP id 1ls1111698ljo.45.gmail; Fri, 03 Mar 2017
 10:23:54 -0800 (PST)
X-Received: by 10.25.160.141 with SMTP id j135mr271534lfe.18.1488565434521;
        Fri, 03 Mar 2017 10:23:54 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-lf0-x235.google.com (mail-lf0-x235.google.com. [2a00:1450:4010:c07::235])
        by gmr-mx.google.com with ESMTPS id v201si233405wmv.3.2017.03.03.10.23.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 10:23:54 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2a00:1450:4010:c07::235 as permitted sender) client-ip=2a00:1450:4010:c07::235;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2a00:1450:4010:c07::235 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x235.google.com with SMTP id k202so50940788lfe.1
        for <outreachy-kernel@googlegroups.com>; Fri, 03 Mar 2017 10:23:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=0larVr3GiqXoJj4D9RvOPPF2oH7J0LARaQu8XoUqWKY=;
        b=OwWakjorBKSP5he41orLtGlu2ZweGPuOmyuUadMXhcKvfj7IbOs5vu5f4qbXz96/8c
         i8M2TzzT96g+7fj8UtGkWi2LJNCt+nEFUwEkmdtDzceHIbpxkIzzn4dqO8QOztBnvXvb
         X99HLbEc7Cmb6kdbYJmdBywbVHV2FW43ww522+JdpJcivqXl24WXzbk3f+GGafWjBVe2
         Y8EQ5dc/rPy2dzRbaGM5s5heDqq8HrRLnRUimActtIekcZAAObpZW/M41mNcOqoZwKHn
         3PCvp8/cf72+71/8zfajOo8mHM8GS9hwtNERg0Yd2qsTGWSku4+B5aTfVD76+QrpnHv0
         qwYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=0larVr3GiqXoJj4D9RvOPPF2oH7J0LARaQu8XoUqWKY=;
        b=qKbN0gwBSNlnJF+nx4YDfbk2iP3n9govpVoVGoCXPLC02xF8/ZAxOFxW3uppTcjeSi
         Vmu0Xh2zS6fOKkDSlVZQ9u+Pl2zkSmnYhTRHC+rD/R5eCsQZNVUdKIGdXiHhn9i6CnHM
         HKQu1jOpGYwqf8r9pRtGFn1BR5UhnRW5rDfqcHMDClDCyOjAt2Uk3Dz2SZCYzwV8wyDP
         iEcajjD4q2XqRYXQzlbLNOHMiFQtOnfDFy5PmrkraMp8Y9lVME2MH3RWK/HMEi5wm9vR
         wpQf9BRpiRb9x8TCRNvuossN9w32fapAxVRiUSP+3/f62KvppVPrTfOxxDJLm7eUQWuY
         Qoqg==
X-Gm-Message-State: AMke39m3UJTqRDoYB7hSICKmA+DU6NHcc4UhxPus2Lm171B5S9rDVc6AgKTLos1/qEgzDZUqMFw7aov2XsTWtg==
X-Received: by 10.25.233.201 with SMTP id j70mr1261481lfk.20.1488565434233;
 Fri, 03 Mar 2017 10:23:54 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.15.39 with HTTP; Fri, 3 Mar 2017 10:23:53 -0800 (PST)
In-Reply-To: <20170303174552.GP3220@valkosipuli.retiisi.org.uk>
References: <1488484322-5928-1-git-send-email-singhalsimran0@gmail.com> <20170303174552.GP3220@valkosipuli.retiisi.org.uk>
From: SIMRAN SINGHAL <singhalsimran0@gmail.com>
Date: Fri, 3 Mar 2017 23:53:53 +0530
Message-ID: <CALrZqyOeOK2k1K8Z2Yt3SmvJQ8A+vigNBsd39-paPwkRAY6CVQ@mail.gmail.com>
Subject: Re: [PATCH 1/7] staging: media: Remove unnecessary typecast of c90
 int constant
To: Sakari Ailus <sakari.ailus@iki.fi>
Cc: mchehab@kernel.org, Greg KH <gregkh@linuxfoundation.org>, 
	linux-media@vger.kernel.org, devel@driverdev.osuosl.org, 
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Fri, Mar 3, 2017 at 11:15 PM, Sakari Ailus <sakari.ailus@iki.fi> wrote:
> Hi Simran,
>
> On Fri, Mar 03, 2017 at 01:21:56AM +0530, simran singhal wrote:
>> This patch removes unnecessary typecast of c90 int constant.
>>
>> WARNING: Unnecessary typecast of c90 int constant
>>
>> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
>
> Which tree are these patches based on?
Can you please explain what's the problem with this patch. And
please elaborate your question.

>
> --
> Regards,
>
> Sakari Ailus
> e-mail: sakari.ailus@iki.fi     XMPP: sailus@retiisi.org.uk

