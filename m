X-GM-THRID: 9790095884288
X-Received: by 10.152.88.33 with SMTP id bd1mr3763128lab.2.1427397961479;
        Thu, 26 Mar 2015 12:26:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.181.29.6 with SMTP id js6ls15919wid.46.gmail; Thu, 26 Mar 2015
 12:26:01 -0700 (PDT)
X-Received: by 10.180.218.2 with SMTP id pc2mr2008065wic.0.1427397961178;
        Thu, 26 Mar 2015 12:26:01 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-lb0-x229.google.com (mail-lb0-x229.google.com. [2a00:1450:4010:c04::229])
        by gmr-mx.google.com with ESMTPS id xg8si417368lbb.0.2015.03.26.12.26.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Mar 2015 12:26:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2a00:1450:4010:c04::229 as permitted sender) client-ip=2a00:1450:4010:c04::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2a00:1450:4010:c04::229 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lb0-x229.google.com with SMTP id ug6so48520287lbb.3
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Mar 2015 12:26:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=W7R2sIbVeJPOgAZzkTXaZ8Fbj79iomDF0kESagZV9bg=;
        b=j8r1aO5EEHlyeofyH9B2C0rPLPp5/SUTxaJjGmmLhkH07WZWeMJJ3Yj2090p456wZ1
         ahx4W5Y8ETmrFuSkUhaL/v2XrWkCLSz3G416Qg73ZrJpxGhM8ZMMqK6spezkWFlUGPNT
         7tifUoQFha+BCJbuK3dqveaO51jA5PM4ihj0TrNzQ2YmMZnw3+p3lfCOoRS/09e05PUs
         C6+e0aSEzhlfmMj+f2NfWCelNMjSn7KJKsQyMrPLvSNbDjlYelnUwp52sCvxKI7OLXqf
         D/z/Q/HnkFaRzJuAOnC98biqQx4ABmT99/Z0Ylr2/7iIXsJ2xgPZ1UIEFa2Q32SB3BuT
         e34Q==
MIME-Version: 1.0
X-Received: by 10.152.36.133 with SMTP id q5mr8047197laj.35.1427397961085;
 Thu, 26 Mar 2015 12:26:01 -0700 (PDT)
Received: by 10.112.59.7 with HTTP; Thu, 26 Mar 2015 12:26:01 -0700 (PDT)
In-Reply-To: <55145A95.909@gmail.com>
References: <20150325131311.GA10728@akanksha>
	<55145A95.909@gmail.com>
Date: Fri, 27 Mar 2015 00:56:01 +0530
Message-ID: <CAHjTdYc0-dAGWOLq=Bvm2Mcy76XNyc3w_Z6kxtrKZDHgk=xa7Q@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: rtl8188eu: Add new
 variable to make code compact
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: Jes Sorensen <jes.sorensen@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

Hi Jes
This was to align the declaration with that of hal_data above.
Should I change them both and send in a new patch?

Thanks :)

