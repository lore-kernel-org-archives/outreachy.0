X-GM-THRID: 6659918417753014272
X-Received: by 2002:a5b:70c:: with SMTP id g12mr11989102ybq.40.1550653857596;
        Wed, 20 Feb 2019 01:10:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:d58:: with SMTP id 85ls6517159ybn.8.gmail; Wed, 20 Feb
 2019 01:10:56 -0800 (PST)
X-Google-Smtp-Source: AHgI3IZiPZVVvpt2lJnrtBMnuBSsFx/wK+IFy5703iVCihWPY+F2CFDk/FDpIdj/0yJnQIZIzBPW
X-Received: by 2002:a25:b18a:: with SMTP id h10mr10386309ybj.52.1550653856696;
        Wed, 20 Feb 2019 01:10:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550653856; cv=none;
        d=google.com; s=arc-20160816;
        b=MFxMJtgLSSfuVCioentnrHGxjmkDaDanm1yxvfzydDWy3hbrkqNKxMFeA5wrU+9GxP
         EYY4NN6kqpkclkPY9UtbPQoXtNkgrMOnK4kGWMRltlD9qrR/EDPSJ9RZJEjkN8aijZEZ
         bPHr+LS+qSVyNdAqXVGjfBiyN+BvZS5DMqciA5jB1Orpk+acMWkKQu1JPjwTM/oOnJ2p
         fPb4uir6BX7R0CiptN4mt1CWLSny+Y/H135kXujgHWL3ulALiQwNBaMLZZEyVx5Qfxir
         udgQToYpWT361Pdbx5+hvSd0PpfUOSjjJn0H3kYEIPBG0NbaX8ziFMocGeDBYLaroOO2
         HTzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=lobVKB2HD+mktKdQv+YSyEbIecJtBMxdGXk4f3rVnHc=;
        b=Xbix3OqvKAyhEbCfXvcAIx/yyRB54SqjCKfEQXcJdFFMlkv3LirbNQcc+EhkT5Dg0J
         d5SEOXezrQ4MMmBYu7at+cejqE0+rf7JRc9uNwSTy+3pnl/0BiDDdnjw1wgha87Slac9
         aGYoj/Rw0eNzKLglPop+btYnkTyWeScHwEpQGrI5m6MYzQqf9xvlHs0ahDYBNmA3RsNC
         zc+JR8PykwlL5qdu4Snh0DJ8YFQFxgZlvG4Fga7MZkjcV+qTpTz3eAE1684Ou4j+J6w7
         jyuPn3/d8tlmKt7VXSGHRDaLjvemk94LBTx0DnsSBmczEr3PWDYn/Ia6TZwODSMYtMKP
         Qw0g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KPkmXgbM;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id n79si693812yba.3.2019.02.20.01.10.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Feb 2019 01:10:56 -0800 (PST)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KPkmXgbM;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id m2so9292819pgl.5
        for <outreachy-kernel@googlegroups.com>; Wed, 20 Feb 2019 01:10:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=lobVKB2HD+mktKdQv+YSyEbIecJtBMxdGXk4f3rVnHc=;
        b=KPkmXgbMHu/+veECUFIml+3dVMN8A2izhOsU10PFJjH6hFlXXRJjAuFKCSs0emNSMa
         ZufhzdtpVanGqYOIgK2GM3KyaAhmkgf3D7pl17m0+71lCyQtYrlGAwWFVgAElnkBNLMT
         fF9gDMtRdOsFAjr9mwvRONsKADtuh8X/8FBZRl3vx33+zdS+PUaFQpyzod3Jib/6ip4D
         6mRLKR1yHW1BRE5LYLjuLchMNYVpUXrxePNGeQhM5/NLfy4m+zMGV70HZJFpkgDD7TI2
         fQIxG/CAcL7gi3d3rIVQfXlpSoeThum5PY6kZFFXhmqVPcGLXtw6lL1F65jaIq7TZT/O
         vROA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=lobVKB2HD+mktKdQv+YSyEbIecJtBMxdGXk4f3rVnHc=;
        b=CgQwjA37w298bFoiSMm7TAkD7cPmrS/WukzzHOEJf+w++xYh3NfD+flSSYNSjnUSJ0
         9W+jttCTQxw3NEqkJ3WaWlr9+tuyQTYEeMI/VIottVqAxpP0k+rbV8dAlEMU3Twp88q+
         Y49OewJ1T2k5wc8oN50za2wK+dsh7coX0+7O+uhi2yFPIAyPkFyFomkc0Oaq7NCvm4wm
         Ab2EjM51wiwVNo/dfj1HzDM4Da4F6mnc/AvAcgvszsRUVwXlXXePx3gp+HMtmkE1imkb
         VLJmffBct4WnxfveV+qmgz4PYL+k9SkQArikgQJnuTYgZ0RUnQdG4KhGQrhL/8zcw8gy
         apnQ==
X-Gm-Message-State: AHQUAuZyBJEx69kR0vtbClceueyQs1FzGe7zXxVEVMuw6/Gr6toDy7aV
	nYmJ9suKuZ8yvDowX2Rr+ZA=
X-Received: by 2002:a65:5788:: with SMTP id b8mr10856643pgr.8.1550653855611;
        Wed, 20 Feb 2019 01:10:55 -0800 (PST)
Return-Path: <himadri18.07@gmail.com>
Received: from ?IPv6:2405:204:8187:3683:40b0:4750:2bbd:6e4b? ([2405:204:8187:3683:40b0:4750:2bbd:6e4b])
        by smtp.gmail.com with ESMTPSA id n85sm9595988pfj.177.2019.02.20.01.10.51
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Feb 2019 01:10:54 -0800 (PST)
Subject: Re: [Outreachy kernel] [PATCH] net: dsa: add missing of_node_put
To: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
Cc: outreachy-kernel@googlegroups.com, Julia Lawall <julia.lawall@lip6.fr>,
 andrew@lunn.ch, Florian Fainelli <f.fainelli@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, netdev@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
References: <20190220032432.2878-1-himadri18.07@gmail.com>
 <CAK-LDb+pTxoeuVYb+V6N6everYRtOvJwo26O-=LVVEbsXqBOFA@mail.gmail.com>
From: Himadri Pandya <himadri18.07@gmail.com>
Message-ID: <2068fcd1-abab-b7d4-4f93-cd244230df14@gmail.com>
Date: Wed, 20 Feb 2019 14:40:47 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <CAK-LDb+pTxoeuVYb+V6N6everYRtOvJwo26O-=LVVEbsXqBOFA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US


On 20/02/19 9:23 AM, Vaishali Thakkar wrote:
> On Wed, Feb 20, 2019 at 8:54 AM Himadri Pandya <himadri18.07@gmail.com> wrote:
> Hi Himadri,
>
> Thanks for the patch!
>
> For the scope of Outreachy, we prefer that you send patches in staging
> directory as Greg makes sure to pick them during the application
> period. Of course, you're very much encouraged to contribute to other
> subsystems as well but there patches are mainly picked up based on
> maintainer's cycle which may or may not be picked up for linux-next when
> selection of interns happens.
>
> I hope that makes sense.
Understood. Thank you for letting me know that.
>> Decrement the reference count on port while returning out of the loop.
> How did you find out about this issue?
I believe that Julia Lawall has been working on this for a while. After 
doing some cleanup patches, I'm trying to continue the work with her help.
> I think it would be good to
> give credit to tool in commit log if the issue is identified or produced
> by tool. [In this case, I assume it's Coccinelle]

Yes, it was identified by Coccinelle and I should include it in the 
commit message. Thank you for the remark. I'll revise the patch accordingly.

- Himadri


>> Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
>> ---
>>   net/dsa/dsa2.c | 14 ++++++++++----
>>   1 file changed, 10 insertions(+), 4 deletions(-)
>>
>> diff --git a/net/dsa/dsa2.c b/net/dsa/dsa2.c
>> index a1917025e155..396e7433dd8f 100644
>> --- a/net/dsa/dsa2.c
>> +++ b/net/dsa/dsa2.c
>> @@ -624,19 +624,25 @@ static int dsa_switch_parse_ports_of(struct dsa_switch *ds,
>>          for_each_available_child_of_node(ports, port) {
>>                  err = of_property_read_u32(port, "reg", &reg);
>>                  if (err)
>> -                       return err;
>> +                       goto put_port;
>>
>> -               if (reg >= ds->num_ports)
>> -                       return -EINVAL;
>> +               if (reg >= ds->num_ports) {
>> +                       err = -EINVAL;
>> +                       goto put_port;
>> +               }
>>
>>                  dp = &ds->ports[reg];
>>
>>                  err = dsa_port_parse_of(dp, port);
>>                  if (err)
>> -                       return err;
>> +                       goto put_port;
>>          }
>>
>>          return 0;
>> +
>> +put_port:
>> +       of_node_put(port);
>> +       return err;
>>   }
>>
>>   static int dsa_switch_parse_member_of(struct dsa_switch *ds,
>> --
>> 2.17.1
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190220032432.2878-1-himadri18.07%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.

