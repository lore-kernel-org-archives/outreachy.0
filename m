X-GM-THRID: 9979778039808
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,2eb7e4c175472023
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.167.131 with SMTP id zo3mr3796406lbb.7.1427398000402;
        Thu, 26 Mar 2015 12:26:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.6.101 with SMTP id z5ls298113laz.12.gmail; Thu, 26 Mar
 2015 12:26:40 -0700 (PDT)
X-Received: by 10.152.164.171 with SMTP id yr11mr3753348lab.4.1427398000029;
        Thu, 26 Mar 2015 12:26:40 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-la0-x235.google.com (mail-la0-x235.google.com. [2a00:1450:4010:c03::235])
        by gmr-mx.google.com with ESMTPS id xg8si417340lbb.0.2015.03.26.12.26.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Mar 2015 12:26:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2a00:1450:4010:c03::235 as permitted sender) client-ip=2a00:1450:4010:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2a00:1450:4010:c03::235 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-la0-x235.google.com with SMTP id g8so53782757lag.1
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Mar 2015 12:26:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=QepyQEuqQmGv/cmGOCFLTDkX2j9Rd3czRdct8Axbzxk=;
        b=xr13F4Vm6lEo6LvxMROYNt31KAo/ZEKoAw9myV/8Ng/dhoqXquSYtZCm4qCEEazkbl
         VrtxF9CWSrnMpeD49BSnN8TrLvhD3z0POKzAUY22zVNNt2FqpDe/USr7Xics8Q9sV27S
         ShU/f5LKWoXs2iPpa9VpXujBx26FZtSW3uaaD2VATPWDUyhsse4e6NXJdpnpOHoY9T3E
         FyatAgip6fFNJWNyJYdnAoI5kZBSTIF2qNjDMjLvD8E9FWw0Col9OU3QQIOjT/ilDj1T
         D/GbTQYYnZe2gw+FTgoYN9nr9cvojs+7R2JtbQhrdFZAuLQ8PRam9QBzPjivntLbjshU
         Rxjw==
MIME-Version: 1.0
X-Received: by 10.152.198.203 with SMTP id je11mr14328121lac.85.1427397999911;
 Thu, 26 Mar 2015 12:26:39 -0700 (PDT)
Received: by 10.112.59.7 with HTTP; Thu, 26 Mar 2015 12:26:39 -0700 (PDT)
In-Reply-To: <551458B0.9040403@gmail.com>
References: <20150326131326.GA9213@akanksha>
	<551458B0.9040403@gmail.com>
Date: Fri, 27 Mar 2015 00:56:39 +0530
Message-ID: <CAHjTdYfuFaSgdTaJ7SjiwVPHQh8cXdM67dV4VzJvEEKUCovaKw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 2/2] Staging: rtl8192u: Make function static
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: Jes Sorensen <jes.sorensen@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

Hi Jes
I will send in a new patchset with a cover letter
for this.
Thanks :)

