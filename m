X-GM-THRID: 6463264709450661888
X-Received: by 10.28.142.201 with SMTP id q192mr103253wmd.23.1504852149552;
        Thu, 07 Sep 2017 23:29:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.56.73 with SMTP id d9ls89687lfj.22.gmail; Thu, 07 Sep 2017
 23:29:07 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QD/K1jyQ5Mpn8lEg/pOfGtBQEReFgjTQyOHjbNFGwaFHfIOZkCobgqDg/ci5k2RTgyBCwHr
X-Received: by 10.25.38.140 with SMTP id m134mr125418lfm.2.1504852147926;
        Thu, 07 Sep 2017 23:29:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504852147; cv=none;
        d=google.com; s=arc-20160816;
        b=FBrqu+x9Y0e3+uVh2X3MYWB/fXmD8mnCzd1xeMKTy/tPk/kjCWngr+oVR5JB+aHQIl
         2N/o/mu4+KgwgTnwkUMDwnR/ztk8CzTaQVBcLXkZ7BDCQqcW/UOhGfSVoJnhNFuz/Km3
         I8VBIiXLIDr81vhWelYVZf0I2Qfyp+EfnmGt3O/w8fK+RnG1fYPyqYoifio1hKBng7GN
         8fGH5Jallftm3pEj4H2mwWWqtRJoWfgduTB9j9OxzNwkFQJJZkTXQ+OqoNYbeEQripMX
         L0/CjnMLFifMs8+SDPqPHqfHWvzJ42AIolGtCX04Tvt27TfuLxws1AD0sbir2jdzVMUi
         Flag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:from:to:subject:content-transfer-encoding:mime-version
         :references:in-reply-to:user-agent:date:arc-authentication-results;
        bh=Q4Ni7kJa6JCdkFU3SdTb5Oxim4Rw9eVY7RjjkSmPT3w=;
        b=ljNbBbL9GfgrzOSOfBTm9l8dHnWWxMzg1ixU7f53Q92uTxCBsqSsUShSh+wRkTdty7
         8lMVk250tH8i6OinusaPgEpl9DhSaecaD+EanJutry2qkH4Yd5gdDITyYBs2ucjQGWCZ
         WDmLwaa1Exp+WGK4A3A3RVkJHUD0oFZSTw/8Lj/pI0qA4wNSjMkYgstLnIu8X7UPaEgY
         5k4X4lJGgqNsvLgB/FHyoMWQpQmS/51LhNhs/Y3tbJYgQpRt0noCeqYXHWWhd+CUfJGx
         eCkpVromdlby+5t+WDtqzoIDdyysh3y6xsf6zXn6uIsMaSrN572FLdxByGmBumN1HP/V
         W+Tg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jic23@jic23.retrosnub.co.uk designates 178.18.118.26 as permitted sender) smtp.mailfrom=jic23@jic23.retrosnub.co.uk
Return-Path: <jic23@jic23.retrosnub.co.uk>
Received: from saturn.retrosnub.co.uk (saturn.retrosnub.co.uk. [178.18.118.26])
        by gmr-mx.google.com with ESMTPS id d82si65524wmd.1.2017.09.07.23.29.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Sep 2017 23:29:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of jic23@jic23.retrosnub.co.uk designates 178.18.118.26 as permitted sender) client-ip=178.18.118.26;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jic23@jic23.retrosnub.co.uk designates 178.18.118.26 as permitted sender) smtp.mailfrom=jic23@jic23.retrosnub.co.uk
Received: from [192.168.0.4] (cpc91196-cmbg18-2-0-cust659.5-4.cable.virginm.net [81.96.234.148])
	by saturn.retrosnub.co.uk (Postfix; Retrosnub mail submission) with ESMTPSA id 1700740582;
	Fri,  8 Sep 2017 07:29:05 +0100 (BST)
Date: Fri, 08 Sep 2017 07:29:06 +0100
User-Agent: K-9 Mail for Android
In-Reply-To: <20170908044752.GA6199@himanshi-Inspiron-5558>
References: <20170908044752.GA6199@himanshi-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH] Staging: iio: adc: Added Space around binary op.
To: Himanshi Jain <himshijain.hj@gmail.com>,outreachy-kernel@googlegroups.com,lars@metafoo.de,Michael.Hennerich@analog.com,jic23@kernel.org,knaack.h@gmx.de,pmeerw@pmeerw.net,gregkh@linuxfoundation.org,linux-iio@vger.kernel.org,devel@driverdev.osuosl.org,linux-kernel@vger.kernel.org
From: Jonathan Cameron <jic23@jic23.retrosnub.co.uk>
Message-ID: <DEB4AC67-43D5-40F9-9495-DB4966A07661@jic23.retrosnub.co.uk>



On 8 September 2017 05:47:52 BST, Himanshi Jain <himshijain=2Ehj@gmail=2Ec=
om> wrote:
>Added space around(one on each side of) binary
>operator(-) as preferred according to kernel
>coding style=2E
>
>Signed-off-by: Himanshi Jain <himshijain=2Ehj@gmail=2Ecom>

Take a closer look at that macro=2E It isn't doing what you think=2E=2E=2E=
  To give a hint, changing this breaks userspace=2E

Jonathan


>---
> drivers/staging/iio/adc/ad7192=2Ec | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>
>diff --git a/drivers/staging/iio/adc/ad7192=2Ec
>b/drivers/staging/iio/adc/ad7192=2Ec
>index d11c6de=2E=2E1aee662 100644
>--- a/drivers/staging/iio/adc/ad7192=2Ec
>+++ b/drivers/staging/iio/adc/ad7192=2Ec
>@@ -341,7 +341,7 @@ static int ad7192_setup(struct ad7192_state *st,
> }
>=20
> static IIO_DEVICE_ATTR_NAMED(in_v_m_v_scale_available,
>-			     in_voltage-voltage_scale_available,
>+			     in_voltage - voltage_scale_available,
> 			     0444, ad7192_show_scale_available, NULL, 0);
>=20
> static IIO_DEVICE_ATTR(in_voltage_scale_available, 0444,

--=20
Sent from my Android device with K-9 Mail=2E Please excuse my brevity=2E

