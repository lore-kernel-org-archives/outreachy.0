X-GM-THRID: 6256413152198524928
X-Received: by 10.66.221.100 with SMTP id qd4mr21841506pac.0.1456937412289;
        Wed, 02 Mar 2016 08:50:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.22.10 with SMTP id 10ls4041597qgm.23.gmail; Wed, 02 Mar
 2016 08:50:11 -0800 (PST)
X-Received: by 10.129.155.201 with SMTP id s192mr22609957ywg.4.1456937411593;
        Wed, 02 Mar 2016 08:50:11 -0800 (PST)
Return-Path: <htejun@gmail.com>
Received: from mail-yk0-x230.google.com (mail-yk0-x230.google.com. [2607:f8b0:4002:c07::230])
        by gmr-mx.google.com with ESMTPS id q187si2290138ywf.4.2016.03.02.08.50.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Mar 2016 08:50:11 -0800 (PST)
Received-SPF: pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:4002:c07::230 as permitted sender) client-ip=2607:f8b0:4002:c07::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:4002:c07::230 as permitted sender) smtp.mailfrom=htejun@gmail.com;
       dkim=pass header.i=@gmail.com
Received: by mail-yk0-x230.google.com with SMTP id z13so93958191ykd.0
        for <outreachy-kernel@googlegroups.com>; Wed, 02 Mar 2016 08:50:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=oxJ6TzFJmEJSTqK7n72i3G39I2GnykG/1Gx/Ob1PfHo=;
        b=eK3gvhE74H8SQKq6I/eLECF6yoyay7VifOXWA+Jx6H1Z189fM7ZOY3xk0q9nQnXUv+
         DgIslkas2e/u801kvWLv5vhR/u9TckgmFt/iVPz+dI3iYnoMnyZRTbAJJ//64K+IJkch
         cyYzO+F8HiZaI/qH6Bj9XtmzTcY39k7u1Wc4GCQo7FsC0cETfHlCzcDD2VcS7XmyO3A0
         HUdrKZ1+rRops0nRgYZmFxn03YDXEhxtZFma3hoadSqdk9eOJn5fe+SFO50MWzjI1WWo
         zMYe4Jw5Py6A4RmiUBsuA3Zefr6XMtZ3eOm7pbzFqathRzerXzKjHveQz+XZeLzsKJ36
         IH+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=oxJ6TzFJmEJSTqK7n72i3G39I2GnykG/1Gx/Ob1PfHo=;
        b=ZI1fB2LVQ8Y1DEZxC/AW0nv+8ftL3tt8JhuwYf55fedeQZABypq2HYk0nJa6+9kAPr
         MPVXieuRfKbIVLirk37Ew20HvE8bqTWsPIFzxBv0fMLF7UCMur7QgPy22yAkzqk7xj+G
         h0+a2XvVS4xaei0lL/broK6atURYOy4dUK0G9AEXtz+iBWOUsrJ31if5s/0Q9mVhpNM1
         FAi+M18cKBftmullXq4At4QOBLds/qKEdvLsxxnZXloGNRQxwe0tPNzc/wz6pWcu89PL
         e3f5B1K4HtnB4OYentZzJ6+OiDXM8HMdUJs9SXKlU9cHzQaeThxbVyutoZuIeaQD+FvF
         ISLw==
X-Gm-Message-State: AD7BkJIhCRr5wxYYRNlZDEspFEcs5pD8NWKBm8wQeYmMUoKKZxZUbhrYkiANXJhZRSZBUQ==
X-Received: by 10.37.97.215 with SMTP id v206mr15357852ybb.50.1456937411358;
        Wed, 02 Mar 2016 08:50:11 -0800 (PST)
Return-Path: <htejun@gmail.com>
Received: from localhost ([2620:10d:c091:200::4:8440])
        by smtp.gmail.com with ESMTPSA id w7sm17495754ywa.4.2016.03.02.08.50.10
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Mar 2016 08:50:10 -0800 (PST)
Sender: Tejun Heo <htejun@gmail.com>
Date: Wed, 2 Mar 2016 11:50:10 -0500
From: Tejun Heo <tj@kernel.org>
To: Pooja Shamili <poojashamili@gmail.com>
Cc: "outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: Regarding submission of first patch to
 the kernel
Message-ID: <20160302165010.GE29826@mtj.duckdns.org>
References: <CAC7CfdpLDNqf+4_oaF3wT=6nA_Om87Fdf4-RYZrTcp9u3TE1NA@mail.gmail.com>
 <20160225221151.GN6092@mtj.duckdns.org>
 <CAC7Cfdq=XLk1rf_hcBz89b1iVqp6U34GOQS9YYf8W4Cvm=yb4A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAC7Cfdq=XLk1rf_hcBz89b1iVqp6U34GOQS9YYf8W4Cvm=yb4A@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Hello, Pooja.

On Mon, Feb 29, 2016 at 12:08:20AM +0530, Pooja Shamili wrote:
> Thanks for your reply. Sorry for not being very specific in my email. I
> wanted to know what kind of background knowledge do I need to gather in
> order to start doing the tasks and you answered that by suggesting to write
> a test module that experiments with a workqueue. I read the tasks on the
> Mentor's Page and I also went through the documentation on workqueues. I
> got to read about alloc_workqueue but in the tasks page, there is also
> system_wq that is mentioned. I am not able to gather much information about
> this particular function. Can you suggest a resource from where I could
> understand the function better?

Learning about the different contexts that code can run would be the
first thing - task context, irq, softirq, preemption and so on.  As
restrictions of various execution contexts is one of the main reasons
why workqueue is used.  As workqueue is a worker thread pool
implementation, it'd also help to have a general understanding of
thread pools.  I haven't read it myself but "Understanding the Linux
kernel" is often recommended.

Once you understand the basic concepts, please research how to write,
build and use external modules.  There are various resources easily
accessible via google.

Thanks.

-- 
tejun

