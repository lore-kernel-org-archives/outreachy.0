X-GM-THRID: 6611156296380973056
X-Received: by 2002:a37:a790:: with SMTP id q138-v6mr2197565qke.48.1539281630147;
        Thu, 11 Oct 2018 11:13:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:6105:: with SMTP id v5-v6ls4169834qkb.13.gmail; Thu, 11
 Oct 2018 11:13:49 -0700 (PDT)
X-Received: by 2002:a37:5289:: with SMTP id g131-v6mr2145873qkb.20.1539281629459;
        Thu, 11 Oct 2018 11:13:49 -0700 (PDT)
Received: by 2002:a37:c17:0:0:0:0:0 with SMTP id 23-v6msqkm;
        Thu, 11 Oct 2018 11:05:48 -0700 (PDT)
X-Google-Smtp-Source: ACcGV61YtVMcuzQjrzImhZhXhAKwrYlrMxvrS+DGGwBsyoCyfoM6WdZ2dXPS8bivdPNoqduxc75C
X-Received: by 2002:a67:8988:: with SMTP id l130-v6mr2553213vsd.28.1539281147994;
        Thu, 11 Oct 2018 11:05:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1539281147; cv=none;
        d=google.com; s=arc-20160816;
        b=sJ2CTgQG92WlEd9svtG1tUEkEVbJPheFmuUJwBQEncAHWJRPiXkEN/pyOfGGtMhR4q
         80VaOB5gMUqfkcy/2volcKBVD9J0dm1u02upWHTUDr9QX3WbkW78u9eQchP2bEq8spQy
         mHH+joFNTpm/p3Nx84uJcfSERPLt8KFPLcSpt6c5PgZetgRcx2Z8mVmeHY/TXbspjZpn
         lRobKNUCHUM/Bm0kEue9Yo5+MRA4Iusd5DZZMGCY3NpSoz5NCju7KnhLC2XTCn2M60Nj
         JOeJbLwHRViUlawARN/TOsZJdp7T6Xa7TnHEcOlgld9Mb9wiM4D1ykOLNaop7CNo20YQ
         4kng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject:sender
         :dkim-signature;
        bh=4l4fYa2KRAdrPhFMfScHq18qDhtdgTEjImV4Xi+zomY=;
        b=ZcMSWNJFpSDE1qe0FpcmWeBYbhB55jjkumIKkrGuvS3qwFclga+6ogu9nv+g57qOlH
         ccGtMflx1otVUHkgCWgi3yuuC/X0iol4bhN9J8Q0u+Q7gv9bs6pSzsisUOreDudEBOQK
         Hwmw64yoHa9ql/XcqVNjLNxfFLV84YvFhFCGX0EQN4XUevYP30BzeVtEjpyeQlG5qYN1
         ZQLO6KWtLh7TYaLaosmXoCUQK9TSq1b+yCZAao+2wUQHT3ru7agrr5u8PRfNSNwxeAgE
         RMKwRIp5/r8o0g+U6Zr7WorI2O5xS6BvY88i+I6xWrfP5dOMmonWHgugB8uCyfD7GAtT
         BT6w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Ph/aVdB4";
       spf=pass (google.com: domain of larry.finger@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=larry.finger@gmail.com
Return-Path: <larry.finger@gmail.com>
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id i13si1690495uan.0.2018.10.11.11.05.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Oct 2018 11:05:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of larry.finger@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Ph/aVdB4";
       spf=pass (google.com: domain of larry.finger@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=larry.finger@gmail.com
Received: by mail-ot1-x343.google.com with SMTP id c32so9817687otb.8
        for <outreachy-kernel@googlegroups.com>; Thu, 11 Oct 2018 11:05:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=4l4fYa2KRAdrPhFMfScHq18qDhtdgTEjImV4Xi+zomY=;
        b=Ph/aVdB45eUZ4ZTnT3Qw1nH95BH0IIwKdolVM4NelkLW2CRdue0FiRwakyea5eofxM
         0mHB+XABAQAiWhX3Xl2auUgEP9IQphMLmYMxrDI18X8XqVGF8NaPQe1ikDP1Gz3x1psS
         sbLk56zBUprasYfRedVeHblGWfBfZh7/BxHHoeBs3tDtJ1tUqp62WfiA0Ajo39AGoZCH
         J+TCz4iFFxKSyxlUdh7NPxjXXiCr0Gs5d8l8v3YRpM28g5dLgH3OzvmVCzUD1Zvba+CZ
         7UO40r6DVLqmPirOfQQzBIShImpeiacLYlymnvK8RmJCiVLD4TXdQ7Lu2S8aV3N7CawK
         VH8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=4l4fYa2KRAdrPhFMfScHq18qDhtdgTEjImV4Xi+zomY=;
        b=GX8ENQeYauC/hRCmk4zJIp25XrKja/TrZLsF25hwFi7IY1EaLf5pmYCdbktbmbHE95
         IgkwDi8caeAnMcMPe//bUrVxozGIimOuJ+QqpPoMoeRK8gUjKiCLW5ohaOERMFnJ/aep
         cOPxi3w3BxRfLGtBNaY4jnhSy7pMnQtgFWZCaQNuOnH2vhs5oaXVyFHkIPIAFeHoGbHY
         KCp6geZMAbd67xeQ0VtE/bbPLycRACXOk8kqMnbSKPNDyXrBLWJNIqH8R3okio8QzJ82
         uDeLYpjCTlX28u1/8i/AtmPCiogQQqp3hH7/iulpJ339y0ZN+AYJE0ScjCMiE4OODTUN
         4MoQ==
X-Gm-Message-State: ABuFfog+90KdsemQM7VTi213OZ5qPLc9jhLdCje+VbmrdUXDjlr5CqAe
	GSquGr2FXN/T2jNkFd26uc4=
X-Received: by 2002:a9d:26f9:: with SMTP id i54mr1789610otd.142.1539281147302;
        Thu, 11 Oct 2018 11:05:47 -0700 (PDT)
Return-Path: <larry.finger@gmail.com>
Received: from [192.168.1.107] (cpe-24-31-245-230.kc.res.rr.com. [24.31.245.230])
        by smtp.gmail.com with ESMTPSA id t11sm2672387oti.21.2018.10.11.11.05.46
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Oct 2018 11:05:46 -0700 (PDT)
Sender: Larry Finger <larry.finger@gmail.com>
Subject: Re: [PATCH 0/3] staging: rtl8723bs: os_dep: Fix coding style issues
To: Mamta Shukla <mamtashukla555@gmail.com>, outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, hadess@hadess.net, hdegoede@redhat.com
References: <cover.1539278377.git.mamtashukla555@gmail.com>
From: Larry Finger <Larry.Finger@lwfinger.net>
Message-ID: <7d266f0c-9107-9c8d-1de6-f267e46a0f50@lwfinger.net>
Date: Thu, 11 Oct 2018 13:05:45 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.0
MIME-Version: 1.0
In-Reply-To: <cover.1539278377.git.mamtashukla555@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 10/11/18 12:42 PM, Mamta Shukla wrote:
> This patch series fixes checkpatch issues such as:
> -Remove true and false comparison
> -Remove space after cast
> -Shift * to be adjacent to pointer name to conform kernel coding style.
> 
> 
> Mamta Shukla (3):
>    staging: rtl8723bs: os_dep: Remove true and false comparison
>    staging: rtl8723bs: os_dep: Remove space after cast
>    staging: rtl8723bs: os_dep: Shift * to be  adjacent to pointer name
> 
>   drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 30 +++++++++++++-------------
>   1 file changed, 15 insertions(+), 15 deletions(-)

ACKed-by: Larry Finger <Larry.Finger@lwfinger.net>

That is for all 3.

Larry



