X-GM-THRID: 9152848986112
X-Received: by 10.112.142.1 with SMTP id rs1mr10795219lbb.19.1426841885151;
        Fri, 20 Mar 2015 01:58:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.197.97 with SMTP id it1ls406249lac.1.gmail; Fri, 20 Mar
 2015 01:58:04 -0700 (PDT)
X-Received: by 10.112.167.131 with SMTP id zo3mr8309413lbb.7.1426841884683;
        Fri, 20 Mar 2015 01:58:04 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wg0-x234.google.com (mail-wg0-x234.google.com. [2a00:1450:400c:c00::234])
        by gmr-mx.google.com with ESMTPS id cl5si305673wib.3.2015.03.20.01.58.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Mar 2015 01:58:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c00::234 as permitted sender) client-ip=2a00:1450:400c:c00::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c00::234 as permitted sender) smtp.mail=daniel.baluta@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x234.google.com with SMTP id m6so83620671wgd.2
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Mar 2015 01:58:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=8B3qsWtMP54v5sKb2UIjuB3EwM1JMi7UF7jiTRVKIyw=;
        b=eRp4AHR2j7ZuOhVlUlbp8kxgA9z48Z8QiDfpG0Yi1uVxVaT+ZlZa8C+dTPaB+UyUPN
         s1Mc7tbymrpNH+i4Fxo15EzxXzA3qx8c3nezFAFAoAuRMNxFZmEqLYazLH4UbtLtp7gc
         YAVyyWp4IOsvK00Het3HdtBQusGbHAVcQIqRTo3WXiHyOyegJm9eiKp6wBE2VmU4NJ4r
         Z5YrvQBSmtfvu5jnB1YbcCPeJq1Q6UwkDT0gQQ00M3QYNaXWJwT1Hq8RfmdBEvHkxe4d
         z/UW/GpKECI2nt2pucg8iYXWboGwzfRAn4+kKCKKC6DLXzCXokHmAV+I56Wjej86waZV
         88rQ==
MIME-Version: 1.0
X-Received: by 10.194.61.161 with SMTP id q1mr162969459wjr.132.1426841884587;
 Fri, 20 Mar 2015 01:58:04 -0700 (PDT)
Received: by 10.28.139.211 with HTTP; Fri, 20 Mar 2015 01:58:04 -0700 (PDT)
In-Reply-To: <cover.1426790651.git.cristina.opriceana@gmail.com>
References: <cover.1426790651.git.cristina.opriceana@gmail.com>
Date: Fri, 20 Mar 2015 10:58:04 +0200
Message-ID: <CAEnQRZD0VveCniAwYF4y4B=s-KPGodfFS=QJE0467F4Pw9V1Sg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 0/3] Add small improvements to
 iio/magnetometer hmc5843 driver
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Cristina Opriceana <cristina.opriceana@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Thu, Mar 19, 2015 at 9:17 PM, Cristina Opriceana
<cristina.opriceana@gmail.com> wrote:
> This patchset reviews the iio/magnetometer hmc5843 driver and fixes incorrect
> file header, hardcoded values and reconfigures some small error checks.
>
> Cristina Opriceana (3):
>   Staging: iio: Place driver in sleep mode on error
>   Staging: iio: Replace hardcoded value with number of channels
>   Staging: iio: Fix file header to match standards

Not sure if this patch series depends on  [PATCH 0/5] Fix
iio/magnetometer style warnings

If so, please merge these into one. It will be easier for Greg to merge them.

Daniel.

