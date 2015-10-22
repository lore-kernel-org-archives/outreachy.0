X-GM-THRID: 6208392208366698496
X-Received: by 10.107.132.77 with SMTP id g74mr12304464iod.10.1445503953555;
        Thu, 22 Oct 2015 01:52:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.92.55 with SMTP id a52ls1466519qge.94.gmail; Thu, 22 Oct
 2015 01:52:32 -0700 (PDT)
X-Received: by 10.129.92.198 with SMTP id q189mr11932225ywb.40.1445503952756;
        Thu, 22 Oct 2015 01:52:32 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-io0-x233.google.com (mail-io0-x233.google.com. [2607:f8b0:4001:c06::233])
        by gmr-mx.google.com with ESMTPS id hx4si1746705igb.0.2015.10.22.01.52.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2015 01:52:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:4001:c06::233 as permitted sender) client-ip=2607:f8b0:4001:c06::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:4001:c06::233 as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-io0-x233.google.com with SMTP id v82so84253471iod.0
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Oct 2015 01:52:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=vVP6eR3tDt2SIUosOE+K6F5ii3HRCMFdeaGz+vuBBx8=;
        b=jWr7s4+rVOke48GwpQqG548kjhzzL8jlkSI9R40ki4nZM+oJNiYS2NpcXeKt2dR04W
         UW+X4qX+CZu8G1VbQU/cqAuRb92hslL7wq+fFVFzg6WBLfRdkKOPNtE/9J3bU+jfISwO
         BAKfogn0UuBTX//P0p01aOmXXzwi8GNEyLUH5Ng5LZZUBkyAOfaC5IpoYc/x7HYqd/qh
         JcYbiUXFHghlpbtPaM0tYigH2R8jybfYS2LRNtAv0Z2zN5eIpDUNkrjml+OcIJMyrn7S
         9NgWuPJGAwesajc9BsBkNkgl35j0rwTfmDXF+oQfZ4balNwa5Y09StSLdm12krrt0V2r
         nU5A==
MIME-Version: 1.0
X-Received: by 10.107.151.195 with SMTP id z186mr17846540iod.8.1445503952629;
 Thu, 22 Oct 2015 01:52:32 -0700 (PDT)
Received: by 10.107.158.211 with HTTP; Thu, 22 Oct 2015 01:52:32 -0700 (PDT)
Date: Thu, 22 Oct 2015 10:52:32 +0200
Message-ID: <CAL7P5j+qabDCjT4mTjTh=rGjJXd=NzuZrAt-k=LVm287dUzr4w@mail.gmail.com>
Subject: Staging driver cleanup project
From: =?UTF-8?Q?Ksenija_Stanojevi=C4=87?= <ksenija.stanojevic@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

Hi Greg,

I have a few questions concerning Staging driver cleanup project:

1. Which drivers in staging area can be considered for internship period?
2. I noticed that TODO list of drivers are generally outdated, so  I'm
interested
    what could be the tasks to complete during the project?
3. You mentioned : If possible, hardware will be provided for the code
being worked on
    What is the criteria for that? Does it matter where the intern lives?

Thanks,
Ksenija

