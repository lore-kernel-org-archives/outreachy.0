X-GM-THRID: 8816133406720
X-Received: by 10.236.26.179 with SMTP id c39mr69382339yha.27.1426604967470;
        Tue, 17 Mar 2015 08:09:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.41.169 with SMTP id z38ls154135qgz.72.gmail; Tue, 17 Mar
 2015 08:09:27 -0700 (PDT)
X-Received: by 10.236.43.146 with SMTP id l18mr68102087yhb.23.1426604967299;
        Tue, 17 Mar 2015 08:09:27 -0700 (PDT)
Return-Path: <jes.sorensen@gmail.com>
Received: from mail-qc0-x22c.google.com (mail-qc0-x22c.google.com. [2607:f8b0:400d:c01::22c])
        by gmr-mx.google.com with ESMTPS id kt5si1677154qcb.3.2015.03.17.08.09.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Mar 2015 08:09:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c01::22c as permitted sender) client-ip=2607:f8b0:400d:c01::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c01::22c as permitted sender) smtp.mail=jes.sorensen@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qc0-x22c.google.com with SMTP id z10so11048335qca.1
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Mar 2015 08:09:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:message-id:date:user-agent:mime-version:to:subject:references
         :in-reply-to:content-type:content-transfer-encoding;
        bh=L2noqodv5cDG6guA+f+xBOvjde2UqDKSq2QTUkDN2jU=;
        b=ZAjdJR/RQQTi7KTLdDrrL8QbOKTZqM2YpXfKh4CiB/KjqkKHGh/L/LtMnX+9MtjsLT
         eP1UhKppfnJyOi/AGOT7Q7mKqJqgfSRgBRC6jrPGOFsK6SBuORUPV2GztNhpo0y4z5+q
         HCe+5UrvJSH0BeFfaX5ZsQsmLBENZrZ0UPBx9XFBB6R5/5qUYMmaeNy84twaT4nUkBzQ
         kKfOpWcwj7F4C6Qyd/n/lK4/OMu8KUx+5GnBQwMOsnKlRapJyvpDSWjJl6e7uzDfZtH7
         6YSy5Z03U1aJuL8r1130SB0hPD6/GRLPwFTK6zHFIPtuj2fdQlulMqmbiA++baKCIzQN
         bsYQ==
X-Received: by 10.140.42.13 with SMTP id b13mr82285492qga.43.1426604967159;
        Tue, 17 Mar 2015 08:09:27 -0700 (PDT)
Return-Path: <jes.sorensen@gmail.com>
Received: from [10.15.49.233] (nat-pool-rdu-t.redhat.com. [66.187.233.202])
        by mx.google.com with ESMTPSA id 59sm9809852qgf.37.2015.03.17.08.09.26
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Mar 2015 08:09:26 -0700 (PDT)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
Message-ID: <550843A4.5050103@gmail.com>
Date: Tue, 17 Mar 2015 11:09:24 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: Ioana Ciornei <ciorneiioana@gmail.com>, 
 outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Compiling a specific driver
References: <8570c5e2-98ae-4a1a-8024-83b60ad55ea4@googlegroups.com>
In-Reply-To: <8570c5e2-98ae-4a1a-8024-83b60ad55ea4@googlegroups.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On 03/17/15 09:53, Ioana Ciornei wrote:
> I was wondering if anyone could explain the steps to be followed in order 
> to make sure the driver I am working on is compiled
> when running 'make -j5'. 
> 
> So far, I did the steps explained at [1], under the 'Recompiling the 
> driver' section, but when selecting 'Staging drivers' the driver list is 
> empty.

If you are working on a specific driver, you can type something like this:

make drivers/staging/rtl8723au/r8723au.ko

Cheers,
Jes



