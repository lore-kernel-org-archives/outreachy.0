X-GM-THRID: 6673915321016909824
X-Received: by 2002:aca:ec46:: with SMTP id k67mr4278734oih.38.1553989866051;
        Sat, 30 Mar 2019 16:51:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6830:1096:: with SMTP id y22ls1611680oto.9.gmail; Sat,
 30 Mar 2019 16:51:05 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxkkZXZHM1VfV10kdHqfmoRimHyzayaUH+ZACTrhzvCsKoAvzSSmLSqX7EQpt//WiWNTeHv
X-Received: by 2002:a9d:7a44:: with SMTP id z4mr3963162otm.41.1553989865274;
        Sat, 30 Mar 2019 16:51:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553989865; cv=none;
        d=google.com; s=arc-20160816;
        b=kmC8NQacdi2r/wluQKGZ+mvqDldBxmMDpJdngIpttfY+FtFfNHwMA2nxVVxSUWhrIy
         IvgmLTFIPXHxw+iGb54WHx0j8osQOsfA0dCv9aFKEWqtNc6SgWrRTSu1Op7Go++oiCgk
         r8LSf/cV2UZ6VLVEuGIkBWyBof3F9RbmrqPUoJ7M5Kwys0YKgOGSdOV4CwReVeo33vSp
         QUS+AxeTlvZprQJHRt1MgGNjw7YyorGcAbb8mp+4wo7Z3wvrQcpGIFtLI5KuBohbVl9D
         pH2KXmvcArM88XsOjDYHIA/Wkdfs01NIoyUyRm1ioQLKUxNa6HhfuhfL3TmI1jOW51g/
         H6yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=1PyQEIyRnxspe3bt+6hIkdoLQISPDVAnQBHYdLuQvG4=;
        b=Gc5/62Al09t66lBDZvXCW51+LMAfYOO/Nh69KrlrMyYfxW62D4QN78H45h6xhQbhBL
         hqqvVf/135YdFaTsaCZ8Q4tt/yZEHoQnfY1cE4z12vWaH6jw0qOu7xWZWmI/m7xjBDsO
         OcNoeNdJStezLdsycyhe3xc/8UnP0MWHRm4P+E8s2Qqi4/76R0MuyKRawU1OtMqDAebO
         bMVnEGMHesuxgQ4eq3Rwhxb9nZpX6jFMjiUcknelAiMpWOFPGp4/1htL6wuYWglI/FQA
         pp1hTj7X1C1KMfUETEgYeZgx++VihSRU135Mdzzuyp7v7ftkh7RrlkrznTovW4AqA6E8
         Uwtg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="UiFvF/3g";
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <briana.oursler@gmail.com>
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id a134si290072oih.4.2019.03.30.16.51.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 16:51:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="UiFvF/3g";
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x541.google.com with SMTP id q1so2908852pgv.13
        for <outreachy-kernel@googlegroups.com>; Sat, 30 Mar 2019 16:51:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=1PyQEIyRnxspe3bt+6hIkdoLQISPDVAnQBHYdLuQvG4=;
        b=UiFvF/3g2bcEiWQRx3jzEhGFVNZa5Q3tSK5L6TuyyXli9gT38BY0sp7tQG3X/uRnTL
         zO51IhZ1L9DvQDXEIwsAUaJ+cNKdwklvAcoTwFP9TUoRQu0iIl85azVj5nW0l7GNgnpW
         /SQWGURaqVrGKlM3jZ/sIcaqxgYJ9oMHbkZzI7aqTtH1jAOBiwTJDpOYGC4k0RrtJSMp
         2MN930pkvG/ZqiWL1TgAjZ3DgFZLiim84aYrz2kvhUM2M2BRkSO9sH2UOyHopRtyrj1U
         6KyP5GxmvD7ag75/pUaBo0UwQF3Yf3arbOj8rli/4fCu6tSWPQyz/eOL1NI3lQW9zHe3
         LCzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=1PyQEIyRnxspe3bt+6hIkdoLQISPDVAnQBHYdLuQvG4=;
        b=rcmmyn2MBiPxjdttTxriPtMwB+nzmhhTT0xKBnnsDp7z2hxbtNH1lAl75/TIHaNkWo
         /JFru/bJYlkHQ0HyfiTHg8JwwrcaMzMMsork3FclKKspgY+4NbS4XaulgPny1DMRGJ3h
         O8l4ukLibhsZDGsTe6oC+qmzaZQlJUPOlJOMIafX5MXEf1uQ1KARa/fxj4ondA+C3hUF
         RtSBuy3V1PTgMMt9zNUcVoLQveTziMlrBQTRyqnJb2D607dQ3YnRFOkH8qWNyHd/ojg6
         ZmBTNGW+/mPm7NYWtxkLD3q60/1+iGxcAfwebXquizDkoFViMqNMqkQLaTL9TV8Ci5/C
         LWTQ==
X-Gm-Message-State: APjAAAXPrhPDM3Okq035Di3HfM8vzaS4HuuDKWod4tzBk/G2SYQ/t4gG
	Ke6P+3lObQur6ER8QSr8eEE=
X-Received: by 2002:a63:3d4c:: with SMTP id k73mr36893129pga.154.1553989864564;
        Sat, 30 Mar 2019 16:51:04 -0700 (PDT)
Return-Path: <briana.oursler@gmail.com>
Received: from blackhole (184-98-140-144.phnx.qwest.net. [184.98.140.144])
        by smtp.gmail.com with ESMTPSA id m69sm8568784pfi.151.2019.03.30.16.51.03
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 30 Mar 2019 16:51:03 -0700 (PDT)
Message-ID: <7469db74548ca8a071091f8966466fc528d2ffbd.camel@gmail.com>
Subject: Re: [Outreachy kernel] Subject: [PATCH] staging: greybus: line over
 80 characters
From: Briana Oursler <briana.oursler@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com, elder@kernel.org, johan@kernel.org, 
	hvaibhav.linux@gmail.com
Date: Sat, 30 Mar 2019 16:51:50 -0700
In-Reply-To: <20190330082701.GB24272@kroah.com>
References: <1b8f45c76effdf0b4483c71afd02b2f773812788.camel@gmail.com>
	 <20190330082701.GB24272@kroah.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.32.0 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Sat, 2019-03-30 at 09:27 +0100, Greg KH wrote:
> On Fri, Mar 29, 2019 at 01:39:56PM -0700, Briana Oursler wrote:
> > Replace function call within if-statement with variable to shorten line
> > length. Issue found by checkpatch.
> > 
> > Signed-off-by: Briana Oursler <briana.oursler@gmail.com>
> > ---
> >  drivers/staging/greybus/arche-platform.c | 4 +++-
> >  1 file changed, 3 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/staging/greybus/arche-platform.c b/drivers/staging/greybus/arche-platform.c
> > index 6eb842040c22..b839a9eecc55 100644
> > --- a/drivers/staging/greybus/arche-platform.c
> > +++ b/drivers/staging/greybus/arche-platform.c
> > @@ -155,7 +155,9 @@ static irqreturn_t arche_platform_wd_irq(int irq, void *devid)
> >  {
> >  	struct arche_platform_drvdata *arche_pdata = devid;
> >  	unsigned long flags;
> > +	unsigned long cold_jiffies;
> >  
> > +	cold_jiffies = msecs_to_jiffies(WD_COLDBOOT_PULSE_WIDTH_MS);
> >  	spin_lock_irqsave(&arche_pdata->wake_lock, flags);
> >  
> >  	if (gpiod_get_value(arche_pdata->wake_detect)) {
> > @@ -169,7 +171,7 @@ static irqreturn_t arche_platform_wd_irq(int irq, void *devid)
> >  		if (arche_pdata->wake_detect_state == WD_STATE_BOOT_INIT) {
> >  			if (time_before(jiffies,
> >  					arche_pdata->wake_detect_start +
> > -					msecs_to_jiffies(WD_COLDBOOT_PULSE_WIDTH_MS))) {
> > +					cold_jiffies)) {
> 
> In looking at this again, the original code is fine, no need for this
> change at all.
> 
> thanks,
> 
> greg k-h

Hi Greg, 

Thank you for reviewing my submission so quickly. I will fix the strange email formatting in future. I see what you mean about the fix, I'll be more aware of style and context. 

Thanks,

Briana


