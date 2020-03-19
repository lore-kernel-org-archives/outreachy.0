X-GM-THRID: 6805826308521590784
X-Received: by 2002:a19:be44:: with SMTP id o65mr1398404lff.116.1584605477555;
        Thu, 19 Mar 2020 01:11:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:b042:: with SMTP id d2ls330730ljl.3.gmail; Thu, 19 Mar
 2020 01:11:16 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtuUZ79p2RQ7T/Bz8AAVRJ9RuYZdcy7l6ohlOy4o2W2o0yaopHAX/qVCggjhnGlpDURbH1I
X-Received: by 2002:a05:651c:1a1:: with SMTP id c1mr1464685ljn.244.1584605475921;
        Thu, 19 Mar 2020 01:11:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584605475; cv=none;
        d=google.com; s=arc-20160816;
        b=tE6JRtrsBtq1sE4BhCYsHDnHVpJ8j6W6KOO1g0Tj5mbrhBCb7NtTHxH11e84BdUBFA
         DJOsrKsg1d5t1v6rcG40vycMM8W2e+NqZEQf5FJh9kAbBEJHg3oz5T347zdQFf5s9JtJ
         4UAo2pa6thFZJ13WWPmrl0EINZYLB6lbdClPNNDoBBfN684GOMPHGfLI70e5lXTKWtU+
         hsxL4eyb5PBWKI3kCxkPEgtugPdXBtbV1iwfHwP1KecIuSwcgbebU00eRzczGhEQek64
         iLe0+VsxIl8iWBRTCEStsm7ty9NfqtcVDT3j8T1qYp7X8uHL/a5MzorDgsQXugWmposg
         66rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=pqegBB6KUdDLNtGhwMp1xAU/QM3/ZerIKIolepfC8xg=;
        b=TzJysFHz/lNKxyKw3mfQSf+CqV5wIr1FeuRAs/9Kp/s3AQxm0Zn9DfTHQPw7fnekkd
         8CIU1osUH0aX8t9zboecGlk/Zkqg9nodAmuCrynrFnGAx+K6mOnfP7v/GE0WFWgwlnPM
         f38yL1Ju0baY6HrSF5lby7xb1cMew/jwlZ/t6OGHEKlszWpGRDDFl0410yBDLcv7HPWL
         6yBnRXLwmATEn+hw8KmzANpILiCmN/C919WpBO2hXcUv3AQha3aY9UMi69UGIizjM0XL
         3G3KnmSMfWWNb0857EZ6//V7L1qOzruD4XQl8ObPCB9rNtu2GsvTStWz0c6rhhvUS3Qb
         +e+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id m11si55326ljj.2.2020.03.19.01.11.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Mar 2020 01:11:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,570,1574118000"; 
   d="scan'208";a="342888816"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Mar 2020 09:11:14 +0100
Date: Thu, 19 Mar 2020 09:11:14 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: R Veera Kumar <vkor@vkten.in>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] I need feedback on my posted patches
In-Reply-To: <20200319080144.GA1723@tulip.local>
Message-ID: <alpine.DEB.2.21.2003190910040.3010@hadrien>
References: <20200319080144.GA1723@tulip.local>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 19 Mar 2020, R Veera Kumar wrote:

> Hi,
>
> I posted patches on Saturday. But I did not got a msg from Greg
> about they being accepted. Yesterday Greg posted that he has
> seen all outreachy patches upto now. And if we do not get reply's
> for the patches we should resend. So I resent it yesterday.

Are you sure they went to the mailing list?  I looked on the Google
website and I see two discussions involving you yesterday and they both
end with a request to resend the patch.

julia

>
> Please I need a feedback about my patches. I do not know what to
> do otherwise. Also the Outreachy contribution time is only 1 month.
> And we have to do this 10 patches and 2 patchsets before project
> specific task. I need time for that also. Please consider.
>
> Regards,
> Veera
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200319080144.GA1723%40tulip.local.
>

