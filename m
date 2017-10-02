X-GM-THRID: 6471841659603648512
X-Received: by 10.28.149.18 with SMTP id x18mr1481685wmd.18.1506946919416;
        Mon, 02 Oct 2017 05:21:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.168.14 with SMTP id r14ls1986283wme.3.canary-gmail; Mon, 02
 Oct 2017 05:21:58 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QDoZaJjyTk0GfmO/cDZP4RDcMdD3kaaLWm34sfv8VmGyqAkxz5fyy3SOCLB437GolneqfBl
X-Received: by 10.28.1.146 with SMTP id 140mr1743029wmb.2.1506946918745;
        Mon, 02 Oct 2017 05:21:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506946918; cv=none;
        d=google.com; s=arc-20160816;
        b=vrPOcZ3qSp4HtGY6gQbtCeriIU85fbyYgArKFi77v9iWs9OVD6MH9TSD8rZZGxjiA0
         QD7Lpp9MKD+pLr3A8CnRp9krkseIj13FXxbcsxsJeOeTDDoJytH9eYE0hTHmB5K2bvmd
         paNrBLQNmgp/LiLVqDEe6+v+sNeq08mn6ll5+RYKvcihbyC/ioJiBHWq/ixyWkELa4Em
         8ZAXHYJH3Gdu5uEQDXuz5CBdTi3P9Ipn/6S3O9fqa0FaJU1xI5EVehRuVku+XlRsVqeu
         JTEk7Fqn0lC0L0+7FXiKRyLKP21b8hfUbC+Bh6tN+HNsiVNEuFvgOiaONeeO9AYPIcCf
         GusQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :arc-authentication-results;
        bh=1FkGFJ8kRCdet3LhCTEcBu5u1ESRFoPC7HoBpcDZU30=;
        b=bLGDMbAxIa8YDwl/Us7CXovOuKblhVhfQ7gOTHtQpapCjOY7XoojInX0+V/YhIIgrv
         PX8E7t+G4Tc3Pc+roJD4iX4jGwCH2nIS/3rDST7JTsDS/6mMxuz6vQQs2sNGrHI77Plc
         2aWY6afxU85lmeQ0882EgDPoW46rl+TM7zwGud+atsK1I9QZn/DkqLlYdCiRtwpbzKBC
         FMYa4Rp2VCpdnwaCV9ATosO9YeMP+7/sVTjuhcwvMstPSoXHYuzbuuG5PBQcWn1lFNMe
         mkzO4fkL3fZjIUN3ycFLPYk32qA6X2jqh43wCl/ei8SSBAEXe+blMLUvD6lzwlFZ3mee
         /T0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of stefan.wahren@i2se.com) smtp.mailfrom=stefan.wahren@i2se.com
Return-Path: <stefan.wahren@i2se.com>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.130])
        by gmr-mx.google.com with ESMTPS id 200si1494100wmj.0.2017.10.02.05.21.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Oct 2017 05:21:58 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of stefan.wahren@i2se.com) client-ip=212.227.126.130;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of stefan.wahren@i2se.com) smtp.mailfrom=stefan.wahren@i2se.com
Received: from [192.168.178.54] ([109.104.33.132]) by mrelayeu.kundenserver.de
 (mreue002 [212.227.15.167]) with ESMTPSA (Nemesis) id
 0LrmfO-1dJu822mY2-013iSm; Mon, 02 Oct 2017 14:21:56 +0200
Subject: Re: [PATCH] staging: vc04_services: Use usleep_range() instead of
 msleep()
To: Mihaela Muraru <mihaela.muraru21@gmail.com>,
 outreachy-kernel@googlegroups.com
Cc: Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <20171001073056.GA7890@domino-MS-16Y1>
From: Stefan Wahren <stefan.wahren@i2se.com>
Message-ID: <8b6116b9-668f-4f6e-7894-775dd0ec1afb@i2se.com>
Date: Mon, 2 Oct 2017 14:21:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <20171001073056.GA7890@domino-MS-16Y1>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US
X-Provags-ID: V03:K0:HEmK17sdZc+NWTQrvUhFSGuNewpv5LQCgs2bPgqo25j6xJF3nzh
 L5x6UpR/DuMqi2694nspGm8pIdXmmYdktg9PVBO8u3TMsJUKh/MbPWnO3NAdMQfUJD0gSus
 KvfOkCr2IM70LwHJandWJ9+52gb92Ze9YwtQdC2kcdrI8AULEjDDIf2LnEXtkQZaHn+p2US
 PJC58ZpESzz4bVrw4Jr4Q==
X-UI-Out-Filterresults: notjunk:1;V01:K0:ng+9rXHOQJo=:W5/cLFCVfsuw2I0cbCy2oF
 qt7PTzlKC5BxKmfugobXJleveUGLOzvTSez5+KzVC6xF73yeukl22tWTa9OD/zwpiz0TPJPEx
 0qaEaBbUaXz47OI4chjxwzDyWhFbwcd8Fe53uZZGJSYX1einc6/jJuHcny/Fw5p3p7HGK4rt3
 a3jKW1AkYJxFGjJ1WzgnSyScqbe0pZoSeWcVe/JYkq/kUXYDJjScDvegLZuqqCh9KMiHYTIad
 ihafNvSA1TYkNouyTdc3Jz+IH12tHepcZWb6qyrryEk58oQDsiDoJBs4tg5RV+TSESmtsTrl6
 3/4CVmLtCacqaXG9J9l/XkJD01gpA3nu26BC9XrWKyrE/vk0mLeDpMmj1nLZpwtyJg0CsEhYv
 wZVCHxMTHh231hlJop1mGFrcwwzAQsGdoWGdpFmcEH9i2UcSR0gtsQMep+7jp8QIDe07YfY3r
 fHSVGLJjR5bXsOHo3SS9PiYmcmBmeRwPjb6aZWo3QfMZD4tGS+caLq52Z2CeIwXT2GJJcEEfi
 879DLk+lv4aIVVdfHkWgXWBZk07x9Bb5TChbt3X/sxkIr3ZWxAQ/JpRl4uSHxlHY5p/vCLUgz
 utszEQY9tTljxLNbrBz8Q6ztMsrMHprjgAE5lX30XloyNJvaqrtBvbd3qO98Q3cOB6/LKr6VQ
 0SVfN4bJU1JMBCSexqcmBJJWfehIRm7FWJmQ41A7B6NmamRu10pOb+uF6thQOckn7TcslhzSh
 dEGuysaEBCPxsrBCg9Ai01y5mVw6sw/YKeOG4Oge7mFpFBhlXFdKY8JQvIQ=

Hi Mihaela,


Am 01.10.2017 um 09:30 schrieb Mihaela Muraru:
> Since msleep() will often sleep 20 ms for any value given in the
> 1~20ms range, use usleep_range() for a precise wakeup.
>
> Issue found by checkpatch.pl.
>
> Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
> ---
>   drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
> index 631ff73..daf18e8 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
> @@ -357,7 +357,7 @@ int32_t vchi_bulk_queue_transmit(VCHI_SERVICE_HANDLE_T handle,
>   		if (status != VCHIQ_RETRY)
>   			break;
>   
> -		msleep(1);
> +		usleep_range(1000, 2000);

since this code has been working downstream for many years, we must be 
careful with such functional changes.

Did you test this code on a Raspberry Pi?

Regards
Stefan

>   	}
>   
>   	return vchiq_status_to_vchi(status);


