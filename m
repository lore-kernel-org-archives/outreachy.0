X-GM-THRID: 6612972487393148928
X-Received: by 2002:a25:910d:: with SMTP id v13-v6mr16040749ybl.68.1539806222414;
        Wed, 17 Oct 2018 12:57:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:8081:: with SMTP id n1-v6ls7916838ybk.21.gmail; Wed, 17
 Oct 2018 12:57:01 -0700 (PDT)
X-Google-Smtp-Source: ACcGV63c+Y8xNUraoxWU9gkHb9bw3GJUDiIUONOzUdP3K6xRV04Up8+1NsChSh8ggfUPY3JOQWwx
X-Received: by 2002:a25:8491:: with SMTP id v17-v6mr16102518ybk.21.1539806221548;
        Wed, 17 Oct 2018 12:57:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1539806221; cv=none;
        d=google.com; s=arc-20160816;
        b=UhkhgsQ+EEd7ynx445utcq3twxoSIqFFjKM1D8xKcsdhb0I46SRKYlZmpfOnAwedoG
         2X9T5KSAWFQ3QqwLt4E9xbld0ipkm9KsPPuLKeBLdNzpcheMhjf7ipzBM+ZpEah4mMLe
         wX5YRXudMHC5SzcYFC1e8217aZMZh7M2czvvbHnNF1Nh+qzx9YnHPMs6NQdagxX6lK8z
         9LBDc2d3VBd7DJZPNIp7QIp+KlBhGhM7fhE0WdB+lpa/aqNAV/e/9+21bCId2K0Isc0A
         PzAweOZ4gEVKY71rSsJeUrproTS9e4V4uD6EO+Xt5h7gqx+0oLjpnm9exgIDpbSfjByR
         Yupw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=hHHRITEtszA+N+ynnHJ2/9aXP6q2UM/x7PAgRAz8fxw=;
        b=v4YAM1ylVrKuIwy9Xze8RGakf0AXgCny0uwAklvyV6QjbreclY6Gw1yN0hM52r3L/g
         pzrgtaqNpvFIvWgW8SRo7RN0GxS/xoSCuCv2qGjtDhGUx7Ng+yhc8z6MzMjE6YqBc0oA
         N3qSM4MMKfLpwznpA56hYAv7svpYj/1uskdOJKdrW7pkAuJfRFwEjQ/ow9aZlr94yq0W
         1VQvJT2Dy0OghBm7kxmbavdUE7eeWmkrfJBGUa8Y97qC+spueKzlKvE3eI45HrmFhEtG
         wlcJltFdyzCUrUGGH6onbH96GB9aEYXYEwtXwa8Exlt+m7PwAjpxeVzhxIGusu+atBrc
         f8PA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2018-07-02 header.b=byBX+Zoq;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Return-Path: <dan.carpenter@oracle.com>
Received: from aserp2120.oracle.com (aserp2120.oracle.com. [141.146.126.78])
        by gmr-mx.google.com with ESMTPS id u11-v6si836873ybi.2.2018.10.17.12.57.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Oct 2018 12:57:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.78 as permitted sender) client-ip=141.146.126.78;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2018-07-02 header.b=byBX+Zoq;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
	by aserp2120.oracle.com (8.16.0.22/8.16.0.22) with SMTP id w9HJnmSn112373;
	Wed, 17 Oct 2018 19:56:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2018-07-02;
 bh=hHHRITEtszA+N+ynnHJ2/9aXP6q2UM/x7PAgRAz8fxw=;
 b=byBX+Zoq95nPjv8yfnVY3dwPPCMvv82rUU8Llblc703l7TgYe5ZsmjaGmQZqgPlJf2x6
 Jf3MHc9DhEk8ZOdg9vMAxV9TqhtebQLE+XyF3g7lIp5S7v4pHAFXodRHFptCLMsRrzBR
 2KOk/emEsW6Q69qYmDL1h96g5nSY/I24Mo8jALzWAhUC0f9DrOg2r3FtIpHcwd4p4Lno
 Y9vOQj+7Gi5VOiwqI77DLHoPMBY9nd23kTY+afuZNyhlebqLe6vrUH6TXgTqW6UqQbNC
 +qTErsgsh1fm3nqF3XhO+aDeCKTNqA0RSQZPNnT7GFhyko4peRjmPguv6E8y/rBoUJ00 zg== 
Received: from aserv0021.oracle.com (aserv0021.oracle.com [141.146.126.233])
	by aserp2120.oracle.com with ESMTP id 2n38nq95uv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 17 Oct 2018 19:56:52 +0000
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
	by aserv0021.oracle.com (8.14.4/8.14.4) with ESMTP id w9HJukYg027062
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 17 Oct 2018 19:56:47 GMT
Received: from abhmp0010.oracle.com (abhmp0010.oracle.com [141.146.116.16])
	by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id w9HJuirm015808;
	Wed, 17 Oct 2018 19:56:45 GMT
Received: from mwanda (/129.205.6.86)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Wed, 17 Oct 2018 12:56:44 -0700
Date: Wed, 17 Oct 2018 22:56:32 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Sasha Levin <sashal@kernel.org>
Cc: Nishad Kamdar <nishadkamdar@gmail.com>, devel@driverdev.osuosl.org,
        Lars-Peter Clausen <lars@metafoo.de>,
        Michael Hennerich <Michael.Hennerich@analog.com>,
        linux-iio@vger.kernel.org,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
        Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
        Hartmut Knaack <knaack.h@gmx.de>, Jonathan Cameron <jic23@kernel.org>
Subject: Re: [PATCH v2] staging: iio: ad7816: Switch to the gpio descriptor
 interface
Message-ID: <20181017195632.xqxevygukhat6hkh@mwanda>
References: <20181017144716.GA11485@nishad>
 <20181017145823.GC135013@sasha-vm>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20181017145823.GC135013@sasha-vm>
User-Agent: NeoMutt/20170609 (1.8.3)
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=9049 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=713
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1807170000 definitions=main-1810170164

On Wed, Oct 17, 2018 at 10:58:23AM -0400, Sasha Levin wrote:
> On Wed, Oct 17, 2018 at 08:17:20PM +0530, Nishad Kamdar wrote:
> > +	chip->rdwr_pin = devm_gpiod_get(&spi_dev->dev, "rdwr", GPIOD_IN);
> > +	if (IS_ERR(chip->rdwr_pin)) {
> > +		ret = PTR_ERR(chip->rdwr_pin);
> > +		dev_err(&spi_dev->dev, "Failed to request rdwr GPIO: %d\n",
> > +			ret);
> > 		return ret;
> > 	}
> > -	gpio_direction_input(chip->rdwr_pin);
> > -	ret = devm_gpio_request(&spi_dev->dev, chip->convert_pin,
> > -				spi_get_device_id(spi_dev)->name);
> > -	if (ret) {
> > -		dev_err(&spi_dev->dev, "Fail to request convert gpio PIN %d.\n",
> > -			chip->convert_pin);
> > +	chip->convert_pin = devm_gpiod_get(&spi_dev->dev, "convert", GPIOD_IN);
> > +	if (IS_ERR(chip->convert_pin)) {
> > +		ret = PTR_ERR(chip->convert_pin);
> > +		dev_err(&spi_dev->dev, "Failed to request convert GPIO: %d\n",
> > +			ret);
> > 		return ret;
> > 	}
> > -	gpio_direction_input(chip->convert_pin);
> > -	ret = devm_gpio_request(&spi_dev->dev, chip->busy_pin,
> > -				spi_get_device_id(spi_dev)->name);
> > -	if (ret) {
> > -		dev_err(&spi_dev->dev, "Fail to request busy gpio PIN %d.\n",
> > -			chip->busy_pin);
> > +	chip->busy_pin = devm_gpiod_get(&spi_dev->dev, "busy", GPIOD_IN);
> > +	if (IS_ERR(chip->busy_pin)) {
> > +		ret = PTR_ERR(chip->busy_pin);
> > +		dev_err(&spi_dev->dev, "Failed to request busy GPIO: %d\n",
> > +			ret);
> > 		return ret;
> > 	}
> 
> Hm, from what I can tell devm_gpio_request() is allocating some memory,
> which makes this a series of 4 allocations.
> 
> What happens if the fourth allocation fails? Do we leak the first three?

These are devm_ allocations.  They are freed when &spi_dev->dev is
released.

regards,
dan carpenter


