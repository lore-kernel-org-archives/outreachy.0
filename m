X-GM-THRID: 6261339080289681408
X-Received: by 10.31.15.11 with SMTP id 11mr14252370vkp.3.1457871464838;
        Sun, 13 Mar 2016 05:17:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.32.130 with SMTP id g124ls1748943iog.70.gmail; Sun, 13 Mar
 2016 05:17:44 -0700 (PDT)
X-Received: by 10.50.43.170 with SMTP id x10mr3930623igl.8.1457871464243;
        Sun, 13 Mar 2016 05:17:44 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-qk0-x22a.google.com (mail-qk0-x22a.google.com. [2607:f8b0:400d:c09::22a])
        by gmr-mx.google.com with ESMTPS id y131si1100054ywc.0.2016.03.13.05.17.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 13 Mar 2016 05:17:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c09::22a as permitted sender) client-ip=2607:f8b0:400d:c09::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c09::22a as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x22a.google.com with SMTP id o6so65324064qkc.2
        for <outreachy-kernel@googlegroups.com>; Sun, 13 Mar 2016 05:17:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=tS80yOvr5ag0Q11jsWkuAp+ENv2HhbcCrBVSAyv5Iig=;
        b=mJF5g8OPZrdVqJILre8YaqiY2WueMFKkgcidYmehU4qVwbHq34R+0vy8SR8v2J8khn
         FlkAW4Ziizkzq5kNpkcwDW9n+L/tcr3oqoJ43pN7lAN5ivh0jMUG3jQ5N3FNMgfVBtFi
         oU9OH/jkUMpawH7cbQEo7r1y9ADGv+VtviRsyqGGUQ2oyMOyGzlJK32Sc0rak8sByJGY
         KWUhCcUnDAUF5GURC/uB6SqpMcA6EogHEoZZyErMva/KAT2tz/l2p52bnR0UO2vWtv6X
         3pQaZ2jo+K8uhhcSz6BB6c8oAdWP6X95mVJWvgAGHX6xgucddinpeWS4bBLEMEwu0J+N
         BNuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=tS80yOvr5ag0Q11jsWkuAp+ENv2HhbcCrBVSAyv5Iig=;
        b=mf5BlXJMj59q5iMCDc6TinQM0wDEMYc/hJv4QN6gXtpkLYBb8uASdpfi4Eh9Aaat57
         oWnJyaDkaZ5Yqgtt/lkU019e1/CRjOB6pRG5Z4gDski82DJC7Oj7x9YkfxcfgbUizquV
         RtNLN/eFJb3ofMeIO8nMYQ95Hlfb6gFZGXi1FaLpUUapB0vPI6KeY5kIvl6YosilyGZe
         h8UiDKAY9g6tm8f4G2sU0q2OcKVnvCklHL90XUpzx/sTsre5FwwOv/UBfvkDE7T/Cyce
         EECkCxznYxA54JmC1eePLIBSfAXfehBgApxtS+fmrUvQDY+WTSrzBezVQVHufxH6yP32
         1GSQ==
X-Gm-Message-State: AD7BkJJ1kzVqMvyF17/3yQLtBnECjkr9PCbQZ20DphW60ahXEqOvqTqTXX/d3miVIIn7EA==
X-Received: by 10.55.201.81 with SMTP id q78mr23566312qki.98.1457871463932;
        Sun, 13 Mar 2016 05:17:43 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([2804:14d:ac80:19e9:b6b6:76ff:fe71:ca4b])
        by smtp.gmail.com with ESMTPSA id 46sm8042851qgp.40.2016.03.13.05.17.42
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 13 Mar 2016 05:17:43 -0700 (PDT)
Message-ID: <1457871458.12864.9.camel@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: dgnc: replaced udelay with
 usleep_range in dgnc_cls.c
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Date: Sun, 13 Mar 2016 09:17:38 -0300
In-Reply-To: <20160313025732.GB11289@kroah.com>
References: <20160313011323.GA10757@spock>
	 <20160313025732.GB11289@kroah.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.18.5.1 
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit

Em Sáb, 2016-03-12 às 18:57 -0800, Greg KH escreveu:
> On Sat, Mar 12, 2016 at 10:13:23PM -0300, Juliana Rodrigues wrote:
> > 
> > This patch replaces udelay with usleep_range fixing a checkpatch.pl
> > issue:
> > 
> > CHECK: usleep_range is preferred over udelay; see
> > Documentation/timers/timers-howto.txt
> > +       udelay(10);
> > 
> > Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
> > ---
> >  drivers/staging/dgnc/dgnc_cls.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/staging/dgnc/dgnc_cls.c
> > b/drivers/staging/dgnc/dgnc_cls.c
> > index 72f0aaa..51db98b 100644
> > --- a/drivers/staging/dgnc/dgnc_cls.c
> > +++ b/drivers/staging/dgnc/dgnc_cls.c
> > @@ -956,7 +956,7 @@ static void cls_flush_uart_read(struct
> > channel_t *ch)
> >  	 * Presumably, this is a bug in this UART.
> >  	 */
> >  
> > -	udelay(10);
> > +	usleep_range(10000, 11000);
> How do you know this range is ok?

Probably it isnt. I thought that usleep_range were 
in microseconds while udelay in miliseconds. I'll 
make a patch to fix this. 

Thanks, Greg. :)
> 

