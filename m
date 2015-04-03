X-GM-THRID: 10800857088000
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,e0b5b091b94f8408
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.182.149.230 with SMTP id ud6mr1245533obb.36.1428041322369;
        Thu, 02 Apr 2015 23:08:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.19.3 with SMTP id b3ls815831ioj.9.gmail; Thu, 02 Apr 2015
 23:08:42 -0700 (PDT)
X-Received: by 10.42.10.6 with SMTP id o6mr1740948ico.27.1428041322111;
        Thu, 02 Apr 2015 23:08:42 -0700 (PDT)
Return-Path: <1213charlie@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id gb13si842288pac.2.2015.04.02.23.08.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Apr 2015 23:08:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of 1213charlie@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of 1213charlie@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mail=1213charlie@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x230.google.com with SMTP id sx10so15165737pab.3
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Apr 2015 23:08:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=message-id:date:from:user-agent:mime-version:to:cc:subject
         :references:in-reply-to:content-type:content-transfer-encoding;
        bh=O8hOR6Ewth3yOn3Kd/t4TV6ONkZLbbTOtgPOjsN/ne4=;
        b=JDt0BWNzpqXCLg7q3MDAGp9ELO36y4AlE1HQG+w3r/IEE9QUwRUcAU7+i3z0c7ADjx
         s9RK5K27GkbYZK3kGi3cD3PeUmquSICnKTGUix8lCVjKA5iXrc62juDhpepDVtB51m6v
         yU24mWUUY0jGGOI54jnqldBaimxljgodWB7bZi4VwF1W8JNHF2siDGYfWJ8bbjKSQBXe
         3/1TEpMHu+M5P0A/mPicqs7d8gNajyC3ZIAULRitTGvKU3rCeO4Kfh/M0wezVMEu/SjH
         DHbPKemCp/SZ/XMu/u2S7g4sH0PhrMPX23m3ydV26AU1IpWwyowj9/QV2CdWvqXVdKNO
         UHfA==
X-Received: by 10.66.149.163 with SMTP id ub3mr1552414pab.125.1428041322004;
        Thu, 02 Apr 2015 23:08:42 -0700 (PDT)
Return-Path: <1213charlie@gmail.com>
Received: from ?IPv6:2001:250:4402:228:41ef:f14b:af05:6ee8? ([2001:250:4402:228:41ef:f14b:af05:6ee8])
        by mx.google.com with ESMTPSA id ha5sm6956186pbb.34.2015.04.02.23.08.38
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Apr 2015 23:08:41 -0700 (PDT)
Message-ID: <551E2E5E.8090001@gmail.com>
Date: Fri, 03 Apr 2015 14:08:30 +0800
From: Charlie WONG Super <1213charlie@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: Julia Lawall <julia.lawall@lip6.fr>
CC: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: fbtft: Replace spaces to tab
References: <1428039199-4628-1-git-send-email-1213charlie@gmail.com> <alpine.DEB.2.02.1504030746190.2011@localhost6.localdomain6>
In-Reply-To: <alpine.DEB.2.02.1504030746190.2011@localhost6.localdomain6>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 2015年04月03日 13:46, Julia Lawall wrote:
>
> On Fri, 3 Apr 2015, Charlie WONG Super wrote:
>
>> From: Charlie Wong Super <1213charlie@gmail.com>
>>
>> Spaces at the start of the line, replace the leading space to tabs
>>
>> Signed-off-by: Charlie Wong Super <1213charlie@gmail.com>
>> ---
>>   drivers/staging/fbtft/fb_st7735r.c | 8 ++++----
>>   1 file changed, 4 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/staging/fbtft/fb_st7735r.c b/drivers/staging/fbtft/fb_st7735r.c
>> index 9d87430..8728347 100644
>> --- a/drivers/staging/fbtft/fb_st7735r.c
>> +++ b/drivers/staging/fbtft/fb_st7735r.c
>> @@ -25,8 +25,8 @@
>>   #include "fbtft.h"
>>   
>>   #define DRVNAME "fb_st7735r"
>> -#define DEFAULT_GAMMA "0F 1A 0F 18 2F 28 20 22 1F 1B 23 37 00 07 02 10\n" \
>> -                      "0F 1B 0F 17 33 2C 29 2E 30 30 39 3F 00 07 03 10"
>> +#define DEFAULT_GAMMA	"0F 1A 0F 18 2F 28 20 22 1F 1B 23 37 00 07 02 10\n" \
> You don't need a tab after GAMMA.
>
> julia
can I use space to make the two line align?
>
>> +			"0F 1B 0F 17 33 2C 29 2E 30 30 39 3F 00 07 03 10"
>>   
>>   
>>   static int default_init_sequence[] = {
>> @@ -119,9 +119,9 @@ static int set_var(struct fbtft_par *par)
>>   	/* MADCTL - Memory data access control
>>   	     RGB/BGR:
>>   	     1. Mode selection pin SRGB
>> -	        RGB H/W pin for color filter setting: 0=RGB, 1=BGR
>> +		RGB H/W pin for color filter setting: 0=RGB, 1=BGR
>>   	     2. MADCTL RGB bit
>> -	        RGB-BGR ORDER color filter panel: 0=RGB, 1=BGR */
>> +		RGB-BGR ORDER color filter panel: 0=RGB, 1=BGR */
>>   	switch (par->info->var.rotate) {
>>   	case 0:
>>   		write_reg(par, 0x36, MX | MY | (par->bgr << 3));
>> -- 
>> 1.9.1
>>
>>


