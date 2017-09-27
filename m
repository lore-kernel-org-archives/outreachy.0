X-GM-THRID: 6470514248174796800
X-Received: by 10.107.138.77 with SMTP id m74mr1157093iod.2.1506536499821;
        Wed, 27 Sep 2017 11:21:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.146.196 with SMTP id u187ls614165iod.10.gmail; Wed, 27 Sep
 2017 11:21:38 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBAmuXdzmuXvrfnwdResmsludq+iUxeute8QTtEbO7maU58tEtbIR4cNV6Rq3azZ5LdghVX
X-Received: by 10.107.136.151 with SMTP id s23mr1163525ioi.65.1506536498854;
        Wed, 27 Sep 2017 11:21:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506536498; cv=none;
        d=google.com; s=arc-20160816;
        b=M/KFOY5n6EmGbPEWkZs8rdG939X1Lacohcdi2kkX8UZiks9PYQ1b0Cmwi0Ve+6cMI1
         0eP30u6vcTgMVrv99nAALOSeRgQ0us97HkfOybw/XARRiFluJXAyeZGEFJ0KYwB8bg4c
         1Xi8aXjVJSizH5rCWsPWw7A9pkg7JY5Q2sjIkaxFQBIazlcbDjlNt0wPQe7XGK8ltVwG
         HBt0uPPIhyPVxET7AGVAWXeo2/T7ODxbSxNKCisnpdfPu47LwyQ3Vvaejb+kIaMoM4Gz
         70OYlUmws8hWWaJIJmYjtaR5FZ0O21/CO/9Be+IW0MaVj/JJFr7B6HcDCBRM2nP++MEI
         yLgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=importance:content-transfer-encoding:mime-version:subject
         :references:in-reply-to:message-id:cc:to:from:date
         :arc-authentication-results;
        bh=IeqXS+k6b1aSH91qu7Kn/rxGiB7NPLNr6wlt3S4GdgA=;
        b=viLMVecRWK+Ibd+5wQFLGD0tD8hXJCwaWxdAnhOb5lV9oMlngqkG7da0/9jWI9U0CS
         aGFdkt/fypMSRiNRM6J/W6zvFcJFc4nd8q5oYiSyvWEj6+YFw51W1sDOKkxu6USedcXe
         E6op2qsaYkynL8LDxNax5deYwAevQ5CAL+UtORUhVk1KE28zFPXyOXC4pHsyBkf6nz3w
         DzN1OLrfEVX5NPHXZTwyrW5oyZEBpjrqRpKDdGtFeh3w1UAziZj3CHsHC70D7qamcepO
         ezqDDubmF6KZrHFD1KP1JSQeY/QEEXowsgizS7ZS7dE/WDHpIJa07I65D5zPmmZZzKx5
         lVpw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.75 is neither permitted nor denied by best guess record for domain of stefan.wahren@i2se.com) smtp.mailfrom=stefan.wahren@i2se.com
Return-Path: <stefan.wahren@i2se.com>
Received: from mout.kundenserver.de (mout.kundenserver.de. [217.72.192.75])
        by gmr-mx.google.com with ESMTPS id l75si693899itb.4.2017.09.27.11.21.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Sep 2017 11:21:38 -0700 (PDT)
Received-SPF: neutral (google.com: 217.72.192.75 is neither permitted nor denied by best guess record for domain of stefan.wahren@i2se.com) client-ip=217.72.192.75;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.75 is neither permitted nor denied by best guess record for domain of stefan.wahren@i2se.com) smtp.mailfrom=stefan.wahren@i2se.com
Received: from oxbsltgw02.schlund.de ([172.19.249.19]) by
 mrelayeu.kundenserver.de (mreue105 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 0Lz2kC-1dJS6a0Cqe-014F5z; Wed, 27 Sep 2017 20:21:36 +0200
Date: Wed, 27 Sep 2017 20:21:35 +0200 (CEST)
From: Stefan Wahren <stefan.wahren@i2se.com>
To: Keerthi Reddy <keerthigd4990@gmail.com>
Cc: eric@anholt.net, outreachy-kernel@googlegroups.com
Message-ID: <806790305.318178.1506536495339@email.1und1.de>
In-Reply-To: <20170927173948.GA4829@manoharreddy>
References: <20170927173948.GA4829@manoharreddy>
Subject: Re: [PATCH] staging: vc04_services: bcm2835-camera: use BIT macro
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Priority: 3
Importance: Medium
X-Mailer: Open-Xchange Mailer v7.8.3-Rev33
X-Originating-Client: open-xchange-appsuite
X-Provags-ID: V03:K0:eQKcsRYhs3iW7FNKXqL78svEnjDXfLrI0yGRbRNlmA/RItg2VpI
 sBxq2+KjlXXI3O7ky872SVIaCHHg04udyNfiTfho6cqWwEkU8iYPjcD+0SXtf0FajFTKsu6
 fS5HgUizgToVt6EEESVYa19CTeWSoYHpHbjychkgUlNDi28L1KDeu/vJcBVYP/EYfVpT39D
 Sey38eGns3x0KsgI8deug==
X-UI-Out-Filterresults: notjunk:1;V01:K0:u50BPgsEsek=:ylPKJ+psaqgzIQXUKo4Z2V
 BSvgrZdtvHXX+85SpDTAeJaqr449L2mXC+zz9KcGBaRbQyG809yE3FPMpqtTIPmWobXE67xFw
 kVb07S6crImGr4rd9d3Brsx3Nlyhu0DoFZmZr5NCZyp+4lLfhcUVvFAiZRk4YB6a3srf3v0KZ
 cuFeivcBnkUYA9fMAl5tr723fQ+Aqmt4uwFhVg3Cr/M9xuQsg1HELpBqIQHwu7fzEfLqNaQCx
 CozeXUqmjvu2gGmSuTVSamSSN7AeRgXDE2SYgH40W/LFQKWBFW+yD2J3HuA2jXx+7muNDfN/K
 TvgETzjuZtCnT5jnpUOIonnu0AdxgguVRrplYkWJlOIGG36LdUeuRyRzkZTjCASjn07UyMgM1
 xuP+dKLbFnb67apLNZPNTt5AEEBJ7KPwDSc8EDqccaH0M1TBGSYPt+2BeY9qY+b1tJWIcy4AB
 GownZgW2nUomRSVuGUAvZzewfQ9LpGFFHK1CE2fIqZYdSEp1Jb6ZkY5A0tPYfunxsNgUzDtXj
 qQLewWsPC4mkngYXt/glGR7k6zd1C+WECAXeh+YX+q08YXzVJkykrRGptW1sCbv6FGKn27NlZ
 CSOshuYZIU81WdxTb1FiPyujkIPG+alKWDhbPdVUDK8znjUER4EjdvbIRWWoYyWt2Qrz5oRoD
 QYicOvx5sNC9QAugpozL2X8PfGt2PdDFo5EY2jOSwnImKLfqwyg5EY664PB1VBotHbPt9FMe+
 5Cb6VCCB9b52c4nrDrtqJJF6O8tadZJksTMjf7qBBEPf1UKGzGmLdu/YfJo=

Hi Kerrthi,

> Keerthi Reddy <keerthigd4990@gmail.com> hat am 27. September 2017 um 19:39 geschrieben:
> 
> 
> As suggested by Stefan, I split this commit from the previous
> patchset. 
> 
> This commit changes left shift operator to use BIT macro
> 
> Signed-off-by: Keerthi Reddy <keerthigd4990@gmail.com>
> ---
>  .../vc04_services/bcm2835-camera/mmal-msg.h        | 22 +++++++++++-----------
>  .../vc04_services/bcm2835-camera/mmal-parameters.h |  2 +-
>  2 files changed, 12 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h b/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h
> index 1144d9d..5a1b2a7 100644
> --- a/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h
> +++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h
> @@ -217,36 +217,36 @@ struct mmal_msg_port_action_reply {
>  #define MMAL_VC_SHORT_DATA 128
>  
> ...
>  struct mmal_driver_buffer {
>  	u32 magic;
> diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-parameters.h b/drivers/staging/vc04_services/bcm2835-camera/mmal-parameters.h
> index e730022..1967fd1 100644
> --- a/drivers/staging/vc04_services/bcm2835-camera/mmal-parameters.h
> +++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-parameters.h
> @@ -24,7 +24,7 @@
>  /** Common parameter ID group, used with many types of component. */
>  #define MMAL_PARAMETER_GROUP_COMMON            (0<<16)
>  /** Camera-specific parameter ID group. */
> -#define MMAL_PARAMETER_GROUP_CAMERA            (1<<16)
> +#define MMAL_PARAMETER_GROUP_CAMERA            BIT(16)

since these defines aren't flags, so please don't use the BIT macro in this particular case. The other ones are okay.

Best regards

>  /** Video-specific parameter ID group. */
>  #define MMAL_PARAMETER_GROUP_VIDEO             (2<<16)
>  /** Audio-specific parameter ID group. */
> -- 
> 2.7.4
>

