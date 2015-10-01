X-GM-THRID: 6200529091432546304
X-Received: by 10.66.218.130 with SMTP id pg2mr7078700pac.12.1443687102079;
        Thu, 01 Oct 2015 01:11:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.78.227 with SMTP id e3ls153514igx.22.gmail; Thu, 01 Oct
 2015 01:11:41 -0700 (PDT)
X-Received: by 10.50.114.2 with SMTP id jc2mr1568519igb.5.1443687101792;
        Thu, 01 Oct 2015 01:11:41 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x234.google.com (mail-pa0-x234.google.com. [2607:f8b0:400e:c03::234])
        by gmr-mx.google.com with ESMTPS id wl2si797818pab.1.2015.10.01.01.11.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Oct 2015 01:11:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) client-ip=2607:f8b0:400e:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x234.google.com with SMTP id hy16so67515566pad.1
        for <outreachy-kernel@googlegroups.com>; Thu, 01 Oct 2015 01:11:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:content-type;
        bh=QU/8xNO8zcSucpzmySyjv3lvonQdKRWP4xaj2pNdc50=;
        b=q56avbmcXej7G0aF4Vw3wqlG3I1XwfpZ98ZF+mKaNYNy4B1i6c5E+DJnXPrDGYkkmp
         m2vUTxqbAxWHbylcYmcbYBnA4i3i5XyQaNVx8AwyN058ifoQ5yh5IWrM90qGqYkGuhO2
         FHbhHLvfEfVJcM0q/6zMLwlmkZ+A3IqoShAJpSedOf1JzZ5nWdbEzDd/BjgXRYTmnxdO
         u1Ddy8YQmbV8VHy7CPcw6mbvgzxGC0KMS3D04aojNtLuB+nzTLI2mLP49sBLY9+gLZaz
         lm1hAfOeqXkQsqxAGB6bkm/P6BetmQ2chSADEJnXk3KTJ+t2HGOMybQL18FGdZ7RDBG3
         q0WA==
X-Received: by 10.66.139.232 with SMTP id rb8mr10304779pab.99.1443687101646;
        Thu, 01 Oct 2015 01:11:41 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from [10.30.0.216] ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id qy5sm5001950pbb.16.2015.10.01.01.11.36
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 01 Oct 2015 01:11:40 -0700 (PDT)
Date: Thu, 1 Oct 2015 13:41:33 +0530 (IST)
From: Shraddha Barke <shraddha.6596@gmail.com>
X-X-Sender: root@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V
To: Greg KH <gregkh@linuxfoundation.org>
cc: Shraddha Barke <shraddha.6596@gmail.com>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: android: Remove unneeded
 definition in header file
In-Reply-To: <20151001055624.GA25101@kroah.com>
Message-ID: <alpine.DEB.2.11.1510011338470.9108@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V>
References: <1443673166-12653-1-git-send-email-shraddha.6596@gmail.com> <20151001055624.GA25101@kroah.com>
User-Agent: Alpine 2.11 (DEB 23 2013-08-11)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150201.560CEABC.002B,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  



On Thu, 1 Oct 2015, Greg KH wrote:

> On Thu, Oct 01, 2015 at 09:49:26AM +0530, Shraddha Barke wrote:
>> These struct are globally defined in source file but they have been
>> defined as static in .h file. Remove definition in header file as
>> it is not needed. Also fix the compiler warning.
>>
>> Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
>> ---
>>  drivers/staging/android/sw_sync.h | 15 ---------------
>>  1 file changed, 15 deletions(-)
>>
>> diff --git a/drivers/staging/android/sw_sync.h b/drivers/staging/android/sw_sync.h
>> index c87ae9e..a671595 100644
>> --- a/drivers/staging/android/sw_sync.h
>> +++ b/drivers/staging/android/sw_sync.h
>> @@ -39,21 +39,6 @@ struct sw_sync_timeline *sw_sync_timeline_create(const char *name);
>>  void sw_sync_timeline_inc(struct sw_sync_timeline *obj, u32 inc);
>>
>>  struct sync_pt *sw_sync_pt_create(struct sw_sync_timeline *obj, u32 value);
>> -#else
>> -static inline struct sw_sync_timeline *sw_sync_timeline_create(const char *name)
>> -{
>> -	return NULL;
>> -}
>> -
>> -static inline void sw_sync_timeline_inc(struct sw_sync_timeline *obj, u32 inc)
>> -{
>> -}
>> -
>> -static inline struct sync_pt *sw_sync_pt_create(struct sw_sync_timeline *obj,
>> -						u32 value)
>> -{
>> -	return NULL;
>> -}
>>  #endif /* IS_ENABLED(CONFIG_SW_SYNC) */
>>
>>  #endif /* _LINUX_SW_SYNC_H */
>
> You just broke the build for systems that don't define CONFIG_SW_SYNC
> yet still call these functions :(
>
> Yes, it's tricky as there are no in-kernel users of these functions,
> that's the joy of the android code, external, out-of-tree code depends
> on the in-kernel code right now due to not everything being merged yet.

I'm sorry. I had build tested it by disabling the CONFIG_SW_SYNC option
before sending but like you said since it's out of kernel code, couldn't
figure out that it's wrong. Is there a way to differentiate such cases?

Thanks,

Shraddha

>
> So, sorry, I can't take this patch.
>
> greg k-h
>

