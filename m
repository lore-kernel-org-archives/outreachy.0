X-GM-THRID: 2732794576896
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,9a4efa979c10540c
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.159.227 with SMTP id xf3mr1289617lbb.11.1424955221833;
        Thu, 26 Feb 2015 04:53:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.10.5 with SMTP id e5ls28362lab.37.gmail; Thu, 26 Feb 2015
 04:53:41 -0800 (PST)
X-Received: by 10.112.224.12 with SMTP id qy12mr241122lbc.10.1424955221386;
        Thu, 26 Feb 2015 04:53:41 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-lb0-x22e.google.com (mail-lb0-x22e.google.com. [2a00:1450:4010:c04::22e])
        by gmr-mx.google.com with ESMTPS id xl7si61750lbb.1.2015.02.26.04.53.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 04:53:41 -0800 (PST)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2a00:1450:4010:c04::22e as permitted sender) client-ip=2a00:1450:4010:c04::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2a00:1450:4010:c04::22e as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lb0-x22e.google.com with SMTP id z11so10570857lbi.5
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Feb 2015 04:53:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=KTHGONbvmU27ta6gd7bOBzZOktT9rwQVs7qYnH6Qjhc=;
        b=CCCx3kidGwWix16PoRu7auyzR9Ie+GYCozy65NU50eJOLhOTRva2lGnVW6MjoTa74T
         4MoimbSuFYVmwQUErr7/vhPVZZdFKnJ5LYXzS0/+kWVFQMUOXPSYXFij4DjzAXTiF9TB
         lOK9cZOTp80g/fSPX9YSZnaJ03Sv//cyHfaziOn/qVhv0OMXiKrttvqzD3IdMjIpYmrz
         5wx+vCro3zZPl4r0dautbINYvcpALYmcyaBNvwC6dLbOo/QrDn/zCsGMMR9KKwYUJ44w
         W9AqYLRcUnV/AGIkZ4N9VmTnMbzFJJDIPRwmWNznYIKXzwl4czcDuqQTDEuFY5JBy3hN
         nxtg==
MIME-Version: 1.0
X-Received: by 10.112.235.10 with SMTP id ui10mr7439933lbc.77.1424955221287;
 Thu, 26 Feb 2015 04:53:41 -0800 (PST)
Received: by 10.112.59.9 with HTTP; Thu, 26 Feb 2015 04:53:41 -0800 (PST)
In-Reply-To: <54EB8938.1030000@gmail.com>
References: <20150223094426.GA4689@gmail.com>
	<54EB8938.1030000@gmail.com>
Date: Thu, 26 Feb 2015 18:23:41 +0530
Message-ID: <CAHjTdYe8Jg5m3qDcPAL_yerftG=BZkhRASdZoatE9HZSjSxTQA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v3] Staging: rtl8188eu: Reindent code
 to reduce line size
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: Jes Sorensen <jes.sorensen@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=001a11c3d8cac9284c050ffd3d14

--001a11c3d8cac9284c050ffd3d14
Content-Type: text/plain; charset=UTF-8

Hey, thanks for your response :)
I checked the definition for struct hal_data_8188e, where
pwrGrpCnt is defined as u8.
will u8 to int casting not create any problems?

--001a11c3d8cac9284c050ffd3d14
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hey, thanks for your response :)<br></div>I chec=
ked the definition for <span class=3D"im">struct hal_data_8188e, where<br><=
/span><span class=3D"im">pwrGrpCnt</span> is defined as u8. <br></div>will =
u8 to int casting not create any problems?<br></div>

--001a11c3d8cac9284c050ffd3d14--

