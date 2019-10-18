X-GM-THRID: 6748157701463736320
X-Gmail-Labels: Topic type: DISCUSSION
X-Received: by 2002:a17:907:4150:: with SMTP id od24mr6829895ejb.135.1571375957438;
        Thu, 17 Oct 2019 22:19:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:dd81:: with SMTP id g1ls1093042edv.15.gmail; Thu, 17 Oct
 2019 22:19:16 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxIcNrtfqiCZNgcuDu72XQRysGPSI4/c3VIBSJ8v/TW8ukTj/ZjWtUc8vy0IOKdIFLcjN40
X-Received: by 2002:a05:6402:28c:: with SMTP id l12mr7861021edv.145.1571375956686;
        Thu, 17 Oct 2019 22:19:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571375956; cv=none;
        d=google.com; s=arc-20160816;
        b=CCq4MLYrNTb+9KWbKALmqMZkELU3usf0GYumv3E4arWALrab/CrGpv0fJM1K9MIu1n
         g9L9D/t7zylhig0s78MjU+DQJmLlmcqaVEVTGQwx6tDEDw8weGky86rqHAXVkT40udWO
         P4rqyVdiLCtg5wthayugf4efR6rIKiiaCLhPCBJBW6lO4YcDMxMlGz4UDo2O7RpuasUU
         qCkRBPpO7POTK6M8Gtq+98tqOS7WvOZdwWIR/WhCiQkbrveVGDEvSGIOE+AVhl4bd/Ev
         yo9IeWvhHG8N0iC9JDzjfo7ZUPWlggTZTOrfv9THwF0nh9gzeLhk96080Y7G9u0MzERT
         bfUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=i8joC1v74Ri3ACGSSwOEXAO23P8bpvD/bAd4Ru6cdbM=;
        b=x2T8n6PjMnMCGzfkKGC+oOsWHA/fn1QyFII2wl6fmCYGN4Hvre1xbiGi08GzQdJqNN
         4BsmcLirKO7ikgriavM0iV/x4gbCxecdX35yF/e4VfHKKo46K09XioKULg1iHDccoxzT
         SV0JaZ3TaSn08HLl1hmZpQGzRf+UReIS223OpF/QE0fRCb1DO03uKYPFL7j+KHWpfs1v
         pmvcJMbwSpTqTuOKE6S0RNVuIAD+1sLTbGgAJP53CQXf7Vq5/REeGBAfvg3wqFs7/ykL
         qHDAA9AetTFDJ+mpd8kpAtm9Wya2LkYlreElPyZzvQ6AFdsbvHGR/v42sdh5gahW6vSv
         itmw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id b18si239153edr.1.2019.10.17.22.19.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Oct 2019 22:19:16 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.67,310,1566856800"; 
   d="scan'208";a="323110147"
Received: from ip-121.net-89-2-166.rev.numericable.fr (HELO hadrien) ([89.2.166.121])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 18 Oct 2019 07:19:15 +0200
Date: Fri, 18 Oct 2019 07:19:15 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Cristiane Naves <cristianenavescardoso09@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] doubt on the "Make a driver change" part
In-Reply-To: <b693b706-b20c-4a76-9443-72c2023cfe9b@googlegroups.com>
Message-ID: <alpine.DEB.2.21.1910180718550.2666@hadrien>
References: <d504514a-93eb-4a60-a99c-8a50bce81677@googlegroups.com> <alpine.DEB.2.21.1910160701150.2732@hadrien> <bd1a6b45-291e-4cc2-aef8-7d880351bac3@googlegroups.com> <76f2f240-6bb9-4798-8b03-4055d8ff72d0@googlegroups.com>
 <b693b706-b20c-4a76-9443-72c2023cfe9b@googlegroups.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 17 Oct 2019, Cristiane Naves wrote:

>
> I managed to fix it. The problem was in the reboot.

Great :)  Now you can send some patches.

julia

