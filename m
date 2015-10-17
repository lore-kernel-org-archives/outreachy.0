X-GM-THRID: 6205668721559601152
X-Received: by 10.107.15.168 with SMTP id 40mr11842231iop.16.1445041947858;
        Fri, 16 Oct 2015 17:32:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.27.101 with SMTP id s5ls719259obg.13.gmail; Fri, 16 Oct
 2015 17:32:27 -0700 (PDT)
X-Received: by 10.182.126.47 with SMTP id mv15mr13729054obb.44.1445041947396;
        Fri, 16 Oct 2015 17:32:27 -0700 (PDT)
Return-Path: <deepa.kernel@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id ce6si1758202pad.0.2015.10.16.17.32.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Oct 2015 17:32:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of deepa.kernel@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of deepa.kernel@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mailfrom=deepa.kernel@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x231.google.com with SMTP id p3so3162301pay.2
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Oct 2015 17:32:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=content-type:mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=8f0VVTPnXWgEHmFvBTUb23Ze7WgyIqeLBCk3nHMrAZw=;
        b=KZEHC6el0kOq8uICa6TgnfJ53ACHku1O/8w684fKx7HoZ5LYNn0skciNii1zZFK3Wq
         EhpSxW89/wFeGtlaIUeob2IuYi4dDdF14It8yMKoJQsRGTAsnVL9vi3Ptaq43kSuJJLW
         h1cOHRK+AdKM+Mz4wphSTIsHB5LkIp3Gkw20uJwF5ocyqeF5pgHhulHwGlEnKSjhwaVm
         VmtMLPbarrBGhQoJjkI1FbC8Qsjnj/60U3331rFr1zSe9xf7lLj2Z13vBjRW5efi9ehn
         d0LPuxtK2QG1qBV6/0iR95VR2XRz1L6CzMaGpMD7vpc+mXtJ7Q++orXcS2L6ryF+u02u
         LOmw==
X-Received: by 10.68.57.137 with SMTP id i9mr19541539pbq.101.1445041947180;
        Fri, 16 Oct 2015 17:32:27 -0700 (PDT)
Return-Path: <deepa.kernel@gmail.com>
Received: from [10.55.167.60] ([166.170.43.148])
        by smtp.gmail.com with ESMTPSA id pk2sm23310703pbb.21.2015.10.16.17.32.26
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 16 Oct 2015 17:32:26 -0700 (PDT)
Content-Type: text/plain;
	charset=us-ascii
Mime-Version: 1.0 (1.0)
Subject: Re: [Y2038] [Outreachy kernel] Re: [PATCH] staging: ft1000: replace timeval with ktime_t
From: Deepa Dinamani <deepa.kernel@gmail.com>
X-Mailer: iPhone Mail (13B5110e)
In-Reply-To: <5068430.5O6VKJJBka@wuerfel>
Date: Fri, 16 Oct 2015 17:32:25 -0700
Cc: y2038@lists.linaro.org, outreachy-kernel@googlegroups.com
Content-Transfer-Encoding: 7bit
Message-Id: <929BCFA7-B28D-4B76-9006-A488345D945F@gmail.com>
References: <1444869780-26658-1-git-send-email-deepa.kernel@gmail.com> <CABeXuvrTDkfM=2umfNcoyATN866zWQ2ed-VspCyn-xC846e1nw@mail.gmail.com> <9822706.yKCeF9F5MV@wuerfel> <5068430.5O6VKJJBka@wuerfel>
To: Arnd Bergmann <arnd@arndb.de>

Should I then fix this patch as per your suggestion or let it be?

-Deepa

> On Oct 16, 2015, at 4:30 PM, Arnd Bergmann <arnd@arndb.de> wrote:
> 
>> On Saturday 17 October 2015 00:57:45 Arnd Bergmann wrote:
>> 
>> A more likely cleanup would be the removal of the debug interface,
>> replacing it with something completely different.
> 
> A little more research shows that we can probably remove the driver
> from the kernel really soon, as the only remaining operator is
> shutting down its service:
> 
> http://www.gtigroup.org/news/ind/2015-08-18/6996.html
> 
> They just went from a nationwide service to one that is only
> available in the two largest cities of the country, and they
> already offer much faster LTE service there.
> 
>    Arnd

