X-GM-THRID: 6337361071288877056
X-Received: by 10.157.45.200 with SMTP id g66mr71376otb.84.1475531857642;
        Mon, 03 Oct 2016 14:57:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.11.162 with SMTP id 34ls1216399iol.13.gmail; Mon, 03 Oct
 2016 14:57:35 -0700 (PDT)
X-Received: by 10.66.180.10 with SMTP id dk10mr65157pac.55.1475531855013;
        Mon, 03 Oct 2016 14:57:35 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from mail-pf0-x22a.google.com (mail-pf0-x22a.google.com. [2607:f8b0:400e:c00::22a])
        by gmr-mx.google.com with ESMTPS id 80si368442pfw.0.2016.10.03.14.57.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 03 Oct 2016 14:57:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c00::22a as permitted sender) client-ip=2607:f8b0:400e:c00::22a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c00::22a as permitted sender) smtp.mailfrom=gnudevliz@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22a.google.com with SMTP id s13so67914388pfd.2
        for <outreachy-kernel@googlegroups.com>; Mon, 03 Oct 2016 14:57:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=wGRxIOEfvNS1O4mHASuxKHKhIR4eWrv1RqvOrbb3S0Q=;
        b=gHolvhn1IWWXTE0KU0xR8ymQWKtr2FyGSez8ghV4xd4w17ekYYQNlorKzQiMMaHsiB
         tMB0I+a+gG5TUzU+e1Pr8Qrwp+SN4GOPXlekllttEBbR+PANiS+rcBtzAJUUcu9F22b4
         VX2ExtPjkUnjNjs69tpHsIm1F/qodjKCinwT8toa6qtsaKGf7CN0OJBKb5cmAEfJ2aa1
         KdjCleBXn1j0KMdm/LKe8PzUbgagR4/UA2X5okxiTCsboutGnjURT/kkkIO6qTZIXlq2
         wod4swfdzId8unEpb+aTDNTs+nvds+iuai+L4QKGPbCHqbsya0fQFnWCNh03Vq9aBVgX
         xGuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=wGRxIOEfvNS1O4mHASuxKHKhIR4eWrv1RqvOrbb3S0Q=;
        b=KP1VbZy5CDjUzTg6Jp14T183yr7cGb2AhOXv4uCw3LJ1T6N25O7WvNCq37uILv4PQw
         XmxNh9J247hgPJeMaJFx3jUf/lfP0ZM5RQkd0xaKpF+numJFXt5ZHYU2bx0VWtM0ufzy
         oSihYBf3CjKfJrx7k1BmCIZTzFsgl32d7pbswBhaWoGCX2uuGj9Oc/yR7d0GjkcJNXmR
         5x5eG59oFjVDKo04YSEwtVDAmOFHJRahcvSzV1r3rV92l/eIT8zQQAEABA2sA6avXAYf
         onCHzWxdhT8q7NvTB9fj3oX/SLP7LuC9mVvHY+CfVwfYE7l07/R9FcZX9XPsmSr3vBeL
         orSg==
X-Gm-Message-State: AA6/9RkviTxt5z9oqng1Tfb2nH6VigTLnyOU398aY/uu1w0yMbxCmriljOeX+Y6n3oKLcw==
X-Received: by 10.98.12.4 with SMTP id u4mr481299pfi.80.1475531854885;
        Mon, 03 Oct 2016 14:57:34 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from localhost ([2601:644:300:fd6b:4e0f:6eff:fe69:e9ea])
        by smtp.gmail.com with ESMTPSA id x24sm10303985pfa.17.2016.10.03.14.57.34
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 03 Oct 2016 14:57:34 -0700 (PDT)
Date: Mon, 3 Oct 2016 14:57:32 -0700
From: Elizabeth Ferdman <gnudevliz@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: amsfield22@gmail.com
Subject: trailing comma in parameter list
Message-ID: <20161003215732.GA4343@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

A question just came up after seeing this checkpatch error:

ERROR: space prohibited before that close parenthesis ')'
#71: FILE:
/home/lizadev/git/kernels/staging/drivers/staging/fbtft/fbtft-bus.c:71:
+define_fbtft_write_reg(fbtft_write_reg8_bus8, u8, )

I'm wondering why there's a comma after the last parameter. I found
something about variadic macros on gcc.gnu.org. Not seeing how that
applies here though...

I wonder if taking out that space would be a problem. 

-liz

