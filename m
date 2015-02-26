X-GM-THRID: 3148599001088
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,1471a1a57b962ba4
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.194.178.234 with SMTP id db10mr1255566wjc.2.1424953591405;
        Thu, 26 Feb 2015 04:26:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.20.67 with SMTP id l3ls25479lae.93.gmail; Thu, 26 Feb 2015
 04:26:30 -0800 (PST)
X-Received: by 10.112.25.7 with SMTP id y7mr1235958lbf.21.1424953590780;
        Thu, 26 Feb 2015 04:26:30 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-la0-x234.google.com (mail-la0-x234.google.com. [2a00:1450:4010:c03::234])
        by gmr-mx.google.com with ESMTPS id xl7si56385lbb.1.2015.02.26.04.26.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 04:26:30 -0800 (PST)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2a00:1450:4010:c03::234 as permitted sender) client-ip=2a00:1450:4010:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2a00:1450:4010:c03::234 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-la0-x234.google.com with SMTP id gf13so10520602lab.9
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Feb 2015 04:26:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=CfLaFk+8dq4+uLpMrnIIMtYe6CiCQXfI6wl5JIrKc8o=;
        b=TJUM1kPH8B1F2iE9BulZSJoZf++IimOLnTTmEqD0fWP/B2MSJ1NjvTndsTgTGxkLTK
         5ji8rAdpSDO1QwtxSyHGcF+GJMhC8iBQkN45vWGUfSW8XRGyU6bXeizHeZFdfLuB6YAE
         XREvsO7XGhDUc4HXV9oV4mErzdlo6bCjAUO+wVQJmQhHAmg9/Crz5vYln+kZZ1eqyUoC
         I1YHPjxtB/R4CjNXhSPUGmrnU+OcbdjoOm3BSElRsnU1R/dgLtSZxusDHB4G0Z9Q8nXr
         cf9UWA0GlZe4cMy8QYQzOYWvjUSjefdXkRPSRdSPAbrik+Ct4LgPftszXekvbzVzZB0R
         +8OA==
MIME-Version: 1.0
X-Received: by 10.112.188.165 with SMTP id gb5mr7332234lbc.35.1424953590682;
 Thu, 26 Feb 2015 04:26:30 -0800 (PST)
Received: by 10.112.59.9 with HTTP; Thu, 26 Feb 2015 04:26:30 -0800 (PST)
In-Reply-To: <20150224141845.GA16196@kroah.com>
References: <cover.1424761857.git.vatikaharlalka@gmail.com>
	<a504aa6ef851fcf381d8dbf9a1804bb43fbbd343.1424761857.git.vatikaharlalka@gmail.com>
	<20150224074018.GB11701@kroah.com>
	<CAHjTdYeJwoC26O-c1oWWaTtdxRfBegggu1fS0qXj+LwLoii5Wg@mail.gmail.com>
	<20150224141845.GA16196@kroah.com>
Date: Thu, 26 Feb 2015 17:56:30 +0530
Message-ID: <CAHjTdYfokxt2wBZaEy-6UVDRN3_60Nac1t4XkEZD6yJ=Z4bMYA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 1/2 v2] Introduce new macro
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=001a11c36da29816e0050ffcdc66

--001a11c36da29816e0050ffcdc66
Content-Type: text/plain; charset=UTF-8

Oh sorry, if the array is declared as static const u8, the additional macro
will not be required as we do not need the size in advance.

--001a11c36da29816e0050ffcdc66
Content-Type: text/html; charset=UTF-8

<div dir="ltr"><div>Oh sorry, if the array is declared as static const u8, the additional macro will not be required as we do not need the size in advance.<br></div></div>

--001a11c36da29816e0050ffcdc66--

