X-GM-THRID: 6522422209365934080
X-Received: by 10.46.2.69 with SMTP id 66mr340593ljc.23.1518619761604;
        Wed, 14 Feb 2018 06:49:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.44.194 with SMTP id s185ls1586546lfs.15.gmail; Wed, 14 Feb
 2018 06:49:20 -0800 (PST)
X-Google-Smtp-Source: AH8x225mF7h3zHuv6eXPM/mvWY0pw52B9vPTjKICge6h+YFM2UkCQlUk1zM+iJlUgbgihOeouKAo
X-Received: by 10.25.152.80 with SMTP id a77mr384170lfe.2.1518619760008;
        Wed, 14 Feb 2018 06:49:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518619759; cv=none;
        d=google.com; s=arc-20160816;
        b=XNCXDrEOzZMxeyqRZnZOdo2xyEyHtMlz48I1hpYcfbftULCovbrYfVx5kzbLqLGvVN
         eTmsn6Hp/HpjvIvyrtq8EqChsoJpHHOjJTeWO+uh5iiTgf4XhSOSOfo/5U4fKj8f5bwW
         dgBQRQHDaL/QBB/jwxqA1jVOCx8HjQHVllHwIW2hgltVvep2qk+UfI8IRYIdOH/NlAuf
         44DagDzrRse3P/xmVfZFvqO01N5xu7MZAW0VwvaUjxqYcZ+fE2RjLZkv/2GBatQuHkG7
         VoRZXVNS5UqUaqmv75BQv69TBiy9sXjxIKy74CmvCq1FdTRh9dQ7yH+35/EiCf8baqgS
         0Axg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:subject:to:from:date
         :arc-authentication-results;
        bh=zSQBTok+lVEUYi9koetbY7S+WDwJaSHk/SeamHfHFsw=;
        b=rO0dv9HvanKc4tOjMRM87yJr2aMl9grXgF4CD5klwftpeoiABiWtRBAsltp6ExA6jz
         kb3mridA7XXJSUwiIZ7CyahFcSFKMRgmc/UIRqKdI1c7es5McvwoslxyxPUCRqH5ofSM
         jQB1d0H+oDLASagJOv3zW+1af24g/7IEvK4DeaJEx6VliU5LSc8qvWTUWKBawAgnsLxv
         lF6gxwhtPhE5f328t3zp6ejVvz7jDnkKMCFZFma4JwswmuwhrQ2nXn5y1gLIXylFZNLA
         v90bO/aNvT0PbpyD2zLuXj4uzI1T+LK9FXTvWuy62fnUmDvSyuI90N9bRrsXyMpswQf2
         ioyg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id w29si921981lfc.5.2018.02.14.06.49.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Feb 2018 06:49:19 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.46,512,1511823600"; 
   d="scan'208";a="313569662"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 14 Feb 2018 15:49:19 +0100
Date: Wed, 14 Feb 2018 15:49:15 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: outreachy-kernel@googlegroups.com
Subject: Outreachy kernel wiki
Message-ID: <alpine.DEB.2.20.1802141547450.3340@hadrien>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

Hello,

To start making a contribution, you should follow the tutorial at this
URL:

https://kernelnewbies.org/Outreachyfirstpatch

Unfortunately, the wiki that hosts the Outreachy kernel information is not
so stable at the moment.  If you get an nginx error, please just try again
in a minute or so.

thanks,
julia

