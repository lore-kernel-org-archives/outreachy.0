X-GM-THRID: 6402952524859441152
X-Received: by 10.25.72.71 with SMTP id v68mr219721lfa.9.1490804869665;
        Wed, 29 Mar 2017 09:27:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.5.193 with SMTP id 184ls2526284wmf.21.canary-gmail; Wed, 29
 Mar 2017 09:27:48 -0700 (PDT)
X-Received: by 10.28.155.199 with SMTP id d190mr119821wme.14.1490804868708;
        Wed, 29 Mar 2017 09:27:48 -0700 (PDT)
Return-Path: <jic23@jic23.retrosnub.co.uk>
Received: from saturn.retrosnub.co.uk (saturn.retrosnub.co.uk. [2a01:8000:1ffa:f003:bc9d:1dff:fe9b:7466])
        by gmr-mx.google.com with ESMTPS id t131si440649wmf.1.2017.03.29.09.27.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 29 Mar 2017 09:27:48 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of jic23@jic23.retrosnub.co.uk designates 2a01:8000:1ffa:f003:bc9d:1dff:fe9b:7466 as permitted sender) client-ip=2a01:8000:1ffa:f003:bc9d:1dff:fe9b:7466;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of jic23@jic23.retrosnub.co.uk designates 2a01:8000:1ffa:f003:bc9d:1dff:fe9b:7466 as permitted sender) smtp.mailfrom=jic23@jic23.retrosnub.co.uk
Received: from [10.145.60.63] (82-132-232-254.dab.02.net [82.132.232.254])
	by saturn.retrosnub.co.uk (Postfix; Retrosnub mail submission) with ESMTPSA id 0DE1B40621;
	Wed, 29 Mar 2017 17:27:45 +0100 (BST)
Date: Wed, 29 Mar 2017 17:27:43 +0100
User-Agent: K-9 Mail for Android
In-Reply-To: <20170329160551.GA7230@arushi-HP-Pavilion-Notebook>
References: <20170329160551.GA7230@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2] staging: iio: Remove unneeded parentheses.
To: Arushi Singhal <arushisinghal19971997@gmail.com>,lars@metafoo.de
CC: outreachy-kernel@googlegroups.com,Michael Hennerich <Michael.Hennerich@analog.com>,Jonathan Cameron <jic23@kernel.org>,Hartmut Knaack <knaack.h@gmx.de>,Peter Meerwald-Stadler <pmeerw@pmeerw.net>,Greg Kroah-Hartman <gregkh@linuxfoundation.org>,linux-iio@vger.kernel.org,devel@driverdev.osuosl.org,linux-kernel@vger.kernel.org
From: Jonathan Cameron <jic23@jic23.retrosnub.co.uk>
Message-ID: <6ACE88E5-E497-420B-B7EB-4830F129B394@jic23.retrosnub.co.uk>



On 29 March 2017 17:05:51 BST, Arushi Singhal <arushisinghal19971997@gmail=
=2Ecom> wrote:
>Remove the extra parenthesis remove the checkpatch issue=2E
>
>Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail=2Ecom>

Patch doesn't need resending as already applied=2E
If it did the description is now incorrect!
>---
>changes in v2
> -done the changes according to the current tree
>
> drivers/staging/iio/cdc/ad7746=2Ec | 16 ++++++++--------
> 1 file changed, 8 insertions(+), 8 deletions(-)
>
>diff --git a/drivers/staging/iio/cdc/ad7746=2Ec
>b/drivers/staging/iio/cdc/ad7746=2Ec
>index c2c8aa5585e4=2E=2E7fa9913386f5 100644
>--- a/drivers/staging/iio/cdc/ad7746=2Ec
>+++ b/drivers/staging/iio/cdc/ad7746=2Ec
>@@ -45,10 +45,10 @@
> #define AD7746_STATUS_RDYCAP		BIT(0)
>=20
>/* Capacitive Channel Setup Register Bit Designations
>(AD7746_REG_CAP_SETUP) */
>-#define AD7746_CAPSETUP_CAPEN		(1 << 7)
>-#define AD7746_CAPSETUP_CIN2		(1 << 6) /* AD7746 only */
>-#define AD7746_CAPSETUP_CAPDIFF		(1 << 5)
>-#define AD7746_CAPSETUP_CACHOP		(1 << 0)
>+#define AD7746_CAPSETUP_CAPEN		BIT(7)
>+#define AD7746_CAPSETUP_CIN2		BIT(6) /* AD7746 only */
>+#define AD7746_CAPSETUP_CAPDIFF		BIT(5)
>+#define AD7746_CAPSETUP_CACHOP		BIT(0)
>=20
>/* Voltage/Temperature Setup Register Bit Designations
>(AD7746_REG_VT_SETUP) */
> #define AD7746_VTSETUP_VTEN		(1 << 7)
>@@ -56,9 +56,9 @@
> #define AD7746_VTSETUP_VTMD_EXT_TEMP	(1 << 5)
> #define AD7746_VTSETUP_VTMD_VDD_MON	(2 << 5)
> #define AD7746_VTSETUP_VTMD_EXT_VIN	(3 << 5)
>-#define AD7746_VTSETUP_EXTREF		(1 << 4)
>-#define AD7746_VTSETUP_VTSHORT		(1 << 1)
>-#define AD7746_VTSETUP_VTCHOP		(1 << 0)
>+#define AD7746_VTSETUP_EXTREF		BIT(4)
>+#define AD7746_VTSETUP_VTSHORT		BIT(1)
>+#define AD7746_VTSETUP_VTCHOP		BIT(0)
>=20
>/* Excitation Setup Register Bit Designations (AD7746_REG_EXC_SETUP) */
> #define AD7746_EXCSETUP_CLKCTRL		BIT(7)
>@@ -82,7 +82,7 @@
> #define AD7746_CONF_MODE_GAIN_CAL	(6 << 0)
>=20
> /* CAPDAC Register Bit Designations (AD7746_REG_CAPDACx) */
>-#define AD7746_CAPDAC_DACEN		(1 << 7)
>+#define AD7746_CAPDAC_DACEN		BIT(7)
> #define AD7746_CAPDAC_DACP(x)		((x) & 0x7F)
>=20
> /*

--=20
Sent from my Android device with K-9 Mail=2E Please excuse my brevity=2E

