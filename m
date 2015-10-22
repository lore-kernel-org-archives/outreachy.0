X-GM-THRID: 6208472977162371072
X-Received: by 10.129.134.129 with SMTP id w123mr12505948ywf.17.1445525011308;
        Thu, 22 Oct 2015 07:43:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.97.73 with SMTP id l67ls1378302qge.36.gmail; Thu, 22 Oct
 2015 07:43:30 -0700 (PDT)
X-Received: by 10.140.196.76 with SMTP id r73mr12839067qha.3.1445525010778;
        Thu, 22 Oct 2015 07:43:30 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id zg1si1715930pbb.2.2015.10.22.07.43.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2015 07:43:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x236.google.com with SMTP id fv9so92566246pac.3
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Oct 2015 07:43:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:content-type;
        bh=YbtLX+cdoXqSMHeORSaghwFzLFI77NmJ1rEZzsk4H5c=;
        b=qAcHTlzW5u0FlG4nkkzGyR0ahXZeJgRsXp5BK4aQDfyN8Xox2fyh5OeP39kZO9+tKW
         FFWwPG92tMbY4z6FkPlwtgmuvReAm/5Rw6XEE/039TLpEEUjvIHBB5zCHnLTCgCWzRLy
         GFcQvPwt8rl5TxmhuFOed9kvIo9JuCuU1I2ujzmcSuDgG7DSIavANDTh5uw5FDMa4hok
         MuMr1WHs//PkhHOXuSQF4Z5eUrT8SnlTcpRBvxr2Vsk8ElE7XTJOtOANPtmUUt7L1Yxf
         O2sQGIIORU6ESE5AN31+vq3/KBOWUsoD1rz8lWD5zv3GJUGt1WebbPXg3Kk1fZyL8kpD
         UTqw==
X-Received: by 10.66.120.237 with SMTP id lf13mr17648106pab.25.1445525010524;
        Thu, 22 Oct 2015 07:43:30 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from [10.4.9.105] ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id qa5sm14266670pbc.70.2015.10.22.07.43.28
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2015 07:43:30 -0700 (PDT)
Date: Thu, 22 Oct 2015 20:13:18 +0530 (IST)
From: Shraddha Barke <shraddha.6596@gmail.com>
X-X-Sender: root@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V
To: Arnd Bergmann <arnd@arndb.de>
cc: y2038@lists.linaro.org, outreachy-kernel@googlegroups.com
Subject: Re: [Y2038] [PATCH] mtd: tests: Replace timeval with ktime_t
In-Reply-To: <3945767.60xPqpFfYF@wuerfel>
Message-ID: <alpine.DEB.2.11.1510222011270.14576@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V>
References: <1445522749-14269-1-git-send-email-shraddha.6596@gmail.com> <3945767.60xPqpFfYF@wuerfel>
User-Agent: Alpine 2.11 (DEB 23 2013-08-11)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed



On Thu, 22 Oct 2015, Arnd Bergmann wrote:

> On Thursday 22 October 2015 19:35:49 Shraddha Barke wrote:
>> Change the 32-bit time type timeval to the 64-bit time type
>> ktime_t, since 32-bit systems using struct timeval will break in the
>> year 2038. Correspondingly change do_gettimeofday() to ktime_get()
>> since ktime_get returns a ktime_t, but do_gettimeofday returns a
>> struct timeval.
>>
>> Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
>
> The patch looks good to me, but please add a sentence to explain
> why you use ktime_get() instead of ktime_get_real(). It is the
> right choice here, but it may not be obvious to the reader
> that you now use monotonic times.
>
> With that, please resend the patch and Cc the MTD maintainers.
>
> How did you pick this driver? I thought I had originally given this
> task to someone else and not listed it in the y2038 wiki page. The
> other person has not worked on it over the last month, and it's
> a relatively simple patch, so don't worry about it.

No particular reason. Sorry about that , I'll stick to the tasks given on 
the tasks page.

Thanks,

Shraddha
>
> Are we running out of simple tasks? I can always add a few more to the
> wiki as there are around 50 other drivers that need to be changed
> in a similar way.
>
> 	Arnd
>

