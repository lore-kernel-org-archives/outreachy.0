X-GM-THRID: 6476866726968426496
X-Received: by 10.80.204.74 with SMTP id n10mr2187362edi.2.1508597544453;
        Sat, 21 Oct 2017 07:52:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.80.170.121 with SMTP id p54ls5047859edc.7.gmail; Sat, 21 Oct
 2017 07:52:23 -0700 (PDT)
X-Google-Smtp-Source: ABhQp+SDKm2Wi8nT1EctVEu1CRTwZZts1CclzJ869WlpMxJRajd4v+kJcjWPd6tNXEyigleYPE22
X-Received: by 10.80.167.162 with SMTP id i31mr2181811edc.9.1508597543585;
        Sat, 21 Oct 2017 07:52:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508597543; cv=none;
        d=google.com; s=arc-20160816;
        b=e7gAhkgueoRArfW25KMIPHaYmv2rRZy30J7BQh/fOv/eJGlZDBrb3XAjBuc88blJFg
         IbWOLlBjv2M+CFUsb7nEzquazq+1vOh8jnEtueydclZ+mjsNmP8Gb9Li1Fv+3HriH4Y6
         hddp5IsTOleA79MaGWU9nMf5yrz8Akk1gdHs0IWEb+liXClVKRP6TkMP9q/UZ3fBa4OH
         gb0IdhhQoZi2FvL2Kax/pvA6geeFE18plcBjmP9RMFOHi1Bogds8h8WtUzMkjY/tsXNN
         5ejNyWslOSveCfKQqIb6mAJcJKoL/11rRkoi0dxdSAfqGm8vbinvTzF97zXFjPeTLFe/
         K1Bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:arc-authentication-results;
        bh=5hWl/KoApsPqp9+29k1mt7PqyPbtmtpuDseSxqv7ku8=;
        b=BzgI9nt8OtknB+7MFz23ZWtSm6BtIqRbr6YvdcYM2GgTfNqraCEKKgfz5Lw08cn3Uy
         Jwu2frMX1S1QWpBimEW4ndHO5fmjzVlvUQY8c+eB+WFgQG0d+NEPSPU11fdM1zcoeW6t
         Co9zh6bIzCY7QYlBww+d+hg6MPF6lyfPHBzAcsHjZYDm4NSBiOT+8ZKs3lDG67YHqmbM
         m0mRyva14o0IKwPwHLF1XI7C/ohzwkmgyYyEbnmd0+RO5YGqtoFHslwshtXTfgy+34D4
         FNnm+3m354wgtYHJI4yVsCtzd2cpLDjJDvOBEBcSH9J4bmXIcA7kxLlvR/MhJZBX+8bD
         hrvA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) smtp.mailfrom=noralf@tronnes.org
Return-Path: <noralf@tronnes.org>
Received: from smtp.domeneshop.no (smtp.domeneshop.no. [2a01:5b40:0:3005::1])
        by gmr-mx.google.com with ESMTPS id h23si202416ede.4.2017.10.21.07.52.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Oct 2017 07:52:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) client-ip=2a01:5b40:0:3005::1;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of noralf@tronnes.org designates 2a01:5b40:0:3005::1 as permitted sender) smtp.mailfrom=noralf@tronnes.org
Received: from 211.81-166-168.customer.lyse.net ([81.166.168.211]:59712 helo=[192.168.10.157])
	by smtp.domeneshop.no with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.84_2)
	(envelope-from <noralf@tronnes.org>)
	id 1e5v8Q-0004DJ-8X; Sat, 21 Oct 2017 16:52:22 +0200
Subject: Re: [Outreachy kernel] [PATCH] drm/tinydrm: Replace list_for_each
 with list_for_each_entry
To: Sean Paul <seanpaul@chromium.org>,
 Harsha Sharma <harshasharmaiitr@gmail.com>
Cc: daniel.vetter@ffwll.ch, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, outreachy-kernel@googlegroups.com,
 treding@nvidia.com
References: <20171014202823.29230-1-harshasharmaiitr@gmail.com>
 <20171016191914.zumhme7hl2iwin7p@art_vandelay>
From: =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>
Message-ID: <5acfd14a-c707-089a-d9fe-3cf024b87a69@tronnes.org>
Date: Sat, 21 Oct 2017 16:52:18 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <20171016191914.zumhme7hl2iwin7p@art_vandelay>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit


Den 16.10.2017 21.19, skrev Sean Paul:
> On Sun, Oct 15, 2017 at 01:58:23AM +0530, Harsha Sharma wrote:
>> Replace use of list_for_each with list_for_each_entry to simplify the
>> code and remove variables that are used only in list_for_each.
>> Done with following coccinelle patch:
>>
>> @r@
>> identifier fn,i,f,p;
>> expression e;
>> iterator name list_for_each, list_for_each_entry;
>> type T;
>> @@
>>
>> fn(...) {
>> ++ T *i;
>>    <+...
>> - list_for_each(p,e)
>> + list_for_each_entry(i,e,f)
>>    {
>>                ...
>> -   T *i = list_entry(p,T,f);
>>                    ...
>>     }
>>     ...+>
>> }
>>
>> @@
>> identifier r.fn,r.p;
>> @@
>>
>> fn(...) {
>>    ...
>> - struct list_head *p;
>>    ... when != p
>> }
>>
>> @@
>> identifier r.fn,r.i,r.f;
>> expression r.e;
>> statement S;
>> @@
>>
>> fn(...) {
>>    <...
>>    list_for_each_entry(i,e,f)
>> - {
>>    S
>> - }
>>    ...>
>> }
>>
>> @s@
>> identifier i,f,p;
>> expression e;
>> type T;
>> @@
>>
>> - list_for_each(p,e)
>> + list_for_each_entry(i,e,f)
>>    {
>>      ... when != T *i;
>> -   i = list_entry(p,T,f);
>>      ...
>>    }
>>
>> @@
>> identifier s.p;
>> @@
>>
>> - struct list_head *p;
>>    ... when != p
>>
>> @@
>> identifier s.i,s.f;
>> expression s.e;
>> statement S;
>> @@
>>
>>    list_for_each_entry(i,e,f)
>> - {
>>    S
>> - }
>>
>> Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
> Reviewed-by: Sean Paul <seanpaul@chromium.org>

Thanks, applied to drm-misc.

Noralf.

>> ---
>>   drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c | 4 +---
>>   1 file changed, 1 insertion(+), 3 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c b/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
>> index bd6cce093a85..bf96072d1b97 100644
>> --- a/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
>> +++ b/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
>> @@ -414,11 +414,9 @@ tinydrm_dbg_spi_print(struct spi_device *spi, struct spi_transfer *tr,
>>   void _tinydrm_dbg_spi_message(struct spi_device *spi, struct spi_message *m)
>>   {
>>   	struct spi_transfer *tmp;
>> -	struct list_head *pos;
>>   	int i = 0;
>>   
>> -	list_for_each(pos, &m->transfers) {
>> -		tmp = list_entry(pos, struct spi_transfer, transfer_list);
>> +	list_for_each_entry(tmp, &m->transfers, transfer_list) {
>>   
>>   		if (tmp->tx_buf)
>>   			tinydrm_dbg_spi_print(spi, tmp, tmp->tx_buf, i, true);
>> -- 
>> 2.11.0
>>
>> -- 
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20171014202823.29230-1-harshasharmaiitr%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.


