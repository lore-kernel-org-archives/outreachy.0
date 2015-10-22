X-GM-THRID: 6208399403783290880
X-Received: by 10.129.74.198 with SMTP id x189mr12281301ywa.53.1445507204824;
        Thu, 22 Oct 2015 02:46:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.134.25 with SMTP id i25ls704060iod.17.gmail; Thu, 22 Oct
 2015 02:46:44 -0700 (PDT)
X-Received: by 10.66.221.7 with SMTP id qa7mr11714860pac.33.1445507204369;
        Thu, 22 Oct 2015 02:46:44 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x234.google.com (mail-pa0-x234.google.com. [2607:f8b0:400e:c03::234])
        by gmr-mx.google.com with ESMTPS id sm2si248645pab.0.2015.10.22.02.46.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2015 02:46:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) client-ip=2607:f8b0:400e:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x234.google.com with SMTP id z6so82717652pas.2
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Oct 2015 02:46:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:content-type;
        bh=S+YNJU7bIY2QuB9yK0k20tI+OYif37zo3q0UjamLS1M=;
        b=AXNIJa8AoOuP15LADgOVpwV/ggwYwXHjZ1y8bl+gDfn8JBBfqsAm6LChEtPLqwABTz
         jjdYlmdtSywg84cqc1LakdTsD1+XlAMRS2BSPMst2xhg02KR2o5DW0v8C2zox4dovhsM
         CqOmzCCYdawzpbxeYpjfzyZbqxyfH1oIstdPLtApuA/j7gD/j8o4Zj2IzEjjaf/zVwQ/
         cu6RKtv0Fit3yZLGdsW4xxim+3WTLVCUSbxh95N8su6Z+g5/eWy1eg7AoKdD9aY9Sj8W
         ahTJLr3Je49gzh9jyq10qjDkP4dk2+r8rCjkdc0q1zNBBOyvD0+Rmxdx/SgSTJ9YQ4kf
         Pe2g==
X-Received: by 10.66.97.73 with SMTP id dy9mr16510207pab.115.1445507204248;
        Thu, 22 Oct 2015 02:46:44 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.connectify ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id yp9sm13207184pab.1.2015.10.22.02.46.42
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2015 02:46:43 -0700 (PDT)
Date: Thu, 22 Oct 2015 15:16:39 +0530 (IST)
From: Shraddha Barke <shraddha.6596@gmail.com>
X-X-Sender: root@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V
To: Arnd Bergmann <arnd@arndb.de>
cc: outreachy-kernel@googlegroups.com, devel@driverdev.osuosl.org
Subject: Re: [Outreachy kernel] [PATCH 0/2] Staging: lustre: Remove unused
 functions
In-Reply-To: <5359017.vBRWqNddLo@wuerfel>
Message-ID: <alpine.DEB.2.11.1510221514420.31987@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V>
References: <1445505620-10350-1-git-send-email-shraddha.6596@gmail.com> <5359017.vBRWqNddLo@wuerfel>
User-Agent: Alpine 2.11 (DEB 23 2013-08-11)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed



On Thu, 22 Oct 2015, Arnd Bergmann wrote:

> On Thursday 22 October 2015 14:50:18 Shraddha Barke wrote:
>> These patches remove the definitions of functions which are not used.
>>
>> Shraddha Barke (2):
>>   Staging: lustre: ptlrpc: Remove unused functions
>>   Staging: lustre: obdclass: Remove unused functions
>>
>>  .../lustre/lustre/obdclass/lprocfs_status.c        | 139 ---------------------
>>  .../staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c    |  63 ----------
>>  2 files changed, 202 deletions(-)
>>
>>
>
> How did you check that they are indeed unused? I suspect these two patches
> are wrong.

I grepped for the uses of these functions. When I did make 
M=drivers/staging/lustre, I didn't get errors. What am I missing here?

Thanks,

Shraddha
>
> 	Arnd
>
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/5359017.vBRWqNddLo%40wuerfel.
> For more options, visit https://groups.google.com/d/optout.
>

