X-GM-THRID: 2832175464448
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,64f0e1e17bdf8619
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.130.70 with SMTP id oc6mr1809268lbb.13.1425017141621;
        Thu, 26 Feb 2015 22:05:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.203.171 with SMTP id kr11ls115233lac.36.gmail; Thu, 26 Feb
 2015 22:05:40 -0800 (PST)
X-Received: by 10.152.6.232 with SMTP id e8mr1788648laa.2.1425017140146;
        Thu, 26 Feb 2015 22:05:40 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-la0-x231.google.com (mail-la0-x231.google.com. [2a00:1450:4010:c03::231])
        by gmr-mx.google.com with ESMTPS id xl7si271871lbb.1.2015.02.26.22.05.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 22:05:40 -0800 (PST)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2a00:1450:4010:c03::231 as permitted sender) client-ip=2a00:1450:4010:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2a00:1450:4010:c03::231 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by labgm9 with SMTP id gm9so15518495lab.2
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Feb 2015 22:05:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=8VS4yMS3jCJkZh/lJqPN9mj3RUaDjxnbOVRfsJCyfJU=;
        b=PLRUWrKQuPt2stbFhSYIEGk+jiVpGiCLLECoXPlP+TKg6IvCPJf+AISBO4wSIL2uWZ
         8yDtGAelP+NuErodAJx6S1WFjr1zWSE9ZOY25FgMAXJUH80aq3tO7NpW9r8QhDVYMhjp
         ACPhJUZh5h/Km/zv+4a5eRCj2chkhKfKfm2sQ0l01I1z7m9rnRcCnyes2uecHku9Xh+B
         ZNoix+I6D12D6wRZ46ckSCWKIsKgI5hLPyASg6SQwRs4ART+ww/KjETorB9SJdFOw14s
         qjKl+uRBoy39y+P8V6EOfgVQZOmlO4GBqUXK77xJe3ez826+INA/kaquqrw1UN+YD+yL
         n8kA==
MIME-Version: 1.0
X-Received: by 10.152.206.70 with SMTP id lm6mr11117066lac.35.1425017140031;
 Thu, 26 Feb 2015 22:05:40 -0800 (PST)
Received: by 10.112.59.9 with HTTP; Thu, 26 Feb 2015 22:05:39 -0800 (PST)
In-Reply-To: <20150226205205.GA30117@kroah.com>
References: <20150223150647.GA12403@gmail.com>
	<20150226205205.GA30117@kroah.com>
Date: Fri, 27 Feb 2015 11:35:39 +0530
Message-ID: <CAHjTdYdnGmRuy016aK8cFHwkjZd5-M4KEQDxS+Bo5Dd_z40OnQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: Remove redundant
 if conditions
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=001a1134a00a6e370b05100ba849

--001a1134a00a6e370b05100ba849
Content-Type: text/plain; charset=UTF-8

Hey,
I noticed that other chunk of if() later and sent in
another patch for it. I'll send in a v2 with both changes merged
and remove the variable :)

Thanks!

--001a1134a00a6e370b05100ba849
Content-Type: text/html; charset=UTF-8

<div dir="ltr"><div><div>Hey, <br>I noticed that other chunk of if() later and sent in<br>another patch for it. I&#39;ll send in a v2 with both changes merged<br></div>and remove the variable :)<br><br></div>Thanks!<br></div>

--001a1134a00a6e370b05100ba849--

