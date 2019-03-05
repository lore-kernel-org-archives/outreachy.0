X-GM-THRID: 6664640601666879488
X-Received: by 2002:a9d:6c02:: with SMTP id f2mr1532833otq.73.1551806909676;
        Tue, 05 Mar 2019 09:28:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:a80d:: with SMTP id r13ls870752oie.0.gmail; Tue, 05 Mar
 2019 09:28:29 -0800 (PST)
X-Google-Smtp-Source: AHgI3IaDY6wmBwNixvWgRvNEtHqc7aLVszNLEouWP0pRrha9CbhUqLbJ00is4xbRlX81F0wXCinG
X-Received: by 2002:aca:b5d6:: with SMTP id e205mr15498646oif.2.1551806909060;
        Tue, 05 Mar 2019 09:28:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551806909; cv=none;
        d=google.com; s=arc-20160816;
        b=DNy+W8cPnyEXbDknVcHdzkFMmdMYVtJqLLxVmFQ02bkOF2T7/h4p0d4V9hWITsH8gy
         f9oxdFXrHMNG05viExfFSQA7lwFGzgoP9xqVK6EiJa+aUScsD14Ruyq3mZu1OUx/b6k+
         NA780uo3D/p46S6mthp7DrTuBhBlZ59UhV7/zjlKaMq7izgnjf3E6p58otnfQr0Jsixx
         Od5yu22+oMGB/9RjRGitNVQavYJl8K9VJ5y1GxmBi26n24kQy+oIHlbcH//Fiq4GGBSw
         TKW7Oo0xGUAHoHhbVt9kHiFAxdbRAAxplRWZMX7bK9u8tL0peZA6sPWatV971rjmALMy
         2Saw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=1ZJ7WzZW8dgEB9cFvwbvs7Awv0uJnuNpyvjXlCCU45o=;
        b=XA1sYmQdSHqw0yqRfWvPJoz0dQ6mXYNdYJpA+cY6TMGQzgeXtuhd1P+djaNin8j/c7
         69ynPCEAm8iSayBMnvrw7zzBGnbhVSqB7SRuSzEDfOM5b8iSFiAeZE5KWaBZge9SY0Dx
         F1r6ZviHKH0W/1ohTUOicc7mO5JZccXcaL+xDWu6/75TVF0NNKd/PCPLs0ryJ5dxcrJR
         jLNAkpC78tzNHFHlXWzO7+SezJxAr68fAwWNz8SWrLspHYtCvHi72inhzsenXHwOCeAW
         2B9ufgr9KqYaDiUPKTmMhaiwHNuzrDL2C+FrJ6MFto9I06rn93hzWk8m4XXOqX7fn+O/
         ps7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=bBv1153Y;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.140 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Return-Path: <nishka.dasgupta@yahoo.com>
Received: from sonic310-20.consmr.mail.sg3.yahoo.com (sonic310-20.consmr.mail.sg3.yahoo.com. [106.10.244.140])
        by gmr-mx.google.com with ESMTPS id l26si562613otf.0.2019.03.05.09.28.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 09:28:29 -0800 (PST)
Received-SPF: pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.140 as permitted sender) client-ip=106.10.244.140;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=bBv1153Y;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.140 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1551806906; bh=1ZJ7WzZW8dgEB9cFvwbvs7Awv0uJnuNpyvjXlCCU45o=; h=Subject:To:Cc:References:From:Date:In-Reply-To:From:Subject; b=bBv1153YnE7S076k20sCSI3ksS0aasTinjjlLmsBJoQrr0W+geBuQrXE4F6Jysj5lbwM7+uDFMU++Uj9t1+c+LXrYz+y6MUenPBYOXyxVIpXRXTZgyjmbBbOH7/3e8tmC5Kj1D1W1Z/YK+2ZWIBVcz3roWHh6PsQ4W5U0yA0+uj3zyXBexsZStnjnQRTzGJQtpgM+ID8Y71PWBM20LuZ1Doc7klW6BzLO1F4dJ0vx02y6sbs/CY4cXyDkPyg6jS0O+fX+xnzUSKJG0MIvJ/iFzGMkTBLcRmEND2pHmd80xQNnfSHHyK0J0A0UepoK6OXoXdtEjhjTQeAIpTc7JRldg==
X-YMail-OSG: goIpXhgVM1npesm351N8UNRfBDPauJcW2d7flPUdUdQ13yWGeuMf96z7FODazGi
 wPSIrqzIWLmEn8uTKO6hvEy3ioIXYlhpWES9.GaavsScOSKzMdk69eBO01XfT0NY2p3DXoIdIhCC
 FFazNv1buVetfgV9wzLUvhn2DyJswJoLDA9CgMsWGDP4QO.Lu2eQtSFMMKtpZRzzcR6GKb6oKtzq
 mPJDDwTlCUfAxGss3EOwVY9J5DuyEwfg1.slBkUSJ6fo2v4Fy38B2CJPNcQ5LkQAMeDn8ABsYGeY
 ThiYRoNjthw3U9ZgR2jEG9ntQPPxQzUv0tnwkDTvKA5psplsHf7Rmo4C6NSndz2cZ_OILe8kOvw4
 Xffxphgu8oTCJbkjaZXJOZwG7X.5pkh2979VP4wTBKYK2GVQutZIdgCB4bWv32fmUubOMC58KzDR
 keoWx4HPjsCRKBZjOQvLBXeBDhWWvVXxRkfuwEqOIzr_UUtCx0zwimAPTMbex24z7Eh6x.F6SkJK
 gh7pGLNu7UeXkncXDlCGOk6PonEEeaHIicNFLrnec2WadYUShcP0e94LBYCw6S_EYVsn26T658nl
 c0DZCbLghfJ8h5LAsMZ78JrAMjLrMJNWXSYcDOWtDMvDMX6mJTYscLib4r_Q_7bcVrq350.ii8rJ
 W0ZJEnq5M1hHm96BjwSj4WLuJ2u8xO6a.iAk8JeJSLioYqOqjYFuhzWZZLV9dFJ0mNFf5rpPo_Jj
 h1dxuV6gA28rvWjQQ9btZsQLRmc_Y57ep_RHUilraEr9g5wtLelhRX3UPvmCqDgwbmFi0GciEPqT
 4OcVMEHYVhKpHFpujnyXxsOZ9DpqZxyyvc3_JF3gfBzcqxoFZ0CsRBrh_TQdCEhl8Vql1Jec2nvs
 itItuBo21cjGLxzSe.eUHEsPQvtU0D1XdwCcBerw8ulfXdYIwaDy2IWf44hZnaekc_ocImU7unuz
 uVeTfQwh9z3L6WwxOM24hE.9onXX.sWaM3GNpRiZv5TI30VXEIT7O3Vh854bUre0rWCE6qfRHa63
 f3XXznxqL5N1pTzvoOiKkNfUuZaLXA9xynrnWpojxhP87M.ptbILt0d0.O_EMzcsaGhAbqHi6
Received: from sonic.gate.mail.ne1.yahoo.com by sonic310.consmr.mail.sg3.yahoo.com with HTTP; Tue, 5 Mar 2019 17:28:26 +0000
Received: from 122.163.79.112 (EHLO [10.0.2.15]) ([122.163.79.112])
          by smtp426.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID fe727710caba278a5180e54b7f66b14b;
          Tue, 05 Mar 2019 17:28:24 +0000 (UTC)
Subject: Re: [PATCH] staging: sm750fb: Avoid multiple assignments
To: Greg KH <gregkh@linuxfoundation.org>
Cc: sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com,
 outreachy-kernel@googlegroups.com
References: <20190304183110.3702-1-nishka.dasgupta@yahoo.com>
 <20190305075115.GC6956@kroah.com>
 <0f0632e9-f9e3-ea09-b866-00a865ad6ab6@yahoo.com>
 <20190305171747.GB6531@kroah.com>
From: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Message-ID: <a48a725d-2210-ff91-50f6-e7ec14e3a228@yahoo.com>
Date: Tue, 5 Mar 2019 22:58:15 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.5.1
MIME-Version: 1.0
In-Reply-To: <20190305171747.GB6531@kroah.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit



On 05/03/19 10:47 PM, Greg KH wrote:
> On Tue, Mar 05, 2019 at 10:42:08PM +0530, Nishka Dasgupta wrote:
>>
>>
>> On 05/03/19 1:21 PM, Greg KH wrote:
>>> On Tue, Mar 05, 2019 at 12:01:10AM +0530, Nishka Dasgupta wrote:
>>>> Avoid multiple assignments in the same line. Issue found with
>>>> Checkpatch.
>>>>
>>>> Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
>>>> ---
>>>>    drivers/staging/sm750fb/sm750.c | 3 ++-
>>>>    1 file changed, 2 insertions(+), 1 deletion(-)
>>>>
>>>> diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
>>>> index e9f10c2669ea..739841c3b5d6 100644
>>>> --- a/drivers/staging/sm750fb/sm750.c
>>>> +++ b/drivers/staging/sm750fb/sm750.c
>>>> @@ -782,7 +782,8 @@ static int lynxfb_set_fbinfo(struct fb_info *info, int index)
>>>>    		0x800f0 + (int)crtc->channel * 0x140;
>>>>    	pr_info("crtc->cursor.mmio = %p\n", crtc->cursor.mmio);
>>>> -	crtc->cursor.maxH = crtc->cursor.maxW = 64;
>>>> +	crtc->cursor.maxW = 64;
>>>> +	crtc->cursor.maxH = crtc->cursor.maxW;
>>>
>>> The original code is fine here.  I would just ignore this checkpatch.pl
>>> message for this line.
>> Okay, will do. What should I do for similar Checkpatch warnings in future?
>> Do I just ignore them?
> 
> It all depends on what they look like.  This one is setting a width and
> height to the exact same value, making it pretty obvious what is going
> on here.  If other code is doing other things (like just zeroing out
> stuff, or using temp variables), maybe it should be fixed up.

> Again, checkpatch is just a hint, you still need to use your brain to
> see if what it says makes sense :)
Yes, of course. I'll take it on a case-by-case basis then, as you've 
suggested. Thank you!
  -Nishka

> thanks,
> 
> greg k-h
> 

