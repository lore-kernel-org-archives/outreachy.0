X-GM-THRID: 6391852583766458368
X-Received: by 10.46.69.7 with SMTP id s7mr500376lja.18.1488308728763;
        Tue, 28 Feb 2017 11:05:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.77.141 with SMTP id a135ls42215lfb.3.gmail; Tue, 28 Feb
 2017 11:05:27 -0800 (PST)
X-Received: by 10.25.0.141 with SMTP id 135mr448991lfa.5.1488308727751;
        Tue, 28 Feb 2017 11:05:27 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-lf0-x241.google.com (mail-lf0-x241.google.com. [2a00:1450:4010:c07::241])
        by gmr-mx.google.com with ESMTPS id h198si279497wmg.1.2017.02.28.11.05.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Feb 2017 11:05:27 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2a00:1450:4010:c07::241 as permitted sender) client-ip=2a00:1450:4010:c07::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2a00:1450:4010:c07::241 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x241.google.com with SMTP id r36so1683243lfi.0
        for <outreachy-kernel@googlegroups.com>; Tue, 28 Feb 2017 11:05:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=q6iqicBADL8zfv2vVAR+1D5bBzLagVmyefOa813CA7s=;
        b=pR635WuXH/QvsDomT8i/ocOYgx+hazqWh2nJQUDwYeFmbuEezP/88mqwNWTrVzzUvR
         tij6j77kD+/y/aHMXWbF4mX/oUzO9PDXJ7FMufOrrN972ajqwDcX5BX94nOmVq/d7w42
         T7brlZb2d8iWz8QxLFDQ1exfQ13gwpf0sHctn6HFqWAH7clNXGfCmKnb5RubqYXdU1wI
         y4Tu2iJp5LEAUTqvVnoMdTGLHezaC+xUW8ulgFgdw3MoHJ0U5HZrM9RMUDysj6cHY2TA
         8HVKb9OWfVRYwIF486luhiGJkOSSx9YuuKhgEtrZWVztaQKK8oI5FA0D5fCqmGIjL900
         iMLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=q6iqicBADL8zfv2vVAR+1D5bBzLagVmyefOa813CA7s=;
        b=Mw9zzPyxKOYziHrK6StDbd3p0fO4MVvCoSMmdR1LP3BmhnJvn5vN5lrSJ1aZNyyjUN
         YouxRrcgUEiGUuHFWZz7mY9H+5VLPosQvrXvdBmzOFWpnLij5KHjhJJRlRo697/nyUWG
         GzhAdXiN1w7Lh/OUB1+nkli6o6YXxNoqQuYzv44uWHLDiPQkLbjUL1jFByq5EVqnz5sw
         dOC7BV/tkhhda/4uxV7r52IPrtvjfrvTcI45Q3GxYvRLl3CeS5MXXhU8b+oY73wQ4Gq7
         LRRKcPucXyKbrr2cf6XWJiRds23jgEuHVL5HcGrR25zkCzblcc57rvXqmwdFvvYM93r5
         l52g==
X-Gm-Message-State: AMke39kH/hI3UyO4x9tEHED6gnfnm+avP1mhqStUMUNoEPU0VxADQr4CEDSNgYOF/9mj/gUZa49fOCFIHV5WIQ==
X-Received: by 10.46.33.75 with SMTP id h72mr1345605ljh.37.1488308727200; Tue,
 28 Feb 2017 11:05:27 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.15.39 with HTTP; Tue, 28 Feb 2017 11:05:26 -0800 (PST)
In-Reply-To: <alpine.DEB.2.20.1702281959390.2171@hadrien>
References: <1488219268-3006-1-git-send-email-singhalsimran0@gmail.com>
 <1488219268-3006-4-git-send-email-singhalsimran0@gmail.com>
 <alpine.DEB.2.20.1702272214410.2127@hadrien> <CALrZqyNXbn1SZ8Daws7yKkYm-C-U9FHyJ_eRxvuem1Fk+Mqs=g@mail.gmail.com>
 <alpine.DEB.2.20.1702281959390.2171@hadrien>
From: SIMRAN SINGHAL <singhalsimran0@gmail.com>
Date: Wed, 1 Mar 2017 00:35:26 +0530
Message-ID: <CALrZqyPpO1=yAM5GrM1EJGG5HphwGdNugg8CzBOVJrUf1_ieSw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 4/5] staging: sm750fb: Remove
 unnecessary else after return
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Greg KH <gregkh@linuxfoundation.org>, lustre-devel@lists.lustre.org, 
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
	linux-fbdev@vger.kernel.org, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Wed, Mar 1, 2017 at 12:30 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Wed, 1 Mar 2017, SIMRAN SINGHAL wrote:
>
>> On Tue, Feb 28, 2017 at 2:45 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>> >
>> >
>> > On Mon, 27 Feb 2017, simran singhal wrote:
>> >
>> >> This patch fixes the checkpatch warning that else is not generally
>> >> useful after a break or return.
>> >>
>> >> This was done using Coccinelle:
>> >> @@
>> >> expression e2;
>> >> statement s1;
>> >> @@
>> >> if(e2) { ... return ...; }
>> >> -else
>> >>          s1
>> >>
>> >> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
>> >> ---
>> >>  drivers/staging/sm750fb/ddk750_sii164.c | 6 ++----
>> >>  drivers/staging/sm750fb/ddk750_swi2c.c  | 6 ++----
>> >>  2 files changed, 4 insertions(+), 8 deletions(-)
>> >>
>> >> diff --git a/drivers/staging/sm750fb/ddk750_sii164.c b/drivers/staging/sm750fb/ddk750_sii164.c
>> >> index 259006a..6906598 100644
>> >> --- a/drivers/staging/sm750fb/ddk750_sii164.c
>> >> +++ b/drivers/staging/sm750fb/ddk750_sii164.c
>> >> @@ -368,8 +368,7 @@ unsigned char sii164IsConnected(void)
>> >>       hotPlugValue = i2cReadReg(SII164_I2C_ADDRESS, SII164_DETECT) & SII164_DETECT_HOT_PLUG_STATUS_MASK;
>> >>       if (hotPlugValue == SII164_DETECT_HOT_PLUG_STATUS_ON)
>> >>               return 1;
>> >> -     else
>> >> -             return 0;
>> >> +     return 0;
>> >
>> >
>> > Totally unrelated to what you are doing, but I wonder if these return
>> > values should be true and false?  Perhaps it would help to see how the
>> > return values are used at the calling context.
>> >
>> you want me to go ahead with what Joe mentioned and also do the same
>> changes here also.
>
> I think that it would be best to complete what you have underway already.
> When those patches are picked up by Greg, you can look into the
> possibility of using true and false.
>
Thanks, so for now I can ignore this.
> julia
>
>> > julia
>> >
>> >>  }
>> >>
>> >>  /*
>> >> @@ -387,8 +386,7 @@ unsigned char sii164CheckInterrupt(void)
>> >>       detectReg = i2cReadReg(SII164_I2C_ADDRESS, SII164_DETECT) & SII164_DETECT_MONITOR_STATE_MASK;
>> >>       if (detectReg == SII164_DETECT_MONITOR_STATE_CHANGE)
>> >>               return 1;
>> >> -     else
>> >> -             return 0;
>> >> +     return 0;
>> >>  }
>> >>
>> >>  /*
>> >> diff --git a/drivers/staging/sm750fb/ddk750_swi2c.c b/drivers/staging/sm750fb/ddk750_swi2c.c
>> >> index a4ac07c..5997349 100644
>> >> --- a/drivers/staging/sm750fb/ddk750_swi2c.c
>> >> +++ b/drivers/staging/sm750fb/ddk750_swi2c.c
>> >> @@ -199,8 +199,7 @@ static unsigned char sw_i2c_read_sda(void)
>> >>       gpio_data = peek32(sw_i2c_data_gpio_data_reg);
>> >>       if (gpio_data & (1 << sw_i2c_data_gpio))
>> >>               return 1;
>> >> -     else
>> >> -             return 0;
>> >> +     return 0;
>> >>  }
>> >>
>> >>  /*
>> >> @@ -295,8 +294,7 @@ static long sw_i2c_write_byte(unsigned char data)
>> >>
>> >>       if (i < 0xff)
>> >>               return 0;
>> >> -     else
>> >> -             return -1;
>> >> +     return -1;
>> >>  }
>> >>
>> >>  /*
>> >> --
>> >> 2.7.4
>> >>
>> >> --
>> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1488219268-3006-4-git-send-email-singhalsimran0%40gmail.com.
>> >> For more options, visit https://groups.google.com/d/optout.
>> >>
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CALrZqyNXbn1SZ8Daws7yKkYm-C-U9FHyJ_eRxvuem1Fk%2BMqs%3Dg%40mail.gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

