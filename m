X-GM-THRID: 6471841659603648512
X-Received: by 10.223.176.122 with SMTP id g55mr535028wra.29.1507017323377;
        Tue, 03 Oct 2017 00:55:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.188.18 with SMTP id s18ls3896321wrg.9.gmail; Tue, 03 Oct
 2017 00:55:22 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QApPk6KoVNKJmFtvD0nh27qhpabbE4LWWjTnx8/8qX7nR5V7IAoRKez3KpujFGT/RSy4rpn
X-Received: by 10.223.154.112 with SMTP id z103mr493914wrb.0.1507017322484;
        Tue, 03 Oct 2017 00:55:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507017322; cv=none;
        d=google.com; s=arc-20160816;
        b=MjdczNJApmwD1ROf+62AM0YakfhS6XORIAGvHPukHr+bD7HGSz8IGff6bKrpokgwfN
         I6rCgHU2JDUgp0ZhpVWnrahGD1TKseGanIWIPblwpFN7KYPNmSE5+Imz1/E2RSmE1UUD
         KHe+rPgmW28k5xpxR98XfTQHcP1CPEuG85l2CcAdfKpPOfXZhJ+WLY8SQC1NwLOYwgpe
         LoaaaPV77F2vnaqXVamGH46AKT+Erx/IkSDkWQ1LoFG22GWAyp6ZezgqGYfcGMG1qNih
         BWWE2fTbTztBT3ohuBIQdwZe3iQL5zzO5hPqggZSD8nuXkG1ijkIKGNa+ITlwsltnTcP
         Unsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=importance:content-transfer-encoding:mime-version:subject
         :references:in-reply-to:message-id:cc:to:from:date
         :arc-authentication-results;
        bh=/T57ZqB0deWpLvxv2RcBocpXmSdT0PZHVW5CpVFOpCE=;
        b=qb5mIVvFwGhyDpVVuCmuudamQT55gWsifgzaXMcq+AsxEsGXP0FRkxKW14tChLpxY1
         Xu4O6ne0lK3rQKwTeccNh+JQUcgmAKt5nBfqpP77st6AZeqR3oJByCwYKZI35tVRrt4P
         pkQ1ns6yCNkPGfJDBOEP4UdkjTpkOSUUw9eV2lMDhTZyY0xtvhWy1B2DSMXBVB02QsFO
         nWSfcm2F2YfWkRzI1iB9ZNuXwwRemlgb+Jym1daKjzQhiohIvoSTaMHZYVhnMb+yly5g
         Qy9Qor319bnYMiHhZXns2yO75W+e9WISdBKkYhUqRxgs9sSwbeU7yP1KW8UcKXQr8586
         W2Ow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.75 is neither permitted nor denied by best guess record for domain of stefan.wahren@i2se.com) smtp.mailfrom=stefan.wahren@i2se.com
Return-Path: <stefan.wahren@i2se.com>
Received: from mout.kundenserver.de (mout.kundenserver.de. [217.72.192.75])
        by gmr-mx.google.com with ESMTPS id p200si1537117wmg.4.2017.10.03.00.55.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Oct 2017 00:55:22 -0700 (PDT)
Received-SPF: neutral (google.com: 217.72.192.75 is neither permitted nor denied by best guess record for domain of stefan.wahren@i2se.com) client-ip=217.72.192.75;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.75 is neither permitted nor denied by best guess record for domain of stefan.wahren@i2se.com) smtp.mailfrom=stefan.wahren@i2se.com
Received: from oxbsltgw02.schlund.de ([172.19.249.19]) by
 mrelayeu.kundenserver.de (mreue104 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 0MZls6-1dkNnF2JKw-00LYLk; Tue, 03 Oct 2017 09:55:19 +0200
Date: Tue, 3 Oct 2017 09:55:18 +0200 (CEST)
From: Stefan Wahren <stefan.wahren@i2se.com>
To: phil@raspberrypi.org
Cc: Eric Anholt <eric@anholt.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Mihaela Muraru <mihaela.muraru21@gmail.com>,
	outreachy-kernel@googlegroups.com
Message-ID: <625751478.62338.1507017318331@email.1und1.de>
In-Reply-To: <20171001073056.GA7890@domino-MS-16Y1>
References: <20171001073056.GA7890@domino-MS-16Y1>
Subject: Re: [PATCH] staging: vc04_services: Use usleep_range() instead of
 msleep()
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Priority: 3
Importance: Medium
X-Mailer: Open-Xchange Mailer v7.8.3-Rev33
X-Originating-Client: open-xchange-appsuite
X-Provags-ID: V03:K0:WKGNK9i7ANoT42LqJbq1FMjh77f/j4xESsYdZ/5B9Gm3kKgg8Rv
 QhRye/SE19hhEzmE4TrY+e3uG1ItSHYC5FiOqSxXML04mgNCZ07Iz2t9kYSpe52dVImpZbR
 VQXhsl/F55oz3ZV90YQmWYMfIc4yzwuRRetq/ic3FRMAt27NMEkwVs2QBycUN0JHo3a3PXq
 tbObuNFzrWsUM7m/j6vHg==
X-UI-Out-Filterresults: notjunk:1;V01:K0:kSnNdiinsJw=:8pcch7QTBvjGokcdQKBRcn
 jcGYS7bqGjue0CJibmS7E4h3wN64G71ewMBPfcaagfamhRo1ODwMkA0jJUc4HgVctJAW3Udgp
 xeAodNc3gQkKEJrbEwBuKJQlOG63Bkev1572flTmne76EL3guzdKtYmhgCE9/dhDPjXM4am8P
 LXVNjwFT381ytIMmgzU/4goVwxoGdkRBmFfKmegKG5nSxkqtMDbGYNT1uyD2iggjliiWXsM5q
 dqwr1J8st0aZuyLEFHgcA51dM3edMjsooQQ/sMYFUaNw5yMjq+Pg5FDHyntsxk/LENkVze5ME
 GLpGv18Q6la6xa6P5/fu55q30OtP5MIAablxa83zLm8WkOM3sVued7z6309YVZxPAsyArU2DA
 slPvUu3DjEc2FlOO7y7YtphIStFrGl2PeLCU1VPRn5Isbt5ohsoEgZw/3vUjI8a5EY6xYKhSO
 VLftQYuY3DZ9WjXcWPEaFBkU7ZD4WvRhMP5tV4ifgB0r162PJ1JcHMz1YHxwr7zhBkVlTK4c7
 dEfo5wYE4GcCha/5SKbiJ8+dTq+ZrpHjULdDJaibrWVz8ShuXeoomjt0gpEOzQ6dRTh3ODB/l
 LI0Si2T2/oDY/G/JdqJuyxq2hSzipGGzChCal5TsGZ3BIerkxIYAJX9mqVLEzR7CDW4o4EGYY
 IUdQNqs4tKOI89ug6VgbMrh4u0Fx0/9hzhQ7NsYAuInAcYD6ildU4s/GAnAjz3G4njVxJ6Wh/
 LoiC2lZZbcz/TcugHfE4dUfXcW/V66QPEYlZ82IRKr2ucFNkERXZl8e4QfA=

Hi Phil,

> Mihaela Muraru <mihaela.muraru21@gmail.com> hat am 1. Oktober 2017 um 09:30 geschrieben:
> 
> 
> Since msleep() will often sleep 20 ms for any value given in the
> 1~20ms range, use usleep_range() for a precise wakeup.
> 
> Issue found by checkpatch.pl.
> 
> Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>

the vchiq driver calls 3 times msleep with parameter 1 (millisec). Depending on the kernel config the actual time of sleeping would be larger. In order to fix these checkpatch warning i see two options:

1) Use usleep_range in order to achieve the 1 millisec at cost of a higher CPU load

2) Increase the msleep values to 20 in order to keep the current runtime behavior

Do you have any preference?

Regards
Stefan

> ---
>  drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
> index 631ff73..daf18e8 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
> @@ -357,7 +357,7 @@ int32_t vchi_bulk_queue_transmit(VCHI_SERVICE_HANDLE_T handle,
>  		if (status != VCHIQ_RETRY)
>  			break;
>  
> -		msleep(1);
> +		usleep_range(1000, 2000);
>  	}
>  
>  	return vchiq_status_to_vchi(status);
> -- 
> 2.7.4
>

