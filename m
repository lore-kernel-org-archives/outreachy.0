X-GM-THRID: 6399870143121326080
X-Received: by 10.157.35.88 with SMTP id k24mr11071611otd.41.1490777373322;
        Wed, 29 Mar 2017 01:49:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.95.9 with SMTP id r9ls2962977itb.14.gmail; Wed, 29 Mar 2017
 01:49:32 -0700 (PDT)
X-Received: by 10.99.111.6 with SMTP id k6mr11994879pgc.131.1490777372525;
        Wed, 29 Mar 2017 01:49:32 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-vk0-x243.google.com (mail-vk0-x243.google.com. [2607:f8b0:400c:c05::243])
        by gmr-mx.google.com with ESMTPS id c124si477444vkh.2.2017.03.29.01.49.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 29 Mar 2017 01:49:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400c:c05::243 as permitted sender) client-ip=2607:f8b0:400c:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400c:c05::243 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x243.google.com with SMTP id d188so1224006vka.3
        for <outreachy-kernel@googlegroups.com>; Wed, 29 Mar 2017 01:49:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=HoOG+I/UExebU8pnTBo+El5/cqURb8PMY3eOlIwlT9I=;
        b=Q/6AsBOq7kuPedUXkCEanjCnX94ubvQuuEGQMv8oP6OPRYn1n0+vIMt9AFZu4uiTKD
         AVJytYeSnL99gAojDekNjlZ+Omwy6rOY+HZJv/3isGNWPH1m0zYyKFd8hkGD7yGCl90F
         jB03oU+XaTyL4yALnZTvBgw87HevsPKjCshlupFJrOowZLw4460wCvo2s3UG59mux2Nu
         5nudFlZ8haYKK/ok1hvjkfdx9Ha5HSb+n78uzqvwuV75vOopF4wfggrVjdENenzpmHKF
         JNk+Sp2w20+oNA0LvM3Ojy8LosiKhxLIqRwhIHkC7dcc22n8E1Eqm/PQ/KHqdiHfftjc
         fFwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=HoOG+I/UExebU8pnTBo+El5/cqURb8PMY3eOlIwlT9I=;
        b=mA2LP5m01hzbLa0mAGkVB2ODocrPNCJGxFs3J3LYJKSWtvD+4fhSN7lohdcIyjZ/8B
         2kp7VAmNTQokxOTreFiq2ie8sZT10Wi60gHsZDysEy5bYtYW13+orXj/NCo0wNmPr/CV
         42DqM4I8py+xTO3CUJ/Q4I7BWbL6BYV8SP5RBRLHGxVsJK9b+AoLGT6BkFsFTgDTqI4J
         p2iraFYdq/Xf4pra8q3xn5lmwUq45uKohvBvlIG5DHWBfBSS/femqz3fjXSgKAvhjFYk
         xqJv3B62qL4QExjTuVhLEUL9hJgbbzWXLxspxpfR9KHNuuwRH7EYFj6FW/IpVKP2W1ls
         PZ1g==
X-Gm-Message-State: AFeK/H00RJjrT1U9niVGVLjJ2ZJVnh2OY3sjlm1wbxTQ1S1c3d7ueZLDePWglgvo92u90qtSeIBFbg4YqFOv2w==
X-Received: by 10.31.237.2 with SMTP id l2mr8047370vkh.8.1490777372183; Wed,
 29 Mar 2017 01:49:32 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.87.212 with HTTP; Wed, 29 Mar 2017 01:49:31 -0700 (PDT)
In-Reply-To: <alpine.LSU.2.20.1703290854390.26906@n3.vanv.qr>
References: <20170328131340.GA19688@singhal-Inspiron-5558> <alpine.LSU.2.20.1703281552040.21255@n3.vanv.qr>
 <CALrZqyPeR6X1RrqOsGfLbbZ2rPQgOf=50Rs+ot0kxkkA464V5w@mail.gmail.com> <alpine.LSU.2.20.1703290854390.26906@n3.vanv.qr>
From: SIMRAN SINGHAL <singhalsimran0@gmail.com>
Date: Wed, 29 Mar 2017 14:19:31 +0530
Message-ID: <CALrZqyN2Vh0J219tY_zj5u-4bUVmD+T=q6yMH9WZN2Y3O7yzpA@mail.gmail.com>
Subject: Re: [PATCH v2] netfilter: Clean up tests if NULL returned on failure
To: Jan Engelhardt <jengelh@inai.de>
Cc: wensong@linux-vs.org, Simon Horman <horms@verge.net.au>, Julian Anastasov <ja@ssi.bg>, 
	Pablo Neira Ayuso <pablo@netfilter.org>, Jozsef Kadlecsik <kadlec@blackhole.kfki.hu>, 
	"David S. Miller" <davem@davemloft.net>, netdev@vger.kernel.org, lvs-devel@vger.kernel.org, 
	netfilter-devel@vger.kernel.org, coreteam@netfilter.org, 
	linux-kernel@vger.kernel.org, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Wed, Mar 29, 2017 at 12:25 PM, Jan Engelhardt <jengelh@inai.de> wrote:
>
> On Tuesday 2017-03-28 18:23, SIMRAN SINGHAL wrote:
>>On Tue, Mar 28, 2017 at 7:24 PM, Jan Engelhardt <jengelh@inai.de> wrote:
>>> On Tuesday 2017-03-28 15:13, simran singhal wrote:
>>>
>>>>Some functions like kmalloc/kzalloc return NULL on failure. When NULL
>>>>represents failure, !x is commonly used.
>>>>
>>>>@@ -910,7 +910,7 @@ ip_vs_new_dest(struct ip_vs_service *svc, struct ip_vs_dest_user_kern *udest,
>>>>       }
>>>>
>>>>       dest = kzalloc(sizeof(struct ip_vs_dest), GFP_KERNEL);
>>>>-      if (dest == NULL)
>>>>+      if (!dest)
>>>>               return -ENOMEM;
>>>
>>> This kind of transformation however is not cleanup anymore, it's really
>>> bikeshedding and should be avoided. There are pro and cons for both
>>> variants, and there is not really an overwhelming number of arguments
>>> for either variant to justify the change.
>>
>>Sorry, but I didn't get what you are trying to convey. And particularly pros and
>>cons of both variants.
>
> The ==NULL/!=NULL part sort of ensures that the left side is a pointer, which
> is lost when just using the variable and have it implicitly convert to bool.

Thanks for the explaination!!!!

But, according to me we should prefer != NULL over ==NULL according to
coding style.

