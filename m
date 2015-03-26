X-GM-THRID: 9790095884288
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,2ff1775a6d87248a
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.182.110.168 with SMTP id ib8mr16854126obb.41.1427398299687;
        Thu, 26 Mar 2015 12:31:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.170.137 with SMTP id g9ls824902ioj.69.gmail; Thu, 26 Mar
 2015 12:31:39 -0700 (PDT)
X-Received: by 10.42.153.135 with SMTP id m7mr38577175icw.4.1427398299438;
        Thu, 26 Mar 2015 12:31:39 -0700 (PDT)
Return-Path: <jes.sorensen@gmail.com>
Received: from mail-qg0-x22c.google.com (mail-qg0-x22c.google.com. [2607:f8b0:400d:c04::22c])
        by gmr-mx.google.com with ESMTPS id e5si817129qcg.1.2015.03.26.12.31.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Mar 2015 12:31:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c04::22c as permitted sender) client-ip=2607:f8b0:400d:c04::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c04::22c as permitted sender) smtp.mail=jes.sorensen@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x22c.google.com with SMTP id a8so107187990qgf.0
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Mar 2015 12:31:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:message-id:date:user-agent:mime-version:to:cc:subject
         :references:in-reply-to:content-type:content-transfer-encoding;
        bh=Mg83rfsb5TVRVJAqf3sUZUU8CS7CNqed3nd/Q+UMU0o=;
        b=MZt/sEDUCragi1qLn9geU+y3AJgjN+TXZ/Bt41dWjjkelVMDKPUdeEu4EZfa4RdXbs
         V3fC7gJSLA0lqeWEsTwiCc/AHWN8/ZraEifXkoPsec7S6OfMqWolESKVqmpWb4nkdCet
         e1bvrUmv84O3ZPCcliO9xG+Ep1ft31sNOgVOcmqhcrAVNJhjHY/BVD3RzZ6SwpAE7qAX
         xcRVr8Gu3yDPfygAvVgeJVgExhvEZiWAnphSFGeKq45g0pi5PuM5RHMeI6HxBjhxUfkT
         bSQ18ZKe5aGOzmLhBPCHRrRiBjBigoUNw8E7R/hNTg4E2x7Wj8D/BvqdGAMDMqVevXwr
         YL8w==
X-Received: by 10.55.20.71 with SMTP id e68mr32744348qkh.38.1427398292955;
        Thu, 26 Mar 2015 12:31:32 -0700 (PDT)
Return-Path: <jes.sorensen@gmail.com>
Received: from [10.15.49.233] (nat-pool-rdu-t.redhat.com. [66.187.233.202])
        by mx.google.com with ESMTPSA id r33sm4053406qkr.2.2015.03.26.12.31.31
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Mar 2015 12:31:32 -0700 (PDT)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
Message-ID: <55145E92.4080209@gmail.com>
Date: Thu, 26 Mar 2015 15:31:30 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: Vatika Harlalka <vatikaharlalka@gmail.com>
CC: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: rtl8188eu: Add new variable
 to make code compact
References: <20150325131311.GA10728@akanksha>	<55145A95.909@gmail.com> <CAHjTdYc0-dAGWOLq=Bvm2Mcy76XNyc3w_Z6kxtrKZDHgk=xa7Q@mail.gmail.com>
In-Reply-To: <CAHjTdYc0-dAGWOLq=Bvm2Mcy76XNyc3w_Z6kxtrKZDHgk=xa7Q@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On 03/26/15 15:26, Vatika Harlalka wrote:
> Hi Jes
> This was to align the declaration with that of hal_data above.
> Should I change them both and send in a new patch?
> 

That would be preferred!

Thanks,
Jes

> Thanks :)
> 


