X-GM-THRID: 6470000031137005568
X-Received: by 10.25.233.92 with SMTP id g89mr955396lfh.22.1506444294321;
        Tue, 26 Sep 2017 09:44:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.207.6 with SMTP id f6ls1195701lfg.10.gmail; Tue, 26 Sep
 2017 09:44:52 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QA96avrbVHsIDAVc6G3wgdHgDtgzrHosJ+WSBKCJYx63oogOEWkIB+CnpLPuAFyuLCxMwzV
X-Received: by 10.25.79.23 with SMTP id d23mr903946lfb.34.1506444292863;
        Tue, 26 Sep 2017 09:44:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506444292; cv=none;
        d=google.com; s=arc-20160816;
        b=D1LjDha2QG1ZfloAd/iRbHqf4ZxmZHk35+G45uA/9gPG0bLX1Sd7IQwgDsV8cID/QL
         puCw6x/NnlMBpJcxOuzLm1+McrcrFiz9sLwbT/k2IwWBCm4Zi+wZLMhjYih3zWxCMdJA
         pKJJGRwUmOnqRs54/WKmgpnaI0X1hZst+cIk6PRvKp/wWkhusjMHRvwIV/iat9i96rYw
         awa7jQ8ZIyRBQ3Y11rOfah7EfmNQKQypSAnpQGIVq4BVpuSkFEVaa4Q1ZY2Oo90FwfGg
         ikuT4p3eqy3juBRTqdIex7CU4Tidl9cZvHQFfzvbXPA8NOEMAKufX9uqTw2iS1GHzpUH
         17AQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=importance:content-transfer-encoding:mime-version:subject
         :references:in-reply-to:message-id:cc:to:from:date
         :arc-authentication-results;
        bh=0MvPBzlbXa4uoaKJ/6HeDlLYJ1MxYCAtUV1Vq7ACiuc=;
        b=zHd4auROfHO7ReniVxZCp3RXdr3DSlpDKT8eAby8m/+mBUYnLT+F1m5I1oQPrmNDVZ
         6ws7ovv73KsCqF1/RrL0PPlj4VXVSuHHI0qZph5F+q8oX4cnQyVvIVoQfk+HII+lSFSx
         Nw5J+65Z+lKq3OsFr2K51br6fager/175C6OAWBqxJIWO2SNWBjXXAATMXB1xmuuILsu
         mTq/bvMNvI/XAE8ye0kO0b/daq+BrHCMkswae9p2olrbJGj8HTeB+7pVUSmV7U5sL1mp
         dR4d9+cTGlrwVH5Y7Kgp99i6T9u3VTESW0Op1ZnRFoPJtrauF6Mg/OfeqMVHpZ27sujp
         gS5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.75 is neither permitted nor denied by best guess record for domain of stefan.wahren@i2se.com) smtp.mailfrom=stefan.wahren@i2se.com
Return-Path: <stefan.wahren@i2se.com>
Received: from mout.kundenserver.de (mout.kundenserver.de. [217.72.192.75])
        by gmr-mx.google.com with ESMTPS id j4si251286wmi.2.2017.09.26.09.44.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Sep 2017 09:44:52 -0700 (PDT)
Received-SPF: neutral (google.com: 217.72.192.75 is neither permitted nor denied by best guess record for domain of stefan.wahren@i2se.com) client-ip=217.72.192.75;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.75 is neither permitted nor denied by best guess record for domain of stefan.wahren@i2se.com) smtp.mailfrom=stefan.wahren@i2se.com
Received: from oxbsltgw35.schlund.de ([172.19.249.45]) by
 mrelayeu.kundenserver.de (mreue101 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 0MKJHi-1dxQwP1FeY-001iIB; Tue, 26 Sep 2017 18:44:51 +0200
Date: Tue, 26 Sep 2017 18:44:50 +0200 (CEST)
From: Stefan Wahren <stefan.wahren@i2se.com>
To: Keerthi Reddy <keerthigd4990@gmail.com>
Cc: eric@anholt.net, outreachy-kernel@googlegroups.com
Message-ID: <1791558453.225264.1506444290133@email.1und1.de>
In-Reply-To: <e95b9e3b5f74eee2e2a5586761e2972065dd687f.1506439214.git.keerthigd4990@gmail.com>
References: <cover.1506439214.git.keerthigd4990@gmail.com>
 <e95b9e3b5f74eee2e2a5586761e2972065dd687f.1506439214.git.keerthigd4990@gmail.com>
Subject: Re: [PATCH v2 3/3] staging: vc04_services: add spaces around <<
 operator
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Priority: 3
Importance: Medium
X-Mailer: Open-Xchange Mailer v7.8.3-Rev33
X-Originating-Client: open-xchange-appsuite
X-Provags-ID: V03:K0:Bw+zQZsSbl09aNjB58lGaKcAdYwW7KsPdYYRrXHdBBQyetOUhXs
 sNwM1NtbE/OTdUFvCpFMxN/YkSHC9/RnCGMc82k5f8tgFimhFbrfXJ1nR3b6rX2zkiB6efc
 M0pVCGdQOZELH1EDDh8ePfrtIaYQvdiiB4CpYtRjt9AJPXC+WVRC49d2pR+J6oIHq6F6Shx
 ujiHTg0JLUMO7HGvKOV3g==
X-UI-Out-Filterresults: notjunk:1;V01:K0:a4tEFBJ6ICg=:BAwe/eA5Xl1ElxMwBClWzl
 w/oQPXVD91zaxkHFyUYLqka5EGfY6lvpCcbwsU3RbInu2VO1Ra7Jwk+sP966ZopYNaAnmt5CV
 8izG4MYpzQAsTNVViUkqo94CTUN4fyiMHO+uQeuNvNjEnq/BNKZnnYJHeckV7W0V83vT4dNt8
 aInErUBC21fMqqn+J+TFUs99tMpU/a0tPuyNoXnyOTx1++srpUz0p19DeKQIoKc/R0HLg5qEK
 7+X5Vbst/q5ru4kVLfN19z/ZoJMx4rXlH21EEkv2wt/4zo3Mt4wYOruiDZuNIkwaKNvm12YRD
 VxiiJ8aMWjT02xJFNmKq5UXX1EnJt50hKx2qhhcL4wEJ39WiDjwqMKIbyJ3xGhB4qxDQ4zevl
 jq5ONEXudorNSISJwWejhN/wP1WdnnnZj0JiNKApn8SKw1K5X9zAwKsS8GcamtIWdchp6E5en
 Bu39AGwrQ+u1eJJFCachv4rFSmoEBNGsTsK9NzPk+mJCTF66KcY4DgmBIbPSbYy8AlO8QLS9F
 WhTuFFJ95QVfo0LFJSbwWscUNkcJ08p5NIayLqR96Ql/ifqrz3Vt121a991ONNtSkABlD43NQ
 su4zIb3cGXPHsppUYg97gPM+d628tpg4C3pu+H5aCl1mHnwJR7PhV1cgERFZNZj9v1Kq/pMj7
 EG9MzTiTKYkAKB2FCEyUjDM6V7yHRptlEXCdSt1611t9oCR93lg1G1ABAmHy/fumtGRpLacdo
 CHy5gACm3EEHZPcozC8sG/XerbGrot0IiUO8qvzCuVMdrDsZtrGCjEyt2WI=

Hi Keerthi,

> Keerthi Reddy <keerthigd4990@gmail.com> hat am 26. September 2017 um 17:33 geschrieben:
> 
> 
> Follow coding convention by adding providing space
> around << operators
> 
> Signed-off-by: Keerthi Reddy <keerthigd4990@gmail.com>
> ---
>  changes in v2:
>  * No changes
> 
>  .../vc04_services/bcm2835-camera/mmal-msg.h        | 22 +++++++++++-----------
>  .../vc04_services/bcm2835-camera/mmal-parameters.h | 12 ++++++------
>  2 files changed, 17 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h b/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h
> index 1144d9d..0dfad29 100644
> --- a/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h
> +++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h
> @@ -217,36 +217,36 @@ struct mmal_msg_port_action_reply {
>  #define MMAL_VC_SHORT_DATA 128
>  
>  /** Signals that the current payload is the end of the stream of data */
> -#define MMAL_BUFFER_HEADER_FLAG_EOS                    (1<<0)
> +#define MMAL_BUFFER_HEADER_FLAG_EOS                    (1 << 0)
>  /** Signals that the start of the current payload starts a frame */
> -#define MMAL_BUFFER_HEADER_FLAG_FRAME_START            (1<<1)
> +#define MMAL_BUFFER_HEADER_FLAG_FRAME_START            (1 << 1)
>  /** Signals that the end of the current payload ends a frame */
> -#define MMAL_BUFFER_HEADER_FLAG_FRAME_END              (1<<2)
> +#define MMAL_BUFFER_HEADER_FLAG_FRAME_END              (1 << 2)
>  /** Signals that the current payload contains only complete frames (>1) */
>  #define MMAL_BUFFER_HEADER_FLAG_FRAME                  \
>  	(MMAL_BUFFER_HEADER_FLAG_FRAME_START|MMAL_BUFFER_HEADER_FLAG_FRAME_END)
>  /** Signals that the current payload is a keyframe (i.e. self decodable) */
> -#define MMAL_BUFFER_HEADER_FLAG_KEYFRAME               (1<<3)
> +#define MMAL_BUFFER_HEADER_FLAG_KEYFRAME               (1 << 3)
>  /** Signals a discontinuity in the stream of data (e.g. after a seek).
>   * Can be used for instance by a decoder to reset its state
>   */
> -#define MMAL_BUFFER_HEADER_FLAG_DISCONTINUITY          (1<<4)
> +#define MMAL_BUFFER_HEADER_FLAG_DISCONTINUITY          (1 << 4)
>  /** Signals a buffer containing some kind of config data for the component
>   * (e.g. codec config data)
>   */
> -#define MMAL_BUFFER_HEADER_FLAG_CONFIG                 (1<<5)
> +#define MMAL_BUFFER_HEADER_FLAG_CONFIG                 (1 << 5)
>  /** Signals an encrypted payload */
> -#define MMAL_BUFFER_HEADER_FLAG_ENCRYPTED              (1<<6)
> +#define MMAL_BUFFER_HEADER_FLAG_ENCRYPTED              (1 << 6)
>  /** Signals a buffer containing side information */
> -#define MMAL_BUFFER_HEADER_FLAG_CODECSIDEINFO          (1<<7)
> +#define MMAL_BUFFER_HEADER_FLAG_CODECSIDEINFO          (1 << 7)
>  /** Signals a buffer which is the snapshot/postview image from a stills
>   * capture
>   */
> -#define MMAL_BUFFER_HEADER_FLAGS_SNAPSHOT              (1<<8)
> +#define MMAL_BUFFER_HEADER_FLAGS_SNAPSHOT              (1 << 8)
>  /** Signals a buffer which contains data known to be corrupted */
> -#define MMAL_BUFFER_HEADER_FLAG_CORRUPTED              (1<<9)
> +#define MMAL_BUFFER_HEADER_FLAG_CORRUPTED              (1 << 9)
>  /** Signals that a buffer failed to be transmitted */
> -#define MMAL_BUFFER_HEADER_FLAG_TRANSMISSION_FAILED    (1<<10)
> +#define MMAL_BUFFER_HEADER_FLAG_TRANSMISSION_FAILED    (1 << 10)
>  

i agree with Julia to use the BIT macro for those flags. But in this case the patch must be split.

Thanks
Stefan

