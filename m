X-GM-THRID: 6400149763723886592
X-Received: by 10.107.178.15 with SMTP id b15mr584821iof.93.1490261523931;
        Thu, 23 Mar 2017 02:32:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.59.194 with SMTP id k60ls2018798otc.34.gmail; Thu, 23 Mar
 2017 02:32:03 -0700 (PDT)
X-Received: by 10.157.27.231 with SMTP id v36mr455587otv.125.1490261523506;
        Thu, 23 Mar 2017 02:32:03 -0700 (PDT)
Return-Path: <dan.carpenter@oracle.com>
Received: from userp1040.oracle.com (userp1040.oracle.com. [156.151.31.81])
        by gmr-mx.google.com with ESMTPS id g82si875068pfb.5.2017.03.23.02.32.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Mar 2017 02:32:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.81 as permitted sender) client-ip=156.151.31.81;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.81 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com
Received: from userv0022.oracle.com (userv0022.oracle.com [156.151.31.74])
	by userp1040.oracle.com (Sentrion-MTA-4.3.2/Sentrion-MTA-4.3.2) with ESMTP id v2N9VrX1008234
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 23 Mar 2017 09:31:53 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
	by userv0022.oracle.com (8.14.4/8.14.4) with ESMTP id v2N9VreI017788
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 23 Mar 2017 09:31:53 GMT
Received: from abhmp0001.oracle.com (abhmp0001.oracle.com [141.146.116.7])
	by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id v2N9VowO019825;
	Thu, 23 Mar 2017 09:31:50 GMT
Received: from mwanda (/154.0.138.2)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Thu, 23 Mar 2017 02:31:49 -0700
Date: Thu, 23 Mar 2017 12:31:46 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: lars@metafoo.de, devel@driverdev.osuosl.org,
        Michael Hennerich <Michael.Hennerich@analog.com>,
        linux-iio@vger.kernel.org,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
        Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
        Hartmut Knaack <knaack.h@gmx.de>, Jonathan Cameron <jic23@kernel.org>
Subject: Re: [PATCH v2] staging: iio: Replace a bit shift by a use of BIT.
Message-ID: <20170323093146.GM32449@mwanda>
References: <20170322164234.GA18805@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170322164234.GA18805@arushi-HP-Pavilion-Notebook>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Source-IP: userv0022.oracle.com [156.151.31.74]

On Wed, Mar 22, 2017 at 10:12:34PM +0530, Arushi Singhal wrote:
>  /* Capacitive Channel Setup Register Bit Designations (AD7746_REG_CAP_SETUP) */
> -#define AD7746_CAPSETUP_CAPEN		(1 << 7)
> -#define AD7746_CAPSETUP_CIN2		(1 << 6) /* AD7746 only */
> -#define AD7746_CAPSETUP_CAPDIFF		(1 << 5)
> -#define AD7746_CAPSETUP_CACHOP		(1 << 0)
> +#define AD7746_CAPSETUP_CAPEN		(BIT(7))
> +#define AD7746_CAPSETUP_CIN2		(BIT(6)) /* AD7746 only */
> +#define AD7746_CAPSETUP_CAPDIFF		(BIT(5))
> +#define AD7746_CAPSETUP_CACHOP		(BIT(0))

Extra parens.

regards,
dan carpenter


