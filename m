X-GM-THRID: 6341882177714651136
X-Received: by 10.66.7.131 with SMTP id j3mr4580273paa.113.1476644077178;
        Sun, 16 Oct 2016 11:54:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.182.195 with SMTP id g186ls4507039iof.6.gmail; Sun, 16 Oct
 2016 11:54:32 -0700 (PDT)
X-Received: by 10.66.193.194 with SMTP id hq2mr4729491pac.40.1476644072773;
        Sun, 16 Oct 2016 11:54:32 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id z76si4197369pff.1.2016.10.16.11.54.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 16 Oct 2016 11:54:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=gnudevliz@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id os4so4311407pac.3
        for <outreachy-kernel@googlegroups.com>; Sun, 16 Oct 2016 11:54:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=eIZpDCQS+GZ6GPz1fIR6mHnxZDIWIj1B0oKK+DEfWOo=;
        b=OmJN4hB1G8QHtflAIIleG02uYMzSrWcKVFqBNIkQ1s6MXsJ75xgJJtRF+dFnZSPUz8
         7igVdQYChKJdm362qet795n3Z5ouGpgeugerpnlyWnW5ShMcqYILylNT0zwGbbbsolKl
         H3/BOOeYx5y8OizNfYEczeKyO+bvh1lEhntJMoxzxlrmoGAUp4qwN/bmBBHxcc8Hd+Oq
         Hcj0HogrCh6nq3t7GHSaMBYX7M1FDnQo3QdNmPX+VbEnCkWttompTvDQERLqK1I+mREI
         7MqqxfO3hS0bWYDpZ74XiRMale6KtKR/dShfabXReVu53NMkinxlfWDphQyIY1xJan+j
         oZfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=eIZpDCQS+GZ6GPz1fIR6mHnxZDIWIj1B0oKK+DEfWOo=;
        b=HbNRib0CnBvNYfkbzxYx3+Xk2nAX8iBAFSZSptqqs4/5l+h85R9iFk8YlpyQP7oYfn
         6TJDyvRrjNpn8DBgwrvRMaFDF+Lq1k6exqNTERephuMEDYMQyvmdQICa28y3W4i5vv6F
         wjcF6LbbJOHHPy2oNHTFE4ufIGq+uhTIQ0n9j0MMIiDOhjjVDoKSPfMphvtFakuRbcoh
         mRtz/aIgYt182ZJ6l3QAdqyjFPPV8IX/4TRGWGXveLT8O7gVTqqigZ2OaI2uOETc714V
         p1klatWl9eDp2Fy+G2kI/lyEeEJ4sByGyPWjCo/iYZRcR5IM9V/FVyx25tAMxgwMu8Ge
         /E+g==
X-Gm-Message-State: AA6/9RmDzElCRp1+LfKazykeLnBB0NC5MIyKb9zB99WeVFjkFKx/GUDP3T4MDLX2BLQToA==
X-Received: by 10.66.135.50 with SMTP id pp18mr27045326pab.18.1476644072575;
        Sun, 16 Oct 2016 11:54:32 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from localhost ([2601:644:300:fd6b:4e0f:6eff:fe69:e9ea])
        by smtp.gmail.com with ESMTPSA id g9sm16274568paw.40.2016.10.16.11.54.31
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 16 Oct 2016 11:54:32 -0700 (PDT)
Date: Sun, 16 Oct 2016 11:54:30 -0700
From: Elizabeth Ferdman <gnudevliz@gmail.com>
To: Bhumika Goyal <bhumirks@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: Coccinelle Constification
Message-ID: <20161016185429.GB2242@localhost>
References: <20161016022145.GA2215@localhost>
 <d11cf10a-059c-48ae-a33f-7950190831f5@googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d11cf10a-059c-48ae-a33f-7950190831f5@googlegroups.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sat, Oct 15, 2016 at 10:33:11PM -0700, Bhumika Goyal wrote:
> 
> Hey Liz,
> 
> Eva has already explained the process well but I would like to
> share my approach :
> 
> 1. Firstly, I find all structures of the form static struct s i ={...};
> by using the script:
> @r disable optional_qualifier@
> identifier s,i;
> @@
> * static struct s i ={...};
> disable optional_qualifier is used here as we want to look only for
> the non-const structures.
> 
> 2. Now pick a structure instance from a file and look how it is used
> in that file.
> If the structure's fields are not getting modified => it can be
> declared as const.
> You will have to analyze the usage carefully so that nothing is missed.
> Also, you can do a grep to be sure that all the referenced are covered.
> 
> 3. After this you can write a Coccinelle script to constify all the
> instances that follows this particular pattern of usage.
> 
> Make a rule in the script which matches the structure's reference that 
> is justified for const declaration and stores the reference position.
> Look for the @ok@ rule in my scripts.
> Now make another rule which looks for any other reference other 
> than the above one and stores this position as well.
> Look for @bad@ rule for this step.
> Next, add another rule @depends on !bad disable optional_qualifier@
> that declares the structure as const.
> 
> 4. After doing the changes compile the affected drivers and run
> size <affected_file_name> to get the size details of the affected
> file.
> 
Hey Bhumika,
Thanks for your reply and all the advice. I understand a little
bit more about what's going on in those scripts now and I will give it a
try...

Liz

> I hope this helps :)
> 
> Thanks,
> Bhumika
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/d11cf10a-059c-48ae-a33f-7950190831f5%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.


