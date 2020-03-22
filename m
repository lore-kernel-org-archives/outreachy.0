X-GM-THRID: 6805399652543758336
X-Received: by 2002:a5d:9707:: with SMTP id h7mr16414732iol.112.1584907053643;
        Sun, 22 Mar 2020 12:57:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:8619:: with SMTP id g25ls2802353ild.7.gmail; Sun, 22 Mar
 2020 12:57:32 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvVmlrIj5ozYqywKUN30W/BWvW4beKDg29P49/sXxt4LThdKl6Ac34ygY1dMwJFSUJq1HO7
X-Received: by 2002:a92:8989:: with SMTP id w9mr18198410ilk.56.1584907052580;
        Sun, 22 Mar 2020 12:57:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584907052; cv=none;
        d=google.com; s=arc-20160816;
        b=Lsbtv1JUEVFA/ObjHoY27SFooECiuSR8hnd1GKycHe3IZ/Nh/6orANL45TT5KfbujW
         EwLOi6ft7cRsFC4ad9mBNgOiXsdMwKn5GvQw/Mex16EOSMsBifaicXDHrRsk2DB5+hML
         WJvMFk1dftQKvGAg8PdwtMTiWelQ6sdHuGDEvjlqZmljQggQihttbzNZpYh714yRfdRY
         ds/iq15WKj7J8iVW4epH+uJ9h96tr2Eb3Tb6z2g3fZHRMR5r3sfckNmo2nWyR/OtK/rZ
         W5agPLUPLTtAVjaN0IFBKO/h/Yugic2XTnxTNo8xt1gTXsDYo9H0tUNqqjYOFTpXZXrV
         CA6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=nQ9eVZZkX7CNW4Rrn5Fg/rgNjC4YD968Vs0CMRGqKrU=;
        b=wZRe3npgEprDrfE4NDfvepOqB2TUtCQc4YJ0ulBMckcAeQ3LE5+PJ19AGAh5ViazQC
         9H5lHSqu4oGkVKvGQo2WfX3rSsH1GuxDzdX3R3nW73etX+6aiykHfbCGbKX+wLQEedEo
         mAI+VC14X4ng67A8i9+/O9ZtVrw91bm04/I9is6lqb/RWW+MwOr4xzCAZfI1JsmIAYqZ
         eOoMFFoC1Nf12ztHNHa0M6iumRs/+DtJxxoh4nB9whZme7iDJCUmH/ktVKLmUBFhgjjA
         M2jmvuwcwz1XCrBS2C8gRvb/J3JacW+bilZOGaPRdBiCksfK8Hh9BiRZlmlMF1bJMamC
         745w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SfDgZrJ2;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id a3si890405iog.2.2020.03.22.12.57.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Mar 2020 12:57:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SfDgZrJ2;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id f206so6380456pfa.10
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Mar 2020 12:57:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=nQ9eVZZkX7CNW4Rrn5Fg/rgNjC4YD968Vs0CMRGqKrU=;
        b=SfDgZrJ2myaLMUKc8v50MYhR/ORCTCARjHVrRdgFRIHRtvBbSZVJ8NrM+1Y1G8OK5x
         E0V2ZFYM6atbNEzKsRBVLbQXwArHAbHil0UgbTa+IQZ+AdlrmKuJ1omJrT8OroMEwUyS
         WBoH+Q562xyd5BSOSkf+bjpu9MlGx1IP2OEWYXJyisyKPLGFHwg/t0Q4aHlXSerSVtwW
         3k3wym1CHHEFGFAq6YSot2VjmiQiNQOTStyl1JDH+LKqDBLDwtGF2eaoawc7ZGhjEWmy
         kiUUsdWgvaQWw7+VidG9kdb09z+Tr/jUEG2fHTnTXAo2KL8Ikndi+XekJkZWZUHsSWwe
         js4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=nQ9eVZZkX7CNW4Rrn5Fg/rgNjC4YD968Vs0CMRGqKrU=;
        b=haeWy3WD0PKcd3mpNiuA/tIJqPJw53A0z1AUt+ce48n5bcPhXBBj8qLCji+VrBBOzn
         ojB5WvIylpq5S/STRKl5rm010urAL48YVRl15HoG7VJlbFGhT3cuMHJPKtTch3uczuc5
         eWAUJ3AvivLqbEnWJSHgjRIIpJIMDWPpsiu7tdIW6BGPGas6a4KfabB1LTv7irp5O6dy
         X7tajHya8uKgFC2+J68chdX47AsQVxYWOHW6lwjYaO5e6x6/RPGOIyjtSezIW/x6aprm
         1psEVMsUu/a6GGbcdMJRG6kWzApYByT0T1Z5KzqvO512BA0c9HttFwF9FMr5sZdPWsxu
         /Nlg==
X-Gm-Message-State: ANhLgQ1Y0JItQUxo7FmdfaD1ZWK8+ZNybML16w6JdW6uOuG41DrcUi+4
	puU6qnNRDqKvrXu/NRoZz89f0svE
X-Received: by 2002:a62:520a:: with SMTP id g10mr20571648pfb.271.1584907051846;
        Sun, 22 Mar 2020 12:57:31 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from deeUbuntu ([103.240.207.191])
        by smtp.gmail.com with ESMTPSA id b22sm11068549pfi.213.2020.03.22.12.57.28
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 22 Mar 2020 12:57:31 -0700 (PDT)
Date: Mon, 23 Mar 2020 01:27:26 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
	daniel.baluta@gmail.com, kieran.bingham@ideasonboard.com
Cc: lars@metafoo.de, Michael.Hennerich@analog.com, jic23@kernel.org,
	knaack.h@gmx.de, pmeerw@pmeerw.net, gregkh@linuxfoundation.org,
	linux-iio@vger.kernel.org
Subject: [PATCH v3 4/4] staging: iio: adc: ad7280a: Add comments to clarify
 stringified arguments
Message-ID: <469bf8db1c228913e72841367182fba2168fe795.1584904896.git.mh12gx2825@gmail.com>
References: <cover.1584904896.git.mh12gx2825@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1584904896.git.mh12gx2825@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

Checkpatch would flash a check message around a stringified macro
argument containing a '-' character. Add comment to indicate the
argument is legitimate and doesn't need fixing.

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
Suggested-by: Lars-Peter Clausen <lars@metafoo.de>

---

Changes since v2:
	- None. Patch added in v3

Changes since v1:
	- None. Patch added in v3

 drivers/staging/iio/adc/ad7280a.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/staging/iio/adc/ad7280a.c b/drivers/staging/iio/adc/ad7280a.c
index 19a5f244dcae..bef6bd1295ea 100644
--- a/drivers/staging/iio/adc/ad7280a.c
+++ b/drivers/staging/iio/adc/ad7280a.c
@@ -824,6 +824,10 @@ static irqreturn_t ad7280_event_handler(int irq, void *private)
 	return IRQ_HANDLED;
 }
 
+/* Note: No need to fix checkpatch warning that reads:
+ *	CHECK: spaces preferred around that '-' (ctx:VxV)
+ * The function argument is stringified and doesn't need a fix
+ */
 static IIO_DEVICE_ATTR_NAMED(in_thresh_low_value,
 			     in_voltage-voltage_thresh_low_value,
 			     0644,
-- 
2.17.1


