X-GM-THRID: 7448435884032
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,bb1187e4a703feb6
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.150.115 with SMTP id uh19mr1628789wib.7.1425996057203;
        Tue, 10 Mar 2015 07:00:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.102.100 with SMTP id fn4ls673011wib.24.canary; Tue, 10 Mar
 2015 07:00:56 -0700 (PDT)
X-Received: by 10.194.53.225 with SMTP id e1mr4744479wjp.4.1425996056822;
        Tue, 10 Mar 2015 07:00:56 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-la0-x22d.google.com (mail-la0-x22d.google.com. [2a00:1450:4010:c03::22d])
        by gmr-mx.google.com with ESMTPS id wz2si83352lbb.0.2015.03.10.07.00.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2015 07:00:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2a00:1450:4010:c03::22d as permitted sender) client-ip=2a00:1450:4010:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2a00:1450:4010:c03::22d as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-la0-x22d.google.com with SMTP id hs14so1403713lab.5
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2015 07:00:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=Or7zVeYbbFtSGhpPaLsYGMKHeSLhLkvUz7spGggm1Go=;
        b=SlTM9DJ1L1gmzCDgDDxZ2hwz+YlpcWy4K+WFagTdSlxhMFW0nbpKcYYLtq8d+X77ZJ
         E2TydT/jUQbGsYgw85u3oKn9qtFNFdL1wmeDl1Z2xY4+73+As6O4cwL38CUqaHYKQ79j
         jIBQ4SXlELtgKxlGWaaeX4cPKiwkz8YHLpxGFqU+3AIRzoW5Yi94FxxGJWjjgC3tOwYd
         rVJ0nah5u1NUKaa5ZbdaoUlMFn4xs64oK8zAW4tnPn63LvKl/l4ojhP6XW5EzTPrspkY
         llhSzKI94iZM+OWp5Dfsq5IYc1muscPt2c5HdPezw4aYymDpG0uXhhUZrlAJlxO6xBy7
         L0/Q==
MIME-Version: 1.0
X-Received: by 10.112.169.39 with SMTP id ab7mr29825061lbc.85.1425996056714;
 Tue, 10 Mar 2015 07:00:56 -0700 (PDT)
Received: by 10.112.59.7 with HTTP; Tue, 10 Mar 2015 07:00:56 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1503101447311.5257@hadrien>
References: <20150310134242.GA9593@akanksha>
	<alpine.DEB.2.10.1503101447311.5257@hadrien>
Date: Tue, 10 Mar 2015 19:30:56 +0530
Message-ID: <CAHjTdYcssP08+xwF2Umrxx57SYvxHAxiBgPCM+mLgTknTvo+Jw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: Remove unneeded
 variable and replace its uses
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=001a11c386e06963990510ef94e4

--001a11c386e06963990510ef94e4
Content-Type: text/plain; charset=UTF-8

I was looking into the checkpatch error related to converting
static char dotdot[] to static const char dotdot[] and then
saw that didn't seem to be required.

--001a11c386e06963990510ef94e4
Content-Type: text/html; charset=UTF-8

<div dir="ltr"><div>I was looking into the checkpatch error related to converting<br></div><div>static char dotdot[] to static const char dotdot[] and then<br></div><div>saw that didn&#39;t seem to be required.<br></div></div>

--001a11c386e06963990510ef94e4--

