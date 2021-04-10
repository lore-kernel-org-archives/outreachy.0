X-GM-THRID: 6949289318658605056
X-Received: by 2002:ac2:5144:: with SMTP id q4mr13084487lfd.145.1618036191833;
        Fri, 09 Apr 2021 23:29:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:5081:: with SMTP id f1ls599516lfm.2.gmail; Fri, 09 Apr
 2021 23:29:49 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJys1PgrOTWLub68YL1U7paeY/o5YxwCQT7hvyE4BVDSFP0W2kIUzPs5q6KrjPV5xvAyRXJm
X-Received: by 2002:ac2:55af:: with SMTP id y15mr6473350lfg.20.1618036189921;
        Fri, 09 Apr 2021 23:29:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618036189; cv=none;
        d=google.com; s=arc-20160816;
        b=lrjh8rcO1bc/aVczzyQGR25bY73uD1wbhGL00EeT40SZqyLgtE5916FKd+U3/t27gt
         ej7UCEBTwn+gvD6XOQ5obIJzsMvaPq8Z6Onqwtdm1zMnoCGPZlyFW3JkrjkpggiM0WGt
         /4xiX+e+URZRAQuIiyO/bJlINvvCi2hFSu7dTMUAuPrMTBs6BkzHhhVdDS3rdisBI68k
         El7t1l2840UB17liBWkv7gbsFjYBS75/+3p/opgPppkvPwm9AJ6BGWyXwn0l5TFVn0xy
         dknllRc/QcIQcd0VLdpJdsDhScgwFs8AZ7LlGizQIXjZDhpKonqMWmEaXiL+sH4/lyQW
         6SsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=eL11St0SczERtXHVBTzgBidJc+hIUZQn1l3xTkgYX/c=;
        b=exX5E3ETrVkYH3/AM71yCBsQhr6FIOF/LUrNhGqwUUTZlLsMAKsoUHR2A+28ES/VRg
         Fs5sxg23piLoJ+5IBfzm4bfQI8QYBriPSI5MyAKXbJVpaywPyrQMTKpFTqqHz1oudIx5
         R0xwJTucbAS8gOZfndtqxBQUgEmvROlcR/+llAFtZpNWMZ4foT5AVv8AjCLGs8DmkMUd
         hTY/Kwb4Mz8+mN7CSfIyypMvCuh6z/U6lTmoyXaYXbRj7i8wsS6c/VoNSufFyCtbz4U0
         wDVxi9mQuoqVxCAPfxh1p6gfet9SrWBjuGT9+VZSfDXVe596e370iO9coRXBnf1AiPyp
         TwIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PBle89fP;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::629 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com. [2a00:1450:4864:20::629])
        by gmr-mx.google.com with ESMTPS id 63si378455lfd.1.2021.04.09.23.29.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Apr 2021 23:29:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::629 as permitted sender) client-ip=2a00:1450:4864:20::629;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PBle89fP;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::629 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x629.google.com with SMTP id sd23so3286169ejb.12
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Apr 2021 23:29:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=eL11St0SczERtXHVBTzgBidJc+hIUZQn1l3xTkgYX/c=;
        b=PBle89fPk66XtnXNcP4Svm2cZ+3V1PCWChhYs6iwOQ/n5TVeVcC/GPC4v7AP7suNVk
         s/7XLNlox282F0MuqlVRYjlr+EzUj8L4Aoq4mVk+PIJYga1KllHNMN2J+1ZAPiD925OS
         QSsnWrKQQjRtx0sfFdV5PlnC7UlZqkRvnAkhPg/GNdTCEILEUcNc1LGiJHpdE0CPQ0bg
         aKTu3/uYPp/xoo2ST+g9DQgoLqW4eWmpKziV3bKuT9oSq80WJ24wJGLCSmDZH6+yeXBc
         eui/fG8OX2c5imOKSh48DpbJ8E/A91BvOQ2YktjVl4RZPJ+ZmbG8UBU8vZ658ekxtwdM
         cMgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=eL11St0SczERtXHVBTzgBidJc+hIUZQn1l3xTkgYX/c=;
        b=mxAcgrf99ZIDIBFR7L3hjgeq4LS3halsVrvJoqTGX2Aq1h/jPDsrGEdho1cCWSmzWI
         9T7RXx23eK0BJFHF98UQi+UbNSgRWiaYXYVD2E13UEuF+MH2aFS/XqT+wh+DeYI1oL14
         CibIrN2Ij25o5DbPdowXsuZl9IhriW9OvOo6BJWM8krUTLS4IBHUldLTmNiV6JUoEl6h
         Klsfq4nLQO8+3eBESos3ymSIJQrfnRdurE3X5vmPX9bLfmZTtoUfpJaBqPcJDbV6BiV7
         wJCfIxisbFwNjhDSSA0HN03LET/Mnmg8izZ+tg66/0Kbzw8++81PEWtlK5oLRlA3MMh9
         YxZg==
X-Gm-Message-State: AOAM530QQ7ToCLO6eFbQeyYNBfA1VoQoda49qgBdsrxiO6gp8K5Z5ZB2
	uDT8n56g6NjPIz0vae3dVloBCkPKa/rsdZNi
X-Received: by 2002:a17:906:d9cf:: with SMTP id qk15mr19496645ejb.415.1618036189418;
        Fri, 09 Apr 2021 23:29:49 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from localhost.localdomain (host-95-237-55-30.retail.telecomitalia.it. [95.237.55.30])
        by smtp.gmail.com with ESMTPSA id bm21sm2196291ejb.36.2021.04.09.23.29.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Apr 2021 23:29:48 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: Mo Jauhar <siddmohamed19@gmail.com>
Subject: Re: [Outreachy kernel] [Help Needed] Driver Modification on Native Linux
Date: Sat, 10 Apr 2021 08:29:47 +0200
Message-ID: <24523675.kZeo3ZrSie@localhost.localdomain>
In-Reply-To: <0e9eb226-2111-4afa-a2c5-5a6cec9537c0n@googlegroups.com>
References: <0e9eb226-2111-4afa-a2c5-5a6cec9537c0n@googlegroups.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="ISO-8859-1"

On Saturday, April 10, 2021 12:31:45 AM CEST Mo Jauhar wrote:
> Hello everybody,
> 
> I am following the step, *Make a driver change* in the tutorial but am
> stuck. My addition of print() statements inside the probe functions of
> modules does not show up in the log when I reboot my machine.
> 
> Here is what I am trying to do:
> 1. Pick a module from the result of *lsmod*
> 2. I picked up *xhci-pci* and added a *printk("I can ...")* in its
> *xhci-pci.c* file, inside *xhci_pci_probe()*
> 3. I reboot
> 4. Check the log file using *dmesg | less *and search for *"I can ..."
> *and I am unsuccesful.
> 
> I have tried to do the same with *realtek *but I am still not successful.
> 
> Thanks in advance for your help. Please have a nice day!
> 
> Regards,
> - Mohd Ali Jauhar
Hello Mo,

1) Check if you are really running your kernel (not the distribution's 
one). The command "uname -r" will give you that information (you should see 
the value of CONFIG_LOCALVERSION, which you set before compilation, 
appended at the end of the output).
2) Do you see your module with "lsmod"? If not, did you "modprobe" it?
3) Did you run  "make -jN && make modules_install && make install" and then  
update your grub2 config file?

Fabio





