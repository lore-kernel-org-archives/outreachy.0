X-GM-THRID: 6470534471821033472
X-Received: by 10.28.101.133 with SMTP id z127mr374824wmb.32.1506544761445;
        Wed, 27 Sep 2017 13:39:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.74.66 with SMTP id x63ls630915wma.10.gmail; Wed, 27 Sep
 2017 13:39:20 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QD6Gr4guJGXzcdkPItQmOh0UtNDE9nbSzZn2jT3GRE3Ouq6gyvhKBX3x0V3QAM2bwRbwctv
X-Received: by 10.28.212.14 with SMTP id l14mr425511wmg.11.1506544760677;
        Wed, 27 Sep 2017 13:39:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506544760; cv=none;
        d=google.com; s=arc-20160816;
        b=u+HpabA93R4bh58gePJhUHQX7fxG8HgDmS2InSa+B2u16iPacQnINcUZgsCKWU/L36
         w4H7MIvnz/bdKJwXrBI1aFMt9cdHsAzS4fbzdxOZiPxsxeytktiOGMrdN6bleTyyJqmk
         2QI+qfFemDTY2agAeNTITRHxH+tvg0CZKLooTxVSWLN20WrhWAgBTNIQsh7hgqfoQDb3
         EjoUgvMguODFfbcSA8FD/3cd0xrFamHjZKMGl+oNEqkyPk86wxDLNpWK54U1QQzQhrs5
         B9N+B/+Nw7DM1cpHcXH3cdNTS56Jh0j/nONZPolYqSRDIoHYbKdMjzPMiKe2+A12C4sw
         qGHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=importance:content-transfer-encoding:mime-version:subject
         :references:in-reply-to:message-id:to:from:date
         :arc-authentication-results;
        bh=zfPJjmb+a2OQUpi5R1tNA1kuxSUNJd+TdgLtjtaFmuY=;
        b=fFqrUOEUf7h4jXZu4C+zzlw9pXe5ab0BbR9i7gRLPrP8kX6DJmY4JI/TNRrs83sJpv
         FVePmEb25WcxNrwawJvuQxpgymVqzhsP/l07mqsNG9qQVtuj0oa2JNypYPpqkwnTSd3J
         JmtHSuW/itzZK4trnQqPLcIrJtDaS0UDKOdxgsEyphFgTJ1CqszPRtSkgMe674i0NT5G
         ZQ6fdSDq9vhZHYH3JeY/Cx7DtVZSTFPnfHvyNwS0MDxz8cWGWgKdRg0Lox5Ge/pDgt0k
         wzdP40oaVGj9/t0FpJq1ZPvgdOCdiYbY23XyqhAJxDNFCsEWPF/MCxpGL3cGyzOqpL/r
         cnyQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of stefan.wahren@i2se.com) smtp.mailfrom=stefan.wahren@i2se.com
Return-Path: <stefan.wahren@i2se.com>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.131])
        by gmr-mx.google.com with ESMTPS id h17si40022wmd.0.2017.09.27.13.39.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Sep 2017 13:39:20 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of stefan.wahren@i2se.com) client-ip=212.227.126.131;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of stefan.wahren@i2se.com) smtp.mailfrom=stefan.wahren@i2se.com
Received: from oxbsltgw00.schlund.de ([172.19.249.17]) by
 mrelayeu.kundenserver.de (mreue006 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 0MMtZ5-1dzEuu164N-008X6f; Wed, 27 Sep 2017 22:39:19 +0200
Date: Wed, 27 Sep 2017 22:39:17 +0200 (CEST)
From: Stefan Wahren <stefan.wahren@i2se.com>
To: eric@anholt.net, Keerthi Reddy <keerthigd4990@gmail.com>,
	outreachy-kernel@googlegroups.com
Message-ID: <1163868275.94469.1506544757702@email.1und1.de>
In-Reply-To: <20170927185815.GA8622@manoharreddy>
References: <20170927185815.GA8622@manoharreddy>
Subject: Re: [PATCH v2] Staging: vc04_services: bcm2835-camera: use BIT
 macro
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Priority: 3
Importance: Medium
X-Mailer: Open-Xchange Mailer v7.8.3-Rev33
X-Originating-Client: open-xchange-appsuite
X-Provags-ID: V03:K0:jvSIqpFLdcSPu716N3xIxeIln5T2r1eNwNVCTj0bDqsORS+vnHH
 dwwlsq9ruKvvYVipant5Z1Qi886lN6lEpTzJQQaW39K1S4a/BDvNywDaNonMa01OxMj41Ea
 mg6Xu0nUN8hYGa8j3EG40KEYz1QPEm/gw8J9ixGRvulvMC4ijpm/LnT4MBszOuQLLFwsy6o
 xRKGrgs5GFKNb2G3uUIgw==
X-UI-Out-Filterresults: notjunk:1;V01:K0:AMOktzQoZWg=:WO2aDm+ee4vqtf/2m0IKys
 Lcn/yG7F5JsahEGEQMqtDrWN3GP/f5swOrb5RPIpZJB0VBSCxZ1zCHVIVdE3xga1WkTzDnNSv
 cGPuySIruCjxjl5LtrEA4FEnPo8L32ASX5bKtP6jg21J21RdXbW4aons2tFdpi40N4+JLd9vD
 2ys7dRtc5yg4q0j//g2hpc4lplVSZUaXBwi0kHvJ+5QFzbCcd4Eziw9ZxNkBBjGJuk3diNMut
 stqjSnx8oGQUSSOxEepar9149j8TtXS3TFA5eUqtETCVZpSE3OqPxmKQJb88uRmLAtV0gXlTn
 S/+w5yiBSaYZNY6rYLANdUReRAXYIbLlct5eXsQmFtuyprE0V1gbY5tzD4J0s3+MznCj+QiC+
 HOM9+sfQDvj10u4a2Lq4MmmHIJ/JCI3nN5ucAHB6lG/PK2OwQQ225oohKABMkpQxfENPMPrE+
 dbTaMLo/nyZWx4Hn2OmP9Q45HHLHWFakBUAwzlJ03Dssp1ZEvQzrde4HJ2xDuMkhjZ4/4Mq68
 ec/qEkWWsRR2RIjogsuJEn01+CStO8goeycTcYI4MmWeG8NqsXq/pSiTdOr4uTrid3M0kDReB
 mtwab2YeHljtwfzqRK6XU6ZkGjSlFHFjypeJZ1KiEXVQK4tUtX5xX8YpKlOiL9rZ+oWfRN/9l
 kKY7ZOdm9MMrOgdB/4wiIvmRPR9wDFwBdyNw8WtM+7sXWNOIxyNXpr/M9WuYf4x0ppvNWnBbf
 DzguBeVEnxk7NFqCb5r/IxZE3fxe64bqDTdo303LWm1WyE6MHBpBUMPDl6U=


> Keerthi Reddy <keerthigd4990@gmail.com> hat am 27. September 2017 um 20:58 geschrieben:
> 
> 
> Use BIT macro instead of left shift
> 
> Signed-off-by: Keerthi Reddy <keerthigd4990@gmail.com>

Acked-by: Stefan Wahren <stefan.wahren@i2se.com>

