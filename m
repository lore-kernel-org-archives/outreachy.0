X-GM-THRID: 6155043602432
X-Received: by 10.112.162.135 with SMTP id ya7mr4546942lbb.14.1425389036986;
        Tue, 03 Mar 2015 05:23:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.115.207 with SMTP id jq15ls35551lab.107.gmail; Tue, 03 Mar
 2015 05:23:56 -0800 (PST)
X-Received: by 10.112.222.131 with SMTP id qm3mr4490148lbc.1.1425389036566;
        Tue, 03 Mar 2015 05:23:56 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-we0-x230.google.com (mail-we0-x230.google.com. [2a00:1450:400c:c03::230])
        by gmr-mx.google.com with ESMTPS id v5si395549wif.3.2015.03.03.05.23.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Mar 2015 05:23:56 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c03::230 as permitted sender) client-ip=2a00:1450:400c:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c03::230 as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wevl61 with SMTP id l61so39845470wev.2
        for <outreachy-kernel@googlegroups.com>; Tue, 03 Mar 2015 05:23:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=+d6hxz8OHXP1cRehw90i42LoVNKgWg79a7/propEMtE=;
        b=TduUQNOG2ZRqJiswVBZyX0WByZqlNS6aHQhbR8aB9Bt3zuvxHW/Ux2Y3Rz5q6gipfF
         87mc8HArnJdatdpSJPuZcnH1lyDMF/K8AA5v+Vnf+9QYnvK0CBkz1+y1VFbsIUj0OeYq
         yqCZyfSG0/szNz+5q9yqBm91OM5c2Gsuyjc1i+wl8L7yQeqMoYGJ4VNAeWcls1TbFJMJ
         irMVCzGZLgQbR7v1U3Ac5TfRIztOF/T+T0ZpMNkGp3GH4OOw8xpeLuEWvIVpywXzdxBE
         5mnBvUFCT6G5yGQem6SwotZQ5vB3zmKd4H/RoW7FBzJgv/bWPXUBpLBS4zDqNdg/ByHT
         UG+Q==
MIME-Version: 1.0
X-Received: by 10.180.92.71 with SMTP id ck7mr2834603wib.48.1425389036377;
 Tue, 03 Mar 2015 05:23:56 -0800 (PST)
Received: by 10.194.13.168 with HTTP; Tue, 3 Mar 2015 05:23:56 -0800 (PST)
In-Reply-To: <alpine.DEB.2.10.1503030722380.2723@hadrien>
References: <cover.1425367678.git.vthakkar1994@gmail.com>
	<1bdb9ff234b262793c0537cc9e11cf087202e61a.1425367678.git.vthakkar1994@gmail.com>
	<alpine.DEB.2.10.1503030722380.2723@hadrien>
Date: Tue, 3 Mar 2015 18:53:56 +0530
Message-ID: <CAK-LDbKcVLuoedmX-HJxaeR9ZkY9ZNXdx+j7xzu1kx3+pmuyXA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: Fix duplicate
 conditional branch
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Tue, Mar 3, 2015 at 5:52 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> On Tue, 3 Mar 2015, Vaishali Thakkar wrote:
>
>> Replace duplicate branch with correct value. This branch
>> is supposed to work for low thresh value.
>
> How did you find the problem?

From git log. I was looking for git log of driver rtl8192e for that setup_timer
problem and saw that someone sent a patch for this. And as rtl8192u and
rtl8192e follows the same structure, I just looked at file of this driver. And
this problem for rtl8192u was still there. So, I just sent a patch.

Also, while changing this code I found that rtl8192u is not using any macro and
rtl8192e was using one useless macro. So, I sent a patch for it also.

> julia
>
>> Signed-off-by: Vaishali Thakkar <vthakkar1994@gmail.com>
>> ---
>>  drivers/staging/rtl8192u/r8192U_dm.c | 4 ++--
>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/staging/rtl8192u/r8192U_dm.c b/drivers/staging/rtl8192u/r8192U_dm.c
>> index 7199616..5a01b7d 100644
>> --- a/drivers/staging/rtl8192u/r8192U_dm.c
>> +++ b/drivers/staging/rtl8192u/r8192U_dm.c
>> @@ -1628,8 +1628,8 @@ void dm_change_dynamic_initgain_thresh(struct net_device *dev, u32 dm_type,
>>               dm_digtable.rssi_low_thresh = dm_value;
>>       } else if (dm_type == DIG_TYPE_THRESH_HIGHPWR_HIGH) {
>>               dm_digtable.rssi_high_power_highthresh = dm_value;
>> -     } else if (dm_type == DIG_TYPE_THRESH_HIGHPWR_HIGH) {
>> -             dm_digtable.rssi_high_power_highthresh = dm_value;
>> +     } else if (dm_type == DIG_TYPE_THRESH_HIGHPWR_LOW) {
>> +             dm_digtable.rssi_high_power_lowthresh = dm_value;
>>       } else if (dm_type == DIG_TYPE_ENABLE) {
>>               dm_digtable.dig_state           = DM_STA_DIG_MAX;
>>               dm_digtable.dig_enable_flag     = true;
>> --
>> 1.9.1
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1bdb9ff234b262793c0537cc9e11cf087202e61a.1425367678.git.vthakkar1994%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>



-- 
Vaishali

