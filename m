X-GM-THRID: 6463845646554103808
X-Received: by 10.28.149.18 with SMTP id x18mr532864wmd.18.1505045969781;
        Sun, 10 Sep 2017 05:19:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.64.203 with SMTP id r72ls11577lje.41.gmail; Sun, 10 Sep
 2017 05:19:28 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QDD2/4u5KXMXLYCEbMM2NQiUQKOQfK+qAwW68vpmSss4rEAAgfKeDCkX3RqN6+eCCo/kDad
X-Received: by 10.25.228.134 with SMTP id x6mr462147lfi.33.1505045968674;
        Sun, 10 Sep 2017 05:19:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505045968; cv=none;
        d=google.com; s=arc-20160816;
        b=iGMLm7WkX7e1dh6NXrgdO7cvOOe7/s0Z22SSReKC/VY7IFLtQKmadt7pqMdWsv/Ecc
         9EnbLK4SmKwVAV/tWWEsud0tViQwDzpYyUDmLK95akehMaoy2adh6Mr2vcEIoVgorhuo
         bTTJ0EMDI+8z1TJOcOdTyeVe5KnFPqF6HUjDojWclisl/1ym6YsOjPoYDYFhCMQACB8m
         6cfLVnrcItfIkxw9oxwVc1s+DPeRjzu4Qw2H/CDdWDFDO7f/eWUT3owq4m6NkPTAbvJL
         ZXyd9rKCBhXt5JB9Psi8cVFvAUF2PSU0R43ur/CQdTw/Ry4bRjedY9AB7QkP0vN/v7vY
         ZfrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=i0kp4BjGRpo4oe8xr9intoQU6UBT4yHBcqLnqL4PF0w=;
        b=IUnKKPxc3m+d5tk0PhZh2STv0cEf1On+IFJJzAIHm4tq9YzKJ1kUhpLV1NvFcCBr01
         5gTX3ommdNhfS/5n44VN6EK0+dZyOKvWcu5LbxyWZUsbGpJUXgXSxClosaWMu1CF1z6W
         srUEK3MJi2UsxHJbSWFJbDiSSyReQHHa9vePVIDnIoHbS+zeB7X6YJ/11m3zHmLQQnrq
         wsYYI6AyEStoaQKIDJd/+1UPZiQiv5MjENUkrjXiL9+9aaZKYvyGoPowAQ6D0pksuytw
         BvjR3uFMSVpdXRidP7OCv2fC44K0nSlOyhbZsge6TD+T8nD/OVJUaBr6Hr/BJMIYHm3M
         uzrw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id b62si257071wmd.3.2017.09.10.05.19.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Sep 2017 05:19:28 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,372,1500933600"; 
   d="scan'208";a="290358442"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Sep 2017 14:19:28 +0200
Date: Sun, 10 Sep 2017 14:19:28 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Harsha Sharma <harshasharmaiitr@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: [PATCH] staging: rtl8723bs: Add spaces
 around '=', '|', '<<'
In-Reply-To: <9109a945-6df7-4267-8526-9e7110bd292e@googlegroups.com>
Message-ID: <alpine.DEB.2.20.1709101418370.6842@hadrien>
References: <1504981213-14584-1-git-send-email-harshasharmaiitr@gmail.com> <78b23708-60d8-47dd-9bea-94a1eb29bbeb@googlegroups.com> <alpine.DEB.2.20.1709101409290.6842@hadrien> <9109a945-6df7-4267-8526-9e7110bd292e@googlegroups.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-598292193-1505045968=:6842"

--8323329-598292193-1505045968=:6842
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT

> No, this command "git log --pretty=oneline --abbrev-commit
> 7b2a57c^..f46968c" also gives no matches found but
> "git log --pretty=oneline --abbrev-commit " shows these commit ID's.

What is the does

git log --oneline | head -20 give?

julia
--8323329-598292193-1505045968=:6842--

