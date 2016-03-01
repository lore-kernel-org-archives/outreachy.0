X-GM-THRID: 6257118744620826624
X-Gmail-Labels: Topic type: DISCUSSION
X-Received: by 10.140.156.139 with SMTP id c133mr17390619qhc.4.1456850854099;
        Tue, 01 Mar 2016 08:47:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.34.74 with SMTP id i71ls623570ioi.96.gmail; Tue, 01 Mar
 2016 08:47:33 -0800 (PST)
X-Received: by 10.66.191.230 with SMTP id hb6mr17830870pac.25.1456850853492;
        Tue, 01 Mar 2016 08:47:33 -0800 (PST)
Return-Path: <bounce-md_30481620.56d5c7a5.v1-a9fa68bd14e74282aedf0f11d9500943@mandrillapp.com>
Received: from mail177-1.suw61.mandrillapp.com (mail177-1.suw61.mandrillapp.com. [198.2.177.1])
        by gmr-mx.google.com with ESMTPS id q187si1915111ywf.4.2016.03.01.08.47.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Mar 2016 08:47:33 -0800 (PST)
Received-SPF: pass (google.com: domain of bounce-md_30481620.56d5c7a5.v1-a9fa68bd14e74282aedf0f11d9500943@mandrillapp.com designates 198.2.177.1 as permitted sender) client-ip=198.2.177.1;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bounce-md_30481620.56d5c7a5.v1-a9fa68bd14e74282aedf0f11d9500943@mandrillapp.com designates 198.2.177.1 as permitted sender) smtp.mailfrom=bounce-md_30481620.56d5c7a5.v1-a9fa68bd14e74282aedf0f11d9500943@mandrillapp.com;
       dkim=pass header.i=@linuxfoundation.org;
       dkim=pass header.i=@mandrillapp.com
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=mandrill; d=linuxfoundation.org;
 h=From:Subject:To:Cc:Message-Id:References:In-Reply-To:Date:MIME-Version:Content-Type:Content-Transfer-Encoding; i=gregkh@linuxfoundation.org;
 bh=Al64QzBKd7QbBBcEwQB0xmfU1zE=;
 b=TqsxUh97wpBXkIUnnjEJMthTZX9XXKPv7pBfjtM994hqm14LYz74W/rxiUrwAbWiVjqipuW61X9p
   xgBV2cOFddAzFQTztY6K3mzfXgBE3LZ1vvPYv4UVOz/hVFfNiYKUWaP/L6RmeZcjy6tEcYY2AEjJ
   9qqD0ecUBmohi+OAFc4=
Received: from pmta06.mandrill.prod.suw01.rsglab.com (127.0.0.1) by mail177-1.suw61.mandrillapp.com id hqn3qa22rtkt for <outreachy-kernel@googlegroups.com>; Tue, 1 Mar 2016 16:47:33 +0000 (envelope-from <bounce-md_30481620.56d5c7a5.v1-a9fa68bd14e74282aedf0f11d9500943@mandrillapp.com>)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mandrillapp.com; 
 i=@mandrillapp.com; q=dns/txt; s=mandrill; t=1456850853; h=From : 
 Subject : To : Cc : Message-Id : References : In-Reply-To : Date : 
 MIME-Version : Content-Type : Content-Transfer-Encoding : From : 
 Subject : Date : X-Mandrill-User : List-Unsubscribe; 
 bh=+T8L4T9HitUbaLrpq1WkqdhxLMlviwtNMcVTuvqMX/Q=; 
 b=Is1a58ppwus+ckPtBlcKt1ETGUTbMKzJxbl9TEHv2hQdT4Yo209j9p0qPqMXm3hosC61V8
 bMfY7ayHpEYTmQbogTgxtJ4a1eUGsTxnkm1brk2kRoNFM9HH0jfrKc5q+4erhnBJ1UfBxQeQ
 NLGmCE39Rtnzz05n9i5EuB3mwQdQw=
From: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] Need Guidance towards contributing to Linux Kernel
Return-Path: <bounce-md_30481620.56d5c7a5.v1-a9fa68bd14e74282aedf0f11d9500943@mandrillapp.com>
Received: from [50.170.35.168] by mandrillapp.com id a9fa68bd14e74282aedf0f11d9500943; Tue, 01 Mar 2016 16:47:33 +0000
To: Minerva Panda <minervapandaniki@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <20160301164732.GA3458@kroah.com>
References: <9a7318ba-a4a0-4409-8cc9-a51af0ed0d6b@googlegroups.com>
In-Reply-To: <9a7318ba-a4a0-4409-8cc9-a51af0ed0d6b@googlegroups.com>
X-Report-Abuse: Please forward a copy of this message, including all headers, to abuse@mandrill.com
X-Report-Abuse: You can also report abuse here: http://mandrillapp.com/contact/abuse?id=30481620.a9fa68bd14e74282aedf0f11d9500943
X-Mandrill-User: md_30481620
Date: Tue, 01 Mar 2016 16:47:33 +0000
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On Tue, Mar 01, 2016 at 08:16:24AM -0800, Minerva Panda wrote:
> Hello.
> I am in 2nd year of undergraduate studies in Computer Science. I am aiming for
> Outreachy 2016 Round-12. Please guide how should I start contributing to Linux.
> I have 4 years of experience in C/C++.Please suggest me tips how to track bugs
> and fix it. I am a total beginner and want to contribute in open source
> projects with Linux.

Have you completed the tutorial on the web site?  Please start with
that, it should be a good introduction to the questions you are asking
here.

good luck!

greg k-h

