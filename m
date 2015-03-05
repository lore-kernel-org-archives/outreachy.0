X-GM-THRID: 6688903004160
X-Received: by 10.112.9.65 with SMTP id x1mr1369918lba.16.1425547590183;
        Thu, 05 Mar 2015 01:26:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.42.237 with SMTP id r13ls297645lal.74.gmail; Thu, 05 Mar
 2015 01:26:29 -0800 (PST)
X-Received: by 10.112.131.7 with SMTP id oi7mr1377850lbb.9.1425547589708;
        Thu, 05 Mar 2015 01:26:29 -0800 (PST)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-wi0-x22f.google.com (mail-wi0-x22f.google.com. [2a00:1450:400c:c05::22f])
        by gmr-mx.google.com with ESMTPS id r6si504820wix.0.2015.03.05.01.26.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Mar 2015 01:26:29 -0800 (PST)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) client-ip=2a00:1450:400c:c05::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22f.google.com with SMTP id hm9so13667069wib.2
        for <outreachy-kernel@googlegroups.com>; Thu, 05 Mar 2015 01:26:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :content-type:mime-version:content-transfer-encoding;
        bh=yl8cP7pNpWLskP7Pn+PR/kTo251mYnvvoNYn6jfw0RU=;
        b=Fk7HnpMyHcWqfJf6VGqoYAF0XKwg35jWEzcjjKjY6PHyNJAX2qY04vcJz6ptTky9H+
         5fg+XWx35rlIRC2u8qP4WYu1gxEgfp7FV8Vf7bZ3RGPOWogG5nijGpUsLzdaQz49es/H
         RdFZHxn5onAKOEMqJCuxPim3UQH2adbdKifN/cuiW/A+DJd3nvkf+fLhaFY1jqXFzgte
         CIOFfHNCLHxmANFeCbjMTunP2JivyMIjYD3h683fsbP8fjMFukr/erbe2XpFBFU8U9ft
         0ysfdfD2CZTtFaJ7rKfKObnwOzELntijqTsMZPZcZebcOs2moLDidGICAWsxeyyEIdkl
         cwkQ==
X-Received: by 10.180.108.103 with SMTP id hj7mr62580077wib.90.1425547589589;
        Thu, 05 Mar 2015 01:26:29 -0800 (PST)
Return-Path: <cristina.opriceana@gmail.com>
Received: from [192.168.0.103] (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id dq1sm7548327wib.20.2015.03.05.01.26.28
        (version=SSLv3 cipher=RC4-SHA bits=128/128);
        Thu, 05 Mar 2015 01:26:28 -0800 (PST)
Message-ID: <1425547557.5320.8.camel@Inspiron>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: Bool tests don't
 need comparisons
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: Jes Sorensen <jes.sorensen@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Date: Thu, 05 Mar 2015 11:25:57 +0200
In-Reply-To: <54F7B301.8020203@gmail.com>
References: <20150304230752.GA22499@Inspiron> <54F7B301.8020203@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.10.4-0ubuntu2 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit

On Mi, 2015-03-04 at 20:36 -0500, Jes Sorensen wrote:
> This patch is technically correct, the only issue is with some cases
> where you touch a line, you should try to fix up other aesthetic issues
> on the same line while you are at it.

Thanks for the observation. I will fix these.

Also, what should I do with files that have serious indentation
problems? For example, I was trying to fix something on
drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c but this file
has ifs is ifs in switch (lines 2012+), therefore multiple tab levels
and surpasses the limit of 80 characters.

Cristina


