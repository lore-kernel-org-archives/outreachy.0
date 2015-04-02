X-GM-THRID: 10397500309504
X-Received: by 10.236.63.230 with SMTP id a66mr56561829yhd.51.1427956337617;
        Wed, 01 Apr 2015 23:32:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.106.233 with SMTP id gx9ls279435obb.94.gmail; Wed, 01 Apr
 2015 23:32:17 -0700 (PDT)
X-Received: by 10.182.129.166 with SMTP id nx6mr51211678obb.35.1427956337304;
        Wed, 01 Apr 2015 23:32:17 -0700 (PDT)
Return-Path: <1213charlie@gmail.com>
Received: from mail-pa0-x234.google.com (mail-pa0-x234.google.com. [2607:f8b0:400e:c03::234])
        by gmr-mx.google.com with ESMTPS id gu4si496933pac.1.2015.04.01.23.32.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Apr 2015 23:32:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of 1213charlie@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) client-ip=2607:f8b0:400e:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of 1213charlie@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) smtp.mail=1213charlie@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x234.google.com with SMTP id tp5so74963802pac.1
        for <outreachy-kernel@googlegroups.com>; Wed, 01 Apr 2015 23:32:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=message-id:date:from:user-agent:mime-version:to:cc:subject
         :references:in-reply-to:content-type:content-transfer-encoding;
        bh=M0U/VaCDsiIaWgItRWI9YwYr2rHEIM40XdACliZnndw=;
        b=GCGgyQfFiTtxAnIMzRW7Eq7RB3823JS5QsUny0muiTYlqCVD0Iq8k23pdm4hj5Lf/S
         GFC5AYmiqxa0NHtJ+46lLIVjSrzSu+jJ76foPaRJLINrRDbVcRFxepM+0YO+iF8sFsE4
         cjFuxFIFl25Zw2nAMC020aE33lkc6QXFLl04KiH/Ji6nOUrFqfZ3yFxZIOEwG91ynXw1
         BY5Kx+8mje63HE0uJL5wPCspMRtSet1tIO6z/c1cV4vIaErFmW7nz/4vYapvNfYDicev
         XueJ+v23+AKPfidC0YSqWImUWlSvK8UkgJvwwZF5u9UpxwvJzPPp6B/sR+qXYi9me2J6
         h2pw==
X-Received: by 10.70.38.136 with SMTP id g8mr73021866pdk.80.1427956337157;
        Wed, 01 Apr 2015 23:32:17 -0700 (PDT)
Return-Path: <1213charlie@gmail.com>
Received: from ?IPv6:2001:250:4402:228:cd6f:7693:85c:9c8c? ([2001:250:4402:228:cd6f:7693:85c:9c8c])
        by mx.google.com with ESMTPSA id z6sm4047229pdm.78.2015.04.01.23.32.13
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Apr 2015 23:32:16 -0700 (PDT)
Message-ID: <551CE266.7010503@gmail.com>
Date: Thu, 02 Apr 2015 14:32:06 +0800
From: Charlie WONG Super <1213charlie@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: Greg KH <gregkh@linuxfoundation.org>
CC: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATH v3] Staging: comedi: addi_apci_1564:
 Delete whitespace
References: <20150331060813.GA23522@ThinkPad> <20150401153751.GB881@kroah.com>
In-Reply-To: <20150401153751.GB881@kroah.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 2015年04月01日 23:37, Greg KH wrote:
> On Tue, Mar 31, 2015 at 02:08:13PM +0800, Charlie Wong Super wrote:
>> Fix the checkpatch.pl WARNING: line over 80 characters
>>
>> Signed-off-by: Charlie Wong Super <1213charlie@gmail.com>
>> ---
>> Changes in v2:
>> 	edit the commit message, make it clear!
>> Changes in v3:
>> 	about the commit and patch style problem!
>> 	
>>   drivers/staging/comedi/drivers/addi_apci_1564.c | 12 ++++++------
>>   1 file changed, 6 insertions(+), 6 deletions(-)
>>
>> diff --git a/drivers/staging/comedi/drivers/addi_apci_1564.c b/drivers/staging/comedi/drivers/addi_apci_1564.c
>> index c481c48..dd335e8 100644
>> --- a/drivers/staging/comedi/drivers/addi_apci_1564.c
>> +++ b/drivers/staging/comedi/drivers/addi_apci_1564.c
>> @@ -106,12 +106,12 @@
>>   #define APCI1564_COUNTER(x)			((x) * 0x20)
>>   
>>   struct apci1564_private {
>> -	unsigned long eeprom;		/* base address of EEPROM register */
>> -	unsigned long timer;		/* base address of 12-bit timer */
>> -	unsigned long counters;		/* base address of 32-bit counters */
>> -	unsigned int mode1;		/* riding-edge/high level channels */
>> -	unsigned int mode2;		/* falling-edge/low level channels */
>> -	unsigned int ctrl;		/* interrupt mode OR (edge) . AND (level) */
>> +	unsigned long eeprom;		/*base address of EEPROM register*/
>> +	unsigned long timer;		/*base address of 12-bit timer*/
>> +	unsigned long counters;		/*base address of 32-bit counters*/
>> +	unsigned int mode1;		/*riding-edge/high level channels*/
>> +	unsigned int mode2;		/*falling-edge/low level channels*/
>> +	unsigned int ctrl;		/*interrupt mode OR (edge).AND(level)*/
> That makes the code look worse, sorry, we can't take this.  It's correct
> to have ' ' in comments after and before the '*' character.
>
> thanks,
>
> greg k-h
ok, got it, I will do much more work!
Thanks for your review!

