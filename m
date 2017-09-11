X-GM-THRID: 6464551056446586880
X-Received: by 10.36.200.196 with SMTP id w187mr6886254itf.16.1505146268061;
        Mon, 11 Sep 2017 09:11:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.200.85 with SMTP id w82ls5613135itf.22.gmail; Mon, 11 Sep
 2017 09:11:03 -0700 (PDT)
X-Received: by 10.176.81.139 with SMTP id g11mr8048302uaa.55.1505146263245;
        Mon, 11 Sep 2017 09:11:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505146263; cv=none;
        d=google.com; s=arc-20160816;
        b=VayAZMTxsHQeV4zWB+AhHfvXjT9+yy9TgVePhBjNLQs2K5/N5CkC+6DhUoB1cjhNK/
         aAdoQxryyWBANSHMXWBkV5AnDspdX/ojsBJOo/oLQhLxTZHjTpkvtMsUwJUVMWohbI6O
         mv7He+bffk86onM8adcq+sbhC3CtMmc/nzXv7MtdRdzHozq1pY7Gs61UgBvxe2q/uKKb
         rrBl4CcmXhzqRbCpQW3ud3gSOa42xPgWhREpFN/OeF8DxVAQKTvOQ3N69+9NZzeEoTAW
         D/DNcaX1znkUqPgzZ0+LSBz5dcz5qnNGkEu0XnyXTRPv1IGRxUPYzxX9wE0OGPepToBp
         gnlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=q7JRN4she2cuZQmmgRbxzEEGxfliyT5R0PjW57RdkRY=;
        b=mkchAHsFaW5LuevAt3mDNEjTOFRu4iNfkHer1vcJUFwzGaNPMMQ6OxadmdokOXbQdX
         CEMc7r6PzDhD9hO6kDu99ASzBO+pyerxEj/tOkKOWYPyiJ123FsKug2gtmRgRLto4rPV
         1AlZ8wy8rHdYOAmNv5TWCC+pmlJe7bd0FmHAszVRLJ1kJhMnhH6RQcDUeZKSQeSk6IDE
         LyXqtyT4uwheBpI+i116iQb9mlyl3nCO/lnppnkeoma9InvYB1Wkui2FBvgSCm5HrgDr
         YP/5IGMk8q6S0IoSC82coGXG6RjoNyZ3IPMKVafyRib7QLV8O+COIAjzAPYtkq2vUyXS
         F73A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=NohZ63Ts;
       spf=pass (google.com: domain of seanpaul@chromium.org designates 2607:f8b0:4002:c05::229 as permitted sender) smtp.mailfrom=seanpaul@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Return-Path: <seanpaul@chromium.org>
Received: from mail-yw0-x229.google.com (mail-yw0-x229.google.com. [2607:f8b0:4002:c05::229])
        by gmr-mx.google.com with ESMTPS id d196si646673ywe.7.2017.09.11.09.11.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Sep 2017 09:11:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of seanpaul@chromium.org designates 2607:f8b0:4002:c05::229 as permitted sender) client-ip=2607:f8b0:4002:c05::229;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=NohZ63Ts;
       spf=pass (google.com: domain of seanpaul@chromium.org designates 2607:f8b0:4002:c05::229 as permitted sender) smtp.mailfrom=seanpaul@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: by mail-yw0-x229.google.com with SMTP id s62so22590665ywg.0
        for <outreachy-kernel@googlegroups.com>; Mon, 11 Sep 2017 09:11:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=q7JRN4she2cuZQmmgRbxzEEGxfliyT5R0PjW57RdkRY=;
        b=NohZ63TsjZFjaBN12B+7lJrpaWbolkvd2dLle1Q0MiWtLPn2JGpum35im24fmog1LZ
         7CmyK28ttoYlLDhyYNPssTJYTxy16U8PX+YBnDN1PDI9/JqjvFW4nKpO7tKpuJHhtFf/
         tP8ixpMMD2fFCft/KC/q5wahr1j5bsGa04Wd8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=q7JRN4she2cuZQmmgRbxzEEGxfliyT5R0PjW57RdkRY=;
        b=PyMNQNHnereHtu/aLo5qDOa3UaPYVQeX+beyHX4WcbIElTFf6hYQRwDQpU/F6T43OV
         XSjGXo3/+DRG/2Mu4nDicSeQz9zrvPPBbDOj2/2A4s6guW/k4yP09EWrfy3KHsyLZPV/
         wFx4Lyz70xApi8PbQI1bnMHJIz9gI2Fv/X2XksVomwV0TFJXbTI9IydcjnqE2famtj9J
         xffzPkVant9XobVYs+XafTHbnSwWwrd5YfCkEhkgFcUS39nmygFYmahzScuPhPOKz25P
         Yw33xO4U0KZiMxQRu5kKS1Fm42sobOQD4HuhXN6Dx101AHzxZ7TsUmKxVC3Ejf/Zf/9W
         QZog==
X-Gm-Message-State: AHPjjUheL1ItpbMCX1gWfpcZ+T/jh8U13dC+srNjMHPDeccAd2O6oI0L
	AlPOx+IZG6+AtTVVdARBGg==
X-Received: by 10.37.119.67 with SMTP id s64mr10199978ybc.270.1505146262827;
        Mon, 11 Sep 2017 09:11:02 -0700 (PDT)
Return-Path: <seanpaul@chromium.org>
Received: from mail-it0-f46.google.com (mail-it0-f46.google.com. [209.85.214.46])
        by smtp.gmail.com with ESMTPSA id o64sm3149764ywe.15.2017.09.11.09.11.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Sep 2017 09:11:02 -0700 (PDT)
Received: by mail-it0-f46.google.com with SMTP id g142so12355388ita.0
        for <outreachy-kernel@googlegroups.com>; Mon, 11 Sep 2017 09:11:01 -0700 (PDT)
X-Google-Smtp-Source: ADKCNb5Pp6ReiXvHGQ+nDyf2Psn6PS3c8kaQ/lItYxSb45FpAJgfcpkJ8ds9fnsNZWqqjaROOrHH9eyLlp+kQgeEZc0=
X-Received: by 10.36.93.82 with SMTP id w79mr13439755ita.119.1505146261289;
 Mon, 11 Sep 2017 09:11:01 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.156.195 with HTTP; Mon, 11 Sep 2017 09:10:40 -0700 (PDT)
In-Reply-To: <CAB3L5oxcyhgyy8EuGuPo9QtJQd-W7JTgQQE1PfopZFmSx58P9g@mail.gmail.com>
References: <1505145571-11248-1-git-send-email-srishtishar@gmail.com>
 <20170911160449.GA11886@kroah.com> <CAB3L5oxcyhgyy8EuGuPo9QtJQd-W7JTgQQE1PfopZFmSx58P9g@mail.gmail.com>
From: Sean Paul <seanpaul@chromium.org>
Date: Mon, 11 Sep 2017 12:10:40 -0400
X-Gmail-Original-Message-ID: <CAOw6vbL=fn_wh8hrEVH-01BFkm3mAW=aDHvH_B-t+UgjtnyHjg@mail.gmail.com>
Message-ID: <CAOw6vbL=fn_wh8hrEVH-01BFkm3mAW=aDHvH_B-t+UgjtnyHjg@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: [PATCH] Staging: ccree: Don't use volatile
 for monitor_lock
To: Srishti Sharma <srishtishar@gmail.com>
Cc: Greg KH <gregkh@linuxfoundation.org>, Gilad Ben-Yossef <gilad@benyossef.com>, 
	Linux Crypto Mailing List <linux-crypto@vger.kernel.org>, driverdev-devel@linuxdriverproject.org, 
	devel@driverdev.osuosl.org, 
	Linux kernel mailing list <linux-kernel@vger.kernel.org>, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="UTF-8"

On Mon, Sep 11, 2017 at 12:08 PM, Srishti Sharma <srishtishar@gmail.com> wrote:
> On Mon, Sep 11, 2017 at 9:34 PM, Greg KH <gregkh@linuxfoundation.org> wrote:
>> On Mon, Sep 11, 2017 at 09:29:31PM +0530, Srishti Sharma wrote:
>>> The use of volatile for the variable monitor_lock is unnecessary.
>>>
>>> Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
>>> ---
>>>  drivers/staging/ccree/ssi_request_mgr.c | 2 +-
>>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/staging/ccree/ssi_request_mgr.c b/drivers/staging/ccree/ssi_request_mgr.c
>>> index e5c2f92..7d77941 100644
>>> --- a/drivers/staging/ccree/ssi_request_mgr.c
>>> +++ b/drivers/staging/ccree/ssi_request_mgr.c
>>> @@ -49,7 +49,7 @@ struct ssi_request_mgr_handle {
>>>       dma_addr_t dummy_comp_buff_dma;
>>>       struct cc_hw_desc monitor_desc;
>>>
>>> -     volatile unsigned long monitor_lock;
>>> +     unsigned long monitor_lock;
>>
>> While volatile is not right, odds are, this is still totally wrong as
>> well.  How about using a "real" lock instead?
>
> I tried to find where is this variable being used in the code, but I
> didn't find any usage of it . It might be an important attribute of
> this structure definition but, I don't see it's value being set to
> anything or being used somewhere .
>

AFAICT, it's not used. Your patch should just remove it instead :)

Sean

> Regards,
> Srishti
>>
>> thanks,
>>
>> greg k-h
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAB3L5oxcyhgyy8EuGuPo9QtJQd-W7JTgQQE1PfopZFmSx58P9g%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.

