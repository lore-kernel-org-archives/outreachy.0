X-GM-THRID: 6754760383787958272
X-Received: by 2002:a05:651c:10c:: with SMTP id a12mr15673371ljb.93.1572801227578;
        Sun, 03 Nov 2019 09:13:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:9c97:: with SMTP id x23ls1537193lji.2.gmail; Sun, 03 Nov
 2019 09:13:46 -0800 (PST)
X-Google-Smtp-Source: APXvYqxWmR5JJsDHyKaPTibXnrF9ypIYHyi1eVjRDYXN9fhaMpCFulbG+S4pD6B29vdttG4Sj/Da
X-Received: by 2002:a2e:3008:: with SMTP id w8mr5640940ljw.148.1572801226552;
        Sun, 03 Nov 2019 09:13:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572801226; cv=none;
        d=google.com; s=arc-20160816;
        b=UubneMDw2LXyLhTM94RbmRXJQiAdhwF89CN196apt1sGYOeEaPdY4OeKQk37V9A55i
         1PO0Ka7SfWJdr5XiY1H56VaSX7Gv+fb8F2GbPVAQWzbuU+DOdOsZbhUUZzs1QywfN5Tn
         xlsOVArbsoE2EFAHsWV6RZ2ahFSZPzxz3AkRRqrTamrcif9OU5RIh8rAGQ5p7/Js7o/q
         RAFP7C/55HV+JvMFAtGa4px6fZGcFOVmXHdfkBUC8Dlxpr5rPkdQCNMZBMkJWCVZm815
         O7zB+JkNvbou6ec/bw3XRHpou6Knc/Ax2Z9axHBCLNNjtFS82n+OACDGEaedre952EkD
         m64w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=5xv+INOcohjD4dkPmMS8HSnUZ9TRJtRvAafZgZOvKm8=;
        b=VUxiHJmgiwIHde4g2B1l1tqHtPCnHbcF54pxi747kIi1gQA2S6IuY1P214bHwuU9ah
         EME9S6wkhxGg51hmGfmpX9ickUfTt5u0T4UiHIl0PTZpEVFAKutlBzOxXFhNlT0txo0U
         ERIOZXwjgBA8u51dsQweDYyTP38GjK5ohLDpMMQm19VEYKPWZeWISUKOv/3y1RY78Qmk
         ysJaAEvKo61+eCNxhpZvIx6Qg8QAYWL0aa/BaTU+3bEk4/594jpL71BVmL/Xl7stppfc
         yZNUbFrJ5iJMJg7lY1Oeh2y8gym7foKewsMD+DgcZWTFbLYeGgKBXp/Rktw206DWilVz
         JW5Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id s4si1166371ljg.1.2019.11.03.09.13.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 03 Nov 2019 09:13:46 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.68,264,1569276000"; 
   d="scan'208";a="325437914"
Received: from abo-45-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.45])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 03 Nov 2019 18:13:45 +0100
Date: Sun, 3 Nov 2019 18:13:45 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Jules Irenge <jbi.octave@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    Boqun.Feng@microsoft.com, jerome.pouiller@silabs.com
Subject: Re: [PATCH v4 1/2] staging: wfx: replace 0 by NULL as the return
 value of a pointer-returning function
In-Reply-To: <20191103165308.23843-2-jbi.octave@gmail.com>
Message-ID: <alpine.DEB.2.21.1911031813351.2557@hadrien>
References: <20191103165308.23843-1-jbi.octave@gmail.com> <20191103165308.23843-2-jbi.octave@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 3 Nov 2019, Jules Irenge wrote:

> Replace 0 by NULL as the return value of a pointer-returning function.

Likewise here.

julia

> Issue detected by sparse tool.
>
> Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> ---
> changes since
> v1 submits change of zero to NULL with no accurate log message of what
> was done and title.
> v2 improves on log message description: remove the word "fixing", rephrase
> log message and title.
> v3 gives accurate log description on changes and reason behind.
> v4 includes a log of changes done on each version.
>
>  drivers/staging/wfx/queue.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/wfx/queue.c b/drivers/staging/wfx/queue.c
> index ef3ee55cf621..5d29bce65f71 100644
> --- a/drivers/staging/wfx/queue.c
> +++ b/drivers/staging/wfx/queue.c
> @@ -565,7 +565,7 @@ struct hif_msg *wfx_tx_queues_get(struct wfx_dev *wdev)
>  		}
>
>  		if (ret)
> -			return 0;
> +			return NULL;
>
>  		queue_num = queue - wdev->tx_queue;
>
> --
> 2.23.0
>
>

