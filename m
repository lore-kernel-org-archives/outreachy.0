X-GM-THRID: 6395629856318554112
X-Received: by 10.99.116.72 with SMTP id e8mr13322811pgn.92.1489362100108;
        Sun, 12 Mar 2017 16:41:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.36.169 with SMTP id z38ls7276436ota.27.gmail; Sun, 12 Mar
 2017 16:41:39 -0700 (PDT)
X-Received: by 10.129.50.12 with SMTP id y12mr16168753ywy.111.1489362099667;
        Sun, 12 Mar 2017 16:41:39 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id a3si2856695pfb.2.2017.03.12.16.41.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 16:41:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id b5so16292694pgg.1
        for <outreachy-kernel@googlegroups.com>; Sun, 12 Mar 2017 16:41:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=R07n2X4y0qFXGELInGU1YU509FP/j3LGn28cFojZX8w=;
        b=sHudy9R8V1uDoek/Kf3EiQQOq0Pqf7lt2YyKVDK3sZvUDfl3sI4tjA4+yag4YHZ684
         cX6s0QYrzAO8jp6L4Jv9uue8KVb4oEijXcaAzzsN27WhdPWMCh1i69EI4muSFgk3ZwS0
         c5/qdlImP1NLRqDn2VHA/h32Ew78LVQ0jzvdUpZkB4w9s+zhmNjbO44tZSvgSzMestmh
         25z271Vs79JCDyIjutqt4edGtrTkJa0p3kMdROluSWKs5PeRszDldxrt9thAxdEBP5m+
         kdfXFRWVVNYah18hadUmlkmNvYjc3hlK/3C0zOERTVCB0HYXoetGjnshLoynj90sWyev
         Tc+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=R07n2X4y0qFXGELInGU1YU509FP/j3LGn28cFojZX8w=;
        b=Yv7TNqy74YoBwwr4e2TiCBZSvyo8kyc2k32efVSNBUsYYhkmcoAM+HB+ZOFBLfk8nq
         Xoe2PGfu7EPgxG8yQXrR9sbQ+pfT+8veaA2yUNUDD9m25IgEom2W7uEzqDoODUbSohYO
         thK/mRbGc/1Qg0EriG8DJjXJlV6V8ERykrx/WCmfORr4SAUN3PoXm19A0qTQnPmjjID+
         dL4QKwdu8IQRO9tytiYfMY7rZw6363VOtyQQvozPFftD36A4DKTL7vuFhpdRtzbnXlFZ
         c/IP4sDe9WSrmDQaMYRHgTbmV0cYo2DoetVqt8nqhV/0RIlWguslUgLh3q7IT7OQxe9f
         tEaw==
X-Gm-Message-State: AMke39kmnrQgER+JFWX+ptIDdGYjLL09j+8qsf50ffXH3J0xDp+ZKVG5dVdwGjnWueGM2g==
X-Received: by 10.84.195.1 with SMTP id i1mr42736919pld.77.1489362099419;
        Sun, 12 Mar 2017 16:41:39 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id t133sm30227725pgc.24.2017.03.12.16.41.38
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 12 Mar 2017 16:41:38 -0700 (PDT)
Date: Sun, 12 Mar 2017 16:41:37 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: Tamara Diaconita <diaconitatamara@gmail.com>
Cc: aditya.shankar@microchip.com, ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com,
	Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2 0/3] staging: wilc1000: Improve
 code readability
Message-ID: <20170312234135.GA14759@d830.WORKGROUP>
References: <20170312211518.3172-1-diaconita.tamara@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170312211518.3172-1-diaconita.tamara@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sun, Mar 12, 2017 at 11:15:15PM +0200, Tamara Diaconita wrote:
> Improve code readability in wilc_spi_read_int dunction in wilc_spi.c

spelling dunction ->function, or write it wilc_spi_read_int()

You don't need to say file name. Reviewer sees it a few lines later
in the diffstat.

> 
> Tamara Diaconita (3):
>   staging: wilc1000: Declare variables at top of function
>   staging: wilc1000: Correct name of variables
>   staging: wilc1000: Remove unnecessary brackets
> 
>  drivers/staging/wilc1000/wilc_spi.c | 52 ++++++++++++++++---------------------
>  1 file changed, 22 insertions(+), 30 deletions(-)
> 
> -- 
> I am going to wait to see these patches in the staging tree, then resend additional patches for this driver.
> 
> Changes since v1:
> *Change the patches order.
> 2.9.3
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170312211518.3172-1-diaconita.tamara%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.

