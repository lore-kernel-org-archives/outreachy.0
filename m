X-GM-THRID: 3599576858624
X-Received: by 10.152.45.7 with SMTP id i7mr1144539lam.9.1424944278711;
        Thu, 26 Feb 2015 01:51:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.181.13.144 with SMTP id ey16ls1190965wid.31.canary; Thu, 26
 Feb 2015 01:51:18 -0800 (PST)
X-Received: by 10.180.80.7 with SMTP id n7mr3549950wix.0.1424944278453;
        Thu, 26 Feb 2015 01:51:18 -0800 (PST)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-we0-x22f.google.com (mail-we0-x22f.google.com. [2a00:1450:400c:c03::22f])
        by gmr-mx.google.com with ESMTPS id ta1si1319809wic.1.2015.02.26.01.51.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 01:51:18 -0800 (PST)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c03::22f as permitted sender) client-ip=2a00:1450:400c:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c03::22f as permitted sender) smtp.mail=daniel.baluta@gmail.com;
       dkim=pass header.i=@gmail.com
Received: by mail-we0-x22f.google.com with SMTP id q59so8930687wes.1
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Feb 2015 01:51:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:sender:in-reply-to:references:date:message-id:subject
         :from:to:cc:content-type;
        bh=gbFRyJFRZC5PUBpORW0d2KHS3y/mF9lcFS1z0chURLs=;
        b=GBSn3kHQuaJdpdt9zE8fG6iUOBdsJpznNYsWGrEkFT9p4CxR3XC78uudLVnYRLApQ0
         nU7fikZQ4wj0RO+WvpW8FXEdLHscSHjYtXftYl+IorS2/lOqcafUOTb5GL2FnBzUOz26
         vDOm/v8yCWfavWHFp2q/VkAGl8dgfi3eX1kTyMP0HCSLbSBT4q0ycMqwoobnfZC9g0El
         mfqrciJB7R45X3g/IGrsgkTxHWeGFlCY8gS76hgFHcOwvBAnbtkAK+KnQeOOk4ojEIlk
         o1xnQu3zXLNjp0wX+wJlRCNKH6TZZy+kdPShNkG9DsqiEBu2LhDXWZBZ/B/paatlcNQk
         rVwQ==
MIME-Version: 1.0
X-Received: by 10.194.6.228 with SMTP id e4mr14599922wja.63.1424944278375;
 Thu, 26 Feb 2015 01:51:18 -0800 (PST)
Sender: daniel.baluta@gmail.com
Received: by 10.28.3.68 with HTTP; Thu, 26 Feb 2015 01:51:18 -0800 (PST)
In-Reply-To: <1424937128-16981-2-git-send-email-aysemelikeyurtoglu@gmail.com>
References: <1424937128-16981-1-git-send-email-aysemelikeyurtoglu@gmail.com>
	<1424937128-16981-2-git-send-email-aysemelikeyurtoglu@gmail.com>
Date: Thu, 26 Feb 2015 11:51:18 +0200
X-Google-Sender-Auth: fDTdFLSRu-pJ0otMfBLwicsHgC8
Message-ID: <CAEnQRZCEjxz6h6R6SNY8fyq_9euh8OOUjxAEu9rW78xT0DSH7g@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 2/3] Staging: rtl8723au: Remove return
 in void function
From: Daniel Baluta <daniel.baluta@intel.com>
To: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Thu, Feb 26, 2015 at 9:52 AM, Melike Yurtoglu
<aysemelikeyurtoglu@gmail.com> wrote:
> WARNING: void function return statements are not generally useful
> Remove return in void function. That was found by running checkpatch.
>
> Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>

Reviewed-by: Daniel Baluta <daniel.baluta@intel.com>

