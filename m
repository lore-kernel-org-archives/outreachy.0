X-GM-THRID: 5958272024576
X-Received: by 10.112.9.65 with SMTP id x1mr4005132lba.16.1425316450566;
        Mon, 02 Mar 2015 09:14:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.37.194 with SMTP id a2ls430591lak.88.gmail; Mon, 02 Mar
 2015 09:14:10 -0800 (PST)
X-Received: by 10.152.6.41 with SMTP id x9mr3968234lax.10.1425316450055;
        Mon, 02 Mar 2015 09:14:10 -0800 (PST)
Return-Path: <tinajohnson.1234@gmail.com>
Received: from mail-wi0-x229.google.com (mail-wi0-x229.google.com. [2a00:1450:400c:c05::229])
        by gmr-mx.google.com with ESMTPS id cl5si703632wib.3.2015.03.02.09.14.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Mar 2015 09:14:10 -0800 (PST)
Received-SPF: pass (google.com: domain of tinajohnson.1234@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) client-ip=2a00:1450:400c:c05::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of tinajohnson.1234@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) smtp.mail=tinajohnson.1234@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x229.google.com with SMTP id bs8so16524788wib.4
        for <outreachy-kernel@googlegroups.com>; Mon, 02 Mar 2015 09:14:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=Qzh/+fIBIaHial3rWtR037MAxT8hXM/cUj8oro2GkVs=;
        b=htXslDhM9yLOgxwiV7P5i372uhtUIuQa1ZQue217zIpUGVosFSMIAtIx8lphCFcN5H
         pfOClaAeiTgO5lI1ZjRjRPfQhxVUM2Y7q2mG7FbL8BrgF2sT/gDXgIEdAEM6puIqCo/v
         MsDh+a9K8jGLgw+ejuK+kYUFRWzX/SdkUN/LKQSZe6tZjY3199ePHt5nEVyBtDddxdrd
         j/tq79W3wWbdpKMewHNfHwjURy6NVkdAt4kkCcoB8/1jmIpQlpjvAW7IT5/9qTWN7ayk
         clG/REBCwZk8BqmqqjBGLgudxb/0TOYJ9Wq40uNqC9G7uHiUOj+l5wUaURrr+DNaSiNz
         xWDw==
MIME-Version: 1.0
X-Received: by 10.194.20.67 with SMTP id l3mr59705475wje.94.1425316449968;
 Mon, 02 Mar 2015 09:14:09 -0800 (PST)
Received: by 10.28.189.195 with HTTP; Mon, 2 Mar 2015 09:14:09 -0800 (PST)
In-Reply-To: <20150302170140.GA15211@kroah.com>
References: <1425314747-9532-1-git-send-email-tinajohnson.1234@gmail.com>
	<1425314747-9532-3-git-send-email-tinajohnson.1234@gmail.com>
	<20150302170140.GA15211@kroah.com>
Date: Mon, 2 Mar 2015 22:44:09 +0530
Message-ID: <CAOdjUyXNUgQzbTGgLT+9R7C6O4so8vM9Wu5ByM9ymo20sQD0BA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2 2/2] staging: lustre: lustre:
 libcfs: Replaced printk() with pr_err() and pr_cont()
From: Tina Johnson <tinajohnson.1234@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Mon, Mar 2, 2015 at 10:31 PM, Greg KH <gregkh@linuxfoundation.org> wrote:
> Are you sure you don't have access to a struct device somewhere in these
> functions to use dev_err() instead?


Since lustre is a file system, I think pr_err() should be fine. I had
asked around and most of them said pr_err() will be quite fine.

-- 
Regards,
Tina Johnson,
FOSS@Amrita
A patch a day keep the bugs away!

