X-GM-THRID: 6392997475785900032
X-Received: by 10.46.84.13 with SMTP id i13mr2295669ljb.2.1488491843421;
        Thu, 02 Mar 2017 13:57:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.7.1 with SMTP id 1ls126906ljh.31.gmail; Thu, 02 Mar 2017
 13:57:23 -0800 (PST)
X-Received: by 10.46.84.13 with SMTP id i13mr2295667ljb.2.1488491843055;
        Thu, 02 Mar 2017 13:57:23 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-lf0-x22e.google.com (mail-lf0-x22e.google.com. [2a00:1450:4010:c07::22e])
        by gmr-mx.google.com with ESMTPS id v201si11111wmv.3.2017.03.02.13.57.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 13:57:23 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2a00:1450:4010:c07::22e as permitted sender) client-ip=2a00:1450:4010:c07::22e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2a00:1450:4010:c07::22e as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x22e.google.com with SMTP id a6so39859244lfa.0
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Mar 2017 13:57:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=kjxOoAFj3V6Z3ABDdMUxm6eUp5eSnkRLimkIhgGMKeg=;
        b=Aufer2tvY+eSrafWnQUgWPmtcz08U5V/xOXCYPRbfCYr9sSdrM76V998ptlK3WYzO6
         FgrDvG5lQrpvWn4WNciFH5Te7XBoNY7uPPe22yMD2YRrvegm/xdF2w5itZqK54ikXmwJ
         Llt+NagY+kd2uHZC1GmmWW3+hCQEL3wYIPOP1YOLPJ3RJF8tV9KuldQVH2tO2zUsOAiW
         XANqL1zK56DeJegwjRNd14pRhI3hRqkqasrCRObwvQChfT+TYaWVVKoEKXCWbwA0YOYN
         M8d4B2IqN/yKY9u72iHQYjhdglN8dPSFvI5pdjdVGaNJU85HJOX4iX9gt0S1VEp7dZJ9
         EM+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=kjxOoAFj3V6Z3ABDdMUxm6eUp5eSnkRLimkIhgGMKeg=;
        b=TeZOo7gGBC+yfDHjbRSN1a/9J266eFh4057kyKoEEG73igh+9JcKApyVpr7GS6B3eH
         TKDPLq3b1D9q+YABD6qKybHYC74VJ6GfL3QfhltwHyCWQ2MedXfvv2CbC4aY3dzDyO2w
         ALMUympE6MtqeIWcIdD1IpHVS/pup4vmHkUo4PvRBxChXEP38KAbwXFjwy8rmoRVoiNC
         UQ9Axvat79JtyM8OtHES8kAwGKYVgY4EqiIj8MfcF3Z4uIobTFS2J8TJWEr9pqVHlPjN
         P22xwrGrejM6GMlsT7Bt8Tj9ifKutXKJT/X3J3ioZEF5pwMrbLrv7a+XfaSbJHii8OT0
         MQ5g==
X-Gm-Message-State: AMke39k/0SQifKxA62xm5h6TjNS2xU6hyAZXfmhUioZ9SkYayJFO4ujyDx3XFrz7cA/+u8Wzt/QfSryX1S8dzA==
X-Received: by 10.25.198.19 with SMTP id w19mr5213734lff.175.1488491842812;
 Thu, 02 Mar 2017 13:57:22 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.15.39 with HTTP; Thu, 2 Mar 2017 13:57:22 -0800 (PST)
In-Reply-To: <alpine.DEB.2.20.1703022254450.2175@hadrien>
References: <1488489544-25941-1-git-send-email-singhalsimran0@gmail.com>
 <1488489544-25941-5-git-send-email-singhalsimran0@gmail.com> <alpine.DEB.2.20.1703022254450.2175@hadrien>
From: SIMRAN SINGHAL <singhalsimran0@gmail.com>
Date: Fri, 3 Mar 2017 03:27:22 +0530
Message-ID: <CALrZqyOO5Zn7nuYfd6N64W-k3vGrWh35pwZ9mE7uHei0QS9ZvA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 5/5] staging: rtl8712: Remove
 unnecessary cast on void pointer
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Larry.Finger@lwfinger.net, 
	Florian Schilhabel <florian.c.schilhabel@googlemail.com>, Greg KH <gregkh@linuxfoundation.org>, 
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
	oleg.drokin@intel.com, marvin24@gmx.de, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Fri, Mar 3, 2017 at 3:26 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>> @@ -635,7 +635,7 @@ void r8712_reordering_ctrl_timeout_handler(void *pcontext)
>>  {
>>       unsigned long irql;
>>       struct recv_reorder_ctrl *preorder_ctrl =
>> -                              (struct recv_reorder_ctrl *)pcontext;
>> +                              pcontext;
>
> Coccinelle doesn't always generate code in the best way.  pcontext can be
> moved up to the previous line in this case.
>
Thanks,
I will send v2.
> julia

