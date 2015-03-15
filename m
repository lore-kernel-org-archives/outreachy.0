X-GM-THRID: 7448435884032
X-Received: by 10.112.167.131 with SMTP id zo3mr3858109lbb.7.1426415200689;
        Sun, 15 Mar 2015 03:26:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.20.98 with SMTP id m2ls582243lae.5.gmail; Sun, 15 Mar 2015
 03:26:40 -0700 (PDT)
X-Received: by 10.152.28.137 with SMTP id b9mr8432056lah.8.1426415200189;
        Sun, 15 Mar 2015 03:26:40 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-la0-x22b.google.com (mail-la0-x22b.google.com. [2a00:1450:4010:c03::22b])
        by gmr-mx.google.com with ESMTPS id b6si585695lbc.1.2015.03.15.03.26.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 15 Mar 2015 03:26:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2a00:1450:4010:c03::22b as permitted sender) client-ip=2a00:1450:4010:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2a00:1450:4010:c03::22b as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-la0-x22b.google.com with SMTP id w1so18965078lad.0
        for <outreachy-kernel@googlegroups.com>; Sun, 15 Mar 2015 03:26:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=qisAQNdRAIE/PqsIyBbY8/wNU8sAosuz7s4z5E+mSLQ=;
        b=WngUac8FYwwv5bprFBlHNH9h5D1zVfW0v6vbsde9rWXt2LFF96sVFtZdjMYoQrIO9l
         dzwAjV2uRjph3iwUhYi2TRTE7drafNl+v64VjVFoN7fBs3MdsLUs3Le6cUJN8XgwFubN
         kxEp6E7CYsakZkl4Yxba4/VnIMxnNPJ2igaRFieWvvTCGlQ/4hndbl8dyOKkNfAWuQ/3
         7yCDfiztBHf1Pac96eC49t0gmjYd2G/FcPsSNwJvG0i+SsNqIcb2NUeA84enQqOeHETE
         La6mOA6cuWDyMorWDNgYIkPyOYB/OqiPW5HN45UhH4VMjDOjNW4Z4+2dYjxswnUL/bYq
         kYhQ==
MIME-Version: 1.0
X-Received: by 10.112.201.231 with SMTP id kd7mr29911898lbc.35.1426415200116;
 Sun, 15 Mar 2015 03:26:40 -0700 (PDT)
Received: by 10.112.59.7 with HTTP; Sun, 15 Mar 2015 03:26:40 -0700 (PDT)
In-Reply-To: <20150315102056.GA29660@kroah.com>
References: <20150310134242.GA9593@akanksha>
	<20150315102056.GA29660@kroah.com>
Date: Sun, 15 Mar 2015 15:56:40 +0530
Message-ID: <CAHjTdYeQotZ67=KMTHYua6-hvuB3X8c2-O9N7ELx1R4=tPx=Zw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: Remove unneeded
 variable and replace its uses
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=001a11c32cda4e25990511512b3c

--001a11c32cda4e25990511512b3c
Content-Type: text/plain; charset=UTF-8

Sorry, removing the call is a mistake on my side.
I'll resend a patch for this one and will ensure that I'm
more careful !

--001a11c32cda4e25990511512b3c
Content-Type: text/html; charset=UTF-8

<div dir="ltr"><div>Sorry, removing the call is a mistake on my side. <br></div><div>I&#39;ll resend a patch for this one and will ensure that I&#39;m<br></div><div>more careful !<br></div></div>

--001a11c32cda4e25990511512b3c--

