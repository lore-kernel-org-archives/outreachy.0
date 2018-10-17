X-GM-THRID: 6612972487393148928
X-Received: by 2002:a1c:9902:: with SMTP id b2-v6mr285384wme.4.1539787795574;
        Wed, 17 Oct 2018 07:49:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:f183:: with SMTP id h3-v6ls3294700wro.23.gmail; Wed, 17
 Oct 2018 07:49:54 -0700 (PDT)
X-Google-Smtp-Source: ACcGV600Dx1YFUDiDl8V8/TlKxsv29T/em8y2O48kyLd/UzoSRrqnbYSUw6UfJd9ibpydV6CKPSO
X-Received: by 2002:a5d:5287:: with SMTP id c7-v6mr2376965wrv.14.1539787794535;
        Wed, 17 Oct 2018 07:49:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1539787794; cv=none;
        d=google.com; s=arc-20160816;
        b=Ukp8JdBu5tgAEKUCWGlKB8/6i4agJPrdgbwAEAveflKK+DyWoDnWINbdqPhEHluZpH
         YaCR/Ays8jZAAT6MtdZ4pXq2TEFw87vR8G03XVb3FEKdzbrYKZ+0tXON4NxsZjvqrLvq
         /wxTmatoUlqLEe7B+HCyKYVzBHUEFy4F15hLX8nNHraq9n2rySVAl0u0xG0copt93aZI
         nSOCCYTEi1lGeuD6gFp+vhK+MU3hYITxC3wwsir+VleOAaOuHk5AklKeazaJHSOGOUzz
         +H+YZxRULwQeWwGmqUWM4F+10uYBo5B5egCWVWbeYpp/ShH6X4BE1vAPQhtUFc+natlr
         0rUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=lt22cRlZrEYSgbkEbt0lpeGO9pw8OH3WjeyGTxgR464=;
        b=kMlg0irobz7Bpu7jAIoJ+QPN9KT00gfB+eCA3VerptFZGVAIDJERIfuQUiHOysCnrS
         35+02QGSuU7QEnsNGCIGxCmQIfgCRmSAjgXcWRFebUcm/KfEJgAOzWYKaAMLIBNMFoNO
         xFGgbe2wUeaY9uptjvRFHOrKPRV5pomQFfiOFG25d/k/586QtNQNsZQie87liRAyIbRE
         R4sTKMSLo7qSTXA3QwBz1asatQFtnF3L0kkcxDznKqWMRrEpCv35xx+msn+rkchl8qiS
         SdVsdN/r1igAMp10V+jvCBI8+Qgiy9exs/rarmdv5sbHiFu6PjalubcYSXEOAGei9LHf
         B5mQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) smtp.mailfrom=lars@metafoo.de
Return-Path: <lars@metafoo.de>
Received: from www381.your-server.de (www381.your-server.de. [78.46.137.84])
        by gmr-mx.google.com with ESMTPS id 204-v6si101205wmw.3.2018.10.17.07.49.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 17 Oct 2018 07:49:54 -0700 (PDT)
Received-SPF: neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) client-ip=78.46.137.84;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 78.46.137.84 is neither permitted nor denied by best guess record for domain of lars@metafoo.de) smtp.mailfrom=lars@metafoo.de
Received: from [78.46.172.2] (helo=sslproxy05.your-server.de)
	by www381.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.89_1)
	(envelope-from <lars@metafoo.de>)
	id 1gCn8u-00072d-1Y; Wed, 17 Oct 2018 16:49:48 +0200
Received: from eisbaer.ursus-maritimus.org ([78.47.220.141] helo=[127.0.0.1])
	by sslproxy05.your-server.de with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.89)
	(envelope-from <lars@metafoo.de>)
	id 1gCn8s-0003ey-Kj; Wed, 17 Oct 2018 16:49:47 +0200
Subject: Re: [PATCH v2] staging: iio: ad7816: Switch to the gpio descriptor
 interface
To: Nishad Kamdar <nishadkamdar@gmail.com>
Cc: Michael Hennerich <Michael.Hennerich@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, Hartmut Knaack <knaack.h@gmx.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-iio@vger.kernel.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com
References: <20181017144716.GA11485@nishad>
From: Lars-Peter Clausen <lars@metafoo.de>
Message-ID: <5b077abc-e3c2-6183-4341-627d6edf09ee@metafoo.de>
Date: Wed, 17 Oct 2018 16:49:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20181017144716.GA11485@nishad>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Authenticated-Sender: lars@metafoo.de
X-Virus-Scanned: Clear (ClamAV 0.100.1/25045/Wed Oct 17 14:59:46 2018)

On 10/17/2018 04:47 PM, Nishad Kamdar wrote:
> Use the gpiod interface for rdwr_pin, convert_pin and busy_pin
> instead of the deprecated old non-descriptor interface.
> 
> Signed-off-by: Nishad Kamdar <nishadkamdar@gmail.com>

Acked-by: Lars-Peter Clausen <lars@metafoo.de>

Thanks.

> ---
> Changes in v2:
>  - Correct the error messages as pin number being showed
>    has now been replaced by error code.
> ---
>  drivers/staging/iio/adc/ad7816.c | 80 ++++++++++++++------------------
>  1 file changed, 34 insertions(+), 46 deletions(-)
> 

