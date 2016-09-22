X-GM-THRID: 6332661608531099648
X-Received: by 10.13.250.129 with SMTP id k123mr3457ywf.1.1474519653647;
        Wed, 21 Sep 2016 21:47:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.15.42 with SMTP id 39ls1673039ott.0.gmail; Wed, 21 Sep
 2016 21:47:33 -0700 (PDT)
X-Received: by 10.31.213.4 with SMTP id m4mr404071vkg.23.1474519653017;
        Wed, 21 Sep 2016 21:47:33 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-vk0-x236.google.com (mail-vk0-x236.google.com. [2607:f8b0:400c:c05::236])
        by gmr-mx.google.com with ESMTPS id 70si2409vkd.0.2016.09.21.21.47.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Sep 2016 21:47:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400c:c05::236 as permitted sender) client-ip=2607:f8b0:400c:c05::236;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400c:c05::236 as permitted sender) smtp.mailfrom=vthakkar1994@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x236.google.com with SMTP id 192so9088213vkl.0
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Sep 2016 21:47:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=N/7uhunao+2l+F0wRFFtY6JrTO+6Usv/G9DT+rcqmD4=;
        b=hi5740gfrgdEgf9aK7Zd4hB14bPBkOnrQQsvWd+1WToqOyq4IWf2N0MGCQelnv0167
         L+mTWE4NKEcZwlXvn/b3f8QR2nAW+6uNNU41MGjfeoiitUXnydvwlpxYjBeWA4YyZkHy
         jgtfNcD+6h5Ko8IqhTAz1AMCeyz+cmR8ndmnxE8cVAn7LFufHDQSaqhYl6Py59d+0JA+
         OvwR972anUi/if+5tBAMbn6Q7qAGtdQ7F7KrDn16KPz63yPfw8N53Sb22ti/SN3WqmZx
         mqUt7/SFw/TFggPXeS7bbx3pr5J3z+zeCPmJThSyhkGxFpGu/w7SDYupNpYmvgj703sX
         ctrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=N/7uhunao+2l+F0wRFFtY6JrTO+6Usv/G9DT+rcqmD4=;
        b=U1uUe1MwisUreQ+psFvG8/mg7ceWLn6ewdvZFt07z9nLoi2tfT/h/OX/f83M7+jFz7
         rYm3/AuGzB3HugnTyjTpaJ8+e7pr2CvnyeSpY1onvADWbRxKEfyOa+kiMCQya0U7b/Cs
         X1pWaK9cI7JRKwwFjW3VOqb8FPthZFvnO9B+lLkTOd/16FkKFVOFRfYtDIBHzj689uJd
         mQfnjlIwVuyZseABkUXYrvBeTYMcGL8bfpuSDIHgGoMBV66REcCbTf3FpMbqTFAIbXih
         GEqjzt3FwfCgoRoTzws3ppqAO4mNpWITaF93YGIgKOPusULouaBKXrThLJzsCBl8M0VA
         BzTQ==
X-Gm-Message-State: AE9vXwME0IVI0cfE0HjI5dWIL9dCUPXGUkuVTed5c0yimErjNDpYgL+EMHYqswxg0Nij+xLD/aQdDvIWjrLKcw==
X-Received: by 10.31.130.195 with SMTP id e186mr9145vkd.112.1474519652813;
 Wed, 21 Sep 2016 21:47:32 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.31.108.214 with HTTP; Wed, 21 Sep 2016 21:47:32 -0700 (PDT)
In-Reply-To: <649173d5-38d8-43e3-af3b-a81aab81311d@googlegroups.com>
References: <0eb31ed4-5370-4980-be9d-559b20044bf5@googlegroups.com> <649173d5-38d8-43e3-af3b-a81aab81311d@googlegroups.com>
From: Vaishali Thakkar <vthakkar1994@gmail.com>
Date: Thu, 22 Sep 2016 10:17:32 +0530
Message-ID: <CAK-LDbJdnH_ONEEcCs-yLeEtMN4cYQKD0Jkc4M_TtOTaDpTV0Q@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: Mutt/Gmail Issue
To: gnudevliz@gmail.com
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Thu, Sep 22, 2016 at 1:18 AM,  <gnudevliz@gmail.com> wrote:
> Hi everyone,
>
> Thanks for your replies. I've tried many .muttrc config changes and Gmail
> setup but I keep getting the same error.
> I think I'm supposed to set up a FQDN (Fully Qualified Domain Name). Mutt
> keeps telling me there is no HELO/ELHO argument

I am not sure about this error but usually Mutt fails for me if I use
it under firewall,
proxy settings or vpn. So, I don't use it anymore. Git send-email
works good for me.
If you can't figure out the solution of this error and want to go for
the git send-email
then you can check this blog:

https://burzalodowa.wordpress.com/2013/10/05/how-to-send-patches-with-git-send-email/

It just requires to set up .gitconfig. I can share my settings but I
think that blog explains
almost everything in detail.

> On Tuesday, September 20, 2016 at 11:01:18 PM UTC-7, gnud...@gmail.com
> wrote:
>>
>> Hello everyone,
>>
>> I'm on Debian Jessie and I cannot get mutt to send email. I can receive
>> emails and view my inbox in Mutt but I can't send messages. I can send them
>> to myself though. I can't send them to another email address.
>>
>> When I use mutt to send an email I keep getting this HELO/ELHO error:
>>
>> SMTP session failed: 501 5.5.4  https://support.google.com/mail/?p=helo
>> yg10sm21072351pab.8 - gsmtp
>>
>> That brings me to this page:
>>
>> https://support.google.com/mail/answer/6386757?visit_id=1-636100243312716080-1894628512&p=helo&rd=1
>>
>> I can't figure out how to resolve this issue. My 2 factor is off and I'm
>> allowing login from unsecure apps. I'm also trying to use ssmtp instead of
>> esmtp but the same thing happens in mutt.
>>
>> When i do
>> $ sudo ssmtp someemail@gmail.com
>>
>> the email does actually go through though, but it says from root.
>>
>> If anyone has suggestions I would really appreciate it!
>> Thanks,
>> Liz
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/649173d5-38d8-43e3-af3b-a81aab81311d%40googlegroups.com.
>
> For more options, visit https://groups.google.com/d/optout.



-- 
Vaishali
http://vaishalithakkar.in/

